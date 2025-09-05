-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ice Futures Mdf iMpact 1.1.43 Protocol
local omi_ice_futures_mdf_impact_v1_1_43 = Proto("Ice.Futures.Mdf.iMpact.v1.1.43.Lua", "Ice Futures Mdf iMpact 1.1.43")

-- Protocol table
local ice_futures_mdf_impact_v1_1_43 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ice Futures Mdf iMpact 1.1.43 Fields
omi_ice_futures_mdf_impact_v1_1_43.fields.agg_bid_qty = ProtoField.new("Agg Bid Qty", "ice.futures.mdf.impact.v1.1.43.aggbidqty", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.agg_offer_qty = ProtoField.new("Agg Offer Qty", "ice.futures.mdf.impact.v1.1.43.aggofferqty", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.aggressor_side = ProtoField.new("Aggressor Side", "ice.futures.mdf.impact.v1.1.43.aggressorside", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.allow_options = ProtoField.new("Allow Options", "ice.futures.mdf.impact.v1.1.43.allowoptions", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.allows_implied = ProtoField.new("Allows Implied", "ice.futures.mdf.impact.v1.1.43.allowsimplied", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.alt_high_price = ProtoField.new("Alt High Price", "ice.futures.mdf.impact.v1.1.43.althighprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.alt_last_trade_price = ProtoField.new("Alt Last Trade Price", "ice.futures.mdf.impact.v1.1.43.altlasttradeprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.alt_low_price = ProtoField.new("Alt Low Price", "ice.futures.mdf.impact.v1.1.43.altlowprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.alt_price = ProtoField.new("Alt Price", "ice.futures.mdf.impact.v1.1.43.altprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.alt_vwap = ProtoField.new("Alt Vwap", "ice.futures.mdf.impact.v1.1.43.altvwap", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.aon = ProtoField.new("Aon", "ice.futures.mdf.impact.v1.1.43.aon", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.auction_date = ProtoField.new("Auction Date", "ice.futures.mdf.impact.v1.1.43.auctiondate", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.auction_end_time = ProtoField.new("Auction End Time", "ice.futures.mdf.impact.v1.1.43.auctionendtime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.begin_day = ProtoField.new("Begin Day", "ice.futures.mdf.impact.v1.1.43.beginday", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.begin_month = ProtoField.new("Begin Month", "ice.futures.mdf.impact.v1.1.43.beginmonth", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.begin_year = ProtoField.new("Begin Year", "ice.futures.mdf.impact.v1.1.43.beginyear", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.block_volume = ProtoField.new("Block Volume", "ice.futures.mdf.impact.v1.1.43.blockvolume", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.cleared_alias = ProtoField.new("Cleared Alias", "ice.futures.mdf.impact.v1.1.43.clearedalias", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.close_price = ProtoField.new("Close Price", "ice.futures.mdf.impact.v1.1.43.closeprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.contract_symbol = ProtoField.new("Contract Symbol", "ice.futures.mdf.impact.v1.1.43.contractsymbol", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.contract_symbol_extra = ProtoField.new("Contract Symbol Extra", "ice.futures.mdf.impact.v1.1.43.contractsymbolextra", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.cross_order_supported = ProtoField.new("Cross Order Supported", "ice.futures.mdf.impact.v1.1.43.crossordersupported", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.currency = ProtoField.new("Currency", "ice.futures.mdf.impact.v1.1.43.currency", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.deal_price_denominator = ProtoField.new("Deal Price Denominator", "ice.futures.mdf.impact.v1.1.43.dealpricedenominator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.delivery_begin_date_time = ProtoField.new("Delivery Begin Date Time", "ice.futures.mdf.impact.v1.1.43.deliverybegindatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.delivery_end_date_time = ProtoField.new("Delivery End Date Time", "ice.futures.mdf.impact.v1.1.43.deliveryenddatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.delta = ProtoField.new("Delta", "ice.futures.mdf.impact.v1.1.43.delta", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.description = ProtoField.new("Description", "ice.futures.mdf.impact.v1.1.43.description", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.efp_volume = ProtoField.new("Efp Volume", "ice.futures.mdf.impact.v1.1.43.efpvolume", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.efs_volume = ProtoField.new("Efs Volume", "ice.futures.mdf.impact.v1.1.43.efsvolume", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.end_day = ProtoField.new("End Day", "ice.futures.mdf.impact.v1.1.43.endday", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.end_month = ProtoField.new("End Month", "ice.futures.mdf.impact.v1.1.43.endmonth", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.end_year = ProtoField.new("End Year", "ice.futures.mdf.impact.v1.1.43.endyear", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.eur_price = ProtoField.new("Eur Price", "ice.futures.mdf.impact.v1.1.43.eurprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.event_code = ProtoField.new("Event Code", "ice.futures.mdf.impact.v1.1.43.eventcode", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.event_type = ProtoField.new("Event Type", "ice.futures.mdf.impact.v1.1.43.eventtype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.exchange_silo = ProtoField.new("Exchange Silo", "ice.futures.mdf.impact.v1.1.43.exchangesilo", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.extra_flags = ProtoField.new("Extra Flags", "ice.futures.mdf.impact.v1.1.43.extraflags", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.extra_leg_definition = ProtoField.new("Extra Leg Definition", "ice.futures.mdf.impact.v1.1.43.extralegdefinition", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.extra_strategy_leg_definition = ProtoField.new("Extra Strategy Leg Definition", "ice.futures.mdf.impact.v1.1.43.extrastrategylegdefinition", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_status = ProtoField.new("Fixing Status", "ice.futures.mdf.impact.v1.1.43.fixingstatus", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.flex_allowed = ProtoField.new("Flex Allowed", "ice.futures.mdf.impact.v1.1.43.flexallowed", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_bytes = ProtoField.new("Fragment Bytes", "ice.futures.mdf.impact.v1.1.43.fragmentbytes", ftypes.BYTES)
omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_length = ProtoField.new("Fragment Length", "ice.futures.mdf.impact.v1.1.43.fragmentlength", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_offset = ProtoField.new("Fragment Offset", "ice.futures.mdf.impact.v1.1.43.fragmentoffset", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.futures_contract_symbol = ProtoField.new("Futures Contract Symbol", "ice.futures.mdf.impact.v1.1.43.futurescontractsymbol", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.gbp_price = ProtoField.new("Gbp Price", "ice.futures.mdf.impact.v1.1.43.gbpprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.gt_allowed = ProtoField.new("Gt Allowed", "ice.futures.mdf.impact.v1.1.43.gtallowed", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.guaranteed_cross_supported = ProtoField.new("Guaranteed Cross Supported", "ice.futures.mdf.impact.v1.1.43.guaranteedcrosssupported", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.has_pre_open_volume = ProtoField.new("Has Pre Open Volume", "ice.futures.mdf.impact.v1.1.43.haspreopenvolume", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.has_previous_day_settlement_price = ProtoField.new("Has Previous Day Settlement Price", "ice.futures.mdf.impact.v1.1.43.haspreviousdaysettlementprice", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_body_length = ProtoField.new("Hedge Body Length", "ice.futures.mdf.impact.v1.1.43.hedgebodylength", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_definition = ProtoField.new("Hedge Definition", "ice.futures.mdf.impact.v1.1.43.hedgedefinition", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_delta = ProtoField.new("Hedge Delta", "ice.futures.mdf.impact.v1.1.43.hedgedelta", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_delta_obsolete = ProtoField.new("Hedge Delta Obsolete", "ice.futures.mdf.impact.v1.1.43.hedgedeltaobsolete", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_market_id = ProtoField.new("Hedge Market Id", "ice.futures.mdf.impact.v1.1.43.hedgemarketid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_only = ProtoField.new("Hedge Only", "ice.futures.mdf.impact.v1.1.43.hedgeonly", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_price = ProtoField.new("Hedge Price", "ice.futures.mdf.impact.v1.1.43.hedgeprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_price_denominator = ProtoField.new("Hedge Price Denominator", "ice.futures.mdf.impact.v1.1.43.hedgepricedenominator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_security_type = ProtoField.new("Hedge Security Type", "ice.futures.mdf.impact.v1.1.43.hedgesecuritytype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_side = ProtoField.new("Hedge Side", "ice.futures.mdf.impact.v1.1.43.hedgeside", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_strategy_code = ProtoField.new("Hedge Strategy Code", "ice.futures.mdf.impact.v1.1.43.hedgestrategycode", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.high = ProtoField.new("High", "ice.futures.mdf.impact.v1.1.43.high", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.hub_alias = ProtoField.new("Hub Alias", "ice.futures.mdf.impact.v1.1.43.hubalias", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.hub_id = ProtoField.new("Hub Id", "ice.futures.mdf.impact.v1.1.43.hubid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.iba_currency = ProtoField.new("Iba Currency", "ice.futures.mdf.impact.v1.1.43.ibacurrency", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.implied_order_count = ProtoField.new("Implied Order Count", "ice.futures.mdf.impact.v1.1.43.impliedordercount", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.implied_quantity = ProtoField.new("Implied Quantity", "ice.futures.mdf.impact.v1.1.43.impliedquantity", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.increment_premium_price = ProtoField.new("Increment Premium Price", "ice.futures.mdf.impact.v1.1.43.incrementpremiumprice", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.increment_price = ProtoField.new("Increment Price", "ice.futures.mdf.impact.v1.1.43.incrementprice", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.increment_qty = ProtoField.new("Increment Qty", "ice.futures.mdf.impact.v1.1.43.incrementqty", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.index_price_denominator = ProtoField.new("Index Price Denominator", "ice.futures.mdf.impact.v1.1.43.indexpricedenominator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.investigation_status = ProtoField.new("Investigation Status", "ice.futures.mdf.impact.v1.1.43.investigationstatus", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_down = ProtoField.new("Ipl Down", "ice.futures.mdf.impact.v1.1.43.ipldown", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_hold_duration = ProtoField.new("Ipl Hold Duration", "ice.futures.mdf.impact.v1.1.43.iplholdduration", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_hold_type = ProtoField.new("Ipl Hold Type", "ice.futures.mdf.impact.v1.1.43.iplholdtype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_up = ProtoField.new("Ipl Up", "ice.futures.mdf.impact.v1.1.43.iplup", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_adjusted_trade = ProtoField.new("Is Adjusted Trade", "ice.futures.mdf.impact.v1.1.43.isadjustedtrade", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_balanced = ProtoField.new("Is Balanced", "ice.futures.mdf.impact.v1.1.43.isbalanced", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_block_only = ProtoField.new("Is Block Only", "ice.futures.mdf.impact.v1.1.43.isblockonly", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_final = ProtoField.new("Is Final", "ice.futures.mdf.impact.v1.1.43.isfinal", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_implied = ProtoField.new("Is Implied", "ice.futures.mdf.impact.v1.1.43.isimplied", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_implied_order = ProtoField.new("Is Implied Order", "ice.futures.mdf.impact.v1.1.43.isimpliedorder", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x20)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_implied_spread_at_market_open = ProtoField.new("Is Implied Spread At Market Open", "ice.futures.mdf.impact.v1.1.43.isimpliedspreadatmarketopen", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_leg_deal_outside_ipl = ProtoField.new("Is Leg Deal Outside Ipl", "ice.futures.mdf.impact.v1.1.43.islegdealoutsideipl", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x40)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_official = ProtoField.new("Is Official", "ice.futures.mdf.impact.v1.1.43.isofficial", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_rfc_crossing = ProtoField.new("Is Rfc Crossing", "ice.futures.mdf.impact.v1.1.43.isrfccrossing", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x80)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_rfq = ProtoField.new("Is Rfq", "ice.futures.mdf.impact.v1.1.43.isrfq", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_settle_price_official = ProtoField.new("Is Settle Price Official", "ice.futures.mdf.impact.v1.1.43.issettlepriceofficial", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_system_priced_leg = ProtoField.new("Is System Priced Leg", "ice.futures.mdf.impact.v1.1.43.issystempricedleg", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_tradable = ProtoField.new("Is Tradable", "ice.futures.mdf.impact.v1.1.43.istradable", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_transaction_end = ProtoField.new("Is Transaction End", "ice.futures.mdf.impact.v1.1.43.istransactionend", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_up = ProtoField.new("Is Up", "ice.futures.mdf.impact.v1.1.43.isup", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.is_vertical_split = ProtoField.new("Is Vertical Split", "ice.futures.mdf.impact.v1.1.43.isverticalsplit", ftypes.UINT8, {[1]="Yes",[0]="No"}, base.DEC, 0x10)
omi_ice_futures_mdf_impact_v1_1_43.fields.isin = ProtoField.new("Isin", "ice.futures.mdf.impact.v1.1.43.isin", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.last_message_sequence_id = ProtoField.new("Last Message Sequence Id", "ice.futures.mdf.impact.v1.1.43.lastmessagesequenceid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.last_trade_date_time = ProtoField.new("Last Trade Date Time", "ice.futures.mdf.impact.v1.1.43.lasttradedatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.last_trade_price = ProtoField.new("Last Trade Price", "ice.futures.mdf.impact.v1.1.43.lasttradeprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "ice.futures.mdf.impact.v1.1.43.lasttradequantity", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_body_length = ProtoField.new("Leg Body Length", "ice.futures.mdf.impact.v1.1.43.legbodylength", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_deal_suppressed = ProtoField.new("Leg Deal Suppressed", "ice.futures.mdf.impact.v1.1.43.legdealsuppressed", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_definition = ProtoField.new("Leg Definition", "ice.futures.mdf.impact.v1.1.43.legdefinition", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_market_id = ProtoField.new("Leg Market Id", "ice.futures.mdf.impact.v1.1.43.legmarketid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_obsolete = ProtoField.new("Leg Ratio Obsolete", "ice.futures.mdf.impact.v1.1.43.legratioobsolete", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_price_denominator = ProtoField.new("Leg Ratio Price Denominator", "ice.futures.mdf.impact.v1.1.43.legratiopricedenominator", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_price_numerator = ProtoField.new("Leg Ratio Price Numerator", "ice.futures.mdf.impact.v1.1.43.legratiopricenumerator", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_qty_denominator = ProtoField.new("Leg Ratio Qty Denominator", "ice.futures.mdf.impact.v1.1.43.legratioqtydenominator", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_qty_numerator = ProtoField.new("Leg Ratio Qty Numerator", "ice.futures.mdf.impact.v1.1.43.legratioqtynumerator", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_side = ProtoField.new("Leg Side", "ice.futures.mdf.impact.v1.1.43.legside", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_strategy_code = ProtoField.new("Leg Strategy Code", "ice.futures.mdf.impact.v1.1.43.legstrategycode", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_underlying_market_id = ProtoField.new("Leg Underlying Market Id", "ice.futures.mdf.impact.v1.1.43.legunderlyingmarketid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.length = ProtoField.new("Length", "ice.futures.mdf.impact.v1.1.43.length", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.lot_size = ProtoField.new("Lot Size", "ice.futures.mdf.impact.v1.1.43.lotsize", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.low = ProtoField.new("Low", "ice.futures.mdf.impact.v1.1.43.low", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_desc = ProtoField.new("Market Desc", "ice.futures.mdf.impact.v1.1.43.marketdesc", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_id = ProtoField.new("Market Id", "ice.futures.mdf.impact.v1.1.43.marketid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_type = ProtoField.new("Market Type", "ice.futures.mdf.impact.v1.1.43.markettype", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_type_id = ProtoField.new("Market Type Id", "ice.futures.mdf.impact.v1.1.43.markettypeid", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.maturity_day = ProtoField.new("Maturity Day", "ice.futures.mdf.impact.v1.1.43.maturityday", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.maturity_month = ProtoField.new("Maturity Month", "ice.futures.mdf.impact.v1.1.43.maturitymonth", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.maturity_year = ProtoField.new("Maturity Year", "ice.futures.mdf.impact.v1.1.43.maturityyear", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.max_options_price = ProtoField.new("Max Options Price", "ice.futures.mdf.impact.v1.1.43.maxoptionsprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.max_price = ProtoField.new("Max Price", "ice.futures.mdf.impact.v1.1.43.maxprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.message = ProtoField.new("Message", "ice.futures.mdf.impact.v1.1.43.message", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.message_date_time = ProtoField.new("Message Date Time", "ice.futures.mdf.impact.v1.1.43.messagedatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.message_header = ProtoField.new("Message Header", "ice.futures.mdf.impact.v1.1.43.messageheader", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.message_timestamp = ProtoField.new("Message Timestamp", "ice.futures.mdf.impact.v1.1.43.messagetimestamp", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.message_type = ProtoField.new("Message Type", "ice.futures.mdf.impact.v1.1.43.messagetype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.mic_code = ProtoField.new("Mic Code", "ice.futures.mdf.impact.v1.1.43.miccode", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.mifid_regulated_market = ProtoField.new("Mifid Regulated Market", "ice.futures.mdf.impact.v1.1.43.mifidregulatedmarket", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.min_options_price = ProtoField.new("Min Options Price", "ice.futures.mdf.impact.v1.1.43.minoptionsprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.min_price = ProtoField.new("Min Price", "ice.futures.mdf.impact.v1.1.43.minprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.min_qty = ProtoField.new("Min Qty", "ice.futures.mdf.impact.v1.1.43.minqty", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.modification_timestamp = ProtoField.new("Modification Timestamp", "ice.futures.mdf.impact.v1.1.43.modificationtimestamp", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.notification_date_time = ProtoField.new("Notification Date Time", "ice.futures.mdf.impact.v1.1.43.notificationdatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_options_price = ProtoField.new("Num Decimals Options Price", "ice.futures.mdf.impact.v1.1.43.numdecimalsoptionsprice", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_price = ProtoField.new("Num Decimals Price", "ice.futures.mdf.impact.v1.1.43.numdecimalsprice", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_price_in_gram = ProtoField.new("Num Decimals Price In Gram", "ice.futures.mdf.impact.v1.1.43.numdecimalspriceingram", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_strike_price = ProtoField.new("Num Decimals Strike Price", "ice.futures.mdf.impact.v1.1.43.numdecimalsstrikeprice", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.num_of_book_entries = ProtoField.new("Num Of Book Entries", "ice.futures.mdf.impact.v1.1.43.numofbookentries", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.num_of_cycles = ProtoField.new("Num Of Cycles", "ice.futures.mdf.impact.v1.1.43.numofcycles", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_extra_leg_definitions = ProtoField.new("Number Of Extra Leg Definitions", "ice.futures.mdf.impact.v1.1.43.numberofextralegdefinitions", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_extra_strategy_leg_definitions = ProtoField.new("Number Of Extra Strategy Leg Definitions", "ice.futures.mdf.impact.v1.1.43.numberofextrastrategylegdefinitions", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_hedge_definitions = ProtoField.new("Number Of Hedge Definitions", "ice.futures.mdf.impact.v1.1.43.numberofhedgedefinitions", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_leg_definitions = ProtoField.new("Number Of Leg Definitions", "ice.futures.mdf.impact.v1.1.43.numberoflegdefinitions", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_msgs = ProtoField.new("Number Of Msgs", "ice.futures.mdf.impact.v1.1.43.numberofmsgs", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_special_fields = ProtoField.new("Number Of Special Fields", "ice.futures.mdf.impact.v1.1.43.numberofspecialfields", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_strategy_leg_definitions = ProtoField.new("Number Of Strategy Leg Definitions", "ice.futures.mdf.impact.v1.1.43.numberofstrategylegdefinitions", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_option_price = ProtoField.new("Off Exchange Increment Option Price", "ice.futures.mdf.impact.v1.1.43.offexchangeincrementoptionprice", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_price = ProtoField.new("Off Exchange Increment Price", "ice.futures.mdf.impact.v1.1.43.offexchangeincrementprice", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_qty = ProtoField.new("Off Exchange Increment Qty", "ice.futures.mdf.impact.v1.1.43.offexchangeincrementqty", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_qty_denominator = ProtoField.new("Off Exchange Increment Qty Denominator", "ice.futures.mdf.impact.v1.1.43.offexchangeincrementqtydenominator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.off_market_trade_indicator = ProtoField.new("Off Market Trade Indicator", "ice.futures.mdf.impact.v1.1.43.offmarkettradeindicator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.off_market_trade_type = ProtoField.new("Off Market Trade Type", "ice.futures.mdf.impact.v1.1.43.offmarkettradetype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.old_num_of_cycles = ProtoField.new("Old Num Of Cycles", "ice.futures.mdf.impact.v1.1.43.oldnumofcycles", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.old_off_market_trade_type = ProtoField.new("Old Off Market Trade Type", "ice.futures.mdf.impact.v1.1.43.oldoffmarkettradetype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.old_strip_id = ProtoField.new("Old Strip Id", "ice.futures.mdf.impact.v1.1.43.oldstripid", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest = ProtoField.new("Open Interest", "ice.futures.mdf.impact.v1.1.43.openinterest", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest_change = ProtoField.new("Open Interest Change", "ice.futures.mdf.impact.v1.1.43.openinterestchange", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest_date = ProtoField.new("Open Interest Date", "ice.futures.mdf.impact.v1.1.43.openinterestdate", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.open_price = ProtoField.new("Open Price", "ice.futures.mdf.impact.v1.1.43.openprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.opening_price = ProtoField.new("Opening Price", "ice.futures.mdf.impact.v1.1.43.openingprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.option_type = ProtoField.new("Option Type", "ice.futures.mdf.impact.v1.1.43.optiontype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_day = ProtoField.new("Options Expiration Day", "ice.futures.mdf.impact.v1.1.43.optionsexpirationday", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_month = ProtoField.new("Options Expiration Month", "ice.futures.mdf.impact.v1.1.43.optionsexpirationmonth", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_type = ProtoField.new("Options Expiration Type", "ice.futures.mdf.impact.v1.1.43.optionsexpirationtype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_year = ProtoField.new("Options Expiration Year", "ice.futures.mdf.impact.v1.1.43.optionsexpirationyear", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.options_style = ProtoField.new("Options Style", "ice.futures.mdf.impact.v1.1.43.optionsstyle", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.order_count = ProtoField.new("Order Count", "ice.futures.mdf.impact.v1.1.43.ordercount", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.order_entry_date_time = ProtoField.new("Order Entry Date Time", "ice.futures.mdf.impact.v1.1.43.orderentrydatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.order_id = ProtoField.new("Order Id", "ice.futures.mdf.impact.v1.1.43.orderid", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.order_price_denominator = ProtoField.new("Order Price Denominator", "ice.futures.mdf.impact.v1.1.43.orderpricedenominator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.order_sequence_id = ProtoField.new("Order Sequence Id", "ice.futures.mdf.impact.v1.1.43.ordersequenceid", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.override_block_min = ProtoField.new("Override Block Min", "ice.futures.mdf.impact.v1.1.43.overrideblockmin", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.packet = ProtoField.new("Packet", "ice.futures.mdf.impact.v1.1.43.packet", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.packet_header = ProtoField.new("Packet Header", "ice.futures.mdf.impact.v1.1.43.packetheader", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.payload = ProtoField.new("Payload", "ice.futures.mdf.impact.v1.1.43.payload", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.pre_open_price = ProtoField.new("Pre Open Price", "ice.futures.mdf.impact.v1.1.43.preopenprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.pre_open_volume = ProtoField.new("Pre Open Volume", "ice.futures.mdf.impact.v1.1.43.preopenvolume", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.previous_day_settlement_price = ProtoField.new("Previous Day Settlement Price", "ice.futures.mdf.impact.v1.1.43.previousdaysettlementprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.price = ProtoField.new("Price", "ice.futures.mdf.impact.v1.1.43.price", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.price_in_gram = ProtoField.new("Price In Gram", "ice.futures.mdf.impact.v1.1.43.priceingram", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.price_level_position = ProtoField.new("Price Level Position", "ice.futures.mdf.impact.v1.1.43.pricelevelposition", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.product_id = ProtoField.new("Product Id", "ice.futures.mdf.impact.v1.1.43.productid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.product_name = ProtoField.new("Product Name", "ice.futures.mdf.impact.v1.1.43.productname", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.published_date_time = ProtoField.new("Published Date Time", "ice.futures.mdf.impact.v1.1.43.publisheddatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.quantity = ProtoField.new("Quantity", "ice.futures.mdf.impact.v1.1.43.quantity", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.request_trading_engine_received_timestamp = ProtoField.new("Request Trading Engine Received Timestamp", "ice.futures.mdf.impact.v1.1.43.requesttradingenginereceivedtimestamp", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.reserved_2 = ProtoField.new("Reserved 2", "ice.futures.mdf.impact.v1.1.43.reserved2", ftypes.BYTES)
omi_ice_futures_mdf_impact_v1_1_43.fields.reserved_4 = ProtoField.new("Reserved 4", "ice.futures.mdf.impact.v1.1.43.reserved4", ftypes.BYTES)
omi_ice_futures_mdf_impact_v1_1_43.fields.rfq_system_id = ProtoField.new("Rfq System Id", "ice.futures.mdf.impact.v1.1.43.rfqsystemid", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.round = ProtoField.new("Round", "ice.futures.mdf.impact.v1.1.43.round", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.screen_last_trade_day = ProtoField.new("Screen Last Trade Day", "ice.futures.mdf.impact.v1.1.43.screenlasttradeday", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.screen_last_trade_month = ProtoField.new("Screen Last Trade Month", "ice.futures.mdf.impact.v1.1.43.screenlasttrademonth", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.screen_last_trade_year = ProtoField.new("Screen Last Trade Year", "ice.futures.mdf.impact.v1.1.43.screenlasttradeyear", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.security_sub_type = ProtoField.new("Security Sub Type", "ice.futures.mdf.impact.v1.1.43.securitysubtype", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.send_datetime = ProtoField.new("Send Datetime", "ice.futures.mdf.impact.v1.1.43.senddatetime", ftypes.UINT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.sequence = ProtoField.new("Sequence", "ice.futures.mdf.impact.v1.1.43.sequence", ftypes.UINT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.sequence_within_millis = ProtoField.new("Sequence Within Millis", "ice.futures.mdf.impact.v1.1.43.sequencewithinmillis", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.session = ProtoField.new("Session", "ice.futures.mdf.impact.v1.1.43.session", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.settle_price_date_time = ProtoField.new("Settle Price Date Time", "ice.futures.mdf.impact.v1.1.43.settlepricedatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.settle_price_denominator = ProtoField.new("Settle Price Denominator", "ice.futures.mdf.impact.v1.1.43.settlepricedenominator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_price = ProtoField.new("Settlement Price", "ice.futures.mdf.impact.v1.1.43.settlementprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_price_with_deal_price_precision = ProtoField.new("Settlement Price With Deal Price Precision", "ice.futures.mdf.impact.v1.1.43.settlementpricewithdealpriceprecision", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_type = ProtoField.new("Settlement Type", "ice.futures.mdf.impact.v1.1.43.settlementtype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.short_name = ProtoField.new("Short Name", "ice.futures.mdf.impact.v1.1.43.shortname", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.side = ProtoField.new("Side", "ice.futures.mdf.impact.v1.1.43.side", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.special_field = ProtoField.new("Special Field", "ice.futures.mdf.impact.v1.1.43.specialfield", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_id = ProtoField.new("Special Field Id", "ice.futures.mdf.impact.v1.1.43.specialfieldid", ftypes.INT8)
omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_length = ProtoField.new("Special Field Length", "ice.futures.mdf.impact.v1.1.43.specialfieldlength", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.start_or_end = ProtoField.new("Start Or End", "ice.futures.mdf.impact.v1.1.43.startorend", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.status = ProtoField.new("Status", "ice.futures.mdf.impact.v1.1.43.status", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.strategy_leg_definition = ProtoField.new("Strategy Leg Definition", "ice.futures.mdf.impact.v1.1.43.strategylegdefinition", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "ice.futures.mdf.impact.v1.1.43.strategysymbol", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.strike_price = ProtoField.new("Strike Price", "ice.futures.mdf.impact.v1.1.43.strikeprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.strip_id = ProtoField.new("Strip Id", "ice.futures.mdf.impact.v1.1.43.stripid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.strip_info = ProtoField.new("Strip Info", "ice.futures.mdf.impact.v1.1.43.stripinfo", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.strip_name = ProtoField.new("Strip Name", "ice.futures.mdf.impact.v1.1.43.stripname", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.strip_type = ProtoField.new("Strip Type", "ice.futures.mdf.impact.v1.1.43.striptype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.system_priced_leg_type = ProtoField.new("System Priced Leg Type", "ice.futures.mdf.impact.v1.1.43.systempricedlegtype", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.test_market_indicator = ProtoField.new("Test Market Indicator", "ice.futures.mdf.impact.v1.1.43.testmarketindicator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.text_message = ProtoField.new("Text Message", "ice.futures.mdf.impact.v1.1.43.textmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.text_message_extra_fld = ProtoField.new("Text Message Extra Fld", "ice.futures.mdf.impact.v1.1.43.textmessageextrafld", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.threshold_imbalance_qty = ProtoField.new("Threshold Imbalance Qty", "ice.futures.mdf.impact.v1.1.43.thresholdimbalanceqty", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.tick_value = ProtoField.new("Tick Value", "ice.futures.mdf.impact.v1.1.43.tickvalue", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.timestamp = ProtoField.new("Timestamp", "ice.futures.mdf.impact.v1.1.43.timestamp", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.total_length = ProtoField.new("Total Length", "ice.futures.mdf.impact.v1.1.43.totallength", ftypes.INT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.total_volume = ProtoField.new("Total Volume", "ice.futures.mdf.impact.v1.1.43.totalvolume", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.trade_flags = ProtoField.new("Trade Flags", "ice.futures.mdf.impact.v1.1.43.tradeflags", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.trade_id = ProtoField.new("Trade Id", "ice.futures.mdf.impact.v1.1.43.tradeid", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.trade_transaction_id = ProtoField.new("Trade Transaction Id", "ice.futures.mdf.impact.v1.1.43.tradetransactionid", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.trading_status = ProtoField.new("Trading Status", "ice.futures.mdf.impact.v1.1.43.tradingstatus", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.transact_date_time = ProtoField.new("Transact Date Time", "ice.futures.mdf.impact.v1.1.43.transactdatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.underlying_isin = ProtoField.new("Underlying Isin", "ice.futures.mdf.impact.v1.1.43.underlyingisin", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.underlying_market_id = ProtoField.new("Underlying Market Id", "ice.futures.mdf.impact.v1.1.43.underlyingmarketid", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "ice.futures.mdf.impact.v1.1.43.unitofmeasure", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.unit_qty_denominator = ProtoField.new("Unit Qty Denominator", "ice.futures.mdf.impact.v1.1.43.unitqtydenominator", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.unit_quantity = ProtoField.new("Unit Quantity", "ice.futures.mdf.impact.v1.1.43.unitquantity", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.unused_4 = ProtoField.new("Unused 4", "ice.futures.mdf.impact.v1.1.43.unused4", ftypes.UINT8, nil, base.DEC, 0x0F)
omi_ice_futures_mdf_impact_v1_1_43.fields.usd_price = ProtoField.new("Usd Price", "ice.futures.mdf.impact.v1.1.43.usdprice", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.valuation_date_applying_date = ProtoField.new("Valuation Date Applying Date", "ice.futures.mdf.impact.v1.1.43.valuationdateapplyingdate", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.valuation_date_time = ProtoField.new("Valuation Date Time", "ice.futures.mdf.impact.v1.1.43.valuationdatetime", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.variable_field = ProtoField.new("Variable Field", "ice.futures.mdf.impact.v1.1.43.variablefield", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.volatility = ProtoField.new("Volatility", "ice.futures.mdf.impact.v1.1.43.volatility", ftypes.INT64)
omi_ice_futures_mdf_impact_v1_1_43.fields.volume = ProtoField.new("Volume", "ice.futures.mdf.impact.v1.1.43.volume", ftypes.INT32)
omi_ice_futures_mdf_impact_v1_1_43.fields.vwap = ProtoField.new("Vwap", "ice.futures.mdf.impact.v1.1.43.vwap", ftypes.INT64)

-- Ice Futures Mdf iMpact 1.1.43 messages
omi_ice_futures_mdf_impact_v1_1_43.fields.add_or_modify_order_message = ProtoField.new("Add Or Modify Order Message", "ice.futures.mdf.impact.v1.1.43.addormodifyordermessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.add_price_level_message = ProtoField.new("Add Price Level Message", "ice.futures.mdf.impact.v1.1.43.addpricelevelmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.cancelled_trade_message = ProtoField.new("Cancelled Trade Message", "ice.futures.mdf.impact.v1.1.43.cancelledtrademessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.change_price_level_message = ProtoField.new("Change Price Level Message", "ice.futures.mdf.impact.v1.1.43.changepricelevelmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.close_price_message = ProtoField.new("Close Price Message", "ice.futures.mdf.impact.v1.1.43.closepricemessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.delete_order_message = ProtoField.new("Delete Order Message", "ice.futures.mdf.impact.v1.1.43.deleteordermessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.delete_price_level_message = ProtoField.new("Delete Price Level Message", "ice.futures.mdf.impact.v1.1.43.deletepricelevelmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.end_of_day_market_summary_message = ProtoField.new("End Of Day Market Summary Message", "ice.futures.mdf.impact.v1.1.43.endofdaymarketsummarymessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_indicative_price_message = ProtoField.new("Fixing Indicative Price Message", "ice.futures.mdf.impact.v1.1.43.fixingindicativepricemessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_lockdown_message = ProtoField.new("Fixing Lockdown Message", "ice.futures.mdf.impact.v1.1.43.fixinglockdownmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_transition_message = ProtoField.new("Fixing Transition Message", "ice.futures.mdf.impact.v1.1.43.fixingtransitionmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_wrapper_message = ProtoField.new("Fragment Wrapper Message", "ice.futures.mdf.impact.v1.1.43.fragmentwrappermessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.index_prices_message = ProtoField.new("Index Prices Message", "ice.futures.mdf.impact.v1.1.43.indexpricesmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.interval_price_limit_notification_message = ProtoField.new("Interval Price Limit Notification Message", "ice.futures.mdf.impact.v1.1.43.intervalpricelimitnotificationmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.investigated_trade_message = ProtoField.new("Investigated Trade Message", "ice.futures.mdf.impact.v1.1.43.investigatedtrademessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_event_message = ProtoField.new("Market Event Message", "ice.futures.mdf.impact.v1.1.43.marketeventmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_snapshot_message = ProtoField.new("Market Snapshot Message", "ice.futures.mdf.impact.v1.1.43.marketsnapshotmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_snapshot_order_message = ProtoField.new("Market Snapshot Order Message", "ice.futures.mdf.impact.v1.1.43.marketsnapshotordermessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_snapshot_price_level_message = ProtoField.new("Market Snapshot Price Level Message", "ice.futures.mdf.impact.v1.1.43.marketsnapshotpricelevelmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_state_change_message = ProtoField.new("Market State Change Message", "ice.futures.mdf.impact.v1.1.43.marketstatechangemessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.market_statistics_message = ProtoField.new("Market Statistics Message", "ice.futures.mdf.impact.v1.1.43.marketstatisticsmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.message_bundle_marker = ProtoField.new("Message Bundle Marker", "ice.futures.mdf.impact.v1.1.43.messagebundlemarker", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.new_expiry_message = ProtoField.new("New Expiry Message", "ice.futures.mdf.impact.v1.1.43.newexpirymessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.new_futures_strategy_definition_message = ProtoField.new("New Futures Strategy Definition Message", "ice.futures.mdf.impact.v1.1.43.newfuturesstrategydefinitionmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.new_options_market_definition_message = ProtoField.new("New Options Market Definition Message", "ice.futures.mdf.impact.v1.1.43.newoptionsmarketdefinitionmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.new_options_strategy_definition_message = ProtoField.new("New Options Strategy Definition Message", "ice.futures.mdf.impact.v1.1.43.newoptionsstrategydefinitionmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.old_style_options_trade_and_market_stats_message = ProtoField.new("Old Style Options Trade And Market Stats Message", "ice.futures.mdf.impact.v1.1.43.oldstyleoptionstradeandmarketstatsmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest_message = ProtoField.new("Open Interest Message", "ice.futures.mdf.impact.v1.1.43.openinterestmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.open_price_message = ProtoField.new("Open Price Message", "ice.futures.mdf.impact.v1.1.43.openpricemessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.option_open_interest_message = ProtoField.new("Option Open Interest Message", "ice.futures.mdf.impact.v1.1.43.optionopeninterestmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.option_settlement_price_message = ProtoField.new("Option Settlement Price Message", "ice.futures.mdf.impact.v1.1.43.optionsettlementpricemessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.pre_open_price_indicator_message = ProtoField.new("Pre Open Price Indicator Message", "ice.futures.mdf.impact.v1.1.43.preopenpriceindicatormessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.rfq_message = ProtoField.new("Rfq Message", "ice.futures.mdf.impact.v1.1.43.rfqmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_price_message = ProtoField.new("Settlement Price Message", "ice.futures.mdf.impact.v1.1.43.settlementpricemessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_message = ProtoField.new("Special Field Message", "ice.futures.mdf.impact.v1.1.43.specialfieldmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.spot_market_trade_message = ProtoField.new("Spot Market Trade Message", "ice.futures.mdf.impact.v1.1.43.spotmarkettrademessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.strip_info_message = ProtoField.new("Strip Info Message", "ice.futures.mdf.impact.v1.1.43.stripinfomessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.system_text_message = ProtoField.new("System Text Message", "ice.futures.mdf.impact.v1.1.43.systemtextmessage", ftypes.STRING)
omi_ice_futures_mdf_impact_v1_1_43.fields.trade_message = ProtoField.new("Trade Message", "ice.futures.mdf.impact.v1.1.43.trademessage", ftypes.STRING)

-- Ice Futures Mdf iMpact 1.1.43 generated fields
omi_ice_futures_mdf_impact_v1_1_43.fields.extra_leg_definition_index = ProtoField.new("Extra Leg Definition Index", "ice.futures.mdf.impact.v1.1.43.extralegdefinitionindex", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.extra_strategy_leg_definition_index = ProtoField.new("Extra Strategy Leg Definition Index", "ice.futures.mdf.impact.v1.1.43.extrastrategylegdefinitionindex", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_definition_index = ProtoField.new("Hedge Definition Index", "ice.futures.mdf.impact.v1.1.43.hedgedefinitionindex", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.leg_definition_index = ProtoField.new("Leg Definition Index", "ice.futures.mdf.impact.v1.1.43.legdefinitionindex", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.message_index = ProtoField.new("Message Index", "ice.futures.mdf.impact.v1.1.43.messageindex", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_index = ProtoField.new("Special Field Index", "ice.futures.mdf.impact.v1.1.43.specialfieldindex", ftypes.UINT16)
omi_ice_futures_mdf_impact_v1_1_43.fields.strategy_leg_definition_index = ProtoField.new("Strategy Leg Definition Index", "ice.futures.mdf.impact.v1.1.43.strategylegdefinitionindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Ice Futures Mdf iMpact 1.1.43 Element Dissection Options
show.add_or_modify_order_message = true
show.add_price_level_message = true
show.cancelled_trade_message = true
show.change_price_level_message = true
show.close_price_message = true
show.delete_order_message = true
show.delete_price_level_message = true
show.end_of_day_market_summary_message = true
show.extra_leg_definition = true
show.extra_strategy_leg_definition = true
show.fixing_indicative_price_message = true
show.fixing_lockdown_message = true
show.fixing_transition_message = true
show.fragment_wrapper_message = true
show.hedge_definition = true
show.index_prices_message = true
show.interval_price_limit_notification_message = true
show.investigated_trade_message = true
show.leg_definition = true
show.market_event_message = true
show.market_snapshot_message = true
show.market_snapshot_order_message = true
show.market_snapshot_price_level_message = true
show.market_state_change_message = true
show.market_statistics_message = true
show.message = true
show.message_bundle_marker = true
show.message_header = true
show.new_expiry_message = true
show.new_futures_strategy_definition_message = true
show.new_options_market_definition_message = true
show.new_options_strategy_definition_message = true
show.old_style_options_trade_and_market_stats_message = true
show.open_interest_message = true
show.open_price_message = true
show.option_open_interest_message = true
show.option_settlement_price_message = true
show.packet = true
show.packet_header = true
show.pre_open_price_indicator_message = true
show.rfq_message = true
show.settlement_price_message = true
show.special_field = true
show.special_field_message = true
show.spot_market_trade_message = true
show.strategy_leg_definition = true
show.strip_info_message = true
show.system_text_message = true
show.trade_flags = true
show.trade_message = true
show.payload = false
show.variable_field = false

-- Register Ice Futures Mdf iMpact 1.1.43 Show Options
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_add_or_modify_order_message = Pref.bool("Show Add Or Modify Order Message", show.add_or_modify_order_message, "Parse and add Add Or Modify Order Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_add_price_level_message = Pref.bool("Show Add Price Level Message", show.add_price_level_message, "Parse and add Add Price Level Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_cancelled_trade_message = Pref.bool("Show Cancelled Trade Message", show.cancelled_trade_message, "Parse and add Cancelled Trade Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_change_price_level_message = Pref.bool("Show Change Price Level Message", show.change_price_level_message, "Parse and add Change Price Level Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_close_price_message = Pref.bool("Show Close Price Message", show.close_price_message, "Parse and add Close Price Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_delete_order_message = Pref.bool("Show Delete Order Message", show.delete_order_message, "Parse and add Delete Order Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_delete_price_level_message = Pref.bool("Show Delete Price Level Message", show.delete_price_level_message, "Parse and add Delete Price Level Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_end_of_day_market_summary_message = Pref.bool("Show End Of Day Market Summary Message", show.end_of_day_market_summary_message, "Parse and add End Of Day Market Summary Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_extra_leg_definition = Pref.bool("Show Extra Leg Definition", show.extra_leg_definition, "Parse and add Extra Leg Definition to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_extra_strategy_leg_definition = Pref.bool("Show Extra Strategy Leg Definition", show.extra_strategy_leg_definition, "Parse and add Extra Strategy Leg Definition to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_indicative_price_message = Pref.bool("Show Fixing Indicative Price Message", show.fixing_indicative_price_message, "Parse and add Fixing Indicative Price Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_lockdown_message = Pref.bool("Show Fixing Lockdown Message", show.fixing_lockdown_message, "Parse and add Fixing Lockdown Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_transition_message = Pref.bool("Show Fixing Transition Message", show.fixing_transition_message, "Parse and add Fixing Transition Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fragment_wrapper_message = Pref.bool("Show Fragment Wrapper Message", show.fragment_wrapper_message, "Parse and add Fragment Wrapper Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_hedge_definition = Pref.bool("Show Hedge Definition", show.hedge_definition, "Parse and add Hedge Definition to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_index_prices_message = Pref.bool("Show Index Prices Message", show.index_prices_message, "Parse and add Index Prices Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_interval_price_limit_notification_message = Pref.bool("Show Interval Price Limit Notification Message", show.interval_price_limit_notification_message, "Parse and add Interval Price Limit Notification Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_investigated_trade_message = Pref.bool("Show Investigated Trade Message", show.investigated_trade_message, "Parse and add Investigated Trade Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_leg_definition = Pref.bool("Show Leg Definition", show.leg_definition, "Parse and add Leg Definition to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_event_message = Pref.bool("Show Market Event Message", show.market_event_message, "Parse and add Market Event Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_message = Pref.bool("Show Market Snapshot Message", show.market_snapshot_message, "Parse and add Market Snapshot Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_order_message = Pref.bool("Show Market Snapshot Order Message", show.market_snapshot_order_message, "Parse and add Market Snapshot Order Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_price_level_message = Pref.bool("Show Market Snapshot Price Level Message", show.market_snapshot_price_level_message, "Parse and add Market Snapshot Price Level Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_state_change_message = Pref.bool("Show Market State Change Message", show.market_state_change_message, "Parse and add Market State Change Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_statistics_message = Pref.bool("Show Market Statistics Message", show.market_statistics_message, "Parse and add Market Statistics Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message_bundle_marker = Pref.bool("Show Message Bundle Marker", show.message_bundle_marker, "Parse and add Message Bundle Marker to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_expiry_message = Pref.bool("Show New Expiry Message", show.new_expiry_message, "Parse and add New Expiry Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_futures_strategy_definition_message = Pref.bool("Show New Futures Strategy Definition Message", show.new_futures_strategy_definition_message, "Parse and add New Futures Strategy Definition Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_options_market_definition_message = Pref.bool("Show New Options Market Definition Message", show.new_options_market_definition_message, "Parse and add New Options Market Definition Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_options_strategy_definition_message = Pref.bool("Show New Options Strategy Definition Message", show.new_options_strategy_definition_message, "Parse and add New Options Strategy Definition Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_old_style_options_trade_and_market_stats_message = Pref.bool("Show Old Style Options Trade And Market Stats Message", show.old_style_options_trade_and_market_stats_message, "Parse and add Old Style Options Trade And Market Stats Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_open_price_message = Pref.bool("Show Open Price Message", show.open_price_message, "Parse and add Open Price Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_option_open_interest_message = Pref.bool("Show Option Open Interest Message", show.option_open_interest_message, "Parse and add Option Open Interest Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_option_settlement_price_message = Pref.bool("Show Option Settlement Price Message", show.option_settlement_price_message, "Parse and add Option Settlement Price Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_pre_open_price_indicator_message = Pref.bool("Show Pre Open Price Indicator Message", show.pre_open_price_indicator_message, "Parse and add Pre Open Price Indicator Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_rfq_message = Pref.bool("Show Rfq Message", show.rfq_message, "Parse and add Rfq Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_settlement_price_message = Pref.bool("Show Settlement Price Message", show.settlement_price_message, "Parse and add Settlement Price Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_special_field = Pref.bool("Show Special Field", show.special_field, "Parse and add Special Field to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_special_field_message = Pref.bool("Show Special Field Message", show.special_field_message, "Parse and add Special Field Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_spot_market_trade_message = Pref.bool("Show Spot Market Trade Message", show.spot_market_trade_message, "Parse and add Spot Market Trade Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_strategy_leg_definition = Pref.bool("Show Strategy Leg Definition", show.strategy_leg_definition, "Parse and add Strategy Leg Definition to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_strip_info_message = Pref.bool("Show Strip Info Message", show.strip_info_message, "Parse and add Strip Info Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_system_text_message = Pref.bool("Show System Text Message", show.system_text_message, "Parse and add System Text Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_trade_flags = Pref.bool("Show Trade Flags", show.trade_flags, "Parse and add Trade Flags to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_ice_futures_mdf_impact_v1_1_43.prefs.show_variable_field = Pref.bool("Show Variable Field", show.variable_field, "Parse and add Variable Field to protocol tree")

-- Handle changed preferences
function omi_ice_futures_mdf_impact_v1_1_43.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.add_or_modify_order_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_add_or_modify_order_message then
    show.add_or_modify_order_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_add_or_modify_order_message
    changed = true
  end
  if show.add_price_level_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_add_price_level_message then
    show.add_price_level_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_add_price_level_message
    changed = true
  end
  if show.cancelled_trade_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_cancelled_trade_message then
    show.cancelled_trade_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_cancelled_trade_message
    changed = true
  end
  if show.change_price_level_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_change_price_level_message then
    show.change_price_level_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_change_price_level_message
    changed = true
  end
  if show.close_price_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_close_price_message then
    show.close_price_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_close_price_message
    changed = true
  end
  if show.delete_order_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_delete_order_message then
    show.delete_order_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_delete_order_message
    changed = true
  end
  if show.delete_price_level_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_delete_price_level_message then
    show.delete_price_level_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_delete_price_level_message
    changed = true
  end
  if show.end_of_day_market_summary_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_end_of_day_market_summary_message then
    show.end_of_day_market_summary_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_end_of_day_market_summary_message
    changed = true
  end
  if show.extra_leg_definition ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_extra_leg_definition then
    show.extra_leg_definition = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_extra_leg_definition
    changed = true
  end
  if show.extra_strategy_leg_definition ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_extra_strategy_leg_definition then
    show.extra_strategy_leg_definition = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_extra_strategy_leg_definition
    changed = true
  end
  if show.fixing_indicative_price_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_indicative_price_message then
    show.fixing_indicative_price_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_indicative_price_message
    changed = true
  end
  if show.fixing_lockdown_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_lockdown_message then
    show.fixing_lockdown_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_lockdown_message
    changed = true
  end
  if show.fixing_transition_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_transition_message then
    show.fixing_transition_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fixing_transition_message
    changed = true
  end
  if show.fragment_wrapper_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fragment_wrapper_message then
    show.fragment_wrapper_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_fragment_wrapper_message
    changed = true
  end
  if show.hedge_definition ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_hedge_definition then
    show.hedge_definition = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_hedge_definition
    changed = true
  end
  if show.index_prices_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_index_prices_message then
    show.index_prices_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_index_prices_message
    changed = true
  end
  if show.interval_price_limit_notification_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_interval_price_limit_notification_message then
    show.interval_price_limit_notification_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_interval_price_limit_notification_message
    changed = true
  end
  if show.investigated_trade_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_investigated_trade_message then
    show.investigated_trade_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_investigated_trade_message
    changed = true
  end
  if show.leg_definition ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_leg_definition then
    show.leg_definition = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_leg_definition
    changed = true
  end
  if show.market_event_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_event_message then
    show.market_event_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_event_message
    changed = true
  end
  if show.market_snapshot_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_message then
    show.market_snapshot_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_message
    changed = true
  end
  if show.market_snapshot_order_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_order_message then
    show.market_snapshot_order_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_order_message
    changed = true
  end
  if show.market_snapshot_price_level_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_price_level_message then
    show.market_snapshot_price_level_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_snapshot_price_level_message
    changed = true
  end
  if show.market_state_change_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_state_change_message then
    show.market_state_change_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_state_change_message
    changed = true
  end
  if show.market_statistics_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_statistics_message then
    show.market_statistics_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_market_statistics_message
    changed = true
  end
  if show.message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message then
    show.message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message
    changed = true
  end
  if show.message_bundle_marker ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message_bundle_marker then
    show.message_bundle_marker = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message_bundle_marker
    changed = true
  end
  if show.message_header ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message_header then
    show.message_header = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_message_header
    changed = true
  end
  if show.new_expiry_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_expiry_message then
    show.new_expiry_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_expiry_message
    changed = true
  end
  if show.new_futures_strategy_definition_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_futures_strategy_definition_message then
    show.new_futures_strategy_definition_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_futures_strategy_definition_message
    changed = true
  end
  if show.new_options_market_definition_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_options_market_definition_message then
    show.new_options_market_definition_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_options_market_definition_message
    changed = true
  end
  if show.new_options_strategy_definition_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_options_strategy_definition_message then
    show.new_options_strategy_definition_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_new_options_strategy_definition_message
    changed = true
  end
  if show.old_style_options_trade_and_market_stats_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_old_style_options_trade_and_market_stats_message then
    show.old_style_options_trade_and_market_stats_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_old_style_options_trade_and_market_stats_message
    changed = true
  end
  if show.open_interest_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_open_interest_message then
    show.open_interest_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_open_interest_message
    changed = true
  end
  if show.open_price_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_open_price_message then
    show.open_price_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_open_price_message
    changed = true
  end
  if show.option_open_interest_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_option_open_interest_message then
    show.option_open_interest_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_option_open_interest_message
    changed = true
  end
  if show.option_settlement_price_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_option_settlement_price_message then
    show.option_settlement_price_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_option_settlement_price_message
    changed = true
  end
  if show.packet ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_packet then
    show.packet = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_packet_header then
    show.packet_header = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_packet_header
    changed = true
  end
  if show.pre_open_price_indicator_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_pre_open_price_indicator_message then
    show.pre_open_price_indicator_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_pre_open_price_indicator_message
    changed = true
  end
  if show.rfq_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_rfq_message then
    show.rfq_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_rfq_message
    changed = true
  end
  if show.settlement_price_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_settlement_price_message then
    show.settlement_price_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_settlement_price_message
    changed = true
  end
  if show.special_field ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_special_field then
    show.special_field = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_special_field
    changed = true
  end
  if show.special_field_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_special_field_message then
    show.special_field_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_special_field_message
    changed = true
  end
  if show.spot_market_trade_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_spot_market_trade_message then
    show.spot_market_trade_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_spot_market_trade_message
    changed = true
  end
  if show.strategy_leg_definition ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_strategy_leg_definition then
    show.strategy_leg_definition = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_strategy_leg_definition
    changed = true
  end
  if show.strip_info_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_strip_info_message then
    show.strip_info_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_strip_info_message
    changed = true
  end
  if show.system_text_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_system_text_message then
    show.system_text_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_system_text_message
    changed = true
  end
  if show.trade_flags ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_trade_flags then
    show.trade_flags = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_trade_flags
    changed = true
  end
  if show.trade_message ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_trade_message then
    show.trade_message = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_trade_message
    changed = true
  end
  if show.payload ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_payload then
    show.payload = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_payload
    changed = true
  end
  if show.variable_field ~= omi_ice_futures_mdf_impact_v1_1_43.prefs.show_variable_field then
    show.variable_field = omi_ice_futures_mdf_impact_v1_1_43.prefs.show_variable_field
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Ice Futures Mdf iMpact 1.1.43
-----------------------------------------------------------------------

-- Vwap
ice_futures_mdf_impact_v1_1_43.vwap = {}

-- Size: Vwap
ice_futures_mdf_impact_v1_1_43.vwap.size = 8

-- Display: Vwap
ice_futures_mdf_impact_v1_1_43.vwap.display = function(value)
  return "Vwap: "..value
end

-- Dissect: Vwap
ice_futures_mdf_impact_v1_1_43.vwap.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.vwap.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.vwap, range, value, display)

  return offset + length, value
end

-- Low
ice_futures_mdf_impact_v1_1_43.low = {}

-- Size: Low
ice_futures_mdf_impact_v1_1_43.low.size = 8

-- Display: Low
ice_futures_mdf_impact_v1_1_43.low.display = function(value)
  return "Low: "..value
end

-- Dissect: Low
ice_futures_mdf_impact_v1_1_43.low.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.low.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.low, range, value, display)

  return offset + length, value
end

-- High
ice_futures_mdf_impact_v1_1_43.high = {}

-- Size: High
ice_futures_mdf_impact_v1_1_43.high.size = 8

-- Display: High
ice_futures_mdf_impact_v1_1_43.high.display = function(value)
  return "High: "..value
end

-- Dissect: High
ice_futures_mdf_impact_v1_1_43.high.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.high.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.high, range, value, display)

  return offset + length, value
end

-- Efp Volume
ice_futures_mdf_impact_v1_1_43.efp_volume = {}

-- Size: Efp Volume
ice_futures_mdf_impact_v1_1_43.efp_volume.size = 4

-- Display: Efp Volume
ice_futures_mdf_impact_v1_1_43.efp_volume.display = function(value)
  return "Efp Volume: "..value
end

-- Dissect: Efp Volume
ice_futures_mdf_impact_v1_1_43.efp_volume.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.efp_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.efp_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.efp_volume, range, value, display)

  return offset + length, value
end

-- Efs Volume
ice_futures_mdf_impact_v1_1_43.efs_volume = {}

-- Size: Efs Volume
ice_futures_mdf_impact_v1_1_43.efs_volume.size = 4

-- Display: Efs Volume
ice_futures_mdf_impact_v1_1_43.efs_volume.display = function(value)
  return "Efs Volume: "..value
end

-- Dissect: Efs Volume
ice_futures_mdf_impact_v1_1_43.efs_volume.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.efs_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.efs_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.efs_volume, range, value, display)

  return offset + length, value
end

-- Block Volume
ice_futures_mdf_impact_v1_1_43.block_volume = {}

-- Size: Block Volume
ice_futures_mdf_impact_v1_1_43.block_volume.size = 4

-- Display: Block Volume
ice_futures_mdf_impact_v1_1_43.block_volume.display = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
ice_futures_mdf_impact_v1_1_43.block_volume.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.block_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.block_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.block_volume, range, value, display)

  return offset + length, value
end

-- Total Volume
ice_futures_mdf_impact_v1_1_43.total_volume = {}

-- Size: Total Volume
ice_futures_mdf_impact_v1_1_43.total_volume.size = 4

-- Display: Total Volume
ice_futures_mdf_impact_v1_1_43.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
ice_futures_mdf_impact_v1_1_43.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.total_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Event Code
ice_futures_mdf_impact_v1_1_43.event_code = {}

-- Size: Event Code
ice_futures_mdf_impact_v1_1_43.event_code.size = 1

-- Display: Event Code
ice_futures_mdf_impact_v1_1_43.event_code.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Event Code: No Value"
  end

  if value == "0" then
    return "Event Code: Normal Trade (0)"
  end
  if value == "1" then
    return "Event Code: Cancelled Trade (1)"
  end
  if value == "2" then
    return "Event Code: Adjusted Trade (2)"
  end

  return "Event Code: Unknown("..value..")"
end

-- Dissect: Event Code
ice_futures_mdf_impact_v1_1_43.event_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.event_code.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.event_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.event_code, range, value, display)

  return offset + length, value
end

-- Strike Price
ice_futures_mdf_impact_v1_1_43.strike_price = {}

-- Size: Strike Price
ice_futures_mdf_impact_v1_1_43.strike_price.size = 8

-- Display: Strike Price
ice_futures_mdf_impact_v1_1_43.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
ice_futures_mdf_impact_v1_1_43.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.strike_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Option Type
ice_futures_mdf_impact_v1_1_43.option_type = {}

-- Size: Option Type
ice_futures_mdf_impact_v1_1_43.option_type.size = 1

-- Display: Option Type
ice_futures_mdf_impact_v1_1_43.option_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Option Type: No Value"
  end

  if value == "C" then
    return "Option Type: Call (C)"
  end
  if value == "P" then
    return "Option Type: Put (P)"
  end

  return "Option Type: Unknown("..value..")"
end

-- Dissect: Option Type
ice_futures_mdf_impact_v1_1_43.option_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.option_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.option_type, range, value, display)

  return offset + length, value
end

-- Transact Date Time
ice_futures_mdf_impact_v1_1_43.transact_date_time = {}

-- Size: Transact Date Time
ice_futures_mdf_impact_v1_1_43.transact_date_time.size = 8

-- Display: Transact Date Time
ice_futures_mdf_impact_v1_1_43.transact_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Transact Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Transact Date Time
ice_futures_mdf_impact_v1_1_43.transact_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.transact_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.transact_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.transact_date_time, range, value, display)

  return offset + length, value
end

-- Old Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type = {}

-- Size: Old Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.size = 1

-- Display: Old Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Old Off Market Trade Type: No Value"
  end

  return "Old Off Market Trade Type: "..value
end

-- Dissect: Old Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.old_off_market_trade_type, range, value, display)

  return offset + length, value
end

-- Quantity
ice_futures_mdf_impact_v1_1_43.quantity = {}

-- Size: Quantity
ice_futures_mdf_impact_v1_1_43.quantity.size = 4

-- Display: Quantity
ice_futures_mdf_impact_v1_1_43.quantity.display = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
ice_futures_mdf_impact_v1_1_43.quantity.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.quantity, range, value, display)

  return offset + length, value
end

-- Price
ice_futures_mdf_impact_v1_1_43.price = {}

-- Size: Price
ice_futures_mdf_impact_v1_1_43.price.size = 8

-- Display: Price
ice_futures_mdf_impact_v1_1_43.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
ice_futures_mdf_impact_v1_1_43.price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.price, range, value, display)

  return offset + length, value
end

-- Trade Id
ice_futures_mdf_impact_v1_1_43.trade_id = {}

-- Size: Trade Id
ice_futures_mdf_impact_v1_1_43.trade_id.size = 8

-- Display: Trade Id
ice_futures_mdf_impact_v1_1_43.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
ice_futures_mdf_impact_v1_1_43.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.trade_id.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Underlying Market Id
ice_futures_mdf_impact_v1_1_43.underlying_market_id = {}

-- Size: Underlying Market Id
ice_futures_mdf_impact_v1_1_43.underlying_market_id.size = 4

-- Display: Underlying Market Id
ice_futures_mdf_impact_v1_1_43.underlying_market_id.display = function(value)
  return "Underlying Market Id: "..value
end

-- Dissect: Underlying Market Id
ice_futures_mdf_impact_v1_1_43.underlying_market_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.underlying_market_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.underlying_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.underlying_market_id, range, value, display)

  return offset + length, value
end

-- Old Style Options Trade And Market Stats Message
ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message = {}

-- Calculate size of: Old Style Options Trade And Market Stats Message
ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.underlying_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.trade_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.transact_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.option_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.strike_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.event_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.total_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.block_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efs_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efp_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.high.size

  index = index + ice_futures_mdf_impact_v1_1_43.low.size

  index = index + ice_futures_mdf_impact_v1_1_43.vwap.size

  return index
end

-- Display: Old Style Options Trade And Market Stats Message
ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Old Style Options Trade And Market Stats Message
ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Market Id: Numeric
  index, underlying_market_id = ice_futures_mdf_impact_v1_1_43.underlying_market_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = ice_futures_mdf_impact_v1_1_43.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Old Off Market Trade Type: Alpha
  index, old_off_market_trade_type = ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.dissect(buffer, index, packet, parent)

  -- Transact Date Time: Numeric
  index, transact_date_time = ice_futures_mdf_impact_v1_1_43.transact_date_time.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = ice_futures_mdf_impact_v1_1_43.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Numeric
  index, strike_price = ice_futures_mdf_impact_v1_1_43.strike_price.dissect(buffer, index, packet, parent)

  -- Event Code: Alpha
  index, event_code = ice_futures_mdf_impact_v1_1_43.event_code.dissect(buffer, index, packet, parent)

  -- Total Volume: Numeric
  index, total_volume = ice_futures_mdf_impact_v1_1_43.total_volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Numeric
  index, block_volume = ice_futures_mdf_impact_v1_1_43.block_volume.dissect(buffer, index, packet, parent)

  -- Efs Volume: Numeric
  index, efs_volume = ice_futures_mdf_impact_v1_1_43.efs_volume.dissect(buffer, index, packet, parent)

  -- Efp Volume: Numeric
  index, efp_volume = ice_futures_mdf_impact_v1_1_43.efp_volume.dissect(buffer, index, packet, parent)

  -- High: Numeric
  index, high = ice_futures_mdf_impact_v1_1_43.high.dissect(buffer, index, packet, parent)

  -- Low: Numeric
  index, low = ice_futures_mdf_impact_v1_1_43.low.dissect(buffer, index, packet, parent)

  -- Vwap: Numeric
  index, vwap = ice_futures_mdf_impact_v1_1_43.vwap.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Old Style Options Trade And Market Stats Message
ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.dissect = function(buffer, offset, packet, parent)
  if show.old_style_options_trade_and_market_stats_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.old_style_options_trade_and_market_stats_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.fields(buffer, offset, packet, parent)
  end
end

-- Delta
ice_futures_mdf_impact_v1_1_43.delta = {}

-- Size: Delta
ice_futures_mdf_impact_v1_1_43.delta.size = 8

-- Display: Delta
ice_futures_mdf_impact_v1_1_43.delta.display = function(value)
  return "Delta: "..value
end

-- Dissect: Delta
ice_futures_mdf_impact_v1_1_43.delta.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.delta.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.delta, range, value, display)

  return offset + length, value
end

-- Settlement Price
ice_futures_mdf_impact_v1_1_43.settlement_price = {}

-- Size: Settlement Price
ice_futures_mdf_impact_v1_1_43.settlement_price.size = 8

-- Display: Settlement Price
ice_futures_mdf_impact_v1_1_43.settlement_price.display = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
ice_futures_mdf_impact_v1_1_43.settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.settlement_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_price, range, value, display)

  return offset + length, value
end

-- Volatility
ice_futures_mdf_impact_v1_1_43.volatility = {}

-- Size: Volatility
ice_futures_mdf_impact_v1_1_43.volatility.size = 8

-- Display: Volatility
ice_futures_mdf_impact_v1_1_43.volatility.display = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
ice_futures_mdf_impact_v1_1_43.volatility.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.volatility.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.volatility.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.volatility, range, value, display)

  return offset + length, value
end

-- Valuation Date Time
ice_futures_mdf_impact_v1_1_43.valuation_date_time = {}

-- Size: Valuation Date Time
ice_futures_mdf_impact_v1_1_43.valuation_date_time.size = 8

-- Display: Valuation Date Time
ice_futures_mdf_impact_v1_1_43.valuation_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Valuation Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Valuation Date Time
ice_futures_mdf_impact_v1_1_43.valuation_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.valuation_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.valuation_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.valuation_date_time, range, value, display)

  return offset + length, value
end

-- Is Official
ice_futures_mdf_impact_v1_1_43.is_official = {}

-- Size: Is Official
ice_futures_mdf_impact_v1_1_43.is_official.size = 1

-- Display: Is Official
ice_futures_mdf_impact_v1_1_43.is_official.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Official: No Value"
  end

  if value == "Y" then
    return "Is Official: Yes (Y)"
  end
  if value == "N" then
    return "Is Official: No (N)"
  end

  return "Is Official: Unknown("..value..")"
end

-- Dissect: Is Official
ice_futures_mdf_impact_v1_1_43.is_official.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_official.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_official.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_official, range, value, display)

  return offset + length, value
end

-- Message Date Time
ice_futures_mdf_impact_v1_1_43.message_date_time = {}

-- Size: Message Date Time
ice_futures_mdf_impact_v1_1_43.message_date_time.size = 8

-- Display: Message Date Time
ice_futures_mdf_impact_v1_1_43.message_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Message Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Message Date Time
ice_futures_mdf_impact_v1_1_43.message_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.message_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.message_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.message_date_time, range, value, display)

  return offset + length, value
end

-- Settlement Price With Deal Price Precision
ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision = {}

-- Size: Settlement Price With Deal Price Precision
ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.size = 8

-- Display: Settlement Price With Deal Price Precision
ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.display = function(value)
  return "Settlement Price With Deal Price Precision: "..value
end

-- Dissect: Settlement Price With Deal Price Precision
ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_price_with_deal_price_precision, range, value, display)

  return offset + length, value
end

-- Market Id
ice_futures_mdf_impact_v1_1_43.market_id = {}

-- Size: Market Id
ice_futures_mdf_impact_v1_1_43.market_id.size = 4

-- Display: Market Id
ice_futures_mdf_impact_v1_1_43.market_id.display = function(value)
  return "Market Id: "..value
end

-- Dissect: Market Id
ice_futures_mdf_impact_v1_1_43.market_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.market_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_id, range, value, display)

  return offset + length, value
end

-- Option Settlement Price Message
ice_futures_mdf_impact_v1_1_43.option_settlement_price_message = {}

-- Calculate size of: Option Settlement Price Message
ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_official.size

  index = index + ice_futures_mdf_impact_v1_1_43.valuation_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.volatility.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.delta.size

  return index
end

-- Display: Option Settlement Price Message
ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Settlement Price Message
ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: Numeric
  index, settlement_price_with_deal_price_precision = ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Is Official: Alpha
  index, is_official = ice_futures_mdf_impact_v1_1_43.is_official.dissect(buffer, index, packet, parent)

  -- Valuation Date Time: Numeric
  index, valuation_date_time = ice_futures_mdf_impact_v1_1_43.valuation_date_time.dissect(buffer, index, packet, parent)

  -- Volatility: Numeric
  index, volatility = ice_futures_mdf_impact_v1_1_43.volatility.dissect(buffer, index, packet, parent)

  -- Settlement Price: Numeric
  index, settlement_price = ice_futures_mdf_impact_v1_1_43.settlement_price.dissect(buffer, index, packet, parent)

  -- Delta: Numeric
  index, delta = ice_futures_mdf_impact_v1_1_43.delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Settlement Price Message
ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.dissect = function(buffer, offset, packet, parent)
  if show.option_settlement_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.option_settlement_price_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Date
ice_futures_mdf_impact_v1_1_43.open_interest_date = {}

-- Size: Open Interest Date
ice_futures_mdf_impact_v1_1_43.open_interest_date.size = 10

-- Display: Open Interest Date
ice_futures_mdf_impact_v1_1_43.open_interest_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Open Interest Date: No Value"
  end

  return "Open Interest Date: "..value
end

-- Dissect: Open Interest Date
ice_futures_mdf_impact_v1_1_43.open_interest_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.open_interest_date.size
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

  local display = ice_futures_mdf_impact_v1_1_43.open_interest_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest_date, range, value, display)

  return offset + length, value
end

-- Open Interest
ice_futures_mdf_impact_v1_1_43.open_interest = {}

-- Size: Open Interest
ice_futures_mdf_impact_v1_1_43.open_interest.size = 4

-- Display: Open Interest
ice_futures_mdf_impact_v1_1_43.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
ice_futures_mdf_impact_v1_1_43.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.open_interest.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Option Open Interest Message
ice_futures_mdf_impact_v1_1_43.option_open_interest_message = {}

-- Calculate size of: Option Open Interest Message
ice_futures_mdf_impact_v1_1_43.option_open_interest_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest_date.size

  return index
end

-- Display: Option Open Interest Message
ice_futures_mdf_impact_v1_1_43.option_open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Option Open Interest Message
ice_futures_mdf_impact_v1_1_43.option_open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = ice_futures_mdf_impact_v1_1_43.open_interest.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Open Interest Date: Alpha
  index, open_interest_date = ice_futures_mdf_impact_v1_1_43.open_interest_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Open Interest Message
ice_futures_mdf_impact_v1_1_43.option_open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.option_open_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.option_open_interest_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.option_open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.option_open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.option_open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Side
ice_futures_mdf_impact_v1_1_43.side = {}

-- Size: Side
ice_futures_mdf_impact_v1_1_43.side.size = 1

-- Display: Side
ice_futures_mdf_impact_v1_1_43.side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Side: No Value"
  end

  if value == " " then
    return "Side: None (<whitespace>)"
  end
  if value == "1" then
    return "Side: Bid (1)"
  end
  if value == "2" then
    return "Side: Offer (2)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
ice_futures_mdf_impact_v1_1_43.side.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.side, range, value, display)

  return offset + length, value
end

-- Market Type Id
ice_futures_mdf_impact_v1_1_43.market_type_id = {}

-- Size: Market Type Id
ice_futures_mdf_impact_v1_1_43.market_type_id.size = 2

-- Display: Market Type Id
ice_futures_mdf_impact_v1_1_43.market_type_id.display = function(value)
  if value == 0 then
    return "Market Type Id: Financial Gas (0)"
  end
  if value == 1 then
    return "Market Type Id: Financial Power (1)"
  end
  if value == 2 then
    return "Market Type Id: Oil (2)"
  end
  if value == 3 then
    return "Market Type Id: Ipe Natural Gas Futures (3)"
  end
  if value == 4 then
    return "Market Type Id: Ipe Gas Oil Futures (4)"
  end
  if value == 5 then
    return "Market Type Id: Ipe Brent Futures (5)"
  end
  if value == 7 then
    return "Market Type Id: Ipe Uk Electricity Futures Peak (7)"
  end
  if value == 8 then
    return "Market Type Id: Ipe Uk Electricity Futures Base (8)"
  end
  if value == 9 then
    return "Market Type Id: Ice Wti Crude Futures (9)"
  end
  if value == 10 then
    return "Market Type Id: G C Newcastle Coal Futures (10)"
  end
  if value == 11 then
    return "Market Type Id: Ice Brent Wti Futures Spread (11)"
  end
  if value == 12 then
    return "Market Type Id: Ipeecx European Emissions (12)"
  end
  if value == 13 then
    return "Market Type Id: Ice Heating Oil Futures (13)"
  end
  if value == 14 then
    return "Market Type Id: Ice Heating Oil Wti Futures Crack (14)"
  end
  if value == 15 then
    return "Market Type Id: Ice Nyh Rbob Gasoline Futures (15)"
  end
  if value == 16 then
    return "Market Type Id: Ice Nyh Rbob Gasoline Wti Futures Crack (16)"
  end
  if value == 17 then
    return "Market Type Id: Ice Rotterdam Coal Futures (17)"
  end
  if value == 18 then
    return "Market Type Id: Ice Richards Bay Coal Futures (18)"
  end
  if value == 19 then
    return "Market Type Id: Ice Rotterdam Richards Bay Coal Futures Spread (19)"
  end
  if value == 20 then
    return "Market Type Id: Cocoa (20)"
  end
  if value == 21 then
    return "Market Type Id: Coffee C (21)"
  end
  if value == 22 then
    return "Market Type Id: Cotton No 2 (22)"
  end
  if value == 23 then
    return "Market Type Id: Fcoj A (23)"
  end
  if value == 24 then
    return "Market Type Id: Sugar No 11 (24)"
  end
  if value == 25 then
    return "Market Type Id: Heat Rate Spread (25)"
  end
  if value == 26 then
    return "Market Type Id: Us Dollar Index (26)"
  end
  if value == 36 then
    return "Market Type Id: Canadian Oilseeds (36)"
  end
  if value == 38 then
    return "Market Type Id: Ecx Cer Futures (38)"
  end
  if value == 39 then
    return "Market Type Id: Foreign Exchange (39)"
  end
  if value == 40 then
    return "Market Type Id: Financial Index Data (40)"
  end
  if value == 41 then
    return "Market Type Id: Sugar No 16 (41)"
  end
  if value == 42 then
    return "Market Type Id: Ecx Euacer Futures Spread (42)"
  end
  if value == 44 then
    return "Market Type Id: Henry Hub (44)"
  end
  if value == 48 then
    return "Market Type Id: Dutch Ttf Gas Futures (48)"
  end
  if value == 50 then
    return "Market Type Id: German Natural Gas Futures (50)"
  end
  if value == 51 then
    return "Market Type Id: European Gas Spreads (51)"
  end
  if value == 53 then
    return "Market Type Id: Canadian Financial Gas (53)"
  end
  if value == 54 then
    return "Market Type Id: Ngx Canadian Physical Crude (54)"
  end
  if value == 55 then
    return "Market Type Id: Us Coal Futures (55)"
  end
  if value == 57 then
    return "Market Type Id: Fob Indo Subbit Coal Futures (57)"
  end
  if value == 58 then
    return "Market Type Id: Heating Oil Brent Futures Crack (58)"
  end
  if value == 59 then
    return "Market Type Id: Nyh Rbob Gasoline Brent Futures Crack (59)"
  end
  if value == 60 then
    return "Market Type Id: Wet Freight (60)"
  end
  if value == 61 then
    return "Market Type Id: Dry Freight (61)"
  end
  if value == 62 then
    return "Market Type Id: Ferrous Metals (62)"
  end
  if value == 63 then
    return "Market Type Id: Platts Variable Oil (63)"
  end
  if value == 66 then
    return "Market Type Id: Nyh Rbob Gasoline Heating Oil Spread (66)"
  end
  if value == 69 then
    return "Market Type Id: Physical Environmental (69)"
  end
  if value == 70 then
    return "Market Type Id: Heating Oil Ls Gasoil Futures Spread (70)"
  end
  if value == 71 then
    return "Market Type Id: Ls Gasoil Brent Futures Crack (71)"
  end
  if value == 72 then
    return "Market Type Id: Nyh Rbob Gasoline Ls Gasoil Futures Spread (72)"
  end
  if value == 84 then
    return "Market Type Id: Ecx Euaa Futures (84)"
  end
  if value == 85 then
    return "Market Type Id: Ecx Cereuaa Futures Spread (85)"
  end
  if value == 86 then
    return "Market Type Id: Ecx Euaaeua Futures Spread (86)"
  end
  if value == 89 then
    return "Market Type Id: Soybean (89)"
  end
  if value == 92 then
    return "Market Type Id: Ecx Eua Eib Auction (92)"
  end
  if value == 93 then
    return "Market Type Id: Financial Lng (93)"
  end
  if value == 95 then
    return "Market Type Id: Eua Uk Auction (95)"
  end
  if value == 96 then
    return "Market Type Id: Euaa Uk Auction (96)"
  end
  if value == 97 then
    return "Market Type Id: Cfr South China Coal Futures (97)"
  end
  if value == 98 then
    return "Market Type Id: Belgian Power Futures (98)"
  end
  if value == 99 then
    return "Market Type Id: Dutch Power Futures (99)"
  end
  if value == 100 then
    return "Market Type Id: G C Newcastle Fob Indo Subbit Coal Futures Spread (100)"
  end
  if value == 101 then
    return "Market Type Id: Richards Bayg C Newcastle Coal Futures Spread (101)"
  end
  if value == 102 then
    return "Market Type Id: Fcoj A Mini (102)"
  end
  if value == 104 then
    return "Market Type Id: Cif Us (104)"
  end
  if value == 108 then
    return "Market Type Id: D 6 Rin (108)"
  end
  if value == 111 then
    return "Market Type Id: European Power Spreads (111)"
  end
  if value == 112 then
    return "Market Type Id: Taqa (112)"
  end
  if value == 113 then
    return "Market Type Id: Belgian Ztp Gas Spot (113)"
  end
  if value == 114 then
    return "Market Type Id: Dutch Ttf Gas Spot (114)"
  end
  if value == 115 then
    return "Market Type Id: Dutch Ttf Gas Storage (115)"
  end
  if value == 116 then
    return "Market Type Id: European Gas Spot Spreads (116)"
  end
  if value == 117 then
    return "Market Type Id: Belgian Ztp Gas Futures (117)"
  end
  if value == 118 then
    return "Market Type Id: Uk Ocm Gas Spot (118)"
  end
  if value == 119 then
    return "Market Type Id: Belgian Gas Spreads (119)"
  end
  if value == 124 then
    return "Market Type Id: Financial Olefins (124)"
  end
  if value == 125 then
    return "Market Type Id: Financial Monomers (125)"
  end
  if value == 126 then
    return "Market Type Id: Platts Variable Oil Urals (126)"
  end
  if value == 127 then
    return "Market Type Id: Endex Spot Market Indices (127)"
  end
  if value == 131 then
    return "Market Type Id: Interest Rate Futures (131)"
  end
  if value == 133 then
    return "Market Type Id: Singapore Energy (133)"
  end
  if value == 134 then
    return "Market Type Id: Singapore Financials (134)"
  end
  if value == 135 then
    return "Market Type Id: Singapore Metals (135)"
  end
  if value == 136 then
    return "Market Type Id: Italian Natural Gas Futures (136)"
  end
  if value == 137 then
    return "Market Type Id: Italian Power Futures (137)"
  end
  if value == 139 then
    return "Market Type Id: Credit Swap Data (139)"
  end
  if value == 140 then
    return "Market Type Id: Gold Fixing (140)"
  end
  if value == 141 then
    return "Market Type Id: North Sea Partials (141)"
  end
  if value == 142 then
    return "Market Type Id: Eu Financial Power Spreads (142)"
  end
  if value == 143 then
    return "Market Type Id: Eu Financial Power Futures (143)"
  end
  if value == 144 then
    return "Market Type Id: Oil Cad (144)"
  end
  if value == 147 then
    return "Market Type Id: Silver Fixing (147)"
  end
  if value == 149 then
    return "Market Type Id: Uk Spark Spread (149)"
  end
  if value == 150 then
    return "Market Type Id: Uk Ocm Physical Gas Spot (150)"
  end
  if value == 152 then
    return "Market Type Id: Japan Domestic Waterborne (152)"
  end
  if value == 154 then
    return "Market Type Id: Daily Metals (154)"
  end
  if value == 155 then
    return "Market Type Id: Brix Energia Fin (155)"
  end
  if value == 156 then
    return "Market Type Id: Japan Domestic Rack (156)"
  end
  if value == 157 then
    return "Market Type Id: Financial Us Lng (157)"
  end
  if value == 160 then
    return "Market Type Id: Ice Rotterdam Newcastle Coal Futures Spread (160)"
  end
  if value == 165 then
    return "Market Type Id: Oil Americas (165)"
  end
  if value == 167 then
    return "Market Type Id: Platts Petrochemical (167)"
  end
  if value == 168 then
    return "Market Type Id: Permian Wti Futures (168)"
  end
  if value == 170 then
    return "Market Type Id: Endex Equity Indices (170)"
  end
  if value == 171 then
    return "Market Type Id: Endex Single Stock Options (171)"
  end
  if value == 172 then
    return "Market Type Id: Ifus Ice Indices (172)"
  end
  if value == 173 then
    return "Market Type Id: Platts Asia Bunker (173)"
  end
  if value == 177 then
    return "Market Type Id: Sofr Futures (177)"
  end
  if value == 178 then
    return "Market Type Id: Digital Asset Futures (178)"
  end
  if value == 179 then
    return "Market Type Id: Permian Brent Futures Spread (179)"
  end
  if value == 180 then
    return "Market Type Id: Permian Wti Futures Spread (180)"
  end
  if value == 200 then
    return "Market Type Id: Liffe Sti Rs (200)"
  end
  if value == 202 then
    return "Market Type Id: Liffe Bonds (202)"
  end
  if value == 203 then
    return "Market Type Id: Liffe Swapnotes (203)"
  end
  if value == 205 then
    return "Market Type Id: 1 (205)"
  end
  if value == 206 then
    return "Market Type Id: Metals (206)"
  end
  if value == 207 then
    return "Market Type Id: Ifus Equity Indices (207)"
  end
  if value == 208 then
    return "Market Type Id: Gcf Repo (208)"
  end
  if value == 209 then
    return "Market Type Id: Liffe Three Month Euro And Eonia (209)"
  end
  if value == 210 then
    return "Market Type Id: Eurodollar (210)"
  end
  if value == 211 then
    return "Market Type Id: Liffe Equity Derivatives Non Us Based (211)"
  end
  if value == 212 then
    return "Market Type Id: Liffe Equity Derivatives Us Based (212)"
  end
  if value == 213 then
    return "Market Type Id: Liffe Index Options (213)"
  end
  if value == 214 then
    return "Market Type Id: Liffe Index Futures Us Restricted (214)"
  end
  if value == 215 then
    return "Market Type Id: Liffe Index Futures Non Us Restricted (215)"
  end
  if value == 305 then
    return "Market Type Id: Physical Gas (305)"
  end
  if value == 306 then
    return "Market Type Id: Power (306)"
  end
  if value == 314 then
    return "Market Type Id: Ngx Physical Gas (314)"
  end
  if value == 315 then
    return "Market Type Id: Ngx Financial Power (315)"
  end
  if value == 316 then
    return "Market Type Id: Ngx Financial Gas (316)"
  end
  if value == 317 then
    return "Market Type Id: Financial Ngl (317)"
  end
  if value == 318 then
    return "Market Type Id: Olefins Polymers (318)"
  end
  if value == 319 then
    return "Market Type Id: Physical Ngl (319)"
  end
  if value == 320 then
    return "Market Type Id: Physical Oil (320)"
  end
  if value == 600 then
    return "Market Type Id: Test Ipe (600)"
  end
  if value == 601 then
    return "Market Type Id: Test Nybot (601)"
  end
  if value == 602 then
    return "Market Type Id: Test Ndex (602)"
  end
  if value == 603 then
    return "Market Type Id: Test Liffeuk 1 (603)"
  end
  if value == 604 then
    return "Market Type Id: Test Liffeuk 2 (604)"
  end

  return "Market Type Id: Unknown("..value..")"
end

-- Dissect: Market Type Id
ice_futures_mdf_impact_v1_1_43.market_type_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.market_type_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.market_type_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_type_id, range, value, display)

  return offset + length, value
end

-- Rfq System Id
ice_futures_mdf_impact_v1_1_43.rfq_system_id = {}

-- Size: Rfq System Id
ice_futures_mdf_impact_v1_1_43.rfq_system_id.size = 8

-- Display: Rfq System Id
ice_futures_mdf_impact_v1_1_43.rfq_system_id.display = function(value)
  return "Rfq System Id: "..value
end

-- Dissect: Rfq System Id
ice_futures_mdf_impact_v1_1_43.rfq_system_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.rfq_system_id.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.rfq_system_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.rfq_system_id, range, value, display)

  return offset + length, value
end

-- Message Timestamp
ice_futures_mdf_impact_v1_1_43.message_timestamp = {}

-- Size: Message Timestamp
ice_futures_mdf_impact_v1_1_43.message_timestamp.size = 8

-- Display: Message Timestamp
ice_futures_mdf_impact_v1_1_43.message_timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Message Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Message Timestamp
ice_futures_mdf_impact_v1_1_43.message_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.message_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.message_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.message_timestamp, range, value, display)

  return offset + length, value
end

-- Rfq Message
ice_futures_mdf_impact_v1_1_43.rfq_message = {}

-- Calculate size of: Rfq Message
ice_futures_mdf_impact_v1_1_43.rfq_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_timestamp.size

  index = index + ice_futures_mdf_impact_v1_1_43.rfq_system_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_type_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.underlying_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.side.size

  return index
end

-- Display: Rfq Message
ice_futures_mdf_impact_v1_1_43.rfq_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rfq Message
ice_futures_mdf_impact_v1_1_43.rfq_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Message Timestamp: Numeric
  index, message_timestamp = ice_futures_mdf_impact_v1_1_43.message_timestamp.dissect(buffer, index, packet, parent)

  -- Rfq System Id: Numeric
  index, rfq_system_id = ice_futures_mdf_impact_v1_1_43.rfq_system_id.dissect(buffer, index, packet, parent)

  -- Market Type Id: Numeric
  index, market_type_id = ice_futures_mdf_impact_v1_1_43.market_type_id.dissect(buffer, index, packet, parent)

  -- Underlying Market Id: Numeric
  index, underlying_market_id = ice_futures_mdf_impact_v1_1_43.underlying_market_id.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = ice_futures_mdf_impact_v1_1_43.side.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rfq Message
ice_futures_mdf_impact_v1_1_43.rfq_message.dissect = function(buffer, offset, packet, parent)
  if show.rfq_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.rfq_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.rfq_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.rfq_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.rfq_message.fields(buffer, offset, packet, parent)
  end
end

-- Num Of Cycles
ice_futures_mdf_impact_v1_1_43.num_of_cycles = {}

-- Size: Num Of Cycles
ice_futures_mdf_impact_v1_1_43.num_of_cycles.size = 4

-- Display: Num Of Cycles
ice_futures_mdf_impact_v1_1_43.num_of_cycles.display = function(value)
  return "Num Of Cycles: "..value
end

-- Dissect: Num Of Cycles
ice_futures_mdf_impact_v1_1_43.num_of_cycles.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.num_of_cycles.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.num_of_cycles.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.num_of_cycles, range, value, display)

  return offset + length, value
end

-- Old Num Of Cycles
ice_futures_mdf_impact_v1_1_43.old_num_of_cycles = {}

-- Size: Old Num Of Cycles
ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.size = 2

-- Display: Old Num Of Cycles
ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.display = function(value)
  return "Old Num Of Cycles: "..value
end

-- Dissect: Old Num Of Cycles
ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.old_num_of_cycles, range, value, display)

  return offset + length, value
end

-- Is Tradable
ice_futures_mdf_impact_v1_1_43.is_tradable = {}

-- Size: Is Tradable
ice_futures_mdf_impact_v1_1_43.is_tradable.size = 1

-- Display: Is Tradable
ice_futures_mdf_impact_v1_1_43.is_tradable.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Tradable: No Value"
  end

  if value == "Y" then
    return "Is Tradable: Yes (Y)"
  end
  if value == "N" then
    return "Is Tradable: No (N)"
  end

  return "Is Tradable: Unknown("..value..")"
end

-- Dissect: Is Tradable
ice_futures_mdf_impact_v1_1_43.is_tradable.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_tradable.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_tradable.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_tradable, range, value, display)

  return offset + length, value
end

-- Screen Last Trade Day
ice_futures_mdf_impact_v1_1_43.screen_last_trade_day = {}

-- Size: Screen Last Trade Day
ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.size = 2

-- Display: Screen Last Trade Day
ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.display = function(value)
  return "Screen Last Trade Day: "..value
end

-- Dissect: Screen Last Trade Day
ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.screen_last_trade_day, range, value, display)

  return offset + length, value
end

-- Screen Last Trade Month
ice_futures_mdf_impact_v1_1_43.screen_last_trade_month = {}

-- Size: Screen Last Trade Month
ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.size = 2

-- Display: Screen Last Trade Month
ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.display = function(value)
  return "Screen Last Trade Month: "..value
end

-- Dissect: Screen Last Trade Month
ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.screen_last_trade_month, range, value, display)

  return offset + length, value
end

-- Screen Last Trade Year
ice_futures_mdf_impact_v1_1_43.screen_last_trade_year = {}

-- Size: Screen Last Trade Year
ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.size = 2

-- Display: Screen Last Trade Year
ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.display = function(value)
  return "Screen Last Trade Year: "..value
end

-- Dissect: Screen Last Trade Year
ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.screen_last_trade_year, range, value, display)

  return offset + length, value
end

-- Mifid Regulated Market
ice_futures_mdf_impact_v1_1_43.mifid_regulated_market = {}

-- Size: Mifid Regulated Market
ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.size = 1

-- Display: Mifid Regulated Market
ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Mifid Regulated Market: No Value"
  end

  if value == "Y" then
    return "Mifid Regulated Market: Yes (Y)"
  end
  if value == "N" then
    return "Mifid Regulated Market: No (N)"
  end

  return "Mifid Regulated Market: Unknown("..value..")"
end

-- Dissect: Mifid Regulated Market
ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.mifid_regulated_market, range, value, display)

  return offset + length, value
end

-- Unit Of Measure
ice_futures_mdf_impact_v1_1_43.unit_of_measure = {}

-- Size: Unit Of Measure
ice_futures_mdf_impact_v1_1_43.unit_of_measure.size = 30

-- Display: Unit Of Measure
ice_futures_mdf_impact_v1_1_43.unit_of_measure.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Of Measure: No Value"
  end

  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
ice_futures_mdf_impact_v1_1_43.unit_of_measure.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.unit_of_measure.size
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

  local display = ice_futures_mdf_impact_v1_1_43.unit_of_measure.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.unit_of_measure, range, value, display)

  return offset + length, value
end

-- Guaranteed Cross Supported
ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported = {}

-- Size: Guaranteed Cross Supported
ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported.size = 1

-- Display: Guaranteed Cross Supported
ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Guaranteed Cross Supported: No Value"
  end

  if value == "Y" then
    return "Guaranteed Cross Supported: Yes (Y)"
  end
  if value == "N" then
    return "Guaranteed Cross Supported: No (N)"
  end

  return "Guaranteed Cross Supported: Unknown("..value..")"
end

-- Dissect: Guaranteed Cross Supported
ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.guaranteed_cross_supported, range, value, display)

  return offset + length, value
end

-- Cross Order Supported
ice_futures_mdf_impact_v1_1_43.cross_order_supported = {}

-- Size: Cross Order Supported
ice_futures_mdf_impact_v1_1_43.cross_order_supported.size = 1

-- Display: Cross Order Supported
ice_futures_mdf_impact_v1_1_43.cross_order_supported.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Cross Order Supported: No Value"
  end

  if value == "Y" then
    return "Cross Order Supported: Yes (Y)"
  end
  if value == "N" then
    return "Cross Order Supported: No (N)"
  end

  return "Cross Order Supported: Unknown("..value..")"
end

-- Dissect: Cross Order Supported
ice_futures_mdf_impact_v1_1_43.cross_order_supported.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.cross_order_supported.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.cross_order_supported.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.cross_order_supported, range, value, display)

  return offset + length, value
end

-- Gt Allowed
ice_futures_mdf_impact_v1_1_43.gt_allowed = {}

-- Size: Gt Allowed
ice_futures_mdf_impact_v1_1_43.gt_allowed.size = 1

-- Display: Gt Allowed
ice_futures_mdf_impact_v1_1_43.gt_allowed.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Gt Allowed: No Value"
  end

  if value == "Y" then
    return "Gt Allowed: Yes (Y)"
  end
  if value == "N" then
    return "Gt Allowed: No (N)"
  end

  return "Gt Allowed: Unknown("..value..")"
end

-- Dissect: Gt Allowed
ice_futures_mdf_impact_v1_1_43.gt_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.gt_allowed.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.gt_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.gt_allowed, range, value, display)

  return offset + length, value
end

-- Is Block Only
ice_futures_mdf_impact_v1_1_43.is_block_only = {}

-- Size: Is Block Only
ice_futures_mdf_impact_v1_1_43.is_block_only.size = 1

-- Display: Is Block Only
ice_futures_mdf_impact_v1_1_43.is_block_only.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Block Only: No Value"
  end

  if value == "Y" then
    return "Is Block Only: Yes (Y)"
  end
  if value == "N" then
    return "Is Block Only: No (N)"
  end

  return "Is Block Only: Unknown("..value..")"
end

-- Dissect: Is Block Only
ice_futures_mdf_impact_v1_1_43.is_block_only.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_block_only.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_block_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_block_only, range, value, display)

  return offset + length, value
end

-- Settlement Type
ice_futures_mdf_impact_v1_1_43.settlement_type = {}

-- Size: Settlement Type
ice_futures_mdf_impact_v1_1_43.settlement_type.size = 1

-- Display: Settlement Type
ice_futures_mdf_impact_v1_1_43.settlement_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Settlement Type: No Value"
  end

  if value == "0" then
    return "Settlement Type: Financial (0)"
  end
  if value == "1" then
    return "Settlement Type: Physical (1)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
ice_futures_mdf_impact_v1_1_43.settlement_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.settlement_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.settlement_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Flex Allowed
ice_futures_mdf_impact_v1_1_43.flex_allowed = {}

-- Size: Flex Allowed
ice_futures_mdf_impact_v1_1_43.flex_allowed.size = 1

-- Display: Flex Allowed
ice_futures_mdf_impact_v1_1_43.flex_allowed.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Flex Allowed: No Value"
  end

  if value == "Y" then
    return "Flex Allowed: Yes (Y)"
  end
  if value == "N" then
    return "Flex Allowed: No (N)"
  end

  return "Flex Allowed: Unknown("..value..")"
end

-- Dissect: Flex Allowed
ice_futures_mdf_impact_v1_1_43.flex_allowed.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.flex_allowed.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.flex_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.flex_allowed, range, value, display)

  return offset + length, value
end

-- Tick Value
ice_futures_mdf_impact_v1_1_43.tick_value = {}

-- Size: Tick Value
ice_futures_mdf_impact_v1_1_43.tick_value.size = 8

-- Display: Tick Value
ice_futures_mdf_impact_v1_1_43.tick_value.display = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
ice_futures_mdf_impact_v1_1_43.tick_value.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.tick_value.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.tick_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.tick_value, range, value, display)

  return offset + length, value
end

-- Unit Qty Denominator
ice_futures_mdf_impact_v1_1_43.unit_qty_denominator = {}

-- Size: Unit Qty Denominator
ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.size = 1

-- Display: Unit Qty Denominator
ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Unit Qty Denominator: No Value"
  end

  return "Unit Qty Denominator: "..value
end

-- Dissect: Unit Qty Denominator
ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.unit_qty_denominator, range, value, display)

  return offset + length, value
end

-- Settle Price Denominator
ice_futures_mdf_impact_v1_1_43.settle_price_denominator = {}

-- Size: Settle Price Denominator
ice_futures_mdf_impact_v1_1_43.settle_price_denominator.size = 1

-- Display: Settle Price Denominator
ice_futures_mdf_impact_v1_1_43.settle_price_denominator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Settle Price Denominator: No Value"
  end

  return "Settle Price Denominator: "..value
end

-- Dissect: Settle Price Denominator
ice_futures_mdf_impact_v1_1_43.settle_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.settle_price_denominator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.settle_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.settle_price_denominator, range, value, display)

  return offset + length, value
end

-- Hedge Market Id
ice_futures_mdf_impact_v1_1_43.hedge_market_id = {}

-- Size: Hedge Market Id
ice_futures_mdf_impact_v1_1_43.hedge_market_id.size = 4

-- Display: Hedge Market Id
ice_futures_mdf_impact_v1_1_43.hedge_market_id.display = function(value)
  return "Hedge Market Id: "..value
end

-- Dissect: Hedge Market Id
ice_futures_mdf_impact_v1_1_43.hedge_market_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_market_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.hedge_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_market_id, range, value, display)

  return offset + length, value
end

-- Options Expiration Type
ice_futures_mdf_impact_v1_1_43.options_expiration_type = {}

-- Size: Options Expiration Type
ice_futures_mdf_impact_v1_1_43.options_expiration_type.size = 1

-- Display: Options Expiration Type
ice_futures_mdf_impact_v1_1_43.options_expiration_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Options Expiration Type: No Value"
  end

  if value == "M" then
    return "Options Expiration Type: Monthly (M)"
  end
  if value == "D" then
    return "Options Expiration Type: Daily (D)"
  end

  return "Options Expiration Type: Unknown("..value..")"
end

-- Dissect: Options Expiration Type
ice_futures_mdf_impact_v1_1_43.options_expiration_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.options_expiration_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.options_expiration_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_type, range, value, display)

  return offset + length, value
end

-- Options Style
ice_futures_mdf_impact_v1_1_43.options_style = {}

-- Size: Options Style
ice_futures_mdf_impact_v1_1_43.options_style.size = 1

-- Display: Options Style
ice_futures_mdf_impact_v1_1_43.options_style.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Options Style: No Value"
  end

  if value == "A" then
    return "Options Style: American (A)"
  end
  if value == "E" then
    return "Options Style: European (E)"
  end
  if value == "0" then
    return "Options Style: None (0)"
  end
  if value == "3" then
    return "Options Style: Asian (3)"
  end
  if value == "4" then
    return "Options Style: One Time (4)"
  end

  return "Options Style: Unknown("..value..")"
end

-- Dissect: Options Style
ice_futures_mdf_impact_v1_1_43.options_style.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.options_style.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.options_style.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.options_style, range, value, display)

  return offset + length, value
end

-- Options Expiration Day
ice_futures_mdf_impact_v1_1_43.options_expiration_day = {}

-- Size: Options Expiration Day
ice_futures_mdf_impact_v1_1_43.options_expiration_day.size = 2

-- Display: Options Expiration Day
ice_futures_mdf_impact_v1_1_43.options_expiration_day.display = function(value)
  return "Options Expiration Day: "..value
end

-- Dissect: Options Expiration Day
ice_futures_mdf_impact_v1_1_43.options_expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.options_expiration_day.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.options_expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_day, range, value, display)

  return offset + length, value
end

-- Options Expiration Month
ice_futures_mdf_impact_v1_1_43.options_expiration_month = {}

-- Size: Options Expiration Month
ice_futures_mdf_impact_v1_1_43.options_expiration_month.size = 2

-- Display: Options Expiration Month
ice_futures_mdf_impact_v1_1_43.options_expiration_month.display = function(value)
  return "Options Expiration Month: "..value
end

-- Dissect: Options Expiration Month
ice_futures_mdf_impact_v1_1_43.options_expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.options_expiration_month.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.options_expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_month, range, value, display)

  return offset + length, value
end

-- Options Expiration Year
ice_futures_mdf_impact_v1_1_43.options_expiration_year = {}

-- Size: Options Expiration Year
ice_futures_mdf_impact_v1_1_43.options_expiration_year.size = 2

-- Display: Options Expiration Year
ice_futures_mdf_impact_v1_1_43.options_expiration_year.display = function(value)
  return "Options Expiration Year: "..value
end

-- Dissect: Options Expiration Year
ice_futures_mdf_impact_v1_1_43.options_expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.options_expiration_year.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.options_expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.options_expiration_year, range, value, display)

  return offset + length, value
end

-- Increment Premium Price
ice_futures_mdf_impact_v1_1_43.increment_premium_price = {}

-- Size: Increment Premium Price
ice_futures_mdf_impact_v1_1_43.increment_premium_price.size = 4

-- Display: Increment Premium Price
ice_futures_mdf_impact_v1_1_43.increment_premium_price.display = function(value)
  return "Increment Premium Price: "..value
end

-- Dissect: Increment Premium Price
ice_futures_mdf_impact_v1_1_43.increment_premium_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.increment_premium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.increment_premium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.increment_premium_price, range, value, display)

  return offset + length, value
end

-- Max Options Price
ice_futures_mdf_impact_v1_1_43.max_options_price = {}

-- Size: Max Options Price
ice_futures_mdf_impact_v1_1_43.max_options_price.size = 8

-- Display: Max Options Price
ice_futures_mdf_impact_v1_1_43.max_options_price.display = function(value)
  return "Max Options Price: "..value
end

-- Dissect: Max Options Price
ice_futures_mdf_impact_v1_1_43.max_options_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.max_options_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.max_options_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.max_options_price, range, value, display)

  return offset + length, value
end

-- Min Options Price
ice_futures_mdf_impact_v1_1_43.min_options_price = {}

-- Size: Min Options Price
ice_futures_mdf_impact_v1_1_43.min_options_price.size = 8

-- Display: Min Options Price
ice_futures_mdf_impact_v1_1_43.min_options_price.display = function(value)
  return "Min Options Price: "..value
end

-- Dissect: Min Options Price
ice_futures_mdf_impact_v1_1_43.min_options_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.min_options_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.min_options_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.min_options_price, range, value, display)

  return offset + length, value
end

-- Num Decimals Strike Price
ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price = {}

-- Size: Num Decimals Strike Price
ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price.size = 1

-- Display: Num Decimals Strike Price
ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Num Decimals Strike Price: No Value"
  end

  return "Num Decimals Strike Price: "..value
end

-- Dissect: Num Decimals Strike Price
ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_strike_price, range, value, display)

  return offset + length, value
end

-- Currency
ice_futures_mdf_impact_v1_1_43.currency = {}

-- Size: Currency
ice_futures_mdf_impact_v1_1_43.currency.size = 20

-- Display: Currency
ice_futures_mdf_impact_v1_1_43.currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Currency: No Value"
  end

  return "Currency: "..value
end

-- Dissect: Currency
ice_futures_mdf_impact_v1_1_43.currency.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.currency.size
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

  local display = ice_futures_mdf_impact_v1_1_43.currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.currency, range, value, display)

  return offset + length, value
end

-- Min Qty
ice_futures_mdf_impact_v1_1_43.min_qty = {}

-- Size: Min Qty
ice_futures_mdf_impact_v1_1_43.min_qty.size = 4

-- Display: Min Qty
ice_futures_mdf_impact_v1_1_43.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
ice_futures_mdf_impact_v1_1_43.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.min_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Deal Price Denominator
ice_futures_mdf_impact_v1_1_43.deal_price_denominator = {}

-- Size: Deal Price Denominator
ice_futures_mdf_impact_v1_1_43.deal_price_denominator.size = 1

-- Display: Deal Price Denominator
ice_futures_mdf_impact_v1_1_43.deal_price_denominator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Deal Price Denominator: No Value"
  end

  return "Deal Price Denominator: "..value
end

-- Dissect: Deal Price Denominator
ice_futures_mdf_impact_v1_1_43.deal_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.deal_price_denominator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.deal_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.deal_price_denominator, range, value, display)

  return offset + length, value
end

-- Market Desc
ice_futures_mdf_impact_v1_1_43.market_desc = {}

-- Size: Market Desc
ice_futures_mdf_impact_v1_1_43.market_desc.size = 120

-- Display: Market Desc
ice_futures_mdf_impact_v1_1_43.market_desc.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Market Desc: No Value"
  end

  return "Market Desc: "..value
end

-- Dissect: Market Desc
ice_futures_mdf_impact_v1_1_43.market_desc.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.market_desc.size
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

  local display = ice_futures_mdf_impact_v1_1_43.market_desc.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_desc, range, value, display)

  return offset + length, value
end

-- Lot Size
ice_futures_mdf_impact_v1_1_43.lot_size = {}

-- Size: Lot Size
ice_futures_mdf_impact_v1_1_43.lot_size.size = 4

-- Display: Lot Size
ice_futures_mdf_impact_v1_1_43.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
ice_futures_mdf_impact_v1_1_43.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.lot_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Increment Qty
ice_futures_mdf_impact_v1_1_43.increment_qty = {}

-- Size: Increment Qty
ice_futures_mdf_impact_v1_1_43.increment_qty.size = 4

-- Display: Increment Qty
ice_futures_mdf_impact_v1_1_43.increment_qty.display = function(value)
  return "Increment Qty: "..value
end

-- Dissect: Increment Qty
ice_futures_mdf_impact_v1_1_43.increment_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.increment_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.increment_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.increment_qty, range, value, display)

  return offset + length, value
end

-- Order Price Denominator
ice_futures_mdf_impact_v1_1_43.order_price_denominator = {}

-- Size: Order Price Denominator
ice_futures_mdf_impact_v1_1_43.order_price_denominator.size = 1

-- Display: Order Price Denominator
ice_futures_mdf_impact_v1_1_43.order_price_denominator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Order Price Denominator: No Value"
  end

  return "Order Price Denominator: "..value
end

-- Dissect: Order Price Denominator
ice_futures_mdf_impact_v1_1_43.order_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.order_price_denominator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.order_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.order_price_denominator, range, value, display)

  return offset + length, value
end

-- Trading Status
ice_futures_mdf_impact_v1_1_43.trading_status = {}

-- Size: Trading Status
ice_futures_mdf_impact_v1_1_43.trading_status.size = 1

-- Display: Trading Status
ice_futures_mdf_impact_v1_1_43.trading_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Trading Status: No Value"
  end

  if value == "O" then
    return "Trading Status: Open (O)"
  end
  if value == "C" then
    return "Trading Status: Close (C)"
  end
  if value == "E" then
    return "Trading Status: Expired (E)"
  end
  if value == "1" then
    return "Trading Status: Pre Open (1)"
  end
  if value == "2" then
    return "Trading Status: Pre Close (2)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
ice_futures_mdf_impact_v1_1_43.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.trading_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Futures Contract Symbol
ice_futures_mdf_impact_v1_1_43.futures_contract_symbol = {}

-- Size: Futures Contract Symbol
ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.size = 70

-- Display: Futures Contract Symbol
ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Futures Contract Symbol: No Value"
  end

  return "Futures Contract Symbol: "..value
end

-- Dissect: Futures Contract Symbol
ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.size
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

  local display = ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.futures_contract_symbol, range, value, display)

  return offset + length, value
end

-- New Options Market Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message = {}

-- Calculate size of: New Options Market Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.underlying_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.size

  index = index + ice_futures_mdf_impact_v1_1_43.trading_status.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.lot_size.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_desc.size

  index = index + ice_futures_mdf_impact_v1_1_43.option_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.strike_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.deal_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.min_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.currency.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.min_options_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.max_options_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_premium_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_expiration_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_expiration_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_expiration_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_style.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_expiration_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.settle_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.tick_value.size

  index = index + ice_futures_mdf_impact_v1_1_43.flex_allowed.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_block_only.size

  index = index + ice_futures_mdf_impact_v1_1_43.gt_allowed.size

  index = index + ice_futures_mdf_impact_v1_1_43.cross_order_supported.size

  index = index + ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_of_measure.size

  index = index + ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.size

  index = index + ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_tradable.size

  index = index + ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_type_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_of_cycles.size

  return index
end

-- Display: New Options Market Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Options Market Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Underlying Market Id: Numeric
  index, underlying_market_id = ice_futures_mdf_impact_v1_1_43.underlying_market_id.dissect(buffer, index, packet, parent)

  -- Futures Contract Symbol: Alpha
  index, futures_contract_symbol = ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = ice_futures_mdf_impact_v1_1_43.trading_status.dissect(buffer, index, packet, parent)

  -- Order Price Denominator: Alpha
  index, order_price_denominator = ice_futures_mdf_impact_v1_1_43.order_price_denominator.dissect(buffer, index, packet, parent)

  -- Increment Qty: Numeric
  index, increment_qty = ice_futures_mdf_impact_v1_1_43.increment_qty.dissect(buffer, index, packet, parent)

  -- Lot Size: Numeric
  index, lot_size = ice_futures_mdf_impact_v1_1_43.lot_size.dissect(buffer, index, packet, parent)

  -- Market Desc: Alpha
  index, market_desc = ice_futures_mdf_impact_v1_1_43.market_desc.dissect(buffer, index, packet, parent)

  -- Option Type: Alpha
  index, option_type = ice_futures_mdf_impact_v1_1_43.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: Numeric
  index, strike_price = ice_futures_mdf_impact_v1_1_43.strike_price.dissect(buffer, index, packet, parent)

  -- Deal Price Denominator: Alpha
  index, deal_price_denominator = ice_futures_mdf_impact_v1_1_43.deal_price_denominator.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = ice_futures_mdf_impact_v1_1_43.min_qty.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = ice_futures_mdf_impact_v1_1_43.currency.dissect(buffer, index, packet, parent)

  -- Num Decimals Strike Price: Alpha
  index, num_decimals_strike_price = ice_futures_mdf_impact_v1_1_43.num_decimals_strike_price.dissect(buffer, index, packet, parent)

  -- Min Options Price: Numeric
  index, min_options_price = ice_futures_mdf_impact_v1_1_43.min_options_price.dissect(buffer, index, packet, parent)

  -- Max Options Price: Numeric
  index, max_options_price = ice_futures_mdf_impact_v1_1_43.max_options_price.dissect(buffer, index, packet, parent)

  -- Increment Premium Price: Numeric
  index, increment_premium_price = ice_futures_mdf_impact_v1_1_43.increment_premium_price.dissect(buffer, index, packet, parent)

  -- Options Expiration Year: Numeric
  index, options_expiration_year = ice_futures_mdf_impact_v1_1_43.options_expiration_year.dissect(buffer, index, packet, parent)

  -- Options Expiration Month: Numeric
  index, options_expiration_month = ice_futures_mdf_impact_v1_1_43.options_expiration_month.dissect(buffer, index, packet, parent)

  -- Options Expiration Day: Numeric
  index, options_expiration_day = ice_futures_mdf_impact_v1_1_43.options_expiration_day.dissect(buffer, index, packet, parent)

  -- Options Style: Alpha
  index, options_style = ice_futures_mdf_impact_v1_1_43.options_style.dissect(buffer, index, packet, parent)

  -- Options Expiration Type: Alpha
  index, options_expiration_type = ice_futures_mdf_impact_v1_1_43.options_expiration_type.dissect(buffer, index, packet, parent)

  -- Hedge Market Id: Numeric
  index, hedge_market_id = ice_futures_mdf_impact_v1_1_43.hedge_market_id.dissect(buffer, index, packet, parent)

  -- Settle Price Denominator: Alpha
  index, settle_price_denominator = ice_futures_mdf_impact_v1_1_43.settle_price_denominator.dissect(buffer, index, packet, parent)

  -- Unit Qty Denominator: Alpha
  index, unit_qty_denominator = ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.dissect(buffer, index, packet, parent)

  -- Tick Value: Numeric
  index, tick_value = ice_futures_mdf_impact_v1_1_43.tick_value.dissect(buffer, index, packet, parent)

  -- Flex Allowed: Alpha
  index, flex_allowed = ice_futures_mdf_impact_v1_1_43.flex_allowed.dissect(buffer, index, packet, parent)

  -- Settlement Type: Alpha
  index, settlement_type = ice_futures_mdf_impact_v1_1_43.settlement_type.dissect(buffer, index, packet, parent)

  -- Is Block Only: Alpha
  index, is_block_only = ice_futures_mdf_impact_v1_1_43.is_block_only.dissect(buffer, index, packet, parent)

  -- Gt Allowed: Alpha
  index, gt_allowed = ice_futures_mdf_impact_v1_1_43.gt_allowed.dissect(buffer, index, packet, parent)

  -- Cross Order Supported: Alpha
  index, cross_order_supported = ice_futures_mdf_impact_v1_1_43.cross_order_supported.dissect(buffer, index, packet, parent)

  -- Guaranteed Cross Supported: Alpha
  index, guaranteed_cross_supported = ice_futures_mdf_impact_v1_1_43.guaranteed_cross_supported.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alpha
  index, unit_of_measure = ice_futures_mdf_impact_v1_1_43.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Mifid Regulated Market: Alpha
  index, mifid_regulated_market = ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.dissect(buffer, index, packet, parent)

  -- Screen Last Trade Year: Numeric
  index, screen_last_trade_year = ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.dissect(buffer, index, packet, parent)

  -- Screen Last Trade Month: Numeric
  index, screen_last_trade_month = ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.dissect(buffer, index, packet, parent)

  -- Screen Last Trade Day: Numeric
  index, screen_last_trade_day = ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.dissect(buffer, index, packet, parent)

  -- Is Tradable: Alpha
  index, is_tradable = ice_futures_mdf_impact_v1_1_43.is_tradable.dissect(buffer, index, packet, parent)

  -- Old Num Of Cycles: Numeric
  index, old_num_of_cycles = ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.dissect(buffer, index, packet, parent)

  -- Market Type Id: Numeric
  index, market_type_id = ice_futures_mdf_impact_v1_1_43.market_type_id.dissect(buffer, index, packet, parent)

  -- Num Of Cycles: Numeric
  index, num_of_cycles = ice_futures_mdf_impact_v1_1_43.num_of_cycles.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Options Market Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.dissect = function(buffer, offset, packet, parent)
  if show.new_options_market_definition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.new_options_market_definition_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.fields(buffer, offset, packet, parent)
  end
end

-- Leg Ratio Price Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator = {}

-- Size: Leg Ratio Price Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.size = 4

-- Display: Leg Ratio Price Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.display = function(value)
  return "Leg Ratio Price Denominator: "..value
end

-- Dissect: Leg Ratio Price Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_price_denominator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Price Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator = {}

-- Size: Leg Ratio Price Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.size = 4

-- Display: Leg Ratio Price Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.display = function(value)
  return "Leg Ratio Price Numerator: "..value
end

-- Dissect: Leg Ratio Price Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_price_numerator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator = {}

-- Size: Leg Ratio Qty Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.size = 4

-- Display: Leg Ratio Qty Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.display = function(value)
  return "Leg Ratio Qty Denominator: "..value
end

-- Dissect: Leg Ratio Qty Denominator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_qty_denominator, range, value, display)

  return offset + length, value
end

-- Leg Ratio Qty Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator = {}

-- Size: Leg Ratio Qty Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.size = 4

-- Display: Leg Ratio Qty Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.display = function(value)
  return "Leg Ratio Qty Numerator: "..value
end

-- Dissect: Leg Ratio Qty Numerator
ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_qty_numerator, range, value, display)

  return offset + length, value
end

-- Leg Strategy Code
ice_futures_mdf_impact_v1_1_43.leg_strategy_code = {}

-- Size: Leg Strategy Code
ice_futures_mdf_impact_v1_1_43.leg_strategy_code.size = 2

-- Display: Leg Strategy Code
ice_futures_mdf_impact_v1_1_43.leg_strategy_code.display = function(value)
  return "Leg Strategy Code: "..value
end

-- Dissect: Leg Strategy Code
ice_futures_mdf_impact_v1_1_43.leg_strategy_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_strategy_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_strategy_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_strategy_code, range, value, display)

  return offset + length, value
end

-- Leg Side
ice_futures_mdf_impact_v1_1_43.leg_side = {}

-- Size: Leg Side
ice_futures_mdf_impact_v1_1_43.leg_side.size = 1

-- Display: Leg Side
ice_futures_mdf_impact_v1_1_43.leg_side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Leg Side: No Value"
  end

  if value == " " then
    return "Leg Side: None (<whitespace>)"
  end
  if value == "1" then
    return "Leg Side: Bid (1)"
  end
  if value == "2" then
    return "Leg Side: Offer (2)"
  end

  return "Leg Side: Unknown("..value..")"
end

-- Dissect: Leg Side
ice_futures_mdf_impact_v1_1_43.leg_side.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.leg_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_side, range, value, display)

  return offset + length, value
end

-- Reserved 2
ice_futures_mdf_impact_v1_1_43.reserved_2 = {}

-- Size: Reserved 2
ice_futures_mdf_impact_v1_1_43.reserved_2.size = 2

-- Display: Reserved 2
ice_futures_mdf_impact_v1_1_43.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
ice_futures_mdf_impact_v1_1_43.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.reserved_2.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = ice_futures_mdf_impact_v1_1_43.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Leg Underlying Market Id
ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id = {}

-- Size: Leg Underlying Market Id
ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.size = 4

-- Display: Leg Underlying Market Id
ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.display = function(value)
  return "Leg Underlying Market Id: "..value
end

-- Dissect: Leg Underlying Market Id
ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_underlying_market_id, range, value, display)

  return offset + length, value
end

-- Leg Market Id
ice_futures_mdf_impact_v1_1_43.leg_market_id = {}

-- Size: Leg Market Id
ice_futures_mdf_impact_v1_1_43.leg_market_id.size = 4

-- Display: Leg Market Id
ice_futures_mdf_impact_v1_1_43.leg_market_id.display = function(value)
  return "Leg Market Id: "..value
end

-- Dissect: Leg Market Id
ice_futures_mdf_impact_v1_1_43.leg_market_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_market_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_market_id, range, value, display)

  return offset + length, value
end

-- Leg Body Length
ice_futures_mdf_impact_v1_1_43.leg_body_length = {}

-- Size: Leg Body Length
ice_futures_mdf_impact_v1_1_43.leg_body_length.size = 1

-- Display: Leg Body Length
ice_futures_mdf_impact_v1_1_43.leg_body_length.display = function(value)
  return "Leg Body Length: "..value
end

-- Dissect: Leg Body Length
ice_futures_mdf_impact_v1_1_43.leg_body_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_body_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_body_length, range, value, display)

  return offset + length, value
end

-- Extra Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition = {}

-- Calculate size of: Extra Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.leg_body_length.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.reserved_2.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_side.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_strategy_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.size

  return index
end

-- Display: Extra Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extra Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.fields = function(buffer, offset, packet, parent, extra_strategy_leg_definition_index)
  local index = offset

  -- Implicit Extra Strategy Leg Definition Index
  if extra_strategy_leg_definition_index ~= nil then
    local iteration = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.extra_strategy_leg_definition_index, extra_strategy_leg_definition_index)
    iteration:set_generated()
  end

  -- Leg Body Length: Numeric
  index, leg_body_length = ice_futures_mdf_impact_v1_1_43.leg_body_length.dissect(buffer, index, packet, parent)

  -- Leg Market Id: Numeric
  index, leg_market_id = ice_futures_mdf_impact_v1_1_43.leg_market_id.dissect(buffer, index, packet, parent)

  -- Leg Underlying Market Id: Numeric
  index, leg_underlying_market_id = ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: N/A
  index, reserved_2 = ice_futures_mdf_impact_v1_1_43.reserved_2.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = ice_futures_mdf_impact_v1_1_43.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Strategy Code: Numeric
  index, leg_strategy_code = ice_futures_mdf_impact_v1_1_43.leg_strategy_code.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Numerator: Numeric
  index, leg_ratio_qty_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Denominator: Numeric
  index, leg_ratio_qty_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Numerator: Numeric
  index, leg_ratio_price_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Denominator: Numeric
  index, leg_ratio_price_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extra Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.dissect = function(buffer, offset, packet, parent, extra_strategy_leg_definition_index)
  if show.extra_strategy_leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.extra_strategy_leg_definition, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.fields(buffer, offset, packet, parent, extra_strategy_leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.fields(buffer, offset, packet, parent, extra_strategy_leg_definition_index)
  end
end

-- Number Of Extra Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions = {}

-- Size: Number Of Extra Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions.size = 1

-- Display: Number Of Extra Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions.display = function(value)
  return "Number Of Extra Strategy Leg Definitions: "..value
end

-- Dissect: Number Of Extra Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_extra_strategy_leg_definitions, range, value, display)

  return offset + length, value
end

-- Override Block Min
ice_futures_mdf_impact_v1_1_43.override_block_min = {}

-- Size: Override Block Min
ice_futures_mdf_impact_v1_1_43.override_block_min.size = 1

-- Display: Override Block Min
ice_futures_mdf_impact_v1_1_43.override_block_min.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Override Block Min: No Value"
  end

  return "Override Block Min: "..value
end

-- Dissect: Override Block Min
ice_futures_mdf_impact_v1_1_43.override_block_min.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.override_block_min.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.override_block_min.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.override_block_min, range, value, display)

  return offset + length, value
end

-- Leg Deal Suppressed
ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed = {}

-- Size: Leg Deal Suppressed
ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.size = 1

-- Display: Leg Deal Suppressed
ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Leg Deal Suppressed: No Value"
  end

  if value == "Y" then
    return "Leg Deal Suppressed: Yes (Y)"
  end
  if value == "N" then
    return "Leg Deal Suppressed: No (N)"
  end

  return "Leg Deal Suppressed: Unknown("..value..")"
end

-- Dissect: Leg Deal Suppressed
ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_deal_suppressed, range, value, display)

  return offset + length, value
end

-- Contract Symbol Extra
ice_futures_mdf_impact_v1_1_43.contract_symbol_extra = {}

-- Size: Contract Symbol Extra
ice_futures_mdf_impact_v1_1_43.contract_symbol_extra.size = 35

-- Display: Contract Symbol Extra
ice_futures_mdf_impact_v1_1_43.contract_symbol_extra.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contract Symbol Extra: No Value"
  end

  return "Contract Symbol Extra: "..value
end

-- Dissect: Contract Symbol Extra
ice_futures_mdf_impact_v1_1_43.contract_symbol_extra.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.contract_symbol_extra.size
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

  local display = ice_futures_mdf_impact_v1_1_43.contract_symbol_extra.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.contract_symbol_extra, range, value, display)

  return offset + length, value
end

-- Test Market Indicator
ice_futures_mdf_impact_v1_1_43.test_market_indicator = {}

-- Size: Test Market Indicator
ice_futures_mdf_impact_v1_1_43.test_market_indicator.size = 1

-- Display: Test Market Indicator
ice_futures_mdf_impact_v1_1_43.test_market_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Test Market Indicator: No Value"
  end

  if value == "Y" then
    return "Test Market Indicator: Yes (Y)"
  end
  if value == "N" then
    return "Test Market Indicator: No (N)"
  end

  return "Test Market Indicator: Unknown("..value..")"
end

-- Dissect: Test Market Indicator
ice_futures_mdf_impact_v1_1_43.test_market_indicator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.test_market_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.test_market_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.test_market_indicator, range, value, display)

  return offset + length, value
end

-- Strategy Symbol
ice_futures_mdf_impact_v1_1_43.strategy_symbol = {}

-- Size: Strategy Symbol
ice_futures_mdf_impact_v1_1_43.strategy_symbol.size = 18

-- Display: Strategy Symbol
ice_futures_mdf_impact_v1_1_43.strategy_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strategy Symbol: No Value"
  end

  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
ice_futures_mdf_impact_v1_1_43.strategy_symbol.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.strategy_symbol.size
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

  local display = ice_futures_mdf_impact_v1_1_43.strategy_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strategy_symbol, range, value, display)

  return offset + length, value
end

-- Security Sub Type
ice_futures_mdf_impact_v1_1_43.security_sub_type = {}

-- Size: Security Sub Type
ice_futures_mdf_impact_v1_1_43.security_sub_type.size = 2

-- Display: Security Sub Type
ice_futures_mdf_impact_v1_1_43.security_sub_type.display = function(value)
  if value == 0 then
    return "Security Sub Type: None (0)"
  end
  if value == 1 then
    return "Security Sub Type: Call (1)"
  end
  if value == 2 then
    return "Security Sub Type: Put (2)"
  end
  if value == 3 then
    return "Security Sub Type: Futures Butterfly (3)"
  end
  if value == 4 then
    return "Security Sub Type: Call Butterfly (4)"
  end
  if value == 5 then
    return "Security Sub Type: Put Butterfly (5)"
  end
  if value == 6 then
    return "Security Sub Type: Call Spread (6)"
  end
  if value == 7 then
    return "Security Sub Type: Put Spread (7)"
  end
  if value == 9 then
    return "Security Sub Type: Diagonal Call Spread (9)"
  end
  if value == 10 then
    return "Security Sub Type: Diagonal Put Spread (10)"
  end
  if value == 11 then
    return "Security Sub Type: Gut Strangle (11)"
  end
  if value == 12 then
    return "Security Sub Type: 1 X 2 Call Spread To The 2 (12)"
  end
  if value == 13 then
    return "Security Sub Type: 1 X 2 Put Spread To The 2 (13)"
  end
  if value == 14 then
    return "Security Sub Type: Iron Butterfly (14)"
  end
  if value == 16 then
    return "Security Sub Type: Strangle (16)"
  end
  if value == 17 then
    return "Security Sub Type: Call Ladder Tree (17)"
  end
  if value == 18 then
    return "Security Sub Type: Put Ladder Tree (18)"
  end
  if value == 19 then
    return "Security Sub Type: Straddle Spread (19)"
  end
  if value == 21 then
    return "Security Sub Type: Reversal Conversion To The Call (21)"
  end
  if value == 21 then
    return "Security Sub Type: Reversal Conversion To The Put (21)"
  end
  if value == 22 then
    return "Security Sub Type: Straddle (22)"
  end
  if value == 23 then
    return "Security Sub Type: Futures Condor (23)"
  end
  if value == 24 then
    return "Security Sub Type: Call Condor (24)"
  end
  if value == 25 then
    return "Security Sub Type: Put Condor (25)"
  end
  if value == 26 then
    return "Security Sub Type: Box (26)"
  end
  if value == 33 then
    return "Security Sub Type: Synthetic Underlying (33)"
  end
  if value == 34 then
    return "Security Sub Type: Call Spread Vs Put 3 Way (34)"
  end
  if value == 35 then
    return "Security Sub Type: Put Spread Vs Call 3 Way (35)"
  end
  if value == 36 then
    return "Security Sub Type: Straddle Vs Call 3 Way (36)"
  end
  if value == 37 then
    return "Security Sub Type: Straddle Vs Put 3 Way (37)"
  end
  if value == 38 then
    return "Security Sub Type: Call Calendar Spread (38)"
  end
  if value == 39 then
    return "Security Sub Type: Put Calendar Spread (39)"
  end
  if value == 40 then
    return "Security Sub Type: Iron Condor (40)"
  end
  if value == 41 then
    return "Security Sub Type: Jelly Roll (41)"
  end
  if value == 42 then
    return "Security Sub Type: Hedged 1 X 2 Call Spread To The 2 (42)"
  end
  if value == 43 then
    return "Security Sub Type: Hedged 1 X 2 Put Spread To The 2 (43)"
  end
  if value == 44 then
    return "Security Sub Type: Call Spread Versus Sell Put Hedge (44)"
  end
  if value == 45 then
    return "Security Sub Type: Put Spread Versus Sell Call Hedge (45)"
  end
  if value == 46 then
    return "Security Sub Type: Hedged Call Calendar (46)"
  end
  if value == 47 then
    return "Security Sub Type: Hedged Put Calendar (47)"
  end
  if value == 48 then
    return "Security Sub Type: Hedged Call Ladder Tree (48)"
  end
  if value == 49 then
    return "Security Sub Type: Hedged Put Ladder Tree (49)"
  end
  if value == 50 then
    return "Security Sub Type: Hedged Call Spread (50)"
  end
  if value == 51 then
    return "Security Sub Type: Hedged Put Spread (51)"
  end
  if value == 53 then
    return "Security Sub Type: Hedged Straddle (53)"
  end
  if value == 54 then
    return "Security Sub Type: Hedged Strangle (54)"
  end
  if value == 55 then
    return "Security Sub Type: Hedged Call (55)"
  end
  if value == 56 then
    return "Security Sub Type: Hedged Put (56)"
  end
  if value == 58 then
    return "Security Sub Type: Custom (58)"
  end
  if value == 59 then
    return "Security Sub Type: Hedged Straddle Spread (59)"
  end
  if value == 60 then
    return "Security Sub Type: Hedged Call Condor (60)"
  end
  if value == 61 then
    return "Security Sub Type: Hedged Put Condor (61)"
  end
  if value == 63 then
    return "Security Sub Type: Hedged Diagonal Call Spread (63)"
  end
  if value == 64 then
    return "Security Sub Type: Hedged Diagonal Put Spread (64)"
  end
  if value == 65 then
    return "Security Sub Type: Hedged Call Butterlfy (65)"
  end
  if value == 66 then
    return "Security Sub Type: Hedged Put Butterlfy (66)"
  end
  if value == 67 then
    return "Security Sub Type: Hedged Guts Strangle (67)"
  end
  if value == 68 then
    return "Security Sub Type: Hedged Iron Condor (68)"
  end
  if value == 69 then
    return "Security Sub Type: Hedged Iron Butterfly (69)"
  end
  if value == 70 then
    return "Security Sub Type: Fence To The Call (70)"
  end
  if value == 71 then
    return "Security Sub Type: Fence To The Put (71)"
  end
  if value == 72 then
    return "Security Sub Type: Hedged Fence To The Call (72)"
  end
  if value == 73 then
    return "Security Sub Type: Hedged Fence To The Put (73)"
  end
  if value == 74 then
    return "Security Sub Type: 1 X 2 Call Spread To The 1 (74)"
  end
  if value == 75 then
    return "Security Sub Type: 1 X 2 Put Spread To The 1 (75)"
  end
  if value == 76 then
    return "Security Sub Type: Hedged 1 X 2 Call Spread To The 1 (76)"
  end
  if value == 77 then
    return "Security Sub Type: Hedged 1 X 2 Put Spread To The 1 (77)"
  end
  if value == 88 then
    return "Security Sub Type: Discount Spreads (88)"
  end
  if value == 89 then
    return "Security Sub Type: Location Spreads (89)"
  end
  if value == 90 then
    return "Security Sub Type: Platts Diff Spread (90)"
  end
  if value == 91 then
    return "Security Sub Type: Platts Spread (91)"
  end
  if value == 92 then
    return "Security Sub Type: Otc Gas Oil Crack (92)"
  end
  if value == 93 then
    return "Security Sub Type: Balmo Over Month (93)"
  end
  if value == 94 then
    return "Security Sub Type: Ratio Spread (94)"
  end
  if value == 95 then
    return "Security Sub Type: Volumetric Spread (95)"
  end
  if value == 96 then
    return "Security Sub Type: Heat Rate (96)"
  end
  if value == 97 then
    return "Security Sub Type: Crack Spread (97)"
  end
  if value == 98 then
    return "Security Sub Type: Combo Spread (98)"
  end
  if value == 99 then
    return "Security Sub Type: Spread S (99)"
  end
  if value == 100 then
    return "Security Sub Type: Packno Color (100)"
  end
  if value == 101 then
    return "Security Sub Type: Pack White (101)"
  end
  if value == 102 then
    return "Security Sub Type: Pack Red (102)"
  end
  if value == 103 then
    return "Security Sub Type: Pack Green (103)"
  end
  if value == 104 then
    return "Security Sub Type: Pack Blue (104)"
  end
  if value == 105 then
    return "Security Sub Type: Pack Gold (105)"
  end
  if value == 106 then
    return "Security Sub Type: Pack Purple (106)"
  end
  if value == 107 then
    return "Security Sub Type: Pack Orange (107)"
  end
  if value == 108 then
    return "Security Sub Type: Pack Pink (108)"
  end
  if value == 109 then
    return "Security Sub Type: Pack Silver (109)"
  end
  if value == 110 then
    return "Security Sub Type: Pack Copper (110)"
  end
  if value == 200 then
    return "Security Sub Type: Bundle No Color (200)"
  end
  if value == 201 then
    return "Security Sub Type: Bundle 2 Yr (201)"
  end
  if value == 202 then
    return "Security Sub Type: Bundle 3 Yr (202)"
  end
  if value == 203 then
    return "Security Sub Type: Bundle 4 Yr (203)"
  end
  if value == 204 then
    return "Security Sub Type: Bundle 5 Yr (204)"
  end
  if value == 205 then
    return "Security Sub Type: Bundle 6 Yr (205)"
  end
  if value == 206 then
    return "Security Sub Type: Bundle 7 Yr (206)"
  end
  if value == 207 then
    return "Security Sub Type: Bundle 8 Yr (207)"
  end
  if value == 208 then
    return "Security Sub Type: Bundle 9 Yr (208)"
  end
  if value == 209 then
    return "Security Sub Type: Bundle 10 Yr (209)"
  end
  if value == 400 then
    return "Security Sub Type: Balmo (400)"
  end
  if value == 410 then
    return "Security Sub Type: Next Day (410)"
  end
  if value == 411 then
    return "Security Sub Type: Cfd (411)"
  end
  if value == 412 then
    return "Security Sub Type: Weekend (412)"
  end
  if value == 413 then
    return "Security Sub Type: Single Day (413)"
  end
  if value == 414 then
    return "Security Sub Type: Custom Daily (414)"
  end
  if value == 415 then
    return "Security Sub Type: Hourly (415)"
  end
  if value == 416 then
    return "Security Sub Type: Month (416)"
  end
  if value == 450 then
    return "Security Sub Type: Balweek (450)"
  end
  if value == 500 then
    return "Security Sub Type: Basket (500)"
  end
  if value == 550 then
    return "Security Sub Type: Custom Monthly (550)"
  end
  if value == 600 then
    return "Security Sub Type: Next Week (600)"
  end
  if value == 700 then
    return "Security Sub Type: Period (700)"
  end
  if value == 711 then
    return "Security Sub Type: Custom Daily Cfd (711)"
  end
  if value == 712 then
    return "Security Sub Type: Custom Daily 7 X 8 (712)"
  end
  if value == 713 then
    return "Security Sub Type: Custom Daily 7 X 16 (713)"
  end
  if value == 714 then
    return "Security Sub Type: Custom Daily 7 X 6 (714)"
  end
  if value == 715 then
    return "Security Sub Type: Custom Daily Off Peak X 16 (715)"
  end
  if value == 800 then
    return "Security Sub Type: Quarter (800)"
  end
  if value == 900 then
    return "Security Sub Type: Year (900)"
  end

  return "Security Sub Type: Unknown("..value..")"
end

-- Dissect: Security Sub Type
ice_futures_mdf_impact_v1_1_43.security_sub_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.security_sub_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.security_sub_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.security_sub_type, range, value, display)

  return offset + length, value
end

-- Hedge Delta
ice_futures_mdf_impact_v1_1_43.hedge_delta = {}

-- Size: Hedge Delta
ice_futures_mdf_impact_v1_1_43.hedge_delta.size = 4

-- Display: Hedge Delta
ice_futures_mdf_impact_v1_1_43.hedge_delta.display = function(value)
  return "Hedge Delta: "..value
end

-- Dissect: Hedge Delta
ice_futures_mdf_impact_v1_1_43.hedge_delta.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_delta.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.hedge_delta.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_delta, range, value, display)

  return offset + length, value
end

-- Hedge Strategy Code
ice_futures_mdf_impact_v1_1_43.hedge_strategy_code = {}

-- Size: Hedge Strategy Code
ice_futures_mdf_impact_v1_1_43.hedge_strategy_code.size = 2

-- Display: Hedge Strategy Code
ice_futures_mdf_impact_v1_1_43.hedge_strategy_code.display = function(value)
  return "Hedge Strategy Code: "..value
end

-- Dissect: Hedge Strategy Code
ice_futures_mdf_impact_v1_1_43.hedge_strategy_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_strategy_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.hedge_strategy_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_strategy_code, range, value, display)

  return offset + length, value
end

-- Hedge Delta Obsolete
ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete = {}

-- Size: Hedge Delta Obsolete
ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete.size = 2

-- Display: Hedge Delta Obsolete
ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete.display = function(value)
  return "Hedge Delta Obsolete: "..value
end

-- Dissect: Hedge Delta Obsolete
ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_delta_obsolete, range, value, display)

  return offset + length, value
end

-- Hedge Price Denominator
ice_futures_mdf_impact_v1_1_43.hedge_price_denominator = {}

-- Size: Hedge Price Denominator
ice_futures_mdf_impact_v1_1_43.hedge_price_denominator.size = 1

-- Display: Hedge Price Denominator
ice_futures_mdf_impact_v1_1_43.hedge_price_denominator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Hedge Price Denominator: No Value"
  end

  return "Hedge Price Denominator: "..value
end

-- Dissect: Hedge Price Denominator
ice_futures_mdf_impact_v1_1_43.hedge_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_price_denominator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.hedge_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_price_denominator, range, value, display)

  return offset + length, value
end

-- Hedge Price
ice_futures_mdf_impact_v1_1_43.hedge_price = {}

-- Size: Hedge Price
ice_futures_mdf_impact_v1_1_43.hedge_price.size = 8

-- Display: Hedge Price
ice_futures_mdf_impact_v1_1_43.hedge_price.display = function(value)
  return "Hedge Price: "..value
end

-- Dissect: Hedge Price
ice_futures_mdf_impact_v1_1_43.hedge_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.hedge_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_price, range, value, display)

  return offset + length, value
end

-- Hedge Side
ice_futures_mdf_impact_v1_1_43.hedge_side = {}

-- Size: Hedge Side
ice_futures_mdf_impact_v1_1_43.hedge_side.size = 1

-- Display: Hedge Side
ice_futures_mdf_impact_v1_1_43.hedge_side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Hedge Side: No Value"
  end

  if value == " " then
    return "Hedge Side: None (<whitespace>)"
  end
  if value == "1" then
    return "Hedge Side: Bid (1)"
  end
  if value == "2" then
    return "Hedge Side: Offer (2)"
  end

  return "Hedge Side: Unknown("..value..")"
end

-- Dissect: Hedge Side
ice_futures_mdf_impact_v1_1_43.hedge_side.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.hedge_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_side, range, value, display)

  return offset + length, value
end

-- Hedge Security Type
ice_futures_mdf_impact_v1_1_43.hedge_security_type = {}

-- Size: Hedge Security Type
ice_futures_mdf_impact_v1_1_43.hedge_security_type.size = 1

-- Display: Hedge Security Type
ice_futures_mdf_impact_v1_1_43.hedge_security_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Hedge Security Type: No Value"
  end

  return "Hedge Security Type: "..value
end

-- Dissect: Hedge Security Type
ice_futures_mdf_impact_v1_1_43.hedge_security_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_security_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.hedge_security_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_security_type, range, value, display)

  return offset + length, value
end

-- Hedge Body Length
ice_futures_mdf_impact_v1_1_43.hedge_body_length = {}

-- Size: Hedge Body Length
ice_futures_mdf_impact_v1_1_43.hedge_body_length.size = 1

-- Display: Hedge Body Length
ice_futures_mdf_impact_v1_1_43.hedge_body_length.display = function(value)
  return "Hedge Body Length: "..value
end

-- Dissect: Hedge Body Length
ice_futures_mdf_impact_v1_1_43.hedge_body_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_body_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.hedge_body_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_body_length, range, value, display)

  return offset + length, value
end

-- Hedge Definition
ice_futures_mdf_impact_v1_1_43.hedge_definition = {}

-- Calculate size of: Hedge Definition
ice_futures_mdf_impact_v1_1_43.hedge_definition.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_body_length.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_security_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_side.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_strategy_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_delta.size

  return index
end

-- Display: Hedge Definition
ice_futures_mdf_impact_v1_1_43.hedge_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Hedge Definition
ice_futures_mdf_impact_v1_1_43.hedge_definition.fields = function(buffer, offset, packet, parent, hedge_definition_index)
  local index = offset

  -- Implicit Hedge Definition Index
  if hedge_definition_index ~= nil then
    local iteration = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_definition_index, hedge_definition_index)
    iteration:set_generated()
  end

  -- Hedge Body Length: Numeric
  index, hedge_body_length = ice_futures_mdf_impact_v1_1_43.hedge_body_length.dissect(buffer, index, packet, parent)

  -- Hedge Market Id: Numeric
  index, hedge_market_id = ice_futures_mdf_impact_v1_1_43.hedge_market_id.dissect(buffer, index, packet, parent)

  -- Hedge Security Type: Alpha
  index, hedge_security_type = ice_futures_mdf_impact_v1_1_43.hedge_security_type.dissect(buffer, index, packet, parent)

  -- Hedge Side: Alpha
  index, hedge_side = ice_futures_mdf_impact_v1_1_43.hedge_side.dissect(buffer, index, packet, parent)

  -- Hedge Price: Numeric
  index, hedge_price = ice_futures_mdf_impact_v1_1_43.hedge_price.dissect(buffer, index, packet, parent)

  -- Hedge Price Denominator: Alpha
  index, hedge_price_denominator = ice_futures_mdf_impact_v1_1_43.hedge_price_denominator.dissect(buffer, index, packet, parent)

  -- Hedge Delta Obsolete: Numeric
  index, hedge_delta_obsolete = ice_futures_mdf_impact_v1_1_43.hedge_delta_obsolete.dissect(buffer, index, packet, parent)

  -- Hedge Strategy Code: Numeric
  index, hedge_strategy_code = ice_futures_mdf_impact_v1_1_43.hedge_strategy_code.dissect(buffer, index, packet, parent)

  -- Hedge Delta: Numeric
  index, hedge_delta = ice_futures_mdf_impact_v1_1_43.hedge_delta.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Hedge Definition
ice_futures_mdf_impact_v1_1_43.hedge_definition.dissect = function(buffer, offset, packet, parent, hedge_definition_index)
  if show.hedge_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_definition, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.hedge_definition.fields(buffer, offset, packet, parent, hedge_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.hedge_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.hedge_definition.fields(buffer, offset, packet, parent, hedge_definition_index)
  end
end

-- Number Of Hedge Definitions
ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions = {}

-- Size: Number Of Hedge Definitions
ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions.size = 1

-- Display: Number Of Hedge Definitions
ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions.display = function(value)
  return "Number Of Hedge Definitions: "..value
end

-- Dissect: Number Of Hedge Definitions
ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_hedge_definitions, range, value, display)

  return offset + length, value
end

-- Leg Ratio Obsolete
ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete = {}

-- Size: Leg Ratio Obsolete
ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.size = 2

-- Display: Leg Ratio Obsolete
ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.display = function(value)
  return "Leg Ratio Obsolete: "..value
end

-- Dissect: Leg Ratio Obsolete
ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_ratio_obsolete, range, value, display)

  return offset + length, value
end

-- Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.strategy_leg_definition = {}

-- Calculate size of: Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.leg_body_length.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_side.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_strategy_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.size

  return index
end

-- Display: Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.fields = function(buffer, offset, packet, parent, strategy_leg_definition_index)
  local index = offset

  -- Implicit Strategy Leg Definition Index
  if strategy_leg_definition_index ~= nil then
    local iteration = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strategy_leg_definition_index, strategy_leg_definition_index)
    iteration:set_generated()
  end

  -- Leg Body Length: Numeric
  index, leg_body_length = ice_futures_mdf_impact_v1_1_43.leg_body_length.dissect(buffer, index, packet, parent)

  -- Leg Market Id: Numeric
  index, leg_market_id = ice_futures_mdf_impact_v1_1_43.leg_market_id.dissect(buffer, index, packet, parent)

  -- Leg Underlying Market Id: Numeric
  index, leg_underlying_market_id = ice_futures_mdf_impact_v1_1_43.leg_underlying_market_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Obsolete: Numeric
  index, leg_ratio_obsolete = ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = ice_futures_mdf_impact_v1_1_43.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Strategy Code: Numeric
  index, leg_strategy_code = ice_futures_mdf_impact_v1_1_43.leg_strategy_code.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Numerator: Numeric
  index, leg_ratio_qty_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Denominator: Numeric
  index, leg_ratio_qty_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Numerator: Numeric
  index, leg_ratio_price_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Denominator: Numeric
  index, leg_ratio_price_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Leg Definition
ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.dissect = function(buffer, offset, packet, parent, strategy_leg_definition_index)
  if show.strategy_leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strategy_leg_definition, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.fields(buffer, offset, packet, parent, strategy_leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.fields(buffer, offset, packet, parent, strategy_leg_definition_index)
  end
end

-- Number Of Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions = {}

-- Size: Number Of Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions.size = 1

-- Display: Number Of Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions.display = function(value)
  return "Number Of Strategy Leg Definitions: "..value
end

-- Dissect: Number Of Strategy Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_strategy_leg_definitions, range, value, display)

  return offset + length, value
end

-- Increment Price
ice_futures_mdf_impact_v1_1_43.increment_price = {}

-- Size: Increment Price
ice_futures_mdf_impact_v1_1_43.increment_price.size = 4

-- Display: Increment Price
ice_futures_mdf_impact_v1_1_43.increment_price.display = function(value)
  return "Increment Price: "..value
end

-- Dissect: Increment Price
ice_futures_mdf_impact_v1_1_43.increment_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.increment_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.increment_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.increment_price, range, value, display)

  return offset + length, value
end

-- Contract Symbol
ice_futures_mdf_impact_v1_1_43.contract_symbol = {}

-- Size: Contract Symbol
ice_futures_mdf_impact_v1_1_43.contract_symbol.size = 35

-- Display: Contract Symbol
ice_futures_mdf_impact_v1_1_43.contract_symbol.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Contract Symbol: No Value"
  end

  return "Contract Symbol: "..value
end

-- Dissect: Contract Symbol
ice_futures_mdf_impact_v1_1_43.contract_symbol.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.contract_symbol.size
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

  local display = ice_futures_mdf_impact_v1_1_43.contract_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.contract_symbol, range, value, display)

  return offset + length, value
end

-- New Options Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message = {}

-- Calculate size of: New Options Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.underlying_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.contract_symbol.size

  index = index + ice_futures_mdf_impact_v1_1_43.trading_status.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.min_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions.size

  -- Calculate field size from count
  local strategy_leg_definition_count = buffer(offset + index - 1, 1):int()
  index = index + strategy_leg_definition_count * 30

  index = index + ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions.size

  -- Calculate field size from count
  local hedge_definition_count = buffer(offset + index - 1, 1):int()
  index = index + hedge_definition_count * 24

  index = index + ice_futures_mdf_impact_v1_1_43.security_sub_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_block_only.size

  index = index + ice_futures_mdf_impact_v1_1_43.strategy_symbol.size

  index = index + ice_futures_mdf_impact_v1_1_43.gt_allowed.size

  index = index + ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.size

  index = index + ice_futures_mdf_impact_v1_1_43.deal_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.settle_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.test_market_indicator.size

  index = index + ice_futures_mdf_impact_v1_1_43.contract_symbol_extra.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_tradable.size

  index = index + ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_expiration_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_expiration_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.options_expiration_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_type_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.override_block_min.size

  index = index + ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions.size

  -- Calculate field size from count
  local extra_strategy_leg_definition_count = buffer(offset + index - 1, 1):int()
  index = index + extra_strategy_leg_definition_count * 30

  index = index + ice_futures_mdf_impact_v1_1_43.num_of_cycles.size

  return index
end

-- Display: New Options Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Options Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Underlying Market Id: Numeric
  index, underlying_market_id = ice_futures_mdf_impact_v1_1_43.underlying_market_id.dissect(buffer, index, packet, parent)

  -- Contract Symbol: Alpha
  index, contract_symbol = ice_futures_mdf_impact_v1_1_43.contract_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = ice_futures_mdf_impact_v1_1_43.trading_status.dissect(buffer, index, packet, parent)

  -- Order Price Denominator: Alpha
  index, order_price_denominator = ice_futures_mdf_impact_v1_1_43.order_price_denominator.dissect(buffer, index, packet, parent)

  -- Increment Price: Numeric
  index, increment_price = ice_futures_mdf_impact_v1_1_43.increment_price.dissect(buffer, index, packet, parent)

  -- Increment Qty: Numeric
  index, increment_qty = ice_futures_mdf_impact_v1_1_43.increment_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = ice_futures_mdf_impact_v1_1_43.min_qty.dissect(buffer, index, packet, parent)

  -- Number Of Strategy Leg Definitions: Numeric
  index, number_of_strategy_leg_definitions = ice_futures_mdf_impact_v1_1_43.number_of_strategy_leg_definitions.dissect(buffer, index, packet, parent)

  -- Repeating: Strategy Leg Definition
  for strategy_leg_definition_index = 1, number_of_strategy_leg_definitions do
    index, strategy_leg_definition = ice_futures_mdf_impact_v1_1_43.strategy_leg_definition.dissect(buffer, index, packet, parent, strategy_leg_definition_index)
  end

  -- Number Of Hedge Definitions: Numeric
  index, number_of_hedge_definitions = ice_futures_mdf_impact_v1_1_43.number_of_hedge_definitions.dissect(buffer, index, packet, parent)

  -- Repeating: Hedge Definition
  for hedge_definition_index = 1, number_of_hedge_definitions do
    index, hedge_definition = ice_futures_mdf_impact_v1_1_43.hedge_definition.dissect(buffer, index, packet, parent, hedge_definition_index)
  end

  -- Security Sub Type: Numeric
  index, security_sub_type = ice_futures_mdf_impact_v1_1_43.security_sub_type.dissect(buffer, index, packet, parent)

  -- Is Block Only: Alpha
  index, is_block_only = ice_futures_mdf_impact_v1_1_43.is_block_only.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: Alpha
  index, strategy_symbol = ice_futures_mdf_impact_v1_1_43.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Gt Allowed: Alpha
  index, gt_allowed = ice_futures_mdf_impact_v1_1_43.gt_allowed.dissect(buffer, index, packet, parent)

  -- Mifid Regulated Market: Alpha
  index, mifid_regulated_market = ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.dissect(buffer, index, packet, parent)

  -- Deal Price Denominator: Alpha
  index, deal_price_denominator = ice_futures_mdf_impact_v1_1_43.deal_price_denominator.dissect(buffer, index, packet, parent)

  -- Settle Price Denominator: Alpha
  index, settle_price_denominator = ice_futures_mdf_impact_v1_1_43.settle_price_denominator.dissect(buffer, index, packet, parent)

  -- Unit Qty Denominator: Alpha
  index, unit_qty_denominator = ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.dissect(buffer, index, packet, parent)

  -- Test Market Indicator: Alpha
  index, test_market_indicator = ice_futures_mdf_impact_v1_1_43.test_market_indicator.dissect(buffer, index, packet, parent)

  -- Contract Symbol Extra: Alpha
  index, contract_symbol_extra = ice_futures_mdf_impact_v1_1_43.contract_symbol_extra.dissect(buffer, index, packet, parent)

  -- Leg Deal Suppressed: Alpha
  index, leg_deal_suppressed = ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.dissect(buffer, index, packet, parent)

  -- Is Tradable: Alpha
  index, is_tradable = ice_futures_mdf_impact_v1_1_43.is_tradable.dissect(buffer, index, packet, parent)

  -- Old Num Of Cycles: Numeric
  index, old_num_of_cycles = ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.dissect(buffer, index, packet, parent)

  -- Options Expiration Year: Numeric
  index, options_expiration_year = ice_futures_mdf_impact_v1_1_43.options_expiration_year.dissect(buffer, index, packet, parent)

  -- Options Expiration Month: Numeric
  index, options_expiration_month = ice_futures_mdf_impact_v1_1_43.options_expiration_month.dissect(buffer, index, packet, parent)

  -- Options Expiration Day: Numeric
  index, options_expiration_day = ice_futures_mdf_impact_v1_1_43.options_expiration_day.dissect(buffer, index, packet, parent)

  -- Market Type Id: Numeric
  index, market_type_id = ice_futures_mdf_impact_v1_1_43.market_type_id.dissect(buffer, index, packet, parent)

  -- Override Block Min: Alpha
  index, override_block_min = ice_futures_mdf_impact_v1_1_43.override_block_min.dissect(buffer, index, packet, parent)

  -- Number Of Extra Strategy Leg Definitions: Numeric
  index, number_of_extra_strategy_leg_definitions = ice_futures_mdf_impact_v1_1_43.number_of_extra_strategy_leg_definitions.dissect(buffer, index, packet, parent)

  -- Repeating: Extra Strategy Leg Definition
  for extra_strategy_leg_definition_index = 1, number_of_extra_strategy_leg_definitions do
    index, extra_strategy_leg_definition = ice_futures_mdf_impact_v1_1_43.extra_strategy_leg_definition.dissect(buffer, index, packet, parent, extra_strategy_leg_definition_index)
  end

  -- Num Of Cycles: Numeric
  index, num_of_cycles = ice_futures_mdf_impact_v1_1_43.num_of_cycles.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Options Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_options_strategy_definition_message then
    local length = ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.new_options_strategy_definition_message, range, display)
  end

  return ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.fields(buffer, offset, packet, parent)
end

-- Timestamp
ice_futures_mdf_impact_v1_1_43.timestamp = {}

-- Size: Timestamp
ice_futures_mdf_impact_v1_1_43.timestamp.size = 8

-- Display: Timestamp
ice_futures_mdf_impact_v1_1_43.timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
ice_futures_mdf_impact_v1_1_43.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Price Level Position
ice_futures_mdf_impact_v1_1_43.price_level_position = {}

-- Size: Price Level Position
ice_futures_mdf_impact_v1_1_43.price_level_position.size = 1

-- Display: Price Level Position
ice_futures_mdf_impact_v1_1_43.price_level_position.display = function(value)
  return "Price Level Position: "..value
end

-- Dissect: Price Level Position
ice_futures_mdf_impact_v1_1_43.price_level_position.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.price_level_position.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.price_level_position.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.price_level_position, range, value, display)

  return offset + length, value
end

-- Delete Price Level Message
ice_futures_mdf_impact_v1_1_43.delete_price_level_message = {}

-- Calculate size of: Delete Price Level Message
ice_futures_mdf_impact_v1_1_43.delete_price_level_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.side.size

  index = index + ice_futures_mdf_impact_v1_1_43.price_level_position.size

  index = index + ice_futures_mdf_impact_v1_1_43.timestamp.size

  return index
end

-- Display: Delete Price Level Message
ice_futures_mdf_impact_v1_1_43.delete_price_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Price Level Message
ice_futures_mdf_impact_v1_1_43.delete_price_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = ice_futures_mdf_impact_v1_1_43.side.dissect(buffer, index, packet, parent)

  -- Price Level Position: Numeric
  index, price_level_position = ice_futures_mdf_impact_v1_1_43.price_level_position.dissect(buffer, index, packet, parent)

  -- Timestamp: Numeric
  index, timestamp = ice_futures_mdf_impact_v1_1_43.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Price Level Message
ice_futures_mdf_impact_v1_1_43.delete_price_level_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_price_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.delete_price_level_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.delete_price_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.delete_price_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.delete_price_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Implied Order Count
ice_futures_mdf_impact_v1_1_43.implied_order_count = {}

-- Size: Implied Order Count
ice_futures_mdf_impact_v1_1_43.implied_order_count.size = 2

-- Display: Implied Order Count
ice_futures_mdf_impact_v1_1_43.implied_order_count.display = function(value)
  return "Implied Order Count: "..value
end

-- Dissect: Implied Order Count
ice_futures_mdf_impact_v1_1_43.implied_order_count.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.implied_order_count.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.implied_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.implied_order_count, range, value, display)

  return offset + length, value
end

-- Implied Quantity
ice_futures_mdf_impact_v1_1_43.implied_quantity = {}

-- Size: Implied Quantity
ice_futures_mdf_impact_v1_1_43.implied_quantity.size = 4

-- Display: Implied Quantity
ice_futures_mdf_impact_v1_1_43.implied_quantity.display = function(value)
  return "Implied Quantity: "..value
end

-- Dissect: Implied Quantity
ice_futures_mdf_impact_v1_1_43.implied_quantity.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.implied_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.implied_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.implied_quantity, range, value, display)

  return offset + length, value
end

-- Order Count
ice_futures_mdf_impact_v1_1_43.order_count = {}

-- Size: Order Count
ice_futures_mdf_impact_v1_1_43.order_count.size = 2

-- Display: Order Count
ice_futures_mdf_impact_v1_1_43.order_count.display = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
ice_futures_mdf_impact_v1_1_43.order_count.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.order_count.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.order_count, range, value, display)

  return offset + length, value
end

-- Change Price Level Message
ice_futures_mdf_impact_v1_1_43.change_price_level_message = {}

-- Calculate size of: Change Price Level Message
ice_futures_mdf_impact_v1_1_43.change_price_level_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.side.size

  index = index + ice_futures_mdf_impact_v1_1_43.price_level_position.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_count.size

  index = index + ice_futures_mdf_impact_v1_1_43.implied_quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.implied_order_count.size

  index = index + ice_futures_mdf_impact_v1_1_43.timestamp.size

  return index
end

-- Display: Change Price Level Message
ice_futures_mdf_impact_v1_1_43.change_price_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Change Price Level Message
ice_futures_mdf_impact_v1_1_43.change_price_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = ice_futures_mdf_impact_v1_1_43.side.dissect(buffer, index, packet, parent)

  -- Price Level Position: Numeric
  index, price_level_position = ice_futures_mdf_impact_v1_1_43.price_level_position.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Order Count: Numeric
  index, order_count = ice_futures_mdf_impact_v1_1_43.order_count.dissect(buffer, index, packet, parent)

  -- Implied Quantity: Numeric
  index, implied_quantity = ice_futures_mdf_impact_v1_1_43.implied_quantity.dissect(buffer, index, packet, parent)

  -- Implied Order Count: Numeric
  index, implied_order_count = ice_futures_mdf_impact_v1_1_43.implied_order_count.dissect(buffer, index, packet, parent)

  -- Timestamp: Numeric
  index, timestamp = ice_futures_mdf_impact_v1_1_43.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Change Price Level Message
ice_futures_mdf_impact_v1_1_43.change_price_level_message.dissect = function(buffer, offset, packet, parent)
  if show.change_price_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.change_price_level_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.change_price_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.change_price_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.change_price_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Add Price Level Message
ice_futures_mdf_impact_v1_1_43.add_price_level_message = {}

-- Calculate size of: Add Price Level Message
ice_futures_mdf_impact_v1_1_43.add_price_level_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.side.size

  index = index + ice_futures_mdf_impact_v1_1_43.price_level_position.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_count.size

  index = index + ice_futures_mdf_impact_v1_1_43.implied_quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.implied_order_count.size

  index = index + ice_futures_mdf_impact_v1_1_43.timestamp.size

  return index
end

-- Display: Add Price Level Message
ice_futures_mdf_impact_v1_1_43.add_price_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Price Level Message
ice_futures_mdf_impact_v1_1_43.add_price_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = ice_futures_mdf_impact_v1_1_43.side.dissect(buffer, index, packet, parent)

  -- Price Level Position: Numeric
  index, price_level_position = ice_futures_mdf_impact_v1_1_43.price_level_position.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Order Count: Numeric
  index, order_count = ice_futures_mdf_impact_v1_1_43.order_count.dissect(buffer, index, packet, parent)

  -- Implied Quantity: Numeric
  index, implied_quantity = ice_futures_mdf_impact_v1_1_43.implied_quantity.dissect(buffer, index, packet, parent)

  -- Implied Order Count: Numeric
  index, implied_order_count = ice_futures_mdf_impact_v1_1_43.implied_order_count.dissect(buffer, index, packet, parent)

  -- Timestamp: Numeric
  index, timestamp = ice_futures_mdf_impact_v1_1_43.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Price Level Message
ice_futures_mdf_impact_v1_1_43.add_price_level_message.dissect = function(buffer, offset, packet, parent)
  if show.add_price_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.add_price_level_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.add_price_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.add_price_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.add_price_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Snapshot Price Level Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message = {}

-- Calculate size of: Market Snapshot Price Level Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.side.size

  index = index + ice_futures_mdf_impact_v1_1_43.price_level_position.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_count.size

  index = index + ice_futures_mdf_impact_v1_1_43.implied_quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.implied_order_count.size

  return index
end

-- Display: Market Snapshot Price Level Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Snapshot Price Level Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = ice_futures_mdf_impact_v1_1_43.side.dissect(buffer, index, packet, parent)

  -- Price Level Position: Numeric
  index, price_level_position = ice_futures_mdf_impact_v1_1_43.price_level_position.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Order Count: Numeric
  index, order_count = ice_futures_mdf_impact_v1_1_43.order_count.dissect(buffer, index, packet, parent)

  -- Implied Quantity: Numeric
  index, implied_quantity = ice_futures_mdf_impact_v1_1_43.implied_quantity.dissect(buffer, index, packet, parent)

  -- Implied Order Count: Numeric
  index, implied_order_count = ice_futures_mdf_impact_v1_1_43.implied_order_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Price Level Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.dissect = function(buffer, offset, packet, parent)
  if show.market_snapshot_price_level_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_snapshot_price_level_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.fields(buffer, offset, packet, parent)
  end
end

-- Num Decimals Price In Gram
ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram = {}

-- Size: Num Decimals Price In Gram
ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram.size = 1

-- Display: Num Decimals Price In Gram
ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram.display = function(value)
  return "Num Decimals Price In Gram: "..value
end

-- Dissect: Num Decimals Price In Gram
ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_price_in_gram, range, value, display)

  return offset + length, value
end

-- Num Decimals Price
ice_futures_mdf_impact_v1_1_43.num_decimals_price = {}

-- Size: Num Decimals Price
ice_futures_mdf_impact_v1_1_43.num_decimals_price.size = 1

-- Display: Num Decimals Price
ice_futures_mdf_impact_v1_1_43.num_decimals_price.display = function(value)
  return "Num Decimals Price: "..value
end

-- Dissect: Num Decimals Price
ice_futures_mdf_impact_v1_1_43.num_decimals_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.num_decimals_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.num_decimals_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_price, range, value, display)

  return offset + length, value
end

-- Price In Gram
ice_futures_mdf_impact_v1_1_43.price_in_gram = {}

-- Size: Price In Gram
ice_futures_mdf_impact_v1_1_43.price_in_gram.size = 8

-- Display: Price In Gram
ice_futures_mdf_impact_v1_1_43.price_in_gram.display = function(value)
  return "Price In Gram: "..value
end

-- Dissect: Price In Gram
ice_futures_mdf_impact_v1_1_43.price_in_gram.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.price_in_gram.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.price_in_gram.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.price_in_gram, range, value, display)

  return offset + length, value
end

-- Iba Currency
ice_futures_mdf_impact_v1_1_43.iba_currency = {}

-- Size: Iba Currency
ice_futures_mdf_impact_v1_1_43.iba_currency.size = 3

-- Display: Iba Currency
ice_futures_mdf_impact_v1_1_43.iba_currency.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Iba Currency: No Value"
  end

  return "Iba Currency: "..value
end

-- Dissect: Iba Currency
ice_futures_mdf_impact_v1_1_43.iba_currency.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.iba_currency.size
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

  local display = ice_futures_mdf_impact_v1_1_43.iba_currency.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.iba_currency, range, value, display)

  return offset + length, value
end

-- Fixing Indicative Price Message
ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message = {}

-- Calculate size of: Fixing Indicative Price Message
ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.iba_currency.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.price_in_gram.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_decimals_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram.size

  return index
end

-- Display: Fixing Indicative Price Message
ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fixing Indicative Price Message
ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Iba Currency: Alpha
  index, iba_currency = ice_futures_mdf_impact_v1_1_43.iba_currency.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Price In Gram: Numeric
  index, price_in_gram = ice_futures_mdf_impact_v1_1_43.price_in_gram.dissect(buffer, index, packet, parent)

  -- Num Decimals Price: Numeric
  index, num_decimals_price = ice_futures_mdf_impact_v1_1_43.num_decimals_price.dissect(buffer, index, packet, parent)

  -- Num Decimals Price In Gram: Numeric
  index, num_decimals_price_in_gram = ice_futures_mdf_impact_v1_1_43.num_decimals_price_in_gram.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fixing Indicative Price Message
ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.dissect = function(buffer, offset, packet, parent)
  if show.fixing_indicative_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_indicative_price_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Eur Price
ice_futures_mdf_impact_v1_1_43.eur_price = {}

-- Size: Eur Price
ice_futures_mdf_impact_v1_1_43.eur_price.size = 8

-- Display: Eur Price
ice_futures_mdf_impact_v1_1_43.eur_price.display = function(value)
  return "Eur Price: "..value
end

-- Dissect: Eur Price
ice_futures_mdf_impact_v1_1_43.eur_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.eur_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.eur_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.eur_price, range, value, display)

  return offset + length, value
end

-- Gbp Price
ice_futures_mdf_impact_v1_1_43.gbp_price = {}

-- Size: Gbp Price
ice_futures_mdf_impact_v1_1_43.gbp_price.size = 8

-- Display: Gbp Price
ice_futures_mdf_impact_v1_1_43.gbp_price.display = function(value)
  return "Gbp Price: "..value
end

-- Dissect: Gbp Price
ice_futures_mdf_impact_v1_1_43.gbp_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.gbp_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.gbp_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.gbp_price, range, value, display)

  return offset + length, value
end

-- Is Final
ice_futures_mdf_impact_v1_1_43.is_final = {}

-- Size: Is Final
ice_futures_mdf_impact_v1_1_43.is_final.size = 1

-- Display: Is Final
ice_futures_mdf_impact_v1_1_43.is_final.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Final: No Value"
  end

  if value == "Y" then
    return "Is Final: Yes (Y)"
  end
  if value == "N" then
    return "Is Final: No (N)"
  end

  return "Is Final: Unknown("..value..")"
end

-- Dissect: Is Final
ice_futures_mdf_impact_v1_1_43.is_final.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_final.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_final.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_final, range, value, display)

  return offset + length, value
end

-- Is Balanced
ice_futures_mdf_impact_v1_1_43.is_balanced = {}

-- Size: Is Balanced
ice_futures_mdf_impact_v1_1_43.is_balanced.size = 1

-- Display: Is Balanced
ice_futures_mdf_impact_v1_1_43.is_balanced.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Balanced: No Value"
  end

  if value == "Y" then
    return "Is Balanced: Yes (Y)"
  end
  if value == "N" then
    return "Is Balanced: No (N)"
  end

  return "Is Balanced: Unknown("..value..")"
end

-- Dissect: Is Balanced
ice_futures_mdf_impact_v1_1_43.is_balanced.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_balanced.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_balanced.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_balanced, range, value, display)

  return offset + length, value
end

-- Usd Price
ice_futures_mdf_impact_v1_1_43.usd_price = {}

-- Size: Usd Price
ice_futures_mdf_impact_v1_1_43.usd_price.size = 8

-- Display: Usd Price
ice_futures_mdf_impact_v1_1_43.usd_price.display = function(value)
  return "Usd Price: "..value
end

-- Dissect: Usd Price
ice_futures_mdf_impact_v1_1_43.usd_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.usd_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.usd_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.usd_price, range, value, display)

  return offset + length, value
end

-- Agg Offer Qty
ice_futures_mdf_impact_v1_1_43.agg_offer_qty = {}

-- Size: Agg Offer Qty
ice_futures_mdf_impact_v1_1_43.agg_offer_qty.size = 4

-- Display: Agg Offer Qty
ice_futures_mdf_impact_v1_1_43.agg_offer_qty.display = function(value)
  return "Agg Offer Qty: "..value
end

-- Dissect: Agg Offer Qty
ice_futures_mdf_impact_v1_1_43.agg_offer_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.agg_offer_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.agg_offer_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.agg_offer_qty, range, value, display)

  return offset + length, value
end

-- Agg Bid Qty
ice_futures_mdf_impact_v1_1_43.agg_bid_qty = {}

-- Size: Agg Bid Qty
ice_futures_mdf_impact_v1_1_43.agg_bid_qty.size = 4

-- Display: Agg Bid Qty
ice_futures_mdf_impact_v1_1_43.agg_bid_qty.display = function(value)
  return "Agg Bid Qty: "..value
end

-- Dissect: Agg Bid Qty
ice_futures_mdf_impact_v1_1_43.agg_bid_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.agg_bid_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.agg_bid_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.agg_bid_qty, range, value, display)

  return offset + length, value
end

-- Round
ice_futures_mdf_impact_v1_1_43.round = {}

-- Size: Round
ice_futures_mdf_impact_v1_1_43.round.size = 2

-- Display: Round
ice_futures_mdf_impact_v1_1_43.round.display = function(value)
  return "Round: "..value
end

-- Dissect: Round
ice_futures_mdf_impact_v1_1_43.round.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.round.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.round.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.round, range, value, display)

  return offset + length, value
end

-- Description
ice_futures_mdf_impact_v1_1_43.description = {}

-- Size: Description
ice_futures_mdf_impact_v1_1_43.description.size = 20

-- Display: Description
ice_futures_mdf_impact_v1_1_43.description.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Description: No Value"
  end

  return "Description: "..value
end

-- Dissect: Description
ice_futures_mdf_impact_v1_1_43.description.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.description.size
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

  local display = ice_futures_mdf_impact_v1_1_43.description.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.description, range, value, display)

  return offset + length, value
end

-- Auction Date
ice_futures_mdf_impact_v1_1_43.auction_date = {}

-- Size: Auction Date
ice_futures_mdf_impact_v1_1_43.auction_date.size = 10

-- Display: Auction Date
ice_futures_mdf_impact_v1_1_43.auction_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Auction Date: No Value"
  end

  return "Auction Date: "..value
end

-- Dissect: Auction Date
ice_futures_mdf_impact_v1_1_43.auction_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.auction_date.size
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

  local display = ice_futures_mdf_impact_v1_1_43.auction_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.auction_date, range, value, display)

  return offset + length, value
end

-- Fixing Lockdown Message
ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message = {}

-- Calculate size of: Fixing Lockdown Message
ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.auction_date.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.description.size

  index = index + ice_futures_mdf_impact_v1_1_43.round.size

  index = index + ice_futures_mdf_impact_v1_1_43.agg_bid_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.agg_offer_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.usd_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_balanced.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_final.size

  index = index + ice_futures_mdf_impact_v1_1_43.gbp_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.eur_price.size

  return index
end

-- Display: Fixing Lockdown Message
ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fixing Lockdown Message
ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Auction Date: Alpha
  index, auction_date = ice_futures_mdf_impact_v1_1_43.auction_date.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Description: Alpha
  index, description = ice_futures_mdf_impact_v1_1_43.description.dissect(buffer, index, packet, parent)

  -- Round: Numeric
  index, round = ice_futures_mdf_impact_v1_1_43.round.dissect(buffer, index, packet, parent)

  -- Agg Bid Qty: Numeric
  index, agg_bid_qty = ice_futures_mdf_impact_v1_1_43.agg_bid_qty.dissect(buffer, index, packet, parent)

  -- Agg Offer Qty: Numeric
  index, agg_offer_qty = ice_futures_mdf_impact_v1_1_43.agg_offer_qty.dissect(buffer, index, packet, parent)

  -- Usd Price: Numeric
  index, usd_price = ice_futures_mdf_impact_v1_1_43.usd_price.dissect(buffer, index, packet, parent)

  -- Is Balanced: Alpha
  index, is_balanced = ice_futures_mdf_impact_v1_1_43.is_balanced.dissect(buffer, index, packet, parent)

  -- Is Final: Alpha
  index, is_final = ice_futures_mdf_impact_v1_1_43.is_final.dissect(buffer, index, packet, parent)

  -- Gbp Price: Numeric
  index, gbp_price = ice_futures_mdf_impact_v1_1_43.gbp_price.dissect(buffer, index, packet, parent)

  -- Eur Price: Numeric
  index, eur_price = ice_futures_mdf_impact_v1_1_43.eur_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fixing Lockdown Message
ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.dissect = function(buffer, offset, packet, parent)
  if show.fixing_lockdown_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_lockdown_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.fields(buffer, offset, packet, parent)
  end
end

-- Threshold Imbalance Qty
ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty = {}

-- Size: Threshold Imbalance Qty
ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty.size = 4

-- Display: Threshold Imbalance Qty
ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty.display = function(value)
  return "Threshold Imbalance Qty: "..value
end

-- Dissect: Threshold Imbalance Qty
ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.threshold_imbalance_qty, range, value, display)

  return offset + length, value
end

-- Auction End Time
ice_futures_mdf_impact_v1_1_43.auction_end_time = {}

-- Size: Auction End Time
ice_futures_mdf_impact_v1_1_43.auction_end_time.size = 8

-- Display: Auction End Time
ice_futures_mdf_impact_v1_1_43.auction_end_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Auction End Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Auction End Time
ice_futures_mdf_impact_v1_1_43.auction_end_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.auction_end_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.auction_end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.auction_end_time, range, value, display)

  return offset + length, value
end

-- Fixing Status
ice_futures_mdf_impact_v1_1_43.fixing_status = {}

-- Size: Fixing Status
ice_futures_mdf_impact_v1_1_43.fixing_status.size = 1

-- Display: Fixing Status
ice_futures_mdf_impact_v1_1_43.fixing_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Fixing Status: No Value"
  end

  if value == "C" then
    return "Fixing Status: Closed (C)"
  end
  if value == "P" then
    return "Fixing Status: Preopen (P)"
  end
  if value == "L" then
    return "Fixing Status: Lockdown (L)"
  end

  return "Fixing Status: Unknown("..value..")"
end

-- Dissect: Fixing Status
ice_futures_mdf_impact_v1_1_43.fixing_status.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.fixing_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.fixing_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_status, range, value, display)

  return offset + length, value
end

-- Fixing Transition Message
ice_futures_mdf_impact_v1_1_43.fixing_transition_message = {}

-- Calculate size of: Fixing Transition Message
ice_futures_mdf_impact_v1_1_43.fixing_transition_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.fixing_status.size

  index = index + ice_futures_mdf_impact_v1_1_43.auction_end_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  return index
end

-- Display: Fixing Transition Message
ice_futures_mdf_impact_v1_1_43.fixing_transition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fixing Transition Message
ice_futures_mdf_impact_v1_1_43.fixing_transition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Fixing Status: Alpha
  index, fixing_status = ice_futures_mdf_impact_v1_1_43.fixing_status.dissect(buffer, index, packet, parent)

  -- Auction End Time: Numeric
  index, auction_end_time = ice_futures_mdf_impact_v1_1_43.auction_end_time.dissect(buffer, index, packet, parent)

  -- Threshold Imbalance Qty: Numeric
  index, threshold_imbalance_qty = ice_futures_mdf_impact_v1_1_43.threshold_imbalance_qty.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fixing Transition Message
ice_futures_mdf_impact_v1_1_43.fixing_transition_message.dissect = function(buffer, offset, packet, parent)
  if show.fixing_transition_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fixing_transition_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.fixing_transition_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.fixing_transition_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.fixing_transition_message.fields(buffer, offset, packet, parent)
  end
end

-- Is Transaction End
ice_futures_mdf_impact_v1_1_43.is_transaction_end = {}

-- Size: Is Transaction End
ice_futures_mdf_impact_v1_1_43.is_transaction_end.size = 1

-- Display: Is Transaction End
ice_futures_mdf_impact_v1_1_43.is_transaction_end.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Transaction End: No Value"
  end

  if value == "Y" then
    return "Is Transaction End: Yes (Y)"
  end
  if value == "N" then
    return "Is Transaction End: No (N)"
  end

  return "Is Transaction End: Unknown("..value..")"
end

-- Dissect: Is Transaction End
ice_futures_mdf_impact_v1_1_43.is_transaction_end.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_transaction_end.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_transaction_end.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_transaction_end, range, value, display)

  return offset + length, value
end

-- Trade Transaction Id
ice_futures_mdf_impact_v1_1_43.trade_transaction_id = {}

-- Size: Trade Transaction Id
ice_futures_mdf_impact_v1_1_43.trade_transaction_id.size = 8

-- Display: Trade Transaction Id
ice_futures_mdf_impact_v1_1_43.trade_transaction_id.display = function(value)
  return "Trade Transaction Id: "..value
end

-- Dissect: Trade Transaction Id
ice_futures_mdf_impact_v1_1_43.trade_transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.trade_transaction_id.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.trade_transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.trade_transaction_id, range, value, display)

  return offset + length, value
end

-- Start Or End
ice_futures_mdf_impact_v1_1_43.start_or_end = {}

-- Size: Start Or End
ice_futures_mdf_impact_v1_1_43.start_or_end.size = 1

-- Display: Start Or End
ice_futures_mdf_impact_v1_1_43.start_or_end.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Start Or End: No Value"
  end

  if value == "S" then
    return "Start Or End: Start (S)"
  end
  if value == "E" then
    return "Start Or End: End (E)"
  end

  return "Start Or End: Unknown("..value..")"
end

-- Dissect: Start Or End
ice_futures_mdf_impact_v1_1_43.start_or_end.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.start_or_end.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.start_or_end.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.start_or_end, range, value, display)

  return offset + length, value
end

-- Message Bundle Marker
ice_futures_mdf_impact_v1_1_43.message_bundle_marker = {}

-- Calculate size of: Message Bundle Marker
ice_futures_mdf_impact_v1_1_43.message_bundle_marker.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.start_or_end.size

  index = index + ice_futures_mdf_impact_v1_1_43.trade_transaction_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_transaction_end.size

  return index
end

-- Display: Message Bundle Marker
ice_futures_mdf_impact_v1_1_43.message_bundle_marker.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Bundle Marker
ice_futures_mdf_impact_v1_1_43.message_bundle_marker.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Or End: Alpha
  index, start_or_end = ice_futures_mdf_impact_v1_1_43.start_or_end.dissect(buffer, index, packet, parent)

  -- Trade Transaction Id: Numeric
  index, trade_transaction_id = ice_futures_mdf_impact_v1_1_43.trade_transaction_id.dissect(buffer, index, packet, parent)

  -- Is Transaction End: Alpha
  index, is_transaction_end = ice_futures_mdf_impact_v1_1_43.is_transaction_end.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Bundle Marker
ice_futures_mdf_impact_v1_1_43.message_bundle_marker.dissect = function(buffer, offset, packet, parent)
  if show.message_bundle_marker then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.message_bundle_marker, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.message_bundle_marker.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.message_bundle_marker.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.message_bundle_marker.fields(buffer, offset, packet, parent)
  end
end

-- Request Trading Engine Received Timestamp
ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp = {}

-- Size: Request Trading Engine Received Timestamp
ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.size = 8

-- Display: Request Trading Engine Received Timestamp
ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000000000)
  local nanoseconds = value:tonumber()%1000000000

  return "Request Trading Engine Received Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Request Trading Engine Received Timestamp
ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.request_trading_engine_received_timestamp, range, value, display)

  return offset + length, value
end

-- Sequence Within Millis
ice_futures_mdf_impact_v1_1_43.sequence_within_millis = {}

-- Size: Sequence Within Millis
ice_futures_mdf_impact_v1_1_43.sequence_within_millis.size = 4

-- Display: Sequence Within Millis
ice_futures_mdf_impact_v1_1_43.sequence_within_millis.display = function(value)
  return "Sequence Within Millis: "..value
end

-- Dissect: Sequence Within Millis
ice_futures_mdf_impact_v1_1_43.sequence_within_millis.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.sequence_within_millis.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.sequence_within_millis.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.sequence_within_millis, range, value, display)

  return offset + length, value
end

-- Order Id
ice_futures_mdf_impact_v1_1_43.order_id = {}

-- Size: Order Id
ice_futures_mdf_impact_v1_1_43.order_id.size = 8

-- Display: Order Id
ice_futures_mdf_impact_v1_1_43.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
ice_futures_mdf_impact_v1_1_43.order_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.order_id.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.order_id, range, value, display)

  return offset + length, value
end

-- Delete Order Message
ice_futures_mdf_impact_v1_1_43.delete_order_message = {}

-- Calculate size of: Delete Order Message
ice_futures_mdf_impact_v1_1_43.delete_order_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.sequence_within_millis.size

  index = index + ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.size

  return index
end

-- Display: Delete Order Message
ice_futures_mdf_impact_v1_1_43.delete_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Delete Order Message
ice_futures_mdf_impact_v1_1_43.delete_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = ice_futures_mdf_impact_v1_1_43.order_id.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Sequence Within Millis: Numeric
  index, sequence_within_millis = ice_futures_mdf_impact_v1_1_43.sequence_within_millis.dissect(buffer, index, packet, parent)

  -- Request Trading Engine Received Timestamp: Numeric
  index, request_trading_engine_received_timestamp = ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
ice_futures_mdf_impact_v1_1_43.delete_order_message.dissect = function(buffer, offset, packet, parent)
  if show.delete_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.delete_order_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.delete_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.delete_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.delete_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modification Timestamp
ice_futures_mdf_impact_v1_1_43.modification_timestamp = {}

-- Size: Modification Timestamp
ice_futures_mdf_impact_v1_1_43.modification_timestamp.size = 8

-- Display: Modification Timestamp
ice_futures_mdf_impact_v1_1_43.modification_timestamp.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Modification Timestamp: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Modification Timestamp
ice_futures_mdf_impact_v1_1_43.modification_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.modification_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.modification_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.modification_timestamp, range, value, display)

  return offset + length, value
end

-- Extra Flags
ice_futures_mdf_impact_v1_1_43.extra_flags = {}

-- Size: Extra Flags
ice_futures_mdf_impact_v1_1_43.extra_flags.size = 1

-- Display: Extra Flags
ice_futures_mdf_impact_v1_1_43.extra_flags.display = function(value)
  return "Extra Flags: "..value
end

-- Dissect: Extra Flags
ice_futures_mdf_impact_v1_1_43.extra_flags.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.extra_flags.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.extra_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.extra_flags, range, value, display)

  return offset + length, value
end

-- Order Entry Date Time
ice_futures_mdf_impact_v1_1_43.order_entry_date_time = {}

-- Size: Order Entry Date Time
ice_futures_mdf_impact_v1_1_43.order_entry_date_time.size = 8

-- Display: Order Entry Date Time
ice_futures_mdf_impact_v1_1_43.order_entry_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Order Entry Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Order Entry Date Time
ice_futures_mdf_impact_v1_1_43.order_entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.order_entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.order_entry_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.order_entry_date_time, range, value, display)

  return offset + length, value
end

-- Is Rfq
ice_futures_mdf_impact_v1_1_43.is_rfq = {}

-- Size: Is Rfq
ice_futures_mdf_impact_v1_1_43.is_rfq.size = 1

-- Display: Is Rfq
ice_futures_mdf_impact_v1_1_43.is_rfq.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Rfq: No Value"
  end

  if value == "Y" then
    return "Is Rfq: Yes (Y)"
  end
  if value == "N" then
    return "Is Rfq: No (N)"
  end

  return "Is Rfq: Unknown("..value..")"
end

-- Dissect: Is Rfq
ice_futures_mdf_impact_v1_1_43.is_rfq.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_rfq.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_rfq.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_rfq, range, value, display)

  return offset + length, value
end

-- Is Implied
ice_futures_mdf_impact_v1_1_43.is_implied = {}

-- Size: Is Implied
ice_futures_mdf_impact_v1_1_43.is_implied.size = 1

-- Display: Is Implied
ice_futures_mdf_impact_v1_1_43.is_implied.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Implied: No Value"
  end

  if value == "Y" then
    return "Is Implied: Yes (Y)"
  end
  if value == "N" then
    return "Is Implied: No (N)"
  end

  return "Is Implied: Unknown("..value..")"
end

-- Dissect: Is Implied
ice_futures_mdf_impact_v1_1_43.is_implied.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_implied.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_implied, range, value, display)

  return offset + length, value
end

-- Order Sequence Id
ice_futures_mdf_impact_v1_1_43.order_sequence_id = {}

-- Size: Order Sequence Id
ice_futures_mdf_impact_v1_1_43.order_sequence_id.size = 2

-- Display: Order Sequence Id
ice_futures_mdf_impact_v1_1_43.order_sequence_id.display = function(value)
  return "Order Sequence Id: "..value
end

-- Dissect: Order Sequence Id
ice_futures_mdf_impact_v1_1_43.order_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.order_sequence_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.order_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.order_sequence_id, range, value, display)

  return offset + length, value
end

-- Add Or Modify Order Message
ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message = {}

-- Calculate size of: Add Or Modify Order Message
ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_sequence_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.side.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_implied.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_rfq.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_entry_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.extra_flags.size

  index = index + ice_futures_mdf_impact_v1_1_43.sequence_within_millis.size

  index = index + ice_futures_mdf_impact_v1_1_43.modification_timestamp.size

  index = index + ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.size

  return index
end

-- Display: Add Or Modify Order Message
ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Add Or Modify Order Message
ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = ice_futures_mdf_impact_v1_1_43.order_id.dissect(buffer, index, packet, parent)

  -- Order Sequence Id: Numeric
  index, order_sequence_id = ice_futures_mdf_impact_v1_1_43.order_sequence_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = ice_futures_mdf_impact_v1_1_43.side.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Is Implied: Alpha
  index, is_implied = ice_futures_mdf_impact_v1_1_43.is_implied.dissect(buffer, index, packet, parent)

  -- Is Rfq: Alpha
  index, is_rfq = ice_futures_mdf_impact_v1_1_43.is_rfq.dissect(buffer, index, packet, parent)

  -- Order Entry Date Time: Numeric
  index, order_entry_date_time = ice_futures_mdf_impact_v1_1_43.order_entry_date_time.dissect(buffer, index, packet, parent)

  -- Extra Flags: Numeric
  index, extra_flags = ice_futures_mdf_impact_v1_1_43.extra_flags.dissect(buffer, index, packet, parent)

  -- Sequence Within Millis: Numeric
  index, sequence_within_millis = ice_futures_mdf_impact_v1_1_43.sequence_within_millis.dissect(buffer, index, packet, parent)

  -- Modification Timestamp: Numeric
  index, modification_timestamp = ice_futures_mdf_impact_v1_1_43.modification_timestamp.dissect(buffer, index, packet, parent)

  -- Request Trading Engine Received Timestamp: Numeric
  index, request_trading_engine_received_timestamp = ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Or Modify Order Message
ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.add_or_modify_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.add_or_modify_order_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Snapshot Order Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message = {}

-- Calculate size of: Market Snapshot Order Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_sequence_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.side.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_implied.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_rfq.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_entry_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.sequence_within_millis.size

  return index
end

-- Display: Market Snapshot Order Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Snapshot Order Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Order Id: Numeric
  index, order_id = ice_futures_mdf_impact_v1_1_43.order_id.dissect(buffer, index, packet, parent)

  -- Order Sequence Id: Numeric
  index, order_sequence_id = ice_futures_mdf_impact_v1_1_43.order_sequence_id.dissect(buffer, index, packet, parent)

  -- Side: Alpha
  index, side = ice_futures_mdf_impact_v1_1_43.side.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Is Implied: Alpha
  index, is_implied = ice_futures_mdf_impact_v1_1_43.is_implied.dissect(buffer, index, packet, parent)

  -- Is Rfq: Alpha
  index, is_rfq = ice_futures_mdf_impact_v1_1_43.is_rfq.dissect(buffer, index, packet, parent)

  -- Order Entry Date Time: Numeric
  index, order_entry_date_time = ice_futures_mdf_impact_v1_1_43.order_entry_date_time.dissect(buffer, index, packet, parent)

  -- Sequence Within Millis: Numeric
  index, sequence_within_millis = ice_futures_mdf_impact_v1_1_43.sequence_within_millis.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Order Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.dissect = function(buffer, offset, packet, parent)
  if show.market_snapshot_order_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_snapshot_order_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Fragment Bytes
ice_futures_mdf_impact_v1_1_43.fragment_bytes = {}

-- Size: Fragment Bytes
ice_futures_mdf_impact_v1_1_43.fragment_bytes.size = 9

-- Display: Fragment Bytes
ice_futures_mdf_impact_v1_1_43.fragment_bytes.display = function(value)
  return "Fragment Bytes: "..value
end

-- Dissect: Fragment Bytes
ice_futures_mdf_impact_v1_1_43.fragment_bytes.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.fragment_bytes.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = ice_futures_mdf_impact_v1_1_43.fragment_bytes.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_bytes, range, value, display)

  return offset + length, value
end

-- Fragment Length
ice_futures_mdf_impact_v1_1_43.fragment_length = {}

-- Size: Fragment Length
ice_futures_mdf_impact_v1_1_43.fragment_length.size = 2

-- Display: Fragment Length
ice_futures_mdf_impact_v1_1_43.fragment_length.display = function(value)
  return "Fragment Length: "..value
end

-- Dissect: Fragment Length
ice_futures_mdf_impact_v1_1_43.fragment_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.fragment_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.fragment_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_length, range, value, display)

  return offset + length, value
end

-- Fragment Offset
ice_futures_mdf_impact_v1_1_43.fragment_offset = {}

-- Size: Fragment Offset
ice_futures_mdf_impact_v1_1_43.fragment_offset.size = 2

-- Display: Fragment Offset
ice_futures_mdf_impact_v1_1_43.fragment_offset.display = function(value)
  return "Fragment Offset: "..value
end

-- Dissect: Fragment Offset
ice_futures_mdf_impact_v1_1_43.fragment_offset.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.fragment_offset.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.fragment_offset.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_offset, range, value, display)

  return offset + length, value
end

-- Total Length
ice_futures_mdf_impact_v1_1_43.total_length = {}

-- Size: Total Length
ice_futures_mdf_impact_v1_1_43.total_length.size = 2

-- Display: Total Length
ice_futures_mdf_impact_v1_1_43.total_length.display = function(value)
  return "Total Length: "..value
end

-- Dissect: Total Length
ice_futures_mdf_impact_v1_1_43.total_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.total_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.total_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.total_length, range, value, display)

  return offset + length, value
end

-- Fragment Wrapper Message
ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message = {}

-- Calculate size of: Fragment Wrapper Message
ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.total_length.size

  index = index + ice_futures_mdf_impact_v1_1_43.fragment_offset.size

  index = index + ice_futures_mdf_impact_v1_1_43.fragment_length.size

  index = index + ice_futures_mdf_impact_v1_1_43.fragment_bytes.size

  return index
end

-- Display: Fragment Wrapper Message
ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fragment Wrapper Message
ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Length: Numeric
  index, total_length = ice_futures_mdf_impact_v1_1_43.total_length.dissect(buffer, index, packet, parent)

  -- Fragment Offset: Numeric
  index, fragment_offset = ice_futures_mdf_impact_v1_1_43.fragment_offset.dissect(buffer, index, packet, parent)

  -- Fragment Length: Numeric
  index, fragment_length = ice_futures_mdf_impact_v1_1_43.fragment_length.dissect(buffer, index, packet, parent)

  -- Fragment Bytes: Bytes
  index, fragment_bytes = ice_futures_mdf_impact_v1_1_43.fragment_bytes.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fragment Wrapper Message
ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.dissect = function(buffer, offset, packet, parent)
  if show.fragment_wrapper_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.fragment_wrapper_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.fields(buffer, offset, packet, parent)
  end
end

-- Aon
ice_futures_mdf_impact_v1_1_43.aon = {}

-- Size: Aon
ice_futures_mdf_impact_v1_1_43.aon.size = 1

-- Display: Aon
ice_futures_mdf_impact_v1_1_43.aon.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Aon: No Value"
  end

  return "Aon: "..value
end

-- Dissect: Aon
ice_futures_mdf_impact_v1_1_43.aon.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.aon.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.aon.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.aon, range, value, display)

  return offset + length, value
end

-- Alt Last Trade Price
ice_futures_mdf_impact_v1_1_43.alt_last_trade_price = {}

-- Size: Alt Last Trade Price
ice_futures_mdf_impact_v1_1_43.alt_last_trade_price.size = 8

-- Display: Alt Last Trade Price
ice_futures_mdf_impact_v1_1_43.alt_last_trade_price.display = function(value)
  return "Alt Last Trade Price: "..value
end

-- Dissect: Alt Last Trade Price
ice_futures_mdf_impact_v1_1_43.alt_last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.alt_last_trade_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.alt_last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.alt_last_trade_price, range, value, display)

  return offset + length, value
end

-- Alt Vwap
ice_futures_mdf_impact_v1_1_43.alt_vwap = {}

-- Size: Alt Vwap
ice_futures_mdf_impact_v1_1_43.alt_vwap.size = 8

-- Display: Alt Vwap
ice_futures_mdf_impact_v1_1_43.alt_vwap.display = function(value)
  return "Alt Vwap: "..value
end

-- Dissect: Alt Vwap
ice_futures_mdf_impact_v1_1_43.alt_vwap.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.alt_vwap.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.alt_vwap.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.alt_vwap, range, value, display)

  return offset + length, value
end

-- Alt Low Price
ice_futures_mdf_impact_v1_1_43.alt_low_price = {}

-- Size: Alt Low Price
ice_futures_mdf_impact_v1_1_43.alt_low_price.size = 8

-- Display: Alt Low Price
ice_futures_mdf_impact_v1_1_43.alt_low_price.display = function(value)
  return "Alt Low Price: "..value
end

-- Dissect: Alt Low Price
ice_futures_mdf_impact_v1_1_43.alt_low_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.alt_low_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.alt_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.alt_low_price, range, value, display)

  return offset + length, value
end

-- Alt High Price
ice_futures_mdf_impact_v1_1_43.alt_high_price = {}

-- Size: Alt High Price
ice_futures_mdf_impact_v1_1_43.alt_high_price.size = 8

-- Display: Alt High Price
ice_futures_mdf_impact_v1_1_43.alt_high_price.display = function(value)
  return "Alt High Price: "..value
end

-- Dissect: Alt High Price
ice_futures_mdf_impact_v1_1_43.alt_high_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.alt_high_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.alt_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.alt_high_price, range, value, display)

  return offset + length, value
end

-- Alt Price
ice_futures_mdf_impact_v1_1_43.alt_price = {}

-- Size: Alt Price
ice_futures_mdf_impact_v1_1_43.alt_price.size = 8

-- Display: Alt Price
ice_futures_mdf_impact_v1_1_43.alt_price.display = function(value)
  return "Alt Price: "..value
end

-- Dissect: Alt Price
ice_futures_mdf_impact_v1_1_43.alt_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.alt_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.alt_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.alt_price, range, value, display)

  return offset + length, value
end

-- Variable Field
ice_futures_mdf_impact_v1_1_43.variable_field = {}

-- Calculate runtime size of: Variable Field
ice_futures_mdf_impact_v1_1_43.variable_field.size = function(buffer, offset, special_field_id)
  -- Size of Alt Price
  if special_field_id == 1 then
    return ice_futures_mdf_impact_v1_1_43.alt_price.size(buffer, offset)
  end
  -- Size of Alt High Price
  if special_field_id == 2 then
    return ice_futures_mdf_impact_v1_1_43.alt_high_price.size(buffer, offset)
  end
  -- Size of Alt Low Price
  if special_field_id == 3 then
    return ice_futures_mdf_impact_v1_1_43.alt_low_price.size(buffer, offset)
  end
  -- Size of Alt Vwap
  if special_field_id == 4 then
    return ice_futures_mdf_impact_v1_1_43.alt_vwap.size(buffer, offset)
  end
  -- Size of Alt Last Trade Price
  if special_field_id == 5 then
    return ice_futures_mdf_impact_v1_1_43.alt_last_trade_price.size(buffer, offset)
  end
  -- Size of Aon
  if special_field_id == 6 then
    return ice_futures_mdf_impact_v1_1_43.aon.size(buffer, offset)
  end

  return 0
end

-- Display: Variable Field
ice_futures_mdf_impact_v1_1_43.variable_field.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Variable Field
ice_futures_mdf_impact_v1_1_43.variable_field.branches = function(buffer, offset, packet, parent, special_field_id)
  -- Dissect Alt Price
  if special_field_id == 1 then
    return ice_futures_mdf_impact_v1_1_43.alt_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Alt High Price
  if special_field_id == 2 then
    return ice_futures_mdf_impact_v1_1_43.alt_high_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Alt Low Price
  if special_field_id == 3 then
    return ice_futures_mdf_impact_v1_1_43.alt_low_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Alt Vwap
  if special_field_id == 4 then
    return ice_futures_mdf_impact_v1_1_43.alt_vwap.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Alt Last Trade Price
  if special_field_id == 5 then
    return ice_futures_mdf_impact_v1_1_43.alt_last_trade_price.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Aon
  if special_field_id == 6 then
    return ice_futures_mdf_impact_v1_1_43.aon.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Variable Field
ice_futures_mdf_impact_v1_1_43.variable_field.dissect = function(buffer, offset, packet, parent, special_field_id)
  if not show.variable_field then
    return ice_futures_mdf_impact_v1_1_43.variable_field.branches(buffer, offset, packet, parent, special_field_id)
  end

  -- Calculate size and check that branch is not empty
  local size = ice_futures_mdf_impact_v1_1_43.variable_field.size(buffer, offset, special_field_id)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = ice_futures_mdf_impact_v1_1_43.variable_field.display(buffer, packet, parent)
  local element = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.variable_field, range, display)

  return ice_futures_mdf_impact_v1_1_43.variable_field.branches(buffer, offset, packet, parent, special_field_id)
end

-- Special Field Length
ice_futures_mdf_impact_v1_1_43.special_field_length = {}

-- Size: Special Field Length
ice_futures_mdf_impact_v1_1_43.special_field_length.size = 2

-- Display: Special Field Length
ice_futures_mdf_impact_v1_1_43.special_field_length.display = function(value)
  return "Special Field Length: "..value
end

-- Dissect: Special Field Length
ice_futures_mdf_impact_v1_1_43.special_field_length.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.special_field_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.special_field_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_length, range, value, display)

  return offset + length, value
end

-- Special Field Id
ice_futures_mdf_impact_v1_1_43.special_field_id = {}

-- Size: Special Field Id
ice_futures_mdf_impact_v1_1_43.special_field_id.size = 1

-- Display: Special Field Id
ice_futures_mdf_impact_v1_1_43.special_field_id.display = function(value)
  if value == 1 then
    return "Special Field Id: Alt Price (1)"
  end
  if value == 2 then
    return "Special Field Id: Alt High Price (2)"
  end
  if value == 3 then
    return "Special Field Id: Alt Low Price (3)"
  end
  if value == 4 then
    return "Special Field Id: Alt Vwap (4)"
  end
  if value == 5 then
    return "Special Field Id: Alt Last Trade Price (5)"
  end
  if value == 6 then
    return "Special Field Id: Aon (6)"
  end

  return "Special Field Id: Unknown("..value..")"
end

-- Dissect: Special Field Id
ice_futures_mdf_impact_v1_1_43.special_field_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.special_field_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.special_field_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_id, range, value, display)

  return offset + length, value
end

-- Special Field
ice_futures_mdf_impact_v1_1_43.special_field = {}

-- Calculate size of: Special Field
ice_futures_mdf_impact_v1_1_43.special_field.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.special_field_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.special_field_length.size

  -- Parse runtime size of: Variable Field
  index = index + buffer(offset + index - 2, 2):int()

  return index
end

-- Display: Special Field
ice_futures_mdf_impact_v1_1_43.special_field.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Field
ice_futures_mdf_impact_v1_1_43.special_field.fields = function(buffer, offset, packet, parent, special_field_index)
  local index = offset

  -- Implicit Special Field Index
  if special_field_index ~= nil then
    local iteration = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_index, special_field_index)
    iteration:set_generated()
  end

  -- Special Field Id: Numeric
  index, special_field_id = ice_futures_mdf_impact_v1_1_43.special_field_id.dissect(buffer, index, packet, parent)

  -- Special Field Length: Numeric
  index, special_field_length = ice_futures_mdf_impact_v1_1_43.special_field_length.dissect(buffer, index, packet, parent)

  -- Variable Field: Runtime Type with 6 branches
  index = ice_futures_mdf_impact_v1_1_43.variable_field.dissect(buffer, index, packet, parent, special_field_id)

  return index
end

-- Dissect: Special Field
ice_futures_mdf_impact_v1_1_43.special_field.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.special_field then
    local length = ice_futures_mdf_impact_v1_1_43.special_field.size(buffer, offset)
    local range = buffer(offset, length)
    local display = ice_futures_mdf_impact_v1_1_43.special_field.display(buffer, packet, parent)
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.special_field, range, display)
  end

  return ice_futures_mdf_impact_v1_1_43.special_field.fields(buffer, offset, packet, parent)
end

-- Number Of Special Fields
ice_futures_mdf_impact_v1_1_43.number_of_special_fields = {}

-- Size: Number Of Special Fields
ice_futures_mdf_impact_v1_1_43.number_of_special_fields.size = 1

-- Display: Number Of Special Fields
ice_futures_mdf_impact_v1_1_43.number_of_special_fields.display = function(value)
  return "Number Of Special Fields: "..value
end

-- Dissect: Number Of Special Fields
ice_futures_mdf_impact_v1_1_43.number_of_special_fields.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.number_of_special_fields.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.number_of_special_fields.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_special_fields, range, value, display)

  return offset + length, value
end

-- Special Field Message
ice_futures_mdf_impact_v1_1_43.special_field_message = {}

-- Calculate size of: Special Field Message
ice_futures_mdf_impact_v1_1_43.special_field_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.number_of_special_fields.size

  -- Calculate field size from count
  local special_field_count = buffer(offset + index - 1, 1):int()
  for i = 1, special_field_count do
    index = index + ice_futures_mdf_impact_v1_1_43.special_field.size(buffer, offset + index)
  end
  return index
end

-- Display: Special Field Message
ice_futures_mdf_impact_v1_1_43.special_field_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Field Message
ice_futures_mdf_impact_v1_1_43.special_field_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Special Fields: Numeric
  index, number_of_special_fields = ice_futures_mdf_impact_v1_1_43.number_of_special_fields.dissect(buffer, index, packet, parent)

  -- Repeating: Special Field
  for special_field_index = 1, number_of_special_fields do
    index, special_field = ice_futures_mdf_impact_v1_1_43.special_field.dissect(buffer, index, packet, parent, special_field_index)
  end

  return index
end

-- Dissect: Special Field Message
ice_futures_mdf_impact_v1_1_43.special_field_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.special_field_message then
    local length = ice_futures_mdf_impact_v1_1_43.special_field_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = ice_futures_mdf_impact_v1_1_43.special_field_message.display(buffer, packet, parent)
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.special_field_message, range, display)
  end

  return ice_futures_mdf_impact_v1_1_43.special_field_message.fields(buffer, offset, packet, parent)
end

-- Num Decimals Options Price
ice_futures_mdf_impact_v1_1_43.num_decimals_options_price = {}

-- Size: Num Decimals Options Price
ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.size = 1

-- Display: Num Decimals Options Price
ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Num Decimals Options Price: No Value"
  end

  return "Num Decimals Options Price: "..value
end

-- Dissect: Num Decimals Options Price
ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.num_decimals_options_price, range, value, display)

  return offset + length, value
end

-- Isin
ice_futures_mdf_impact_v1_1_43.isin = {}

-- Size: Isin
ice_futures_mdf_impact_v1_1_43.isin.size = 12

-- Display: Isin
ice_futures_mdf_impact_v1_1_43.isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Isin: No Value"
  end

  return "Isin: "..value
end

-- Dissect: Isin
ice_futures_mdf_impact_v1_1_43.isin.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.isin.size
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

  local display = ice_futures_mdf_impact_v1_1_43.isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.isin, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Option Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price = {}

-- Size: Off Exchange Increment Option Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.size = 4

-- Display: Off Exchange Increment Option Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.display = function(value)
  return "Off Exchange Increment Option Price: "..value
end

-- Dissect: Off Exchange Increment Option Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_option_price, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price = {}

-- Size: Off Exchange Increment Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.size = 4

-- Display: Off Exchange Increment Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.display = function(value)
  return "Off Exchange Increment Price: "..value
end

-- Dissect: Off Exchange Increment Price
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_price, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Qty
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty = {}

-- Size: Off Exchange Increment Qty
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.size = 4

-- Display: Off Exchange Increment Qty
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.display = function(value)
  return "Off Exchange Increment Qty: "..value
end

-- Dissect: Off Exchange Increment Qty
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_qty, range, value, display)

  return offset + length, value
end

-- Off Exchange Increment Qty Denominator
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator = {}

-- Size: Off Exchange Increment Qty Denominator
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.size = 1

-- Display: Off Exchange Increment Qty Denominator
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Off Exchange Increment Qty Denominator: No Value"
  end

  return "Off Exchange Increment Qty Denominator: "..value
end

-- Dissect: Off Exchange Increment Qty Denominator
ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.off_exchange_increment_qty_denominator, range, value, display)

  return offset + length, value
end

-- Mic Code
ice_futures_mdf_impact_v1_1_43.mic_code = {}

-- Size: Mic Code
ice_futures_mdf_impact_v1_1_43.mic_code.size = 4

-- Display: Mic Code
ice_futures_mdf_impact_v1_1_43.mic_code.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic Code: No Value"
  end

  return "Mic Code: "..value
end

-- Dissect: Mic Code
ice_futures_mdf_impact_v1_1_43.mic_code.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.mic_code.size
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

  local display = ice_futures_mdf_impact_v1_1_43.mic_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.mic_code, range, value, display)

  return offset + length, value
end

-- Strip Name
ice_futures_mdf_impact_v1_1_43.strip_name = {}

-- Size: Strip Name
ice_futures_mdf_impact_v1_1_43.strip_name.size = 39

-- Display: Strip Name
ice_futures_mdf_impact_v1_1_43.strip_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strip Name: No Value"
  end

  return "Strip Name: "..value
end

-- Dissect: Strip Name
ice_futures_mdf_impact_v1_1_43.strip_name.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.strip_name.size
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

  local display = ice_futures_mdf_impact_v1_1_43.strip_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strip_name, range, value, display)

  return offset + length, value
end

-- Strip Id
ice_futures_mdf_impact_v1_1_43.strip_id = {}

-- Size: Strip Id
ice_futures_mdf_impact_v1_1_43.strip_id.size = 4

-- Display: Strip Id
ice_futures_mdf_impact_v1_1_43.strip_id.display = function(value)
  return "Strip Id: "..value
end

-- Dissect: Strip Id
ice_futures_mdf_impact_v1_1_43.strip_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.strip_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.strip_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strip_id, range, value, display)

  return offset + length, value
end

-- Hub Alias
ice_futures_mdf_impact_v1_1_43.hub_alias = {}

-- Size: Hub Alias
ice_futures_mdf_impact_v1_1_43.hub_alias.size = 80

-- Display: Hub Alias
ice_futures_mdf_impact_v1_1_43.hub_alias.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Hub Alias: No Value"
  end

  return "Hub Alias: "..value
end

-- Dissect: Hub Alias
ice_futures_mdf_impact_v1_1_43.hub_alias.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hub_alias.size
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

  local display = ice_futures_mdf_impact_v1_1_43.hub_alias.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hub_alias, range, value, display)

  return offset + length, value
end

-- Hub Id
ice_futures_mdf_impact_v1_1_43.hub_id = {}

-- Size: Hub Id
ice_futures_mdf_impact_v1_1_43.hub_id.size = 4

-- Display: Hub Id
ice_futures_mdf_impact_v1_1_43.hub_id.display = function(value)
  return "Hub Id: "..value
end

-- Dissect: Hub Id
ice_futures_mdf_impact_v1_1_43.hub_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hub_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.hub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hub_id, range, value, display)

  return offset + length, value
end

-- Product Name
ice_futures_mdf_impact_v1_1_43.product_name = {}

-- Size: Product Name
ice_futures_mdf_impact_v1_1_43.product_name.size = 62

-- Display: Product Name
ice_futures_mdf_impact_v1_1_43.product_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Product Name: No Value"
  end

  return "Product Name: "..value
end

-- Dissect: Product Name
ice_futures_mdf_impact_v1_1_43.product_name.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.product_name.size
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

  local display = ice_futures_mdf_impact_v1_1_43.product_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.product_name, range, value, display)

  return offset + length, value
end

-- Product Id
ice_futures_mdf_impact_v1_1_43.product_id = {}

-- Size: Product Id
ice_futures_mdf_impact_v1_1_43.product_id.size = 4

-- Display: Product Id
ice_futures_mdf_impact_v1_1_43.product_id.display = function(value)
  return "Product Id: "..value
end

-- Dissect: Product Id
ice_futures_mdf_impact_v1_1_43.product_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.product_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.product_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.product_id, range, value, display)

  return offset + length, value
end

-- Max Price
ice_futures_mdf_impact_v1_1_43.max_price = {}

-- Size: Max Price
ice_futures_mdf_impact_v1_1_43.max_price.size = 8

-- Display: Max Price
ice_futures_mdf_impact_v1_1_43.max_price.display = function(value)
  return "Max Price: "..value
end

-- Dissect: Max Price
ice_futures_mdf_impact_v1_1_43.max_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.max_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.max_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.max_price, range, value, display)

  return offset + length, value
end

-- Min Price
ice_futures_mdf_impact_v1_1_43.min_price = {}

-- Size: Min Price
ice_futures_mdf_impact_v1_1_43.min_price.size = 8

-- Display: Min Price
ice_futures_mdf_impact_v1_1_43.min_price.display = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
ice_futures_mdf_impact_v1_1_43.min_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.min_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.min_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.min_price, range, value, display)

  return offset + length, value
end

-- Cleared Alias
ice_futures_mdf_impact_v1_1_43.cleared_alias = {}

-- Size: Cleared Alias
ice_futures_mdf_impact_v1_1_43.cleared_alias.size = 15

-- Display: Cleared Alias
ice_futures_mdf_impact_v1_1_43.cleared_alias.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Cleared Alias: No Value"
  end

  return "Cleared Alias: "..value
end

-- Dissect: Cleared Alias
ice_futures_mdf_impact_v1_1_43.cleared_alias.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.cleared_alias.size
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

  local display = ice_futures_mdf_impact_v1_1_43.cleared_alias.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.cleared_alias, range, value, display)

  return offset + length, value
end

-- Unit Quantity
ice_futures_mdf_impact_v1_1_43.unit_quantity = {}

-- Size: Unit Quantity
ice_futures_mdf_impact_v1_1_43.unit_quantity.size = 4

-- Display: Unit Quantity
ice_futures_mdf_impact_v1_1_43.unit_quantity.display = function(value)
  return "Unit Quantity: "..value
end

-- Dissect: Unit Quantity
ice_futures_mdf_impact_v1_1_43.unit_quantity.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.unit_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.unit_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.unit_quantity, range, value, display)

  return offset + length, value
end

-- Maturity Day
ice_futures_mdf_impact_v1_1_43.maturity_day = {}

-- Size: Maturity Day
ice_futures_mdf_impact_v1_1_43.maturity_day.size = 2

-- Display: Maturity Day
ice_futures_mdf_impact_v1_1_43.maturity_day.display = function(value)
  return "Maturity Day: "..value
end

-- Dissect: Maturity Day
ice_futures_mdf_impact_v1_1_43.maturity_day.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.maturity_day.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.maturity_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.maturity_day, range, value, display)

  return offset + length, value
end

-- Maturity Month
ice_futures_mdf_impact_v1_1_43.maturity_month = {}

-- Size: Maturity Month
ice_futures_mdf_impact_v1_1_43.maturity_month.size = 2

-- Display: Maturity Month
ice_futures_mdf_impact_v1_1_43.maturity_month.display = function(value)
  return "Maturity Month: "..value
end

-- Dissect: Maturity Month
ice_futures_mdf_impact_v1_1_43.maturity_month.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.maturity_month.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.maturity_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.maturity_month, range, value, display)

  return offset + length, value
end

-- Maturity Year
ice_futures_mdf_impact_v1_1_43.maturity_year = {}

-- Size: Maturity Year
ice_futures_mdf_impact_v1_1_43.maturity_year.size = 2

-- Display: Maturity Year
ice_futures_mdf_impact_v1_1_43.maturity_year.display = function(value)
  return "Maturity Year: "..value
end

-- Dissect: Maturity Year
ice_futures_mdf_impact_v1_1_43.maturity_year.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.maturity_year.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.maturity_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.maturity_year, range, value, display)

  return offset + length, value
end

-- New Expiry Message
ice_futures_mdf_impact_v1_1_43.new_expiry_message = {}

-- Calculate size of: New Expiry Message
ice_futures_mdf_impact_v1_1_43.new_expiry_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_type_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.lot_size.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_desc.size

  index = index + ice_futures_mdf_impact_v1_1_43.maturity_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.maturity_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.maturity_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.deal_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.min_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.currency.size

  index = index + ice_futures_mdf_impact_v1_1_43.cleared_alias.size

  index = index + ice_futures_mdf_impact_v1_1_43.min_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.max_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.product_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.product_name.size

  index = index + ice_futures_mdf_impact_v1_1_43.hub_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.hub_alias.size

  index = index + ice_futures_mdf_impact_v1_1_43.strip_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.strip_name.size

  index = index + ice_futures_mdf_impact_v1_1_43.settle_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.mic_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.contract_symbol.size

  index = index + ice_futures_mdf_impact_v1_1_43.isin.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.gt_allowed.size

  index = index + ice_futures_mdf_impact_v1_1_43.cross_order_supported.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_of_measure.size

  index = index + ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.size

  index = index + ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_of_cycles.size

  return index
end

-- Display: New Expiry Message
ice_futures_mdf_impact_v1_1_43.new_expiry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Expiry Message
ice_futures_mdf_impact_v1_1_43.new_expiry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Market Type Id: Numeric
  index, market_type_id = ice_futures_mdf_impact_v1_1_43.market_type_id.dissect(buffer, index, packet, parent)

  -- Order Price Denominator: Alpha
  index, order_price_denominator = ice_futures_mdf_impact_v1_1_43.order_price_denominator.dissect(buffer, index, packet, parent)

  -- Increment Price: Numeric
  index, increment_price = ice_futures_mdf_impact_v1_1_43.increment_price.dissect(buffer, index, packet, parent)

  -- Increment Qty: Numeric
  index, increment_qty = ice_futures_mdf_impact_v1_1_43.increment_qty.dissect(buffer, index, packet, parent)

  -- Lot Size: Numeric
  index, lot_size = ice_futures_mdf_impact_v1_1_43.lot_size.dissect(buffer, index, packet, parent)

  -- Market Desc: Alpha
  index, market_desc = ice_futures_mdf_impact_v1_1_43.market_desc.dissect(buffer, index, packet, parent)

  -- Maturity Year: Numeric
  index, maturity_year = ice_futures_mdf_impact_v1_1_43.maturity_year.dissect(buffer, index, packet, parent)

  -- Maturity Month: Numeric
  index, maturity_month = ice_futures_mdf_impact_v1_1_43.maturity_month.dissect(buffer, index, packet, parent)

  -- Maturity Day: Numeric
  index, maturity_day = ice_futures_mdf_impact_v1_1_43.maturity_day.dissect(buffer, index, packet, parent)

  -- Deal Price Denominator: Alpha
  index, deal_price_denominator = ice_futures_mdf_impact_v1_1_43.deal_price_denominator.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = ice_futures_mdf_impact_v1_1_43.min_qty.dissect(buffer, index, packet, parent)

  -- Unit Quantity: Numeric
  index, unit_quantity = ice_futures_mdf_impact_v1_1_43.unit_quantity.dissect(buffer, index, packet, parent)

  -- Currency: Alpha
  index, currency = ice_futures_mdf_impact_v1_1_43.currency.dissect(buffer, index, packet, parent)

  -- Cleared Alias: Alpha
  index, cleared_alias = ice_futures_mdf_impact_v1_1_43.cleared_alias.dissect(buffer, index, packet, parent)

  -- Min Price: Numeric
  index, min_price = ice_futures_mdf_impact_v1_1_43.min_price.dissect(buffer, index, packet, parent)

  -- Max Price: Numeric
  index, max_price = ice_futures_mdf_impact_v1_1_43.max_price.dissect(buffer, index, packet, parent)

  -- Product Id: Numeric
  index, product_id = ice_futures_mdf_impact_v1_1_43.product_id.dissect(buffer, index, packet, parent)

  -- Product Name: Alpha
  index, product_name = ice_futures_mdf_impact_v1_1_43.product_name.dissect(buffer, index, packet, parent)

  -- Hub Id: Numeric
  index, hub_id = ice_futures_mdf_impact_v1_1_43.hub_id.dissect(buffer, index, packet, parent)

  -- Hub Alias: Alpha
  index, hub_alias = ice_futures_mdf_impact_v1_1_43.hub_alias.dissect(buffer, index, packet, parent)

  -- Strip Id: Numeric
  index, strip_id = ice_futures_mdf_impact_v1_1_43.strip_id.dissect(buffer, index, packet, parent)

  -- Strip Name: Alpha
  index, strip_name = ice_futures_mdf_impact_v1_1_43.strip_name.dissect(buffer, index, packet, parent)

  -- Settle Price Denominator: Alpha
  index, settle_price_denominator = ice_futures_mdf_impact_v1_1_43.settle_price_denominator.dissect(buffer, index, packet, parent)

  -- Mic Code: Alpha
  index, mic_code = ice_futures_mdf_impact_v1_1_43.mic_code.dissect(buffer, index, packet, parent)

  -- Unit Qty Denominator: Alpha
  index, unit_qty_denominator = ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Qty Denominator: Alpha
  index, off_exchange_increment_qty_denominator = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Qty: Numeric
  index, off_exchange_increment_qty = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Price: Numeric
  index, off_exchange_increment_price = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Option Price: Numeric
  index, off_exchange_increment_option_price = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.dissect(buffer, index, packet, parent)

  -- Contract Symbol: Alpha
  index, contract_symbol = ice_futures_mdf_impact_v1_1_43.contract_symbol.dissect(buffer, index, packet, parent)

  -- Isin: Alpha
  index, isin = ice_futures_mdf_impact_v1_1_43.isin.dissect(buffer, index, packet, parent)

  -- Num Decimals Options Price: Alpha
  index, num_decimals_options_price = ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.dissect(buffer, index, packet, parent)

  -- Hedge Market Id: Numeric
  index, hedge_market_id = ice_futures_mdf_impact_v1_1_43.hedge_market_id.dissect(buffer, index, packet, parent)

  -- Settlement Type: Alpha
  index, settlement_type = ice_futures_mdf_impact_v1_1_43.settlement_type.dissect(buffer, index, packet, parent)

  -- Gt Allowed: Alpha
  index, gt_allowed = ice_futures_mdf_impact_v1_1_43.gt_allowed.dissect(buffer, index, packet, parent)

  -- Cross Order Supported: Alpha
  index, cross_order_supported = ice_futures_mdf_impact_v1_1_43.cross_order_supported.dissect(buffer, index, packet, parent)

  -- Unit Of Measure: Alpha
  index, unit_of_measure = ice_futures_mdf_impact_v1_1_43.unit_of_measure.dissect(buffer, index, packet, parent)

  -- Mifid Regulated Market: Alpha
  index, mifid_regulated_market = ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.dissect(buffer, index, packet, parent)

  -- Screen Last Trade Year: Numeric
  index, screen_last_trade_year = ice_futures_mdf_impact_v1_1_43.screen_last_trade_year.dissect(buffer, index, packet, parent)

  -- Screen Last Trade Month: Numeric
  index, screen_last_trade_month = ice_futures_mdf_impact_v1_1_43.screen_last_trade_month.dissect(buffer, index, packet, parent)

  -- Screen Last Trade Day: Numeric
  index, screen_last_trade_day = ice_futures_mdf_impact_v1_1_43.screen_last_trade_day.dissect(buffer, index, packet, parent)

  -- Old Num Of Cycles: Numeric
  index, old_num_of_cycles = ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.dissect(buffer, index, packet, parent)

  -- Num Of Cycles: Numeric
  index, num_of_cycles = ice_futures_mdf_impact_v1_1_43.num_of_cycles.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Expiry Message
ice_futures_mdf_impact_v1_1_43.new_expiry_message.dissect = function(buffer, offset, packet, parent)
  if show.new_expiry_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.new_expiry_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.new_expiry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.new_expiry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.new_expiry_message.fields(buffer, offset, packet, parent)
  end
end

-- Extra Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_leg_definition = {}

-- Calculate size of: Extra Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_leg_definition.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.leg_body_length.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.reserved_2.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_side.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_strategy_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.size

  return index
end

-- Display: Extra Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_leg_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Extra Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_leg_definition.fields = function(buffer, offset, packet, parent, extra_leg_definition_index)
  local index = offset

  -- Implicit Extra Leg Definition Index
  if extra_leg_definition_index ~= nil then
    local iteration = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.extra_leg_definition_index, extra_leg_definition_index)
    iteration:set_generated()
  end

  -- Leg Body Length: Numeric
  index, leg_body_length = ice_futures_mdf_impact_v1_1_43.leg_body_length.dissect(buffer, index, packet, parent)

  -- Leg Market Id: Numeric
  index, leg_market_id = ice_futures_mdf_impact_v1_1_43.leg_market_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: N/A
  index, reserved_2 = ice_futures_mdf_impact_v1_1_43.reserved_2.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = ice_futures_mdf_impact_v1_1_43.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Strategy Code: Numeric
  index, leg_strategy_code = ice_futures_mdf_impact_v1_1_43.leg_strategy_code.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Numerator: Numeric
  index, leg_ratio_qty_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Denominator: Numeric
  index, leg_ratio_qty_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Numerator: Numeric
  index, leg_ratio_price_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Denominator: Numeric
  index, leg_ratio_price_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Extra Leg Definition
ice_futures_mdf_impact_v1_1_43.extra_leg_definition.dissect = function(buffer, offset, packet, parent, extra_leg_definition_index)
  if show.extra_leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.extra_leg_definition, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.extra_leg_definition.fields(buffer, offset, packet, parent, extra_leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.extra_leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.extra_leg_definition.fields(buffer, offset, packet, parent, extra_leg_definition_index)
  end
end

-- Number Of Extra Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions = {}

-- Size: Number Of Extra Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions.size = 1

-- Display: Number Of Extra Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions.display = function(value)
  return "Number Of Extra Leg Definitions: "..value
end

-- Dissect: Number Of Extra Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_extra_leg_definitions, range, value, display)

  return offset + length, value
end

-- Underlying Isin
ice_futures_mdf_impact_v1_1_43.underlying_isin = {}

-- Size: Underlying Isin
ice_futures_mdf_impact_v1_1_43.underlying_isin.size = 12

-- Display: Underlying Isin
ice_futures_mdf_impact_v1_1_43.underlying_isin.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Underlying Isin: No Value"
  end

  return "Underlying Isin: "..value
end

-- Dissect: Underlying Isin
ice_futures_mdf_impact_v1_1_43.underlying_isin.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.underlying_isin.size
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

  local display = ice_futures_mdf_impact_v1_1_43.underlying_isin.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.underlying_isin, range, value, display)

  return offset + length, value
end

-- Exchange Silo
ice_futures_mdf_impact_v1_1_43.exchange_silo = {}

-- Size: Exchange Silo
ice_futures_mdf_impact_v1_1_43.exchange_silo.size = 1

-- Display: Exchange Silo
ice_futures_mdf_impact_v1_1_43.exchange_silo.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Exchange Silo: No Value"
  end

  if value == "0" then
    return "Exchange Silo: Ice (0)"
  end
  if value == "1" then
    return "Exchange Silo: Endex (1)"
  end
  if value == "2" then
    return "Exchange Silo: Liffe (2)"
  end

  return "Exchange Silo: Unknown("..value..")"
end

-- Dissect: Exchange Silo
ice_futures_mdf_impact_v1_1_43.exchange_silo.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.exchange_silo.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.exchange_silo.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.exchange_silo, range, value, display)

  return offset + length, value
end

-- Hedge Only
ice_futures_mdf_impact_v1_1_43.hedge_only = {}

-- Size: Hedge Only
ice_futures_mdf_impact_v1_1_43.hedge_only.size = 1

-- Display: Hedge Only
ice_futures_mdf_impact_v1_1_43.hedge_only.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Hedge Only: No Value"
  end

  if value == "Y" then
    return "Hedge Only: Yes (Y)"
  end
  if value == "N" then
    return "Hedge Only: No (N)"
  end

  return "Hedge Only: Unknown("..value..")"
end

-- Dissect: Hedge Only
ice_futures_mdf_impact_v1_1_43.hedge_only.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.hedge_only.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.hedge_only.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.hedge_only, range, value, display)

  return offset + length, value
end

-- Allows Implied
ice_futures_mdf_impact_v1_1_43.allows_implied = {}

-- Size: Allows Implied
ice_futures_mdf_impact_v1_1_43.allows_implied.size = 1

-- Display: Allows Implied
ice_futures_mdf_impact_v1_1_43.allows_implied.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Allows Implied: No Value"
  end

  if value == "Y" then
    return "Allows Implied: Yes (Y)"
  end
  if value == "N" then
    return "Allows Implied: No (N)"
  end

  return "Allows Implied: Unknown("..value..")"
end

-- Dissect: Allows Implied
ice_futures_mdf_impact_v1_1_43.allows_implied.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.allows_implied.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.allows_implied.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.allows_implied, range, value, display)

  return offset + length, value
end

-- Allow Options
ice_futures_mdf_impact_v1_1_43.allow_options = {}

-- Size: Allow Options
ice_futures_mdf_impact_v1_1_43.allow_options.size = 1

-- Display: Allow Options
ice_futures_mdf_impact_v1_1_43.allow_options.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Allow Options: No Value"
  end

  if value == "Y" then
    return "Allow Options: Yes (Y)"
  end
  if value == "N" then
    return "Allow Options: No (N)"
  end

  return "Allow Options: Unknown("..value..")"
end

-- Dissect: Allow Options
ice_futures_mdf_impact_v1_1_43.allow_options.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.allow_options.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.allow_options.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.allow_options, range, value, display)

  return offset + length, value
end

-- Reserved 4
ice_futures_mdf_impact_v1_1_43.reserved_4 = {}

-- Size: Reserved 4
ice_futures_mdf_impact_v1_1_43.reserved_4.size = 4

-- Display: Reserved 4
ice_futures_mdf_impact_v1_1_43.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
ice_futures_mdf_impact_v1_1_43.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = ice_futures_mdf_impact_v1_1_43.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Leg Definition
ice_futures_mdf_impact_v1_1_43.leg_definition = {}

-- Calculate size of: Leg Definition
ice_futures_mdf_impact_v1_1_43.leg_definition.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.leg_body_length.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_side.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_strategy_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.size

  return index
end

-- Display: Leg Definition
ice_futures_mdf_impact_v1_1_43.leg_definition.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Leg Definition
ice_futures_mdf_impact_v1_1_43.leg_definition.fields = function(buffer, offset, packet, parent, leg_definition_index)
  local index = offset

  -- Implicit Leg Definition Index
  if leg_definition_index ~= nil then
    local iteration = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_definition_index, leg_definition_index)
    iteration:set_generated()
  end

  -- Leg Body Length: Numeric
  index, leg_body_length = ice_futures_mdf_impact_v1_1_43.leg_body_length.dissect(buffer, index, packet, parent)

  -- Leg Market Id: Numeric
  index, leg_market_id = ice_futures_mdf_impact_v1_1_43.leg_market_id.dissect(buffer, index, packet, parent)

  -- Leg Ratio Obsolete: Numeric
  index, leg_ratio_obsolete = ice_futures_mdf_impact_v1_1_43.leg_ratio_obsolete.dissect(buffer, index, packet, parent)

  -- Leg Side: Alpha
  index, leg_side = ice_futures_mdf_impact_v1_1_43.leg_side.dissect(buffer, index, packet, parent)

  -- Leg Strategy Code: Numeric
  index, leg_strategy_code = ice_futures_mdf_impact_v1_1_43.leg_strategy_code.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Numerator: Numeric
  index, leg_ratio_qty_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Qty Denominator: Numeric
  index, leg_ratio_qty_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_qty_denominator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Numerator: Numeric
  index, leg_ratio_price_numerator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_numerator.dissect(buffer, index, packet, parent)

  -- Leg Ratio Price Denominator: Numeric
  index, leg_ratio_price_denominator = ice_futures_mdf_impact_v1_1_43.leg_ratio_price_denominator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
ice_futures_mdf_impact_v1_1_43.leg_definition.dissect = function(buffer, offset, packet, parent, leg_definition_index)
  if show.leg_definition then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.leg_definition, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.leg_definition.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.leg_definition.fields(buffer, offset, packet, parent, leg_definition_index)
  end
end

-- Number Of Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions = {}

-- Size: Number Of Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions.size = 1

-- Display: Number Of Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions.display = function(value)
  return "Number Of Leg Definitions: "..value
end

-- Dissect: Number Of Leg Definitions
ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_leg_definitions, range, value, display)

  return offset + length, value
end

-- New Futures Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message = {}

-- Calculate size of: New Futures Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.size

  index = index + ice_futures_mdf_impact_v1_1_43.trading_status.size

  index = index + ice_futures_mdf_impact_v1_1_43.order_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.increment_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.min_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions.size

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 1, 1):int()
  index = index + leg_definition_count * 26

  index = index + ice_futures_mdf_impact_v1_1_43.security_sub_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_block_only.size

  index = index + ice_futures_mdf_impact_v1_1_43.strategy_symbol.size

  index = index + ice_futures_mdf_impact_v1_1_43.gt_allowed.size

  index = index + ice_futures_mdf_impact_v1_1_43.reserved_4.size

  index = index + ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_desc.size

  index = index + ice_futures_mdf_impact_v1_1_43.maturity_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.maturity_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.maturity_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.deal_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.allow_options.size

  index = index + ice_futures_mdf_impact_v1_1_43.cleared_alias.size

  index = index + ice_futures_mdf_impact_v1_1_43.allows_implied.size

  index = index + ice_futures_mdf_impact_v1_1_43.min_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.max_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.product_name.size

  index = index + ice_futures_mdf_impact_v1_1_43.hub_alias.size

  index = index + ice_futures_mdf_impact_v1_1_43.strip_name.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_tradable.size

  index = index + ice_futures_mdf_impact_v1_1_43.settle_price_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.mic_code.size

  index = index + ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.hedge_only.size

  index = index + ice_futures_mdf_impact_v1_1_43.exchange_silo.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.product_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.hub_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.strip_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.underlying_isin.size

  index = index + ice_futures_mdf_impact_v1_1_43.test_market_indicator.size

  index = index + ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.size

  index = index + ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_type_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.override_block_min.size

  index = index + ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions.size

  -- Calculate field size from count
  local extra_leg_definition_count = buffer(offset + index - 1, 1):int()
  index = index + extra_leg_definition_count * 26

  index = index + ice_futures_mdf_impact_v1_1_43.num_of_cycles.size

  return index
end

-- Display: New Futures Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Futures Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Futures Contract Symbol: Alpha
  index, futures_contract_symbol = ice_futures_mdf_impact_v1_1_43.futures_contract_symbol.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = ice_futures_mdf_impact_v1_1_43.trading_status.dissect(buffer, index, packet, parent)

  -- Order Price Denominator: Alpha
  index, order_price_denominator = ice_futures_mdf_impact_v1_1_43.order_price_denominator.dissect(buffer, index, packet, parent)

  -- Increment Price: Numeric
  index, increment_price = ice_futures_mdf_impact_v1_1_43.increment_price.dissect(buffer, index, packet, parent)

  -- Increment Qty: Numeric
  index, increment_qty = ice_futures_mdf_impact_v1_1_43.increment_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: Numeric
  index, min_qty = ice_futures_mdf_impact_v1_1_43.min_qty.dissect(buffer, index, packet, parent)

  -- Number Of Leg Definitions: Numeric
  index, number_of_leg_definitions = ice_futures_mdf_impact_v1_1_43.number_of_leg_definitions.dissect(buffer, index, packet, parent)

  -- Repeating: Leg Definition
  for leg_definition_index = 1, number_of_leg_definitions do
    index, leg_definition = ice_futures_mdf_impact_v1_1_43.leg_definition.dissect(buffer, index, packet, parent, leg_definition_index)
  end

  -- Security Sub Type: Numeric
  index, security_sub_type = ice_futures_mdf_impact_v1_1_43.security_sub_type.dissect(buffer, index, packet, parent)

  -- Is Block Only: Alpha
  index, is_block_only = ice_futures_mdf_impact_v1_1_43.is_block_only.dissect(buffer, index, packet, parent)

  -- Strategy Symbol: Alpha
  index, strategy_symbol = ice_futures_mdf_impact_v1_1_43.strategy_symbol.dissect(buffer, index, packet, parent)

  -- Gt Allowed: Alpha
  index, gt_allowed = ice_futures_mdf_impact_v1_1_43.gt_allowed.dissect(buffer, index, packet, parent)

  -- Reserved 4: Numeric
  index, reserved_4 = ice_futures_mdf_impact_v1_1_43.reserved_4.dissect(buffer, index, packet, parent)

  -- Mifid Regulated Market: Alpha
  index, mifid_regulated_market = ice_futures_mdf_impact_v1_1_43.mifid_regulated_market.dissect(buffer, index, packet, parent)

  -- Market Desc: Alpha
  index, market_desc = ice_futures_mdf_impact_v1_1_43.market_desc.dissect(buffer, index, packet, parent)

  -- Maturity Year: Numeric
  index, maturity_year = ice_futures_mdf_impact_v1_1_43.maturity_year.dissect(buffer, index, packet, parent)

  -- Maturity Month: Numeric
  index, maturity_month = ice_futures_mdf_impact_v1_1_43.maturity_month.dissect(buffer, index, packet, parent)

  -- Maturity Day: Numeric
  index, maturity_day = ice_futures_mdf_impact_v1_1_43.maturity_day.dissect(buffer, index, packet, parent)

  -- Deal Price Denominator: Alpha
  index, deal_price_denominator = ice_futures_mdf_impact_v1_1_43.deal_price_denominator.dissect(buffer, index, packet, parent)

  -- Unit Quantity: Numeric
  index, unit_quantity = ice_futures_mdf_impact_v1_1_43.unit_quantity.dissect(buffer, index, packet, parent)

  -- Num Decimals Options Price: Alpha
  index, num_decimals_options_price = ice_futures_mdf_impact_v1_1_43.num_decimals_options_price.dissect(buffer, index, packet, parent)

  -- Allow Options: Alpha
  index, allow_options = ice_futures_mdf_impact_v1_1_43.allow_options.dissect(buffer, index, packet, parent)

  -- Cleared Alias: Alpha
  index, cleared_alias = ice_futures_mdf_impact_v1_1_43.cleared_alias.dissect(buffer, index, packet, parent)

  -- Allows Implied: Alpha
  index, allows_implied = ice_futures_mdf_impact_v1_1_43.allows_implied.dissect(buffer, index, packet, parent)

  -- Min Price: Numeric
  index, min_price = ice_futures_mdf_impact_v1_1_43.min_price.dissect(buffer, index, packet, parent)

  -- Max Price: Numeric
  index, max_price = ice_futures_mdf_impact_v1_1_43.max_price.dissect(buffer, index, packet, parent)

  -- Product Name: Alpha
  index, product_name = ice_futures_mdf_impact_v1_1_43.product_name.dissect(buffer, index, packet, parent)

  -- Hub Alias: Alpha
  index, hub_alias = ice_futures_mdf_impact_v1_1_43.hub_alias.dissect(buffer, index, packet, parent)

  -- Strip Name: Alpha
  index, strip_name = ice_futures_mdf_impact_v1_1_43.strip_name.dissect(buffer, index, packet, parent)

  -- Is Tradable: Alpha
  index, is_tradable = ice_futures_mdf_impact_v1_1_43.is_tradable.dissect(buffer, index, packet, parent)

  -- Settle Price Denominator: Alpha
  index, settle_price_denominator = ice_futures_mdf_impact_v1_1_43.settle_price_denominator.dissect(buffer, index, packet, parent)

  -- Mic Code: Alpha
  index, mic_code = ice_futures_mdf_impact_v1_1_43.mic_code.dissect(buffer, index, packet, parent)

  -- Unit Qty Denominator: Alpha
  index, unit_qty_denominator = ice_futures_mdf_impact_v1_1_43.unit_qty_denominator.dissect(buffer, index, packet, parent)

  -- Hedge Only: Alpha
  index, hedge_only = ice_futures_mdf_impact_v1_1_43.hedge_only.dissect(buffer, index, packet, parent)

  -- Exchange Silo: Alpha
  index, exchange_silo = ice_futures_mdf_impact_v1_1_43.exchange_silo.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Qty Denominator: Alpha
  index, off_exchange_increment_qty_denominator = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty_denominator.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Qty: Numeric
  index, off_exchange_increment_qty = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_qty.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Price: Numeric
  index, off_exchange_increment_price = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_price.dissect(buffer, index, packet, parent)

  -- Off Exchange Increment Option Price: Numeric
  index, off_exchange_increment_option_price = ice_futures_mdf_impact_v1_1_43.off_exchange_increment_option_price.dissect(buffer, index, packet, parent)

  -- Product Id: Numeric
  index, product_id = ice_futures_mdf_impact_v1_1_43.product_id.dissect(buffer, index, packet, parent)

  -- Hub Id: Numeric
  index, hub_id = ice_futures_mdf_impact_v1_1_43.hub_id.dissect(buffer, index, packet, parent)

  -- Strip Id: Numeric
  index, strip_id = ice_futures_mdf_impact_v1_1_43.strip_id.dissect(buffer, index, packet, parent)

  -- Underlying Isin: Alpha
  index, underlying_isin = ice_futures_mdf_impact_v1_1_43.underlying_isin.dissect(buffer, index, packet, parent)

  -- Test Market Indicator: Alpha
  index, test_market_indicator = ice_futures_mdf_impact_v1_1_43.test_market_indicator.dissect(buffer, index, packet, parent)

  -- Leg Deal Suppressed: Alpha
  index, leg_deal_suppressed = ice_futures_mdf_impact_v1_1_43.leg_deal_suppressed.dissect(buffer, index, packet, parent)

  -- Old Num Of Cycles: Numeric
  index, old_num_of_cycles = ice_futures_mdf_impact_v1_1_43.old_num_of_cycles.dissect(buffer, index, packet, parent)

  -- Market Type Id: Numeric
  index, market_type_id = ice_futures_mdf_impact_v1_1_43.market_type_id.dissect(buffer, index, packet, parent)

  -- Override Block Min: Alpha
  index, override_block_min = ice_futures_mdf_impact_v1_1_43.override_block_min.dissect(buffer, index, packet, parent)

  -- Number Of Extra Leg Definitions: Numeric
  index, number_of_extra_leg_definitions = ice_futures_mdf_impact_v1_1_43.number_of_extra_leg_definitions.dissect(buffer, index, packet, parent)

  -- Repeating: Extra Leg Definition
  for extra_leg_definition_index = 1, number_of_extra_leg_definitions do
    index, extra_leg_definition = ice_futures_mdf_impact_v1_1_43.extra_leg_definition.dissect(buffer, index, packet, parent, extra_leg_definition_index)
  end

  -- Num Of Cycles: Numeric
  index, num_of_cycles = ice_futures_mdf_impact_v1_1_43.num_of_cycles.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Futures Strategy Definition Message
ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_futures_strategy_definition_message then
    local length = ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.display(buffer, packet, parent)
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.new_futures_strategy_definition_message, range, display)
  end

  return ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.fields(buffer, offset, packet, parent)
end

-- Ipl Down
ice_futures_mdf_impact_v1_1_43.ipl_down = {}

-- Size: Ipl Down
ice_futures_mdf_impact_v1_1_43.ipl_down.size = 8

-- Display: Ipl Down
ice_futures_mdf_impact_v1_1_43.ipl_down.display = function(value)
  return "Ipl Down: "..value
end

-- Dissect: Ipl Down
ice_futures_mdf_impact_v1_1_43.ipl_down.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.ipl_down.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.ipl_down.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_down, range, value, display)

  return offset + length, value
end

-- Ipl Up
ice_futures_mdf_impact_v1_1_43.ipl_up = {}

-- Size: Ipl Up
ice_futures_mdf_impact_v1_1_43.ipl_up.size = 8

-- Display: Ipl Up
ice_futures_mdf_impact_v1_1_43.ipl_up.display = function(value)
  return "Ipl Up: "..value
end

-- Dissect: Ipl Up
ice_futures_mdf_impact_v1_1_43.ipl_up.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.ipl_up.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.ipl_up.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_up, range, value, display)

  return offset + length, value
end

-- Ipl Hold Duration
ice_futures_mdf_impact_v1_1_43.ipl_hold_duration = {}

-- Size: Ipl Hold Duration
ice_futures_mdf_impact_v1_1_43.ipl_hold_duration.size = 4

-- Display: Ipl Hold Duration
ice_futures_mdf_impact_v1_1_43.ipl_hold_duration.display = function(value)
  return "Ipl Hold Duration: "..value
end

-- Dissect: Ipl Hold Duration
ice_futures_mdf_impact_v1_1_43.ipl_hold_duration.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.ipl_hold_duration.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.ipl_hold_duration.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_hold_duration, range, value, display)

  return offset + length, value
end

-- Is Up
ice_futures_mdf_impact_v1_1_43.is_up = {}

-- Size: Is Up
ice_futures_mdf_impact_v1_1_43.is_up.size = 1

-- Display: Is Up
ice_futures_mdf_impact_v1_1_43.is_up.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Up: No Value"
  end

  if value == "Y" then
    return "Is Up: Ipl Upper Bound Violation (Y)"
  end
  if value == "N" then
    return "Is Up: Ipl Lower Bound Violation (N)"
  end
  if value == "F" then
    return "Is Up: Final (F)"
  end
  if value == " " then
    return "Is Up: Non Endex Spot Market (<whitespace>)"
  end

  return "Is Up: Unknown("..value..")"
end

-- Dissect: Is Up
ice_futures_mdf_impact_v1_1_43.is_up.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_up.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_up.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_up, range, value, display)

  return offset + length, value
end

-- Notification Date Time
ice_futures_mdf_impact_v1_1_43.notification_date_time = {}

-- Size: Notification Date Time
ice_futures_mdf_impact_v1_1_43.notification_date_time.size = 8

-- Display: Notification Date Time
ice_futures_mdf_impact_v1_1_43.notification_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Notification Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Notification Date Time
ice_futures_mdf_impact_v1_1_43.notification_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.notification_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.notification_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.notification_date_time, range, value, display)

  return offset + length, value
end

-- Ipl Hold Type
ice_futures_mdf_impact_v1_1_43.ipl_hold_type = {}

-- Size: Ipl Hold Type
ice_futures_mdf_impact_v1_1_43.ipl_hold_type.size = 1

-- Display: Ipl Hold Type
ice_futures_mdf_impact_v1_1_43.ipl_hold_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Ipl Hold Type: No Value"
  end

  if value == "S" then
    return "Ipl Hold Type: Ipl Hold Start (S)"
  end
  if value == "E" then
    return "Ipl Hold Type: Ipl Hold End (E)"
  end

  return "Ipl Hold Type: Unknown("..value..")"
end

-- Dissect: Ipl Hold Type
ice_futures_mdf_impact_v1_1_43.ipl_hold_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.ipl_hold_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.ipl_hold_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.ipl_hold_type, range, value, display)

  return offset + length, value
end

-- Interval Price Limit Notification Message
ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message = {}

-- Calculate size of: Interval Price Limit Notification Message
ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.ipl_hold_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.notification_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_up.size

  index = index + ice_futures_mdf_impact_v1_1_43.ipl_hold_duration.size

  index = index + ice_futures_mdf_impact_v1_1_43.ipl_up.size

  index = index + ice_futures_mdf_impact_v1_1_43.ipl_down.size

  return index
end

-- Display: Interval Price Limit Notification Message
ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Interval Price Limit Notification Message
ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Ipl Hold Type: Alpha
  index, ipl_hold_type = ice_futures_mdf_impact_v1_1_43.ipl_hold_type.dissect(buffer, index, packet, parent)

  -- Notification Date Time: Numeric
  index, notification_date_time = ice_futures_mdf_impact_v1_1_43.notification_date_time.dissect(buffer, index, packet, parent)

  -- Is Up: Alpha
  index, is_up = ice_futures_mdf_impact_v1_1_43.is_up.dissect(buffer, index, packet, parent)

  -- Ipl Hold Duration: Numeric
  index, ipl_hold_duration = ice_futures_mdf_impact_v1_1_43.ipl_hold_duration.dissect(buffer, index, packet, parent)

  -- Ipl Up: Numeric
  index, ipl_up = ice_futures_mdf_impact_v1_1_43.ipl_up.dissect(buffer, index, packet, parent)

  -- Ipl Down: Numeric
  index, ipl_down = ice_futures_mdf_impact_v1_1_43.ipl_down.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Interval Price Limit Notification Message
ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.dissect = function(buffer, offset, packet, parent)
  if show.interval_price_limit_notification_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.interval_price_limit_notification_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.fields(buffer, offset, packet, parent)
  end
end

-- Strip Info
ice_futures_mdf_impact_v1_1_43.strip_info = {}

-- Size: Strip Info
ice_futures_mdf_impact_v1_1_43.strip_info.size = 50

-- Display: Strip Info
ice_futures_mdf_impact_v1_1_43.strip_info.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strip Info: No Value"
  end

  return "Strip Info: "..value
end

-- Dissect: Strip Info
ice_futures_mdf_impact_v1_1_43.strip_info.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.strip_info.size
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

  local display = ice_futures_mdf_impact_v1_1_43.strip_info.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strip_info, range, value, display)

  return offset + length, value
end

-- End Day
ice_futures_mdf_impact_v1_1_43.end_day = {}

-- Size: End Day
ice_futures_mdf_impact_v1_1_43.end_day.size = 2

-- Display: End Day
ice_futures_mdf_impact_v1_1_43.end_day.display = function(value)
  return "End Day: "..value
end

-- Dissect: End Day
ice_futures_mdf_impact_v1_1_43.end_day.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.end_day.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.end_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.end_day, range, value, display)

  return offset + length, value
end

-- End Month
ice_futures_mdf_impact_v1_1_43.end_month = {}

-- Size: End Month
ice_futures_mdf_impact_v1_1_43.end_month.size = 2

-- Display: End Month
ice_futures_mdf_impact_v1_1_43.end_month.display = function(value)
  return "End Month: "..value
end

-- Dissect: End Month
ice_futures_mdf_impact_v1_1_43.end_month.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.end_month.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.end_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.end_month, range, value, display)

  return offset + length, value
end

-- End Year
ice_futures_mdf_impact_v1_1_43.end_year = {}

-- Size: End Year
ice_futures_mdf_impact_v1_1_43.end_year.size = 2

-- Display: End Year
ice_futures_mdf_impact_v1_1_43.end_year.display = function(value)
  return "End Year: "..value
end

-- Dissect: End Year
ice_futures_mdf_impact_v1_1_43.end_year.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.end_year.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.end_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.end_year, range, value, display)

  return offset + length, value
end

-- Begin Day
ice_futures_mdf_impact_v1_1_43.begin_day = {}

-- Size: Begin Day
ice_futures_mdf_impact_v1_1_43.begin_day.size = 2

-- Display: Begin Day
ice_futures_mdf_impact_v1_1_43.begin_day.display = function(value)
  return "Begin Day: "..value
end

-- Dissect: Begin Day
ice_futures_mdf_impact_v1_1_43.begin_day.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.begin_day.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.begin_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.begin_day, range, value, display)

  return offset + length, value
end

-- Begin Month
ice_futures_mdf_impact_v1_1_43.begin_month = {}

-- Size: Begin Month
ice_futures_mdf_impact_v1_1_43.begin_month.size = 2

-- Display: Begin Month
ice_futures_mdf_impact_v1_1_43.begin_month.display = function(value)
  return "Begin Month: "..value
end

-- Dissect: Begin Month
ice_futures_mdf_impact_v1_1_43.begin_month.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.begin_month.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.begin_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.begin_month, range, value, display)

  return offset + length, value
end

-- Begin Year
ice_futures_mdf_impact_v1_1_43.begin_year = {}

-- Size: Begin Year
ice_futures_mdf_impact_v1_1_43.begin_year.size = 2

-- Display: Begin Year
ice_futures_mdf_impact_v1_1_43.begin_year.display = function(value)
  return "Begin Year: "..value
end

-- Dissect: Begin Year
ice_futures_mdf_impact_v1_1_43.begin_year.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.begin_year.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.begin_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.begin_year, range, value, display)

  return offset + length, value
end

-- Strip Type
ice_futures_mdf_impact_v1_1_43.strip_type = {}

-- Size: Strip Type
ice_futures_mdf_impact_v1_1_43.strip_type.size = 20

-- Display: Strip Type
ice_futures_mdf_impact_v1_1_43.strip_type.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Strip Type: No Value"
  end

  return "Strip Type: "..value
end

-- Dissect: Strip Type
ice_futures_mdf_impact_v1_1_43.strip_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.strip_type.size
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

  local display = ice_futures_mdf_impact_v1_1_43.strip_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strip_type, range, value, display)

  return offset + length, value
end

-- Old Strip Id
ice_futures_mdf_impact_v1_1_43.old_strip_id = {}

-- Size: Old Strip Id
ice_futures_mdf_impact_v1_1_43.old_strip_id.size = 2

-- Display: Old Strip Id
ice_futures_mdf_impact_v1_1_43.old_strip_id.display = function(value)
  return "Old Strip Id: "..value
end

-- Dissect: Old Strip Id
ice_futures_mdf_impact_v1_1_43.old_strip_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.old_strip_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.old_strip_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.old_strip_id, range, value, display)

  return offset + length, value
end

-- Strip Info Message
ice_futures_mdf_impact_v1_1_43.strip_info_message = {}

-- Calculate size of: Strip Info Message
ice_futures_mdf_impact_v1_1_43.strip_info_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.old_strip_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.strip_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.begin_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.begin_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.begin_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.end_year.size

  index = index + ice_futures_mdf_impact_v1_1_43.end_month.size

  index = index + ice_futures_mdf_impact_v1_1_43.end_day.size

  index = index + ice_futures_mdf_impact_v1_1_43.strip_info.size

  index = index + ice_futures_mdf_impact_v1_1_43.strip_id.size

  return index
end

-- Display: Strip Info Message
ice_futures_mdf_impact_v1_1_43.strip_info_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Strip Info Message
ice_futures_mdf_impact_v1_1_43.strip_info_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Old Strip Id: Numeric
  index, old_strip_id = ice_futures_mdf_impact_v1_1_43.old_strip_id.dissect(buffer, index, packet, parent)

  -- Strip Type: Alpha
  index, strip_type = ice_futures_mdf_impact_v1_1_43.strip_type.dissect(buffer, index, packet, parent)

  -- Begin Year: Numeric
  index, begin_year = ice_futures_mdf_impact_v1_1_43.begin_year.dissect(buffer, index, packet, parent)

  -- Begin Month: Numeric
  index, begin_month = ice_futures_mdf_impact_v1_1_43.begin_month.dissect(buffer, index, packet, parent)

  -- Begin Day: Numeric
  index, begin_day = ice_futures_mdf_impact_v1_1_43.begin_day.dissect(buffer, index, packet, parent)

  -- End Year: Numeric
  index, end_year = ice_futures_mdf_impact_v1_1_43.end_year.dissect(buffer, index, packet, parent)

  -- End Month: Numeric
  index, end_month = ice_futures_mdf_impact_v1_1_43.end_month.dissect(buffer, index, packet, parent)

  -- End Day: Numeric
  index, end_day = ice_futures_mdf_impact_v1_1_43.end_day.dissect(buffer, index, packet, parent)

  -- Strip Info: Alpha
  index, strip_info = ice_futures_mdf_impact_v1_1_43.strip_info.dissect(buffer, index, packet, parent)

  -- Strip Id: Numeric
  index, strip_id = ice_futures_mdf_impact_v1_1_43.strip_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Strip Info Message
ice_futures_mdf_impact_v1_1_43.strip_info_message.dissect = function(buffer, offset, packet, parent)
  if show.strip_info_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.strip_info_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.strip_info_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.strip_info_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.strip_info_message.fields(buffer, offset, packet, parent)
  end
end

-- Pre Open Volume
ice_futures_mdf_impact_v1_1_43.pre_open_volume = {}

-- Size: Pre Open Volume
ice_futures_mdf_impact_v1_1_43.pre_open_volume.size = 4

-- Display: Pre Open Volume
ice_futures_mdf_impact_v1_1_43.pre_open_volume.display = function(value)
  return "Pre Open Volume: "..value
end

-- Dissect: Pre Open Volume
ice_futures_mdf_impact_v1_1_43.pre_open_volume.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.pre_open_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.pre_open_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.pre_open_volume, range, value, display)

  return offset + length, value
end

-- Has Pre Open Volume
ice_futures_mdf_impact_v1_1_43.has_pre_open_volume = {}

-- Size: Has Pre Open Volume
ice_futures_mdf_impact_v1_1_43.has_pre_open_volume.size = 1

-- Display: Has Pre Open Volume
ice_futures_mdf_impact_v1_1_43.has_pre_open_volume.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Has Pre Open Volume: No Value"
  end

  return "Has Pre Open Volume: "..value
end

-- Dissect: Has Pre Open Volume
ice_futures_mdf_impact_v1_1_43.has_pre_open_volume.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.has_pre_open_volume.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.has_pre_open_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.has_pre_open_volume, range, value, display)

  return offset + length, value
end

-- Pre Open Price
ice_futures_mdf_impact_v1_1_43.pre_open_price = {}

-- Size: Pre Open Price
ice_futures_mdf_impact_v1_1_43.pre_open_price.size = 8

-- Display: Pre Open Price
ice_futures_mdf_impact_v1_1_43.pre_open_price.display = function(value)
  return "Pre Open Price: "..value
end

-- Dissect: Pre Open Price
ice_futures_mdf_impact_v1_1_43.pre_open_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.pre_open_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.pre_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.pre_open_price, range, value, display)

  return offset + length, value
end

-- Pre Open Price Indicator Message
ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message = {}

-- Calculate size of: Pre Open Price Indicator Message
ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.pre_open_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.has_pre_open_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.pre_open_volume.size

  return index
end

-- Display: Pre Open Price Indicator Message
ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Pre Open Price Indicator Message
ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Pre Open Price: Numeric
  index, pre_open_price = ice_futures_mdf_impact_v1_1_43.pre_open_price.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Has Pre Open Volume: Alpha
  index, has_pre_open_volume = ice_futures_mdf_impact_v1_1_43.has_pre_open_volume.dissect(buffer, index, packet, parent)

  -- Pre Open Volume: Numeric
  index, pre_open_volume = ice_futures_mdf_impact_v1_1_43.pre_open_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Pre Open Price Indicator Message
ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.pre_open_price_indicator_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.pre_open_price_indicator_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Event Type
ice_futures_mdf_impact_v1_1_43.event_type = {}

-- Size: Event Type
ice_futures_mdf_impact_v1_1_43.event_type.size = 1

-- Display: Event Type
ice_futures_mdf_impact_v1_1_43.event_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Event Type: No Value"
  end

  if value == "A" then
    return "Event Type: Implication Disabled For The Market (A)"
  end

  return "Event Type: Unknown("..value..")"
end

-- Dissect: Event Type
ice_futures_mdf_impact_v1_1_43.event_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.event_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.event_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.event_type, range, value, display)

  return offset + length, value
end

-- Market Event Message
ice_futures_mdf_impact_v1_1_43.market_event_message = {}

-- Calculate size of: Market Event Message
ice_futures_mdf_impact_v1_1_43.market_event_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.event_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  return index
end

-- Display: Market Event Message
ice_futures_mdf_impact_v1_1_43.market_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Event Message
ice_futures_mdf_impact_v1_1_43.market_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Event Type: Alpha
  index, event_type = ice_futures_mdf_impact_v1_1_43.event_type.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Event Message
ice_futures_mdf_impact_v1_1_43.market_event_message.dissect = function(buffer, offset, packet, parent)
  if show.market_event_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_event_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.market_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.market_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.market_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Opening Price
ice_futures_mdf_impact_v1_1_43.opening_price = {}

-- Size: Opening Price
ice_futures_mdf_impact_v1_1_43.opening_price.size = 8

-- Display: Opening Price
ice_futures_mdf_impact_v1_1_43.opening_price.display = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
ice_futures_mdf_impact_v1_1_43.opening_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.opening_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.opening_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.opening_price, range, value, display)

  return offset + length, value
end

-- Volume
ice_futures_mdf_impact_v1_1_43.volume = {}

-- Size: Volume
ice_futures_mdf_impact_v1_1_43.volume.size = 4

-- Display: Volume
ice_futures_mdf_impact_v1_1_43.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
ice_futures_mdf_impact_v1_1_43.volume.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.volume, range, value, display)

  return offset + length, value
end

-- End Of Day Market Summary Message
ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message = {}

-- Calculate size of: End Of Day Market Summary Message
ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.block_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efs_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efp_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.opening_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.high.size

  index = index + ice_futures_mdf_impact_v1_1_43.low.size

  index = index + ice_futures_mdf_impact_v1_1_43.vwap.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price.size

  return index
end

-- Display: End Of Day Market Summary Message
ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Market Summary Message
ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = ice_futures_mdf_impact_v1_1_43.volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Numeric
  index, block_volume = ice_futures_mdf_impact_v1_1_43.block_volume.dissect(buffer, index, packet, parent)

  -- Efs Volume: Numeric
  index, efs_volume = ice_futures_mdf_impact_v1_1_43.efs_volume.dissect(buffer, index, packet, parent)

  -- Efp Volume: Numeric
  index, efp_volume = ice_futures_mdf_impact_v1_1_43.efp_volume.dissect(buffer, index, packet, parent)

  -- Opening Price: Numeric
  index, opening_price = ice_futures_mdf_impact_v1_1_43.opening_price.dissect(buffer, index, packet, parent)

  -- High: Numeric
  index, high = ice_futures_mdf_impact_v1_1_43.high.dissect(buffer, index, packet, parent)

  -- Low: Numeric
  index, low = ice_futures_mdf_impact_v1_1_43.low.dissect(buffer, index, packet, parent)

  -- Vwap: Numeric
  index, vwap = ice_futures_mdf_impact_v1_1_43.vwap.dissect(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: Numeric
  index, settlement_price_with_deal_price_precision = ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = ice_futures_mdf_impact_v1_1_43.open_interest.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Settlement Price: Numeric
  index, settlement_price = ice_futures_mdf_impact_v1_1_43.settlement_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Market Summary Message
ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.end_of_day_market_summary_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.end_of_day_market_summary_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Price Denominator
ice_futures_mdf_impact_v1_1_43.index_price_denominator = {}

-- Size: Index Price Denominator
ice_futures_mdf_impact_v1_1_43.index_price_denominator.size = 1

-- Display: Index Price Denominator
ice_futures_mdf_impact_v1_1_43.index_price_denominator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Index Price Denominator: No Value"
  end

  return "Index Price Denominator: "..value
end

-- Dissect: Index Price Denominator
ice_futures_mdf_impact_v1_1_43.index_price_denominator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.index_price_denominator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.index_price_denominator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.index_price_denominator, range, value, display)

  return offset + length, value
end

-- Status
ice_futures_mdf_impact_v1_1_43.status = {}

-- Size: Status
ice_futures_mdf_impact_v1_1_43.status.size = 1

-- Display: Status
ice_futures_mdf_impact_v1_1_43.status.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Status: No Value"
  end

  return "Status: "..value
end

-- Dissect: Status
ice_futures_mdf_impact_v1_1_43.status.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.status, range, value, display)

  return offset + length, value
end

-- Valuation Date Applying Date
ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date = {}

-- Size: Valuation Date Applying Date
ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date.size = 10

-- Display: Valuation Date Applying Date
ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Valuation Date Applying Date: No Value"
  end

  return "Valuation Date Applying Date: "..value
end

-- Dissect: Valuation Date Applying Date
ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date.size
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

  local display = ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.valuation_date_applying_date, range, value, display)

  return offset + length, value
end

-- Published Date Time
ice_futures_mdf_impact_v1_1_43.published_date_time = {}

-- Size: Published Date Time
ice_futures_mdf_impact_v1_1_43.published_date_time.size = 8

-- Display: Published Date Time
ice_futures_mdf_impact_v1_1_43.published_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Published Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Published Date Time
ice_futures_mdf_impact_v1_1_43.published_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.published_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.published_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.published_date_time, range, value, display)

  return offset + length, value
end

-- Short Name
ice_futures_mdf_impact_v1_1_43.short_name = {}

-- Size: Short Name
ice_futures_mdf_impact_v1_1_43.short_name.size = 30

-- Display: Short Name
ice_futures_mdf_impact_v1_1_43.short_name.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Short Name: No Value"
  end

  return "Short Name: "..value
end

-- Dissect: Short Name
ice_futures_mdf_impact_v1_1_43.short_name.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.short_name.size
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

  local display = ice_futures_mdf_impact_v1_1_43.short_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.short_name, range, value, display)

  return offset + length, value
end

-- Index Prices Message
ice_futures_mdf_impact_v1_1_43.index_prices_message = {}

-- Calculate size of: Index Prices Message
ice_futures_mdf_impact_v1_1_43.index_prices_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.short_name.size

  index = index + ice_futures_mdf_impact_v1_1_43.published_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date.size

  index = index + ice_futures_mdf_impact_v1_1_43.status.size

  index = index + ice_futures_mdf_impact_v1_1_43.reserved_2.size

  index = index + ice_futures_mdf_impact_v1_1_43.index_price_denominator.size

  return index
end

-- Display: Index Prices Message
ice_futures_mdf_impact_v1_1_43.index_prices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Prices Message
ice_futures_mdf_impact_v1_1_43.index_prices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Short Name: Alpha
  index, short_name = ice_futures_mdf_impact_v1_1_43.short_name.dissect(buffer, index, packet, parent)

  -- Published Date Time: Numeric
  index, published_date_time = ice_futures_mdf_impact_v1_1_43.published_date_time.dissect(buffer, index, packet, parent)

  -- Valuation Date Applying Date: Alpha
  index, valuation_date_applying_date = ice_futures_mdf_impact_v1_1_43.valuation_date_applying_date.dissect(buffer, index, packet, parent)

  -- Status: Alpha
  index, status = ice_futures_mdf_impact_v1_1_43.status.dissect(buffer, index, packet, parent)

  -- Reserved 2: N/A
  index, reserved_2 = ice_futures_mdf_impact_v1_1_43.reserved_2.dissect(buffer, index, packet, parent)

  -- Index Price Denominator: Alpha
  index, index_price_denominator = ice_futures_mdf_impact_v1_1_43.index_price_denominator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Prices Message
ice_futures_mdf_impact_v1_1_43.index_prices_message.dissect = function(buffer, offset, packet, parent)
  if show.index_prices_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.index_prices_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.index_prices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.index_prices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.index_prices_message.fields(buffer, offset, packet, parent)
  end
end

-- Settlement Price Message
ice_futures_mdf_impact_v1_1_43.settlement_price_message = {}

-- Calculate size of: Settlement Price Message
ice_futures_mdf_impact_v1_1_43.settlement_price_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_official.size

  index = index + ice_futures_mdf_impact_v1_1_43.valuation_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price.size

  return index
end

-- Display: Settlement Price Message
ice_futures_mdf_impact_v1_1_43.settlement_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Settlement Price Message
ice_futures_mdf_impact_v1_1_43.settlement_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: Numeric
  index, settlement_price_with_deal_price_precision = ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Is Official: Alpha
  index, is_official = ice_futures_mdf_impact_v1_1_43.is_official.dissect(buffer, index, packet, parent)

  -- Valuation Date Time: Numeric
  index, valuation_date_time = ice_futures_mdf_impact_v1_1_43.valuation_date_time.dissect(buffer, index, packet, parent)

  -- Settlement Price: Numeric
  index, settlement_price = ice_futures_mdf_impact_v1_1_43.settlement_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Price Message
ice_futures_mdf_impact_v1_1_43.settlement_price_message.dissect = function(buffer, offset, packet, parent)
  if show.settlement_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.settlement_price_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.settlement_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.settlement_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.settlement_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Close Price
ice_futures_mdf_impact_v1_1_43.close_price = {}

-- Size: Close Price
ice_futures_mdf_impact_v1_1_43.close_price.size = 8

-- Display: Close Price
ice_futures_mdf_impact_v1_1_43.close_price.display = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
ice_futures_mdf_impact_v1_1_43.close_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.close_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.close_price, range, value, display)

  return offset + length, value
end

-- Close Price Message
ice_futures_mdf_impact_v1_1_43.close_price_message = {}

-- Calculate size of: Close Price Message
ice_futures_mdf_impact_v1_1_43.close_price_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.close_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  return index
end

-- Display: Close Price Message
ice_futures_mdf_impact_v1_1_43.close_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Price Message
ice_futures_mdf_impact_v1_1_43.close_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Close Price: Numeric
  index, close_price = ice_futures_mdf_impact_v1_1_43.close_price.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Price Message
ice_futures_mdf_impact_v1_1_43.close_price_message.dissect = function(buffer, offset, packet, parent)
  if show.close_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.close_price_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.close_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.close_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.close_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Price
ice_futures_mdf_impact_v1_1_43.open_price = {}

-- Size: Open Price
ice_futures_mdf_impact_v1_1_43.open_price.size = 8

-- Display: Open Price
ice_futures_mdf_impact_v1_1_43.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
ice_futures_mdf_impact_v1_1_43.open_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.open_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.open_price, range, value, display)

  return offset + length, value
end

-- Open Price Message
ice_futures_mdf_impact_v1_1_43.open_price_message = {}

-- Calculate size of: Open Price Message
ice_futures_mdf_impact_v1_1_43.open_price_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  return index
end

-- Display: Open Price Message
ice_futures_mdf_impact_v1_1_43.open_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Price Message
ice_futures_mdf_impact_v1_1_43.open_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Open Price: Numeric
  index, open_price = ice_futures_mdf_impact_v1_1_43.open_price.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Message
ice_futures_mdf_impact_v1_1_43.open_price_message.dissect = function(buffer, offset, packet, parent)
  if show.open_price_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.open_price_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.open_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.open_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.open_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Change
ice_futures_mdf_impact_v1_1_43.open_interest_change = {}

-- Size: Open Interest Change
ice_futures_mdf_impact_v1_1_43.open_interest_change.size = 4

-- Display: Open Interest Change
ice_futures_mdf_impact_v1_1_43.open_interest_change.display = function(value)
  return "Open Interest Change: "..value
end

-- Dissect: Open Interest Change
ice_futures_mdf_impact_v1_1_43.open_interest_change.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.open_interest_change.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.open_interest_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest_change, range, value, display)

  return offset + length, value
end

-- Open Interest Message
ice_futures_mdf_impact_v1_1_43.open_interest_message = {}

-- Calculate size of: Open Interest Message
ice_futures_mdf_impact_v1_1_43.open_interest_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest_change.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest_date.size

  return index
end

-- Display: Open Interest Message
ice_futures_mdf_impact_v1_1_43.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
ice_futures_mdf_impact_v1_1_43.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = ice_futures_mdf_impact_v1_1_43.open_interest.dissect(buffer, index, packet, parent)

  -- Open Interest Change: Numeric
  index, open_interest_change = ice_futures_mdf_impact_v1_1_43.open_interest_change.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Open Interest Date: Alpha
  index, open_interest_date = ice_futures_mdf_impact_v1_1_43.open_interest_date.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
ice_futures_mdf_impact_v1_1_43.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.open_interest_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.open_interest_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Text Message Extra Fld
ice_futures_mdf_impact_v1_1_43.text_message_extra_fld = {}

-- Size: Text Message Extra Fld
ice_futures_mdf_impact_v1_1_43.text_message_extra_fld.size = 800

-- Display: Text Message Extra Fld
ice_futures_mdf_impact_v1_1_43.text_message_extra_fld.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text Message Extra Fld: No Value"
  end

  return "Text Message Extra Fld: "..value
end

-- Dissect: Text Message Extra Fld
ice_futures_mdf_impact_v1_1_43.text_message_extra_fld.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.text_message_extra_fld.size
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

  local display = ice_futures_mdf_impact_v1_1_43.text_message_extra_fld.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.text_message_extra_fld, range, value, display)

  return offset + length, value
end

-- Text Message
ice_futures_mdf_impact_v1_1_43.text_message = {}

-- Size: Text Message
ice_futures_mdf_impact_v1_1_43.text_message.size = 200

-- Display: Text Message
ice_futures_mdf_impact_v1_1_43.text_message.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Text Message: No Value"
  end

  return "Text Message: "..value
end

-- Dissect: Text Message
ice_futures_mdf_impact_v1_1_43.text_message.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.text_message.size
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

  local display = ice_futures_mdf_impact_v1_1_43.text_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.text_message, range, value, display)

  return offset + length, value
end

-- System Text Message
ice_futures_mdf_impact_v1_1_43.system_text_message = {}

-- Calculate size of: System Text Message
ice_futures_mdf_impact_v1_1_43.system_text_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.text_message.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.text_message_extra_fld.size

  return index
end

-- Display: System Text Message
ice_futures_mdf_impact_v1_1_43.system_text_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Text Message
ice_futures_mdf_impact_v1_1_43.system_text_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Message: Alpha
  index, text_message = ice_futures_mdf_impact_v1_1_43.text_message.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Text Message Extra Fld: Alpha
  index, text_message_extra_fld = ice_futures_mdf_impact_v1_1_43.text_message_extra_fld.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Text Message
ice_futures_mdf_impact_v1_1_43.system_text_message.dissect = function(buffer, offset, packet, parent)
  if show.system_text_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.system_text_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.system_text_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.system_text_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.system_text_message.fields(buffer, offset, packet, parent)
  end
end

-- Market State Change Message
ice_futures_mdf_impact_v1_1_43.market_state_change_message = {}

-- Calculate size of: Market State Change Message
ice_futures_mdf_impact_v1_1_43.market_state_change_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.trading_status.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  return index
end

-- Display: Market State Change Message
ice_futures_mdf_impact_v1_1_43.market_state_change_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market State Change Message
ice_futures_mdf_impact_v1_1_43.market_state_change_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = ice_futures_mdf_impact_v1_1_43.trading_status.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Change Message
ice_futures_mdf_impact_v1_1_43.market_state_change_message.dissect = function(buffer, offset, packet, parent)
  if show.market_state_change_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_state_change_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.market_state_change_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.market_state_change_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.market_state_change_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Statistics Message
ice_futures_mdf_impact_v1_1_43.market_statistics_message = {}

-- Calculate size of: Market Statistics Message
ice_futures_mdf_impact_v1_1_43.market_statistics_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.block_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efs_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efp_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.high.size

  index = index + ice_futures_mdf_impact_v1_1_43.low.size

  index = index + ice_futures_mdf_impact_v1_1_43.vwap.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  return index
end

-- Display: Market Statistics Message
ice_futures_mdf_impact_v1_1_43.market_statistics_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Statistics Message
ice_futures_mdf_impact_v1_1_43.market_statistics_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = ice_futures_mdf_impact_v1_1_43.volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Numeric
  index, block_volume = ice_futures_mdf_impact_v1_1_43.block_volume.dissect(buffer, index, packet, parent)

  -- Efs Volume: Numeric
  index, efs_volume = ice_futures_mdf_impact_v1_1_43.efs_volume.dissect(buffer, index, packet, parent)

  -- Efp Volume: Numeric
  index, efp_volume = ice_futures_mdf_impact_v1_1_43.efp_volume.dissect(buffer, index, packet, parent)

  -- High: Numeric
  index, high = ice_futures_mdf_impact_v1_1_43.high.dissect(buffer, index, packet, parent)

  -- Low: Numeric
  index, low = ice_futures_mdf_impact_v1_1_43.low.dissect(buffer, index, packet, parent)

  -- Vwap: Numeric
  index, vwap = ice_futures_mdf_impact_v1_1_43.vwap.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Statistics Message
ice_futures_mdf_impact_v1_1_43.market_statistics_message.dissect = function(buffer, offset, packet, parent)
  if show.market_statistics_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_statistics_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.market_statistics_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.market_statistics_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.market_statistics_message.fields(buffer, offset, packet, parent)
  end
end

-- Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.off_market_trade_type = {}

-- Size: Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.off_market_trade_type.size = 3

-- Display: Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.off_market_trade_type.display = function(value)
  if value == " " then
    return "Off Market Trade Type: Regular (<whitespace>)"
  end
  if value == "K" then
    return "Off Market Trade Type: Block (K)"
  end
  if value == "S" then
    return "Off Market Trade Type: Efs (S)"
  end
  if value == "E" then
    return "Off Market Trade Type: Efp (E)"
  end
  if value == "O" then
    return "Off Market Trade Type: Efp Efs (O)"
  end
  if value == "Q" then
    return "Off Market Trade Type: Eoo (Q)"
  end
  if value == "I" then
    return "Off Market Trade Type: Efm (I)"
  end
  if value == "5" then
    return "Off Market Trade Type: Guaranteed Cross (5)"
  end
  if value == "4" then
    return "Off Market Trade Type: Basis (4)"
  end
  if value == "AA" then
    return "Off Market Trade Type: Asset Allocation (AA)"
  end
  if value == "V" then
    return "Off Market Trade Type: Asset Allocation (V)"
  end

  return "Off Market Trade Type: Unknown("..value..")"
end

-- Dissect: Off Market Trade Type
ice_futures_mdf_impact_v1_1_43.off_market_trade_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.off_market_trade_type.size
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

  local display = ice_futures_mdf_impact_v1_1_43.off_market_trade_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.off_market_trade_type, range, value, display)

  return offset + length, value
end

-- Cancelled Trade Message
ice_futures_mdf_impact_v1_1_43.cancelled_trade_message = {}

-- Calculate size of: Cancelled Trade Message
ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.trade_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_market_trade_type.size

  return index
end

-- Display: Cancelled Trade Message
ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancelled Trade Message
ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = ice_futures_mdf_impact_v1_1_43.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Old Off Market Trade Type: Alpha
  index, old_off_market_trade_type = ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Off Market Trade Type: Alpha
  index, off_market_trade_type = ice_futures_mdf_impact_v1_1_43.off_market_trade_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancelled Trade Message
ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.cancelled_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.cancelled_trade_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Investigation Status
ice_futures_mdf_impact_v1_1_43.investigation_status = {}

-- Size: Investigation Status
ice_futures_mdf_impact_v1_1_43.investigation_status.size = 1

-- Display: Investigation Status
ice_futures_mdf_impact_v1_1_43.investigation_status.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Investigation Status: No Value"
  end

  if value == "1" then
    return "Investigation Status: Under Investigation (1)"
  end
  if value == "2" then
    return "Investigation Status: Investigation Completed (2)"
  end

  return "Investigation Status: Unknown("..value..")"
end

-- Dissect: Investigation Status
ice_futures_mdf_impact_v1_1_43.investigation_status.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.investigation_status.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.investigation_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.investigation_status, range, value, display)

  return offset + length, value
end

-- Off Market Trade Indicator
ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator = {}

-- Size: Off Market Trade Indicator
ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator.size = 1

-- Display: Off Market Trade Indicator
ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Off Market Trade Indicator: No Value"
  end

  return "Off Market Trade Indicator: "..value
end

-- Dissect: Off Market Trade Indicator
ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.off_market_trade_indicator, range, value, display)

  return offset + length, value
end

-- Investigated Trade Message
ice_futures_mdf_impact_v1_1_43.investigated_trade_message = {}

-- Calculate size of: Investigated Trade Message
ice_futures_mdf_impact_v1_1_43.investigated_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.trade_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator.size

  index = index + ice_futures_mdf_impact_v1_1_43.message_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.investigation_status.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_market_trade_type.size

  return index
end

-- Display: Investigated Trade Message
ice_futures_mdf_impact_v1_1_43.investigated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Investigated Trade Message
ice_futures_mdf_impact_v1_1_43.investigated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = ice_futures_mdf_impact_v1_1_43.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Off Market Trade Indicator: Alpha
  index, off_market_trade_indicator = ice_futures_mdf_impact_v1_1_43.off_market_trade_indicator.dissect(buffer, index, packet, parent)

  -- Message Date Time: Numeric
  index, message_date_time = ice_futures_mdf_impact_v1_1_43.message_date_time.dissect(buffer, index, packet, parent)

  -- Investigation Status: Alpha
  index, investigation_status = ice_futures_mdf_impact_v1_1_43.investigation_status.dissect(buffer, index, packet, parent)

  -- Off Market Trade Type: Alpha
  index, off_market_trade_type = ice_futures_mdf_impact_v1_1_43.off_market_trade_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Investigated Trade Message
ice_futures_mdf_impact_v1_1_43.investigated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.investigated_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.investigated_trade_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.investigated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.investigated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.investigated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Is System Priced Leg
ice_futures_mdf_impact_v1_1_43.is_system_priced_leg = {}

-- Size: Is System Priced Leg
ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.size = 1

-- Display: Is System Priced Leg
ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is System Priced Leg: No Value"
  end

  if value == "Y" then
    return "Is System Priced Leg: Yes (Y)"
  end
  if value == "N" then
    return "Is System Priced Leg: No (N)"
  end

  return "Is System Priced Leg: Unknown("..value..")"
end

-- Dissect: Is System Priced Leg
ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_system_priced_leg, range, value, display)

  return offset + length, value
end

-- Delivery End Date Time
ice_futures_mdf_impact_v1_1_43.delivery_end_date_time = {}

-- Size: Delivery End Date Time
ice_futures_mdf_impact_v1_1_43.delivery_end_date_time.size = 8

-- Display: Delivery End Date Time
ice_futures_mdf_impact_v1_1_43.delivery_end_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Delivery End Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Delivery End Date Time
ice_futures_mdf_impact_v1_1_43.delivery_end_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.delivery_end_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.delivery_end_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.delivery_end_date_time, range, value, display)

  return offset + length, value
end

-- Delivery Begin Date Time
ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time = {}

-- Size: Delivery Begin Date Time
ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time.size = 8

-- Display: Delivery Begin Date Time
ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Delivery Begin Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Delivery Begin Date Time
ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.delivery_begin_date_time, range, value, display)

  return offset + length, value
end

-- Spot Market Trade Message
ice_futures_mdf_impact_v1_1_43.spot_market_trade_message = {}

-- Calculate size of: Spot Market Trade Message
ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.trade_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.transact_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.extra_flags.size

  index = index + ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.delivery_end_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.size

  return index
end

-- Display: Spot Market Trade Message
ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spot Market Trade Message
ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = ice_futures_mdf_impact_v1_1_43.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Transact Date Time: Numeric
  index, transact_date_time = ice_futures_mdf_impact_v1_1_43.transact_date_time.dissect(buffer, index, packet, parent)

  -- Extra Flags: Numeric
  index, extra_flags = ice_futures_mdf_impact_v1_1_43.extra_flags.dissect(buffer, index, packet, parent)

  -- Delivery Begin Date Time: Numeric
  index, delivery_begin_date_time = ice_futures_mdf_impact_v1_1_43.delivery_begin_date_time.dissect(buffer, index, packet, parent)

  -- Delivery End Date Time: Numeric
  index, delivery_end_date_time = ice_futures_mdf_impact_v1_1_43.delivery_end_date_time.dissect(buffer, index, packet, parent)

  -- Is System Priced Leg: Alpha
  index, is_system_priced_leg = ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Market Trade Message
ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.spot_market_trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.spot_market_trade_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Flags
ice_futures_mdf_impact_v1_1_43.trade_flags = {}

-- Size: Trade Flags
ice_futures_mdf_impact_v1_1_43.trade_flags.size = 1

-- Display: Trade Flags
ice_futures_mdf_impact_v1_1_43.trade_flags.display = function(buffer, packet, parent)
  local display = ""

  -- Is Is Rfc Crossing flag set?
  if buffer:bitfield(0) > 0 then
    display = display.."Is Rfc Crossing|"
  end
  -- Is Is Leg Deal Outside Ipl flag set?
  if buffer:bitfield(1) > 0 then
    display = display.."Is Leg Deal Outside Ipl|"
  end
  -- Is Is Implied Order flag set?
  if buffer:bitfield(2) > 0 then
    display = display.."Is Implied Order|"
  end
  -- Is Is Vertical Split flag set?
  if buffer:bitfield(3) > 0 then
    display = display.."Is Vertical Split|"
  end

  return display:sub(1, -2)
end

-- Dissect Bit Fields: Trade Flags
ice_futures_mdf_impact_v1_1_43.trade_flags.bits = function(buffer, offset, packet, parent)

  -- Is Rfc Crossing: 1 Bit
  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_rfc_crossing, buffer(offset, 1))

  -- Is Leg Deal Outside Ipl: 1 Bit
  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_leg_deal_outside_ipl, buffer(offset, 1))

  -- Is Implied Order: 1 Bit
  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_implied_order, buffer(offset, 1))

  -- Is Vertical Split: 1 Bit
  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_vertical_split, buffer(offset, 1))

  -- Unused 4: 4 Bit
  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.unused_4, buffer(offset, 1))
end

-- Dissect: Trade Flags
ice_futures_mdf_impact_v1_1_43.trade_flags.dissect = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local display = ice_futures_mdf_impact_v1_1_43.trade_flags.display(range, packet, parent)
  local element = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.trade_flags, range, display)

  if show.trade_flags then
    ice_futures_mdf_impact_v1_1_43.trade_flags.bits(buffer, offset, packet, element)
  end

  return offset + 1, range
end

-- Aggressor Side
ice_futures_mdf_impact_v1_1_43.aggressor_side = {}

-- Size: Aggressor Side
ice_futures_mdf_impact_v1_1_43.aggressor_side.size = 1

-- Display: Aggressor Side
ice_futures_mdf_impact_v1_1_43.aggressor_side.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Aggressor Side: No Value"
  end

  if value == " " then
    return "Aggressor Side: None (<whitespace>)"
  end
  if value == "1" then
    return "Aggressor Side: Buy (1)"
  end
  if value == "2" then
    return "Aggressor Side: Sell (2)"
  end

  return "Aggressor Side: Unknown("..value..")"
end

-- Dissect: Aggressor Side
ice_futures_mdf_impact_v1_1_43.aggressor_side.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.aggressor_side.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.aggressor_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.aggressor_side, range, value, display)

  return offset + length, value
end

-- Is Adjusted Trade
ice_futures_mdf_impact_v1_1_43.is_adjusted_trade = {}

-- Size: Is Adjusted Trade
ice_futures_mdf_impact_v1_1_43.is_adjusted_trade.size = 1

-- Display: Is Adjusted Trade
ice_futures_mdf_impact_v1_1_43.is_adjusted_trade.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Is Adjusted Trade: No Value"
  end

  return "Is Adjusted Trade: "..value
end

-- Dissect: Is Adjusted Trade
ice_futures_mdf_impact_v1_1_43.is_adjusted_trade.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_adjusted_trade.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_adjusted_trade.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_adjusted_trade, range, value, display)

  return offset + length, value
end

-- Is Implied Spread At Market Open
ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open = {}

-- Size: Is Implied Spread At Market Open
ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open.size = 1

-- Display: Is Implied Spread At Market Open
ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Is Implied Spread At Market Open: No Value"
  end

  return "Is Implied Spread At Market Open: "..value
end

-- Dissect: Is Implied Spread At Market Open
ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_implied_spread_at_market_open, range, value, display)

  return offset + length, value
end

-- System Priced Leg Type
ice_futures_mdf_impact_v1_1_43.system_priced_leg_type = {}

-- Size: System Priced Leg Type
ice_futures_mdf_impact_v1_1_43.system_priced_leg_type.size = 1

-- Display: System Priced Leg Type
ice_futures_mdf_impact_v1_1_43.system_priced_leg_type.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "System Priced Leg Type: No Value"
  end

  if value == "C" then
    return "System Priced Leg Type: System Priced Crack Spread Leg (C)"
  end
  if value == "S" then
    return "System Priced Leg Type: System Priced Leg (S)"
  end

  return "System Priced Leg Type: Unknown("..value..")"
end

-- Dissect: System Priced Leg Type
ice_futures_mdf_impact_v1_1_43.system_priced_leg_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.system_priced_leg_type.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.system_priced_leg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.system_priced_leg_type, range, value, display)

  return offset + length, value
end

-- Trade Message
ice_futures_mdf_impact_v1_1_43.trade_message = {}

-- Calculate size of: Trade Message
ice_futures_mdf_impact_v1_1_43.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.trade_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.size

  index = index + ice_futures_mdf_impact_v1_1_43.price.size

  index = index + ice_futures_mdf_impact_v1_1_43.quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.transact_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.system_priced_leg_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_adjusted_trade.size

  index = index + ice_futures_mdf_impact_v1_1_43.aggressor_side.size

  index = index + ice_futures_mdf_impact_v1_1_43.trade_flags.size

  index = index + ice_futures_mdf_impact_v1_1_43.off_market_trade_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.sequence_within_millis.size

  index = index + ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.size

  return index
end

-- Display: Trade Message
ice_futures_mdf_impact_v1_1_43.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
ice_futures_mdf_impact_v1_1_43.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Numeric
  index, trade_id = ice_futures_mdf_impact_v1_1_43.trade_id.dissect(buffer, index, packet, parent)

  -- Is System Priced Leg: Alpha
  index, is_system_priced_leg = ice_futures_mdf_impact_v1_1_43.is_system_priced_leg.dissect(buffer, index, packet, parent)

  -- Price: Numeric
  index, price = ice_futures_mdf_impact_v1_1_43.price.dissect(buffer, index, packet, parent)

  -- Quantity: Numeric
  index, quantity = ice_futures_mdf_impact_v1_1_43.quantity.dissect(buffer, index, packet, parent)

  -- Old Off Market Trade Type: Alpha
  index, old_off_market_trade_type = ice_futures_mdf_impact_v1_1_43.old_off_market_trade_type.dissect(buffer, index, packet, parent)

  -- Transact Date Time: Numeric
  index, transact_date_time = ice_futures_mdf_impact_v1_1_43.transact_date_time.dissect(buffer, index, packet, parent)

  -- System Priced Leg Type: Alpha
  index, system_priced_leg_type = ice_futures_mdf_impact_v1_1_43.system_priced_leg_type.dissect(buffer, index, packet, parent)

  -- Is Implied Spread At Market Open: Alpha
  index, is_implied_spread_at_market_open = ice_futures_mdf_impact_v1_1_43.is_implied_spread_at_market_open.dissect(buffer, index, packet, parent)

  -- Is Adjusted Trade: Alpha
  index, is_adjusted_trade = ice_futures_mdf_impact_v1_1_43.is_adjusted_trade.dissect(buffer, index, packet, parent)

  -- Aggressor Side: Alpha
  index, aggressor_side = ice_futures_mdf_impact_v1_1_43.aggressor_side.dissect(buffer, index, packet, parent)

  -- Trade Flags: Struct of 5 fields
  index, trade_flags = ice_futures_mdf_impact_v1_1_43.trade_flags.dissect(buffer, index, packet, parent)

  -- Off Market Trade Type: Alpha
  index, off_market_trade_type = ice_futures_mdf_impact_v1_1_43.off_market_trade_type.dissect(buffer, index, packet, parent)

  -- Sequence Within Millis: Numeric
  index, sequence_within_millis = ice_futures_mdf_impact_v1_1_43.sequence_within_millis.dissect(buffer, index, packet, parent)

  -- Request Trading Engine Received Timestamp: Numeric
  index, request_trading_engine_received_timestamp = ice_futures_mdf_impact_v1_1_43.request_trading_engine_received_timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
ice_futures_mdf_impact_v1_1_43.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.trade_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price = {}

-- Size: Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price.size = 8

-- Display: Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price.display = function(value)
  return "Previous Day Settlement Price: "..value
end

-- Dissect: Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.previous_day_settlement_price, range, value, display)

  return offset + length, value
end

-- Has Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price = {}

-- Size: Has Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price.size = 1

-- Display: Has Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Has Previous Day Settlement Price: No Value"
  end

  if value == "Y" then
    return "Has Previous Day Settlement Price: Yes (Y)"
  end
  if value == "N" then
    return "Has Previous Day Settlement Price: No (N)"
  end

  return "Has Previous Day Settlement Price: Unknown("..value..")"
end

-- Dissect: Has Previous Day Settlement Price
ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.has_previous_day_settlement_price, range, value, display)

  return offset + length, value
end

-- Is Settle Price Official
ice_futures_mdf_impact_v1_1_43.is_settle_price_official = {}

-- Size: Is Settle Price Official
ice_futures_mdf_impact_v1_1_43.is_settle_price_official.size = 1

-- Display: Is Settle Price Official
ice_futures_mdf_impact_v1_1_43.is_settle_price_official.display = function(value)
  -- Check if field has value
  if value == nil or value == 0 then
    return "Is Settle Price Official: No Value"
  end

  if value == "Y" then
    return "Is Settle Price Official: Yes (Y)"
  end
  if value == "N" then
    return "Is Settle Price Official: No (N)"
  end

  return "Is Settle Price Official: Unknown("..value..")"
end

-- Dissect: Is Settle Price Official
ice_futures_mdf_impact_v1_1_43.is_settle_price_official.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.is_settle_price_official.size
  local range = buffer(offset, length)

  -- parse as byte
  local value = range:uint()

  -- check if value is non zero
  if value ~= 0 then
    value = range:string()
  end

  local display = ice_futures_mdf_impact_v1_1_43.is_settle_price_official.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.is_settle_price_official, range, value, display)

  return offset + length, value
end

-- Last Message Sequence Id
ice_futures_mdf_impact_v1_1_43.last_message_sequence_id = {}

-- Size: Last Message Sequence Id
ice_futures_mdf_impact_v1_1_43.last_message_sequence_id.size = 4

-- Display: Last Message Sequence Id
ice_futures_mdf_impact_v1_1_43.last_message_sequence_id.display = function(value)
  return "Last Message Sequence Id: "..value
end

-- Dissect: Last Message Sequence Id
ice_futures_mdf_impact_v1_1_43.last_message_sequence_id.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.last_message_sequence_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.last_message_sequence_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.last_message_sequence_id, range, value, display)

  return offset + length, value
end

-- Settle Price Date Time
ice_futures_mdf_impact_v1_1_43.settle_price_date_time = {}

-- Size: Settle Price Date Time
ice_futures_mdf_impact_v1_1_43.settle_price_date_time.size = 8

-- Display: Settle Price Date Time
ice_futures_mdf_impact_v1_1_43.settle_price_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Settle Price Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Settle Price Date Time
ice_futures_mdf_impact_v1_1_43.settle_price_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.settle_price_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.settle_price_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.settle_price_date_time, range, value, display)

  return offset + length, value
end

-- Last Trade Date Time
ice_futures_mdf_impact_v1_1_43.last_trade_date_time = {}

-- Size: Last Trade Date Time
ice_futures_mdf_impact_v1_1_43.last_trade_date_time.size = 8

-- Display: Last Trade Date Time
ice_futures_mdf_impact_v1_1_43.last_trade_date_time.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Last Trade Date Time: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Last Trade Date Time
ice_futures_mdf_impact_v1_1_43.last_trade_date_time.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.last_trade_date_time.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.last_trade_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.last_trade_date_time, range, value, display)

  return offset + length, value
end

-- Last Trade Quantity
ice_futures_mdf_impact_v1_1_43.last_trade_quantity = {}

-- Size: Last Trade Quantity
ice_futures_mdf_impact_v1_1_43.last_trade_quantity.size = 4

-- Display: Last Trade Quantity
ice_futures_mdf_impact_v1_1_43.last_trade_quantity.display = function(value)
  return "Last Trade Quantity: "..value
end

-- Dissect: Last Trade Quantity
ice_futures_mdf_impact_v1_1_43.last_trade_quantity.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.last_trade_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.last_trade_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.last_trade_quantity, range, value, display)

  return offset + length, value
end

-- Last Trade Price
ice_futures_mdf_impact_v1_1_43.last_trade_price = {}

-- Size: Last Trade Price
ice_futures_mdf_impact_v1_1_43.last_trade_price.size = 8

-- Display: Last Trade Price
ice_futures_mdf_impact_v1_1_43.last_trade_price.display = function(value)
  return "Last Trade Price: "..value
end

-- Dissect: Last Trade Price
ice_futures_mdf_impact_v1_1_43.last_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.last_trade_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = ice_futures_mdf_impact_v1_1_43.last_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.last_trade_price, range, value, display)

  return offset + length, value
end

-- Num Of Book Entries
ice_futures_mdf_impact_v1_1_43.num_of_book_entries = {}

-- Size: Num Of Book Entries
ice_futures_mdf_impact_v1_1_43.num_of_book_entries.size = 4

-- Display: Num Of Book Entries
ice_futures_mdf_impact_v1_1_43.num_of_book_entries.display = function(value)
  return "Num Of Book Entries: "..value
end

-- Dissect: Num Of Book Entries
ice_futures_mdf_impact_v1_1_43.num_of_book_entries.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.num_of_book_entries.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.num_of_book_entries.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.num_of_book_entries, range, value, display)

  return offset + length, value
end

-- Market Type
ice_futures_mdf_impact_v1_1_43.market_type = {}

-- Size: Market Type
ice_futures_mdf_impact_v1_1_43.market_type.size = 2

-- Display: Market Type
ice_futures_mdf_impact_v1_1_43.market_type.display = function(value)
  return "Market Type: "..value
end

-- Dissect: Market Type
ice_futures_mdf_impact_v1_1_43.market_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = ice_futures_mdf_impact_v1_1_43.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_type, range, value, display)

  return offset + length, value
end

-- Market Snapshot Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_message = {}

-- Calculate size of: Market Snapshot Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.market_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.market_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.trading_status.size

  index = index + ice_futures_mdf_impact_v1_1_43.volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.block_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efs_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.efp_volume.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest.size

  index = index + ice_futures_mdf_impact_v1_1_43.opening_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.size

  index = index + ice_futures_mdf_impact_v1_1_43.high.size

  index = index + ice_futures_mdf_impact_v1_1_43.low.size

  index = index + ice_futures_mdf_impact_v1_1_43.vwap.size

  index = index + ice_futures_mdf_impact_v1_1_43.num_of_book_entries.size

  index = index + ice_futures_mdf_impact_v1_1_43.last_trade_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.last_trade_quantity.size

  index = index + ice_futures_mdf_impact_v1_1_43.last_trade_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.settle_price_date_time.size

  index = index + ice_futures_mdf_impact_v1_1_43.last_message_sequence_id.size

  index = index + ice_futures_mdf_impact_v1_1_43.reserved_2.size

  index = index + ice_futures_mdf_impact_v1_1_43.open_interest_date.size

  index = index + ice_futures_mdf_impact_v1_1_43.is_settle_price_official.size

  index = index + ice_futures_mdf_impact_v1_1_43.settlement_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price.size

  index = index + ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price.size

  return index
end

-- Display: Market Snapshot Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Snapshot Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Id: Numeric
  index, market_id = ice_futures_mdf_impact_v1_1_43.market_id.dissect(buffer, index, packet, parent)

  -- Market Type: Numeric
  index, market_type = ice_futures_mdf_impact_v1_1_43.market_type.dissect(buffer, index, packet, parent)

  -- Trading Status: Alpha
  index, trading_status = ice_futures_mdf_impact_v1_1_43.trading_status.dissect(buffer, index, packet, parent)

  -- Volume: Numeric
  index, volume = ice_futures_mdf_impact_v1_1_43.volume.dissect(buffer, index, packet, parent)

  -- Block Volume: Numeric
  index, block_volume = ice_futures_mdf_impact_v1_1_43.block_volume.dissect(buffer, index, packet, parent)

  -- Efs Volume: Numeric
  index, efs_volume = ice_futures_mdf_impact_v1_1_43.efs_volume.dissect(buffer, index, packet, parent)

  -- Efp Volume: Numeric
  index, efp_volume = ice_futures_mdf_impact_v1_1_43.efp_volume.dissect(buffer, index, packet, parent)

  -- Open Interest: Numeric
  index, open_interest = ice_futures_mdf_impact_v1_1_43.open_interest.dissect(buffer, index, packet, parent)

  -- Opening Price: Numeric
  index, opening_price = ice_futures_mdf_impact_v1_1_43.opening_price.dissect(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: Numeric
  index, settlement_price_with_deal_price_precision = ice_futures_mdf_impact_v1_1_43.settlement_price_with_deal_price_precision.dissect(buffer, index, packet, parent)

  -- High: Numeric
  index, high = ice_futures_mdf_impact_v1_1_43.high.dissect(buffer, index, packet, parent)

  -- Low: Numeric
  index, low = ice_futures_mdf_impact_v1_1_43.low.dissect(buffer, index, packet, parent)

  -- Vwap: Numeric
  index, vwap = ice_futures_mdf_impact_v1_1_43.vwap.dissect(buffer, index, packet, parent)

  -- Num Of Book Entries: Numeric
  index, num_of_book_entries = ice_futures_mdf_impact_v1_1_43.num_of_book_entries.dissect(buffer, index, packet, parent)

  -- Last Trade Price: Numeric
  index, last_trade_price = ice_futures_mdf_impact_v1_1_43.last_trade_price.dissect(buffer, index, packet, parent)

  -- Last Trade Quantity: Numeric
  index, last_trade_quantity = ice_futures_mdf_impact_v1_1_43.last_trade_quantity.dissect(buffer, index, packet, parent)

  -- Last Trade Date Time: Numeric
  index, last_trade_date_time = ice_futures_mdf_impact_v1_1_43.last_trade_date_time.dissect(buffer, index, packet, parent)

  -- Settle Price Date Time: Numeric
  index, settle_price_date_time = ice_futures_mdf_impact_v1_1_43.settle_price_date_time.dissect(buffer, index, packet, parent)

  -- Last Message Sequence Id: Numeric
  index, last_message_sequence_id = ice_futures_mdf_impact_v1_1_43.last_message_sequence_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: N/A
  index, reserved_2 = ice_futures_mdf_impact_v1_1_43.reserved_2.dissect(buffer, index, packet, parent)

  -- Open Interest Date: Alpha
  index, open_interest_date = ice_futures_mdf_impact_v1_1_43.open_interest_date.dissect(buffer, index, packet, parent)

  -- Is Settle Price Official: Alpha
  index, is_settle_price_official = ice_futures_mdf_impact_v1_1_43.is_settle_price_official.dissect(buffer, index, packet, parent)

  -- Settlement Price: Numeric
  index, settlement_price = ice_futures_mdf_impact_v1_1_43.settlement_price.dissect(buffer, index, packet, parent)

  -- Has Previous Day Settlement Price: Alpha
  index, has_previous_day_settlement_price = ice_futures_mdf_impact_v1_1_43.has_previous_day_settlement_price.dissect(buffer, index, packet, parent)

  -- Previous Day Settlement Price: Numeric
  index, previous_day_settlement_price = ice_futures_mdf_impact_v1_1_43.previous_day_settlement_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Message
ice_futures_mdf_impact_v1_1_43.market_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.market_snapshot_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.market_snapshot_message, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.market_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.market_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
ice_futures_mdf_impact_v1_1_43.payload = {}

-- Calculate runtime size of: Payload
ice_futures_mdf_impact_v1_1_43.payload.size = function(buffer, offset, message_type)
  -- Size of Market Snapshot Message
  if message_type == "C" then
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_message.size(buffer, offset)
  end
  -- Size of Trade Message
  if message_type == "G" then
    return ice_futures_mdf_impact_v1_1_43.trade_message.size(buffer, offset)
  end
  -- Size of Spot Market Trade Message
  if message_type == "Y" then
    return ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.size(buffer, offset)
  end
  -- Size of Investigated Trade Message
  if message_type == "H" then
    return ice_futures_mdf_impact_v1_1_43.investigated_trade_message.size(buffer, offset)
  end
  -- Size of Cancelled Trade Message
  if message_type == "I" then
    return ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.size(buffer, offset)
  end
  -- Size of Market Statistics Message
  if message_type == "J" then
    return ice_futures_mdf_impact_v1_1_43.market_statistics_message.size(buffer, offset)
  end
  -- Size of Market State Change Message
  if message_type == "K" then
    return ice_futures_mdf_impact_v1_1_43.market_state_change_message.size(buffer, offset)
  end
  -- Size of System Text Message
  if message_type == "L" then
    return ice_futures_mdf_impact_v1_1_43.system_text_message.size(buffer, offset)
  end
  -- Size of Open Interest Message
  if message_type == "M" then
    return ice_futures_mdf_impact_v1_1_43.open_interest_message.size(buffer, offset)
  end
  -- Size of Open Price Message
  if message_type == "N" then
    return ice_futures_mdf_impact_v1_1_43.open_price_message.size(buffer, offset)
  end
  -- Size of Close Price Message
  if message_type == "c" then
    return ice_futures_mdf_impact_v1_1_43.close_price_message.size(buffer, offset)
  end
  -- Size of Settlement Price Message
  if message_type == "O" then
    return ice_futures_mdf_impact_v1_1_43.settlement_price_message.size(buffer, offset)
  end
  -- Size of Index Prices Message
  if message_type == "z" then
    return ice_futures_mdf_impact_v1_1_43.index_prices_message.size(buffer, offset)
  end
  -- Size of End Of Day Market Summary Message
  if message_type == "u" then
    return ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.size(buffer, offset)
  end
  -- Size of Market Event Message
  if message_type == "f" then
    return ice_futures_mdf_impact_v1_1_43.market_event_message.size(buffer, offset)
  end
  -- Size of Pre Open Price Indicator Message
  if message_type == "g" then
    return ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.size(buffer, offset)
  end
  -- Size of Strip Info Message
  if message_type == "i" then
    return ice_futures_mdf_impact_v1_1_43.strip_info_message.size(buffer, offset)
  end
  -- Size of Interval Price Limit Notification Message
  if message_type == "V" then
    return ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.size(buffer, offset)
  end
  -- Size of New Futures Strategy Definition Message
  if message_type == "9" then
    return ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.size(buffer, offset)
  end
  -- Size of New Expiry Message
  if message_type == "R" then
    return ice_futures_mdf_impact_v1_1_43.new_expiry_message.size(buffer, offset)
  end
  -- Size of Special Field Message
  if message_type == "b" then
    return ice_futures_mdf_impact_v1_1_43.special_field_message.size(buffer, offset)
  end
  -- Size of Fragment Wrapper Message
  if message_type == "Z" then
    return ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.size(buffer, offset)
  end
  -- Size of Market Snapshot Order Message
  if message_type == "D" then
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.size(buffer, offset)
  end
  -- Size of Add Or Modify Order Message
  if message_type == "E" then
    return ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.size(buffer, offset)
  end
  -- Size of Delete Order Message
  if message_type == "F" then
    return ice_futures_mdf_impact_v1_1_43.delete_order_message.size(buffer, offset)
  end
  -- Size of Message Bundle Marker
  if message_type == "T" then
    return ice_futures_mdf_impact_v1_1_43.message_bundle_marker.size(buffer, offset)
  end
  -- Size of Fixing Transition Message
  if message_type == "3" then
    return ice_futures_mdf_impact_v1_1_43.fixing_transition_message.size(buffer, offset)
  end
  -- Size of Fixing Lockdown Message
  if message_type == "4" then
    return ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.size(buffer, offset)
  end
  -- Size of Fixing Indicative Price Message
  if message_type == "0" then
    return ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.size(buffer, offset)
  end
  -- Size of Market Snapshot Price Level Message
  if message_type == "m" then
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.size(buffer, offset)
  end
  -- Size of Add Price Level Message
  if message_type == "t" then
    return ice_futures_mdf_impact_v1_1_43.add_price_level_message.size(buffer, offset)
  end
  -- Size of Change Price Level Message
  if message_type == "s" then
    return ice_futures_mdf_impact_v1_1_43.change_price_level_message.size(buffer, offset)
  end
  -- Size of Delete Price Level Message
  if message_type == "r" then
    return ice_futures_mdf_impact_v1_1_43.delete_price_level_message.size(buffer, offset)
  end
  -- Size of New Options Strategy Definition Message
  if message_type == "U" then
    return ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.size(buffer, offset)
  end
  -- Size of New Options Market Definition Message
  if message_type == "l" then
    return ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.size(buffer, offset)
  end
  -- Size of Rfq Message
  if message_type == "k" then
    return ice_futures_mdf_impact_v1_1_43.rfq_message.size(buffer, offset)
  end
  -- Size of Option Open Interest Message
  if message_type == "v" then
    return ice_futures_mdf_impact_v1_1_43.option_open_interest_message.size(buffer, offset)
  end
  -- Size of Option Settlement Price Message
  if message_type == "w" then
    return ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.size(buffer, offset)
  end
  -- Size of Old Style Options Trade And Market Stats Message
  if message_type == "W" then
    return ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
ice_futures_mdf_impact_v1_1_43.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
ice_futures_mdf_impact_v1_1_43.payload.branches = function(buffer, offset, packet, parent, message_type)
  -- Dissect Market Snapshot Message
  if message_type == "C" then
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_type == "G" then
    return ice_futures_mdf_impact_v1_1_43.trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spot Market Trade Message
  if message_type == "Y" then
    return ice_futures_mdf_impact_v1_1_43.spot_market_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Investigated Trade Message
  if message_type == "H" then
    return ice_futures_mdf_impact_v1_1_43.investigated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancelled Trade Message
  if message_type == "I" then
    return ice_futures_mdf_impact_v1_1_43.cancelled_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Statistics Message
  if message_type == "J" then
    return ice_futures_mdf_impact_v1_1_43.market_statistics_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market State Change Message
  if message_type == "K" then
    return ice_futures_mdf_impact_v1_1_43.market_state_change_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Text Message
  if message_type == "L" then
    return ice_futures_mdf_impact_v1_1_43.system_text_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_type == "M" then
    return ice_futures_mdf_impact_v1_1_43.open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Price Message
  if message_type == "N" then
    return ice_futures_mdf_impact_v1_1_43.open_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close Price Message
  if message_type == "c" then
    return ice_futures_mdf_impact_v1_1_43.close_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Price Message
  if message_type == "O" then
    return ice_futures_mdf_impact_v1_1_43.settlement_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Prices Message
  if message_type == "z" then
    return ice_futures_mdf_impact_v1_1_43.index_prices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Market Summary Message
  if message_type == "u" then
    return ice_futures_mdf_impact_v1_1_43.end_of_day_market_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Event Message
  if message_type == "f" then
    return ice_futures_mdf_impact_v1_1_43.market_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Pre Open Price Indicator Message
  if message_type == "g" then
    return ice_futures_mdf_impact_v1_1_43.pre_open_price_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Strip Info Message
  if message_type == "i" then
    return ice_futures_mdf_impact_v1_1_43.strip_info_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Interval Price Limit Notification Message
  if message_type == "V" then
    return ice_futures_mdf_impact_v1_1_43.interval_price_limit_notification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Futures Strategy Definition Message
  if message_type == "9" then
    return ice_futures_mdf_impact_v1_1_43.new_futures_strategy_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Expiry Message
  if message_type == "R" then
    return ice_futures_mdf_impact_v1_1_43.new_expiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Special Field Message
  if message_type == "b" then
    return ice_futures_mdf_impact_v1_1_43.special_field_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fragment Wrapper Message
  if message_type == "Z" then
    return ice_futures_mdf_impact_v1_1_43.fragment_wrapper_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Snapshot Order Message
  if message_type == "D" then
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Or Modify Order Message
  if message_type == "E" then
    return ice_futures_mdf_impact_v1_1_43.add_or_modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if message_type == "F" then
    return ice_futures_mdf_impact_v1_1_43.delete_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Bundle Marker
  if message_type == "T" then
    return ice_futures_mdf_impact_v1_1_43.message_bundle_marker.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fixing Transition Message
  if message_type == "3" then
    return ice_futures_mdf_impact_v1_1_43.fixing_transition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fixing Lockdown Message
  if message_type == "4" then
    return ice_futures_mdf_impact_v1_1_43.fixing_lockdown_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fixing Indicative Price Message
  if message_type == "0" then
    return ice_futures_mdf_impact_v1_1_43.fixing_indicative_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Snapshot Price Level Message
  if message_type == "m" then
    return ice_futures_mdf_impact_v1_1_43.market_snapshot_price_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Add Price Level Message
  if message_type == "t" then
    return ice_futures_mdf_impact_v1_1_43.add_price_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Change Price Level Message
  if message_type == "s" then
    return ice_futures_mdf_impact_v1_1_43.change_price_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Delete Price Level Message
  if message_type == "r" then
    return ice_futures_mdf_impact_v1_1_43.delete_price_level_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Options Strategy Definition Message
  if message_type == "U" then
    return ice_futures_mdf_impact_v1_1_43.new_options_strategy_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Options Market Definition Message
  if message_type == "l" then
    return ice_futures_mdf_impact_v1_1_43.new_options_market_definition_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Rfq Message
  if message_type == "k" then
    return ice_futures_mdf_impact_v1_1_43.rfq_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Open Interest Message
  if message_type == "v" then
    return ice_futures_mdf_impact_v1_1_43.option_open_interest_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Option Settlement Price Message
  if message_type == "w" then
    return ice_futures_mdf_impact_v1_1_43.option_settlement_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Old Style Options Trade And Market Stats Message
  if message_type == "W" then
    return ice_futures_mdf_impact_v1_1_43.old_style_options_trade_and_market_stats_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
ice_futures_mdf_impact_v1_1_43.payload.dissect = function(buffer, offset, packet, parent, message_type)
  if not show.payload then
    return ice_futures_mdf_impact_v1_1_43.payload.branches(buffer, offset, packet, parent, message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = ice_futures_mdf_impact_v1_1_43.payload.size(buffer, offset, message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = ice_futures_mdf_impact_v1_1_43.payload.display(buffer, packet, parent)
  local element = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.payload, range, display)

  return ice_futures_mdf_impact_v1_1_43.payload.branches(buffer, offset, packet, parent, message_type)
end

-- Length
ice_futures_mdf_impact_v1_1_43.length = {}

-- Size: Length
ice_futures_mdf_impact_v1_1_43.length.size = 2

-- Display: Length
ice_futures_mdf_impact_v1_1_43.length.display = function(value)
  return "Length: "..value
end

-- Dissect: Length
ice_futures_mdf_impact_v1_1_43.length.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_futures_mdf_impact_v1_1_43.length.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.length, range, value, display)

  return offset + length, value
end

-- Message Type
ice_futures_mdf_impact_v1_1_43.message_type = {}

-- Size: Message Type
ice_futures_mdf_impact_v1_1_43.message_type.size = 1

-- Display: Message Type
ice_futures_mdf_impact_v1_1_43.message_type.display = function(value)
  if value == "C" then
    return "Message Type: Market Snapshot Message (C)"
  end
  if value == "G" then
    return "Message Type: Trade Message (G)"
  end
  if value == "Y" then
    return "Message Type: Spot Market Trade Message (Y)"
  end
  if value == "H" then
    return "Message Type: Investigated Trade Message (H)"
  end
  if value == "I" then
    return "Message Type: Cancelled Trade Message (I)"
  end
  if value == "J" then
    return "Message Type: Market Statistics Message (J)"
  end
  if value == "K" then
    return "Message Type: Market State Change Message (K)"
  end
  if value == "L" then
    return "Message Type: System Text Message (L)"
  end
  if value == "M" then
    return "Message Type: Open Interest Message (M)"
  end
  if value == "N" then
    return "Message Type: Open Price Message (N)"
  end
  if value == "c" then
    return "Message Type: Close Price Message (c)"
  end
  if value == "O" then
    return "Message Type: Settlement Price Message (O)"
  end
  if value == "z" then
    return "Message Type: Index Prices Message (z)"
  end
  if value == "u" then
    return "Message Type: End Of Day Market Summary Message (u)"
  end
  if value == "f" then
    return "Message Type: Market Event Message (f)"
  end
  if value == "g" then
    return "Message Type: Pre Open Price Indicator Message (g)"
  end
  if value == "i" then
    return "Message Type: Strip Info Message (i)"
  end
  if value == "V" then
    return "Message Type: Interval Price Limit Notification Message (V)"
  end
  if value == "9" then
    return "Message Type: New Futures Strategy Definition Message (9)"
  end
  if value == "R" then
    return "Message Type: New Expiry Message (R)"
  end
  if value == "b" then
    return "Message Type: Special Field Message (b)"
  end
  if value == "Z" then
    return "Message Type: Fragment Wrapper Message (Z)"
  end
  if value == "D" then
    return "Message Type: Market Snapshot Order Message (D)"
  end
  if value == "E" then
    return "Message Type: Add Or Modify Order Message (E)"
  end
  if value == "F" then
    return "Message Type: Delete Order Message (F)"
  end
  if value == "T" then
    return "Message Type: Message Bundle Marker (T)"
  end
  if value == "3" then
    return "Message Type: Fixing Transition Message (3)"
  end
  if value == "4" then
    return "Message Type: Fixing Lockdown Message (4)"
  end
  if value == "0" then
    return "Message Type: Fixing Indicative Price Message (0)"
  end
  if value == "m" then
    return "Message Type: Market Snapshot Price Level Message (m)"
  end
  if value == "t" then
    return "Message Type: Add Price Level Message (t)"
  end
  if value == "s" then
    return "Message Type: Change Price Level Message (s)"
  end
  if value == "r" then
    return "Message Type: Delete Price Level Message (r)"
  end
  if value == "U" then
    return "Message Type: New Options Strategy Definition Message (U)"
  end
  if value == "l" then
    return "Message Type: New Options Market Definition Message (l)"
  end
  if value == "k" then
    return "Message Type: Rfq Message (k)"
  end
  if value == "v" then
    return "Message Type: Option Open Interest Message (v)"
  end
  if value == "w" then
    return "Message Type: Option Settlement Price Message (w)"
  end
  if value == "W" then
    return "Message Type: Old Style Options Trade And Market Stats Message (W)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
ice_futures_mdf_impact_v1_1_43.message_type.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = ice_futures_mdf_impact_v1_1_43.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.message_type, range, value, display)

  return offset + length, value
end

-- Message Header
ice_futures_mdf_impact_v1_1_43.message_header = {}

-- Calculate size of: Message Header
ice_futures_mdf_impact_v1_1_43.message_header.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.message_type.size

  index = index + ice_futures_mdf_impact_v1_1_43.length.size

  return index
end

-- Display: Message Header
ice_futures_mdf_impact_v1_1_43.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
ice_futures_mdf_impact_v1_1_43.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 39 values
  index, message_type = ice_futures_mdf_impact_v1_1_43.message_type.dissect(buffer, index, packet, parent)

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index, length = ice_futures_mdf_impact_v1_1_43.length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
ice_futures_mdf_impact_v1_1_43.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.message_header, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
ice_futures_mdf_impact_v1_1_43.message = {}

-- Calculate size of: Message
ice_futures_mdf_impact_v1_1_43.message.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.message_header.size(buffer, offset + index)

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 3, 1):string()
  index = index + ice_futures_mdf_impact_v1_1_43.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
ice_futures_mdf_impact_v1_1_43.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
ice_futures_mdf_impact_v1_1_43.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = ice_futures_mdf_impact_v1_1_43.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 3, 1):string()

  -- Payload: Runtime Type with 39 branches
  index = ice_futures_mdf_impact_v1_1_43.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
ice_futures_mdf_impact_v1_1_43.message.dissect = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = ice_futures_mdf_impact_v1_1_43.message.size(buffer, offset)
    local range = buffer(offset, length)
    local display = ice_futures_mdf_impact_v1_1_43.message.display(buffer, packet, parent)
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.message, range, display)
  end

  return ice_futures_mdf_impact_v1_1_43.message.fields(buffer, offset, packet, parent)
end

-- Send Datetime
ice_futures_mdf_impact_v1_1_43.send_datetime = {}

-- Size: Send Datetime
ice_futures_mdf_impact_v1_1_43.send_datetime.size = 8

-- Display: Send Datetime
ice_futures_mdf_impact_v1_1_43.send_datetime.display = function(value)
  -- Parse unix timestamp
  local seconds = math.floor(value:tonumber()/1000)
  local milliseconds = value:tonumber()%1000

  return "Send Datetime: "..os.date("%x %H:%M:%S.", seconds)..string.format("%06d", milliseconds)
end

-- Dissect: Send Datetime
ice_futures_mdf_impact_v1_1_43.send_datetime.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.send_datetime.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = ice_futures_mdf_impact_v1_1_43.send_datetime.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.send_datetime, range, value, display)

  return offset + length, value
end

-- Number Of Msgs
ice_futures_mdf_impact_v1_1_43.number_of_msgs = {}

-- Size: Number Of Msgs
ice_futures_mdf_impact_v1_1_43.number_of_msgs.size = 2

-- Display: Number Of Msgs
ice_futures_mdf_impact_v1_1_43.number_of_msgs.display = function(value)
  return "Number Of Msgs: "..value
end

-- Dissect: Number Of Msgs
ice_futures_mdf_impact_v1_1_43.number_of_msgs.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.number_of_msgs.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_futures_mdf_impact_v1_1_43.number_of_msgs.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.number_of_msgs, range, value, display)

  return offset + length, value
end

-- Sequence
ice_futures_mdf_impact_v1_1_43.sequence = {}

-- Size: Sequence
ice_futures_mdf_impact_v1_1_43.sequence.size = 4

-- Display: Sequence
ice_futures_mdf_impact_v1_1_43.sequence.display = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
ice_futures_mdf_impact_v1_1_43.sequence.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.sequence.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_futures_mdf_impact_v1_1_43.sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.sequence, range, value, display)

  return offset + length, value
end

-- Session
ice_futures_mdf_impact_v1_1_43.session = {}

-- Size: Session
ice_futures_mdf_impact_v1_1_43.session.size = 2

-- Display: Session
ice_futures_mdf_impact_v1_1_43.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
ice_futures_mdf_impact_v1_1_43.session.dissect = function(buffer, offset, packet, parent)
  local length = ice_futures_mdf_impact_v1_1_43.session.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = ice_futures_mdf_impact_v1_1_43.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.session, range, value, display)

  return offset + length, value
end

-- Packet Header
ice_futures_mdf_impact_v1_1_43.packet_header = {}

-- Calculate size of: Packet Header
ice_futures_mdf_impact_v1_1_43.packet_header.size = function(buffer, offset)
  local index = 0

  index = index + ice_futures_mdf_impact_v1_1_43.session.size

  index = index + ice_futures_mdf_impact_v1_1_43.sequence.size

  index = index + ice_futures_mdf_impact_v1_1_43.number_of_msgs.size

  index = index + ice_futures_mdf_impact_v1_1_43.send_datetime.size

  return index
end

-- Display: Packet Header
ice_futures_mdf_impact_v1_1_43.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
ice_futures_mdf_impact_v1_1_43.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 2 Byte Unsigned Fixed Width Integer
  index, session = ice_futures_mdf_impact_v1_1_43.session.dissect(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index, sequence = ice_futures_mdf_impact_v1_1_43.sequence.dissect(buffer, index, packet, parent)

  -- Number Of Msgs: 2 Byte Unsigned Fixed Width Integer
  index, number_of_msgs = ice_futures_mdf_impact_v1_1_43.number_of_msgs.dissect(buffer, index, packet, parent)

  -- Send Datetime: 8 Byte Unsigned Fixed Width Integer
  index, send_datetime = ice_futures_mdf_impact_v1_1_43.send_datetime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
ice_futures_mdf_impact_v1_1_43.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_ice_futures_mdf_impact_v1_1_43.fields.packet_header, buffer(offset, 0))
    local index = ice_futures_mdf_impact_v1_1_43.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = ice_futures_mdf_impact_v1_1_43.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return ice_futures_mdf_impact_v1_1_43.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
ice_futures_mdf_impact_v1_1_43.packet = {}

-- Dissect Packet
ice_futures_mdf_impact_v1_1_43.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index, packet_header = ice_futures_mdf_impact_v1_1_43.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Number Of Msgs
  local number_of_msgs = buffer(index - 10, 2):uint()

  -- Repeating: Message
  for message_index = 1, number_of_msgs do
    index, message = ice_futures_mdf_impact_v1_1_43.message.dissect(buffer, index, packet, parent, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_ice_futures_mdf_impact_v1_1_43.init()
end

-- Dissector for Ice Futures Mdf iMpact 1.1.43
function omi_ice_futures_mdf_impact_v1_1_43.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_ice_futures_mdf_impact_v1_1_43.name

  -- Dissect protocol
  local protocol = parent:add(omi_ice_futures_mdf_impact_v1_1_43, buffer(), omi_ice_futures_mdf_impact_v1_1_43.description, "("..buffer:len().." Bytes)")
  return ice_futures_mdf_impact_v1_1_43.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_ice_futures_mdf_impact_v1_1_43)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
ice_futures_mdf_impact_v1_1_43.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Ice Futures Mdf iMpact 1.1.43
local function omi_ice_futures_mdf_impact_v1_1_43_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not ice_futures_mdf_impact_v1_1_43.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_ice_futures_mdf_impact_v1_1_43
  omi_ice_futures_mdf_impact_v1_1_43.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Ice Futures Mdf iMpact 1.1.43
omi_ice_futures_mdf_impact_v1_1_43:register_heuristic("udp", omi_ice_futures_mdf_impact_v1_1_43_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Intercontinental Exchange
--   Version: 1.1.43
--   Date: Wednesday, November 18, 2020
--   Specification: ICE_iMpact_Multicast_Feed_Message_Spec_1.1.34.pdf
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
