-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ice iMpact Mdf 1.24 Protocol
local ice_impact_mdf_1_24 = Proto("Ice.iMpact.Mdf.1.24.Lua", "Ice iMpact Mdf 1.24")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Ice iMpact Mdf 1.24 Format Options
format.add_or_modify_order_message = true
format.add_price_level_message = true
format.cancelled_trade_message = true
format.change_price_level_message = true
format.close_price_message = true
format.delete_order_message = true
format.delete_price_level_message = true
format.end_of_day_market_summary_message = true
format.fixing_lockdown_message = true
format.fixing_transition_message = true
format.hedge_definition = true
format.interval_price_limit_notification_message = true
format.investigated_trade_message = true
format.leg_definition = true
format.marker_index_prices = true
format.market_event_message = true
format.market_snapshot_message = true
format.market_snapshot_order_message = true
format.market_snapshot_price_level_message = true
format.market_state_change_message = true
format.market_statistics_message = true
format.message = true
format.message_bundle_marker = true
format.message_header = true
format.new_expiry_message = true
format.new_futures_strategy_definition_message = true
format.new_options_market_definition_message = true
format.new_options_strategy_definition_message = true
format.old_style_options_trade_and_market_stats_message = true
format.open_interest_message = true
format.open_price_message = true
format.option_open_interest_message = true
format.option_settlement_price_message = true
format.packet = true
format.packet_header = true
format.pre_open_price_indicator_message = true
format.rfq_message = true
format.settlement_price_message = true
format.special_field = true
format.special_field_message = true
format.spot_market_trade_message = true
format.strategy_leg_definition = true
format.strip_info_message = true
format.system_text_message = true
format.trade_message = true
format.payload = true

-- Ice iMpact Mdf 1.24 Element Dissection Options
show.add_or_modify_order_message = true
show.add_price_level_message = true
show.cancelled_trade_message = true
show.change_price_level_message = true
show.close_price_message = true
show.delete_order_message = true
show.delete_price_level_message = true
show.end_of_day_market_summary_message = true
show.fixing_lockdown_message = true
show.fixing_transition_message = true
show.hedge_definition = true
show.interval_price_limit_notification_message = true
show.investigated_trade_message = true
show.leg_definition = true
show.marker_index_prices = true
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
show.trade_message = true
show.payload = false

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ice iMpact Mdf 1.24 Fields
ice_impact_mdf_1_24.fields.add_or_modify_order_message = ProtoField.new("Add or Modify Order Message", "ice.impact.mdf.addormodifyordermessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.add_price_level_message = ProtoField.new("Add Price Level Message", "ice.impact.mdf.addpricelevelmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.agg__bid__qty = ProtoField.new("Agg  Bid  Qty", "ice.impact.mdf.aggbidqty", ftypes.INT32)
ice_impact_mdf_1_24.fields.agg__offer__qty = ProtoField.new("Agg  Offer  Qty", "ice.impact.mdf.aggofferqty", ftypes.INT32)
ice_impact_mdf_1_24.fields.aggressor_side = ProtoField.new("Aggressor Side", "ice.impact.mdf.aggressorside", ftypes.STRING)
ice_impact_mdf_1_24.fields.auction__date = ProtoField.new("Auction  Date", "ice.impact.mdf.auctiondate", ftypes.STRING)
ice_impact_mdf_1_24.fields.auction_end_time = ProtoField.new("Auction End Time", "ice.impact.mdf.auctionendtime", ftypes.INT64)
ice_impact_mdf_1_24.fields.begin_day = ProtoField.new("Begin Day", "ice.impact.mdf.beginday", ftypes.INT16)
ice_impact_mdf_1_24.fields.begin_month = ProtoField.new("Begin Month", "ice.impact.mdf.beginmonth", ftypes.INT16)
ice_impact_mdf_1_24.fields.begin_year = ProtoField.new("Begin Year", "ice.impact.mdf.beginyear", ftypes.INT16)
ice_impact_mdf_1_24.fields.block_volume = ProtoField.new("Block Volume", "ice.impact.mdf.blockvolume", ftypes.INT32)
ice_impact_mdf_1_24.fields.cancelled_trade_message = ProtoField.new("Cancelled Trade Message", "ice.impact.mdf.cancelledtrademessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.change_price_level_message = ProtoField.new("Change Price Level Message", "ice.impact.mdf.changepricelevelmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.cleared_alias = ProtoField.new("Cleared Alias", "ice.impact.mdf.clearedalias", ftypes.STRING)
ice_impact_mdf_1_24.fields.close_price = ProtoField.new("Close Price", "ice.impact.mdf.closeprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.close_price_message = ProtoField.new("Close Price Message", "ice.impact.mdf.closepricemessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.contract_symbol = ProtoField.new("Contract Symbol", "ice.impact.mdf.contractsymbol", ftypes.STRING)
ice_impact_mdf_1_24.fields.count = ProtoField.new("Count", "ice.impact.mdf.count", ftypes.UINT16)
ice_impact_mdf_1_24.fields.cross_order_supported = ProtoField.new("Cross Order Supported", "ice.impact.mdf.crossordersupported", ftypes.STRING)
ice_impact_mdf_1_24.fields.currency = ProtoField.new("Currency", "ice.impact.mdf.currency", ftypes.STRING)
ice_impact_mdf_1_24.fields.date_time = ProtoField.new("Date Time", "ice.impact.mdf.datetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.deal_price_denominator = ProtoField.new("Deal Price Denominator", "ice.impact.mdf.dealpricedenominator", ftypes.STRING)
ice_impact_mdf_1_24.fields.delete_order_message = ProtoField.new("Delete Order Message", "ice.impact.mdf.deleteordermessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.delete_price_level_message = ProtoField.new("Delete Price Level Message", "ice.impact.mdf.deletepricelevelmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.delivery_begin_date_time = ProtoField.new("Delivery Begin Date Time", "ice.impact.mdf.deliverybegindatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.delivery_end_date_time = ProtoField.new("Delivery End Date Time", "ice.impact.mdf.deliveryenddatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.delta = ProtoField.new("Delta", "ice.impact.mdf.delta", ftypes.INT64)
ice_impact_mdf_1_24.fields.description = ProtoField.new("Description", "ice.impact.mdf.description", ftypes.STRING)
ice_impact_mdf_1_24.fields.efp_volume = ProtoField.new("EFP Volume", "ice.impact.mdf.efpvolume", ftypes.INT32)
ice_impact_mdf_1_24.fields.efs_volume = ProtoField.new("EFS Volume", "ice.impact.mdf.efsvolume", ftypes.INT32)
ice_impact_mdf_1_24.fields.end_day = ProtoField.new("End Day", "ice.impact.mdf.endday", ftypes.INT16)
ice_impact_mdf_1_24.fields.end_month = ProtoField.new("End Month", "ice.impact.mdf.endmonth", ftypes.INT16)
ice_impact_mdf_1_24.fields.end_of_day_market_summary_message = ProtoField.new("End of Day Market Summary Message", "ice.impact.mdf.endofdaymarketsummarymessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.end_year = ProtoField.new("End Year", "ice.impact.mdf.endyear", ftypes.INT16)
ice_impact_mdf_1_24.fields.eur__price = ProtoField.new("EUR  Price", "ice.impact.mdf.eurprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.event_type = ProtoField.new("Event Type", "ice.impact.mdf.eventtype", ftypes.STRING)
ice_impact_mdf_1_24.fields.extra_flags = ProtoField.new("Extra Flags", "ice.impact.mdf.extraflags", ftypes.INT8, {[1]="Yes",[0]="No"})
ice_impact_mdf_1_24.fields.fixing_lockdown_message = ProtoField.new("Fixing Lockdown Message", "ice.impact.mdf.fixinglockdownmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.fixing_transition_message = ProtoField.new("Fixing Transition Message", "ice.impact.mdf.fixingtransitionmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.flex_allowed = ProtoField.new("Flex Allowed", "ice.impact.mdf.flexallowed", ftypes.STRING)
ice_impact_mdf_1_24.fields.futures_contract_symbol = ProtoField.new("Futures Contract Symbol", "ice.impact.mdf.futurescontractsymbol", ftypes.STRING)
ice_impact_mdf_1_24.fields.gbp__price = ProtoField.new("GBP  Price", "ice.impact.mdf.gbpprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.gt_allowed = ProtoField.new("GT Allowed", "ice.impact.mdf.gtallowed", ftypes.STRING)
ice_impact_mdf_1_24.fields.guaranteed_cross_supported = ProtoField.new("Guaranteed Cross Supported", "ice.impact.mdf.guaranteedcrosssupported", ftypes.STRING)
ice_impact_mdf_1_24.fields.has_pre_open_volume = ProtoField.new("Has Pre Open Volume", "ice.impact.mdf.haspreopenvolume", ftypes.STRING)
ice_impact_mdf_1_24.fields.has_previous_day_settlement_price = ProtoField.new("Has Previous Day Settlement Price", "ice.impact.mdf.haspreviousdaysettlementprice", ftypes.STRING)
ice_impact_mdf_1_24.fields.hedge_definition = ProtoField.new("Hedge Definition", "ice.impact.mdf.hedgedefinition", ftypes.STRING)
ice_impact_mdf_1_24.fields.hedge_delta = ProtoField.new("Hedge Delta", "ice.impact.mdf.hedgedelta", ftypes.UINT16)
ice_impact_mdf_1_24.fields.hedge_market_id = ProtoField.new("Hedge Market Id", "ice.impact.mdf.hedgemarketid", ftypes.UINT32)
ice_impact_mdf_1_24.fields.hedge_market_id = ProtoField.new("Hedge Market ID", "ice.impact.mdf.hedgemarketid", ftypes.UINT32)
ice_impact_mdf_1_24.fields.hedge_price = ProtoField.new("Hedge Price", "ice.impact.mdf.hedgeprice", ftypes.UINT64)
ice_impact_mdf_1_24.fields.hedge_price_denominator = ProtoField.new("Hedge Price Denominator", "ice.impact.mdf.hedgepricedenominator", ftypes.STRING)
ice_impact_mdf_1_24.fields.hedge_security_type = ProtoField.new("Hedge Security Type", "ice.impact.mdf.hedgesecuritytype", ftypes.STRING)
ice_impact_mdf_1_24.fields.hedge_side = ProtoField.new("Hedge Side", "ice.impact.mdf.hedgeside", ftypes.STRING)
ice_impact_mdf_1_24.fields.hedgebodylength = ProtoField.new("HedgeBodyLength", "ice.impact.mdf.hedgebodylength", ftypes.UINT8)
ice_impact_mdf_1_24.fields.high = ProtoField.new("High", "ice.impact.mdf.high", ftypes.INT64)
ice_impact_mdf_1_24.fields.hub_alias = ProtoField.new("Hub Alias", "ice.impact.mdf.hubalias", ftypes.STRING)
ice_impact_mdf_1_24.fields.hub_id = ProtoField.new("Hub ID", "ice.impact.mdf.hubid", ftypes.INT32)
ice_impact_mdf_1_24.fields.implied_order_count = ProtoField.new("Implied Order Count", "ice.impact.mdf.impliedordercount", ftypes.INT16)
ice_impact_mdf_1_24.fields.implied_quantity = ProtoField.new("Implied Quantity", "ice.impact.mdf.impliedquantity", ftypes.INT32)
ice_impact_mdf_1_24.fields.increment_premium_price = ProtoField.new("Increment Premium Price", "ice.impact.mdf.incrementpremiumprice", ftypes.INT32)
ice_impact_mdf_1_24.fields.increment_price = ProtoField.new("Increment Price", "ice.impact.mdf.incrementprice", ftypes.INT32)
ice_impact_mdf_1_24.fields.increment_qty = ProtoField.new("Increment Qty", "ice.impact.mdf.incrementqty", ftypes.INT32)
ice_impact_mdf_1_24.fields.interval_price_limit_notification_message = ProtoField.new("Interval Price Limit Notification Message", "ice.impact.mdf.intervalpricelimitnotificationmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.investigated_trade_message = ProtoField.new("Investigated Trade Message", "ice.impact.mdf.investigatedtrademessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.ipl_down = ProtoField.new("IPL Down", "ice.impact.mdf.ipldown", ftypes.INT64)
ice_impact_mdf_1_24.fields.ipl_hold_duration = ProtoField.new("IPL Hold Duration", "ice.impact.mdf.iplholdduration", ftypes.INT32)
ice_impact_mdf_1_24.fields.ipl_hold_type = ProtoField.new("IPL Hold Type", "ice.impact.mdf.iplholdtype", ftypes.STRING)
ice_impact_mdf_1_24.fields.ipl_up = ProtoField.new("IPL Up", "ice.impact.mdf.iplup", ftypes.INT64)
ice_impact_mdf_1_24.fields.is_adjusted_trade = ProtoField.new("Is Adjusted Trade", "ice.impact.mdf.isadjustedtrade", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_balanced = ProtoField.new("Is Balanced", "ice.impact.mdf.isbalanced", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_block_only = ProtoField.new("Is Block Only", "ice.impact.mdf.isblockonly", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_final = ProtoField.new("Is Final", "ice.impact.mdf.isfinal", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_implied = ProtoField.new("Is Implied", "ice.impact.mdf.isimplied", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_implied_spread_at_market_open = ProtoField.new("Is Implied Spread At Market Open", "ice.impact.mdf.isimpliedspreadatmarketopen", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_official = ProtoField.new("Is Official", "ice.impact.mdf.isofficial", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_rfq = ProtoField.new("Is RFQ", "ice.impact.mdf.isrfq", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_settle_price_official = ProtoField.new("Is Settle Price Official", "ice.impact.mdf.issettlepriceofficial", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_system_priced_leg = ProtoField.new("Is System Priced Leg", "ice.impact.mdf.issystempricedleg", ftypes.STRING)
ice_impact_mdf_1_24.fields.is_up = ProtoField.new("Is Up", "ice.impact.mdf.isup", ftypes.STRING)
ice_impact_mdf_1_24.fields.isin = ProtoField.new("ISIN", "ice.impact.mdf.isin", ftypes.STRING)
ice_impact_mdf_1_24.fields.last_message_sequence_id = ProtoField.new("Last Message Sequence ID", "ice.impact.mdf.lastmessagesequenceid", ftypes.INT32)
ice_impact_mdf_1_24.fields.last_trade_date_time = ProtoField.new("Last Trade Date Time", "ice.impact.mdf.lasttradedatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.last_trade_price = ProtoField.new("Last Trade Price", "ice.impact.mdf.lasttradeprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "ice.impact.mdf.lasttradequantity", ftypes.INT32)
ice_impact_mdf_1_24.fields.leg_body_length = ProtoField.new("Leg Body Length", "ice.impact.mdf.legbodylength", ftypes.UINT8)
ice_impact_mdf_1_24.fields.leg_definition = ProtoField.new("Leg Definition", "ice.impact.mdf.legdefinition", ftypes.STRING)
ice_impact_mdf_1_24.fields.leg_market_id = ProtoField.new("Leg Market Id", "ice.impact.mdf.legmarketid", ftypes.UINT32)
ice_impact_mdf_1_24.fields.leg_ratio = ProtoField.new("Leg Ratio", "ice.impact.mdf.legratio", ftypes.UINT16)
ice_impact_mdf_1_24.fields.leg_side = ProtoField.new("Leg Side", "ice.impact.mdf.legside", ftypes.STRING)
ice_impact_mdf_1_24.fields.leg_underlying_market_id = ProtoField.new("Leg Underlying Market Id", "ice.impact.mdf.legunderlyingmarketid", ftypes.UINT32)
ice_impact_mdf_1_24.fields.length = ProtoField.new("Length", "ice.impact.mdf.length", ftypes.UINT16)
ice_impact_mdf_1_24.fields.lot_size = ProtoField.new("Lot Size", "ice.impact.mdf.lotsize", ftypes.INT32)
ice_impact_mdf_1_24.fields.low = ProtoField.new("Low", "ice.impact.mdf.low", ftypes.INT64)
ice_impact_mdf_1_24.fields.marker_index_prices = ProtoField.new("Marker Index Prices", "ice.impact.mdf.markerindexprices", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_desc = ProtoField.new("Market Desc", "ice.impact.mdf.marketdesc", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_event_message = ProtoField.new("Market Event Message", "ice.impact.mdf.marketeventmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_id = ProtoField.new("Market ID", "ice.impact.mdf.marketid", ftypes.INT32)
ice_impact_mdf_1_24.fields.market_snapshot_message = ProtoField.new("Market Snapshot Message", "ice.impact.mdf.marketsnapshotmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_snapshot_order_message = ProtoField.new("Market Snapshot Order Message", "ice.impact.mdf.marketsnapshotordermessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_snapshot_price_level_message = ProtoField.new("Market Snapshot Price Level Message", "ice.impact.mdf.marketsnapshotpricelevelmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_state_change_message = ProtoField.new("Market State Change Message", "ice.impact.mdf.marketstatechangemessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_statistics_message = ProtoField.new("Market Statistics Message", "ice.impact.mdf.marketstatisticsmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.market_type = ProtoField.new("Market Type", "ice.impact.mdf.markettype", ftypes.INT16)
ice_impact_mdf_1_24.fields.market_type_id = ProtoField.new("Market Type ID", "ice.impact.mdf.markettypeid", ftypes.INT16)
ice_impact_mdf_1_24.fields.maturity_day = ProtoField.new("Maturity Day", "ice.impact.mdf.maturityday", ftypes.INT16)
ice_impact_mdf_1_24.fields.maturity_month = ProtoField.new("Maturity Month", "ice.impact.mdf.maturitymonth", ftypes.INT16)
ice_impact_mdf_1_24.fields.maturity_year = ProtoField.new("Maturity Year", "ice.impact.mdf.maturityyear", ftypes.INT16)
ice_impact_mdf_1_24.fields.max_options_price = ProtoField.new("Max Options Price", "ice.impact.mdf.maxoptionsprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.max_price = ProtoField.new("Max Price", "ice.impact.mdf.maxprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.message = ProtoField.new("Message", "ice.impact.mdf.message", ftypes.STRING)
ice_impact_mdf_1_24.fields.message_bundle_marker = ProtoField.new("Message Bundle Marker", "ice.impact.mdf.messagebundlemarker", ftypes.STRING)
ice_impact_mdf_1_24.fields.message_header = ProtoField.new("Message Header", "ice.impact.mdf.messageheader", ftypes.STRING)
ice_impact_mdf_1_24.fields.message_timestamp = ProtoField.new("Message Timestamp", "ice.impact.mdf.messagetimestamp", ftypes.INT64)
ice_impact_mdf_1_24.fields.message_type = ProtoField.new("Message Type", "ice.impact.mdf.messagetype", ftypes.STRING)
ice_impact_mdf_1_24.fields.mic_code = ProtoField.new("MIC Code", "ice.impact.mdf.miccode", ftypes.STRING)
ice_impact_mdf_1_24.fields.min_options_price = ProtoField.new("Min Options Price", "ice.impact.mdf.minoptionsprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.min_price = ProtoField.new("Min Price", "ice.impact.mdf.minprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.min_qty = ProtoField.new("Min Qty", "ice.impact.mdf.minqty", ftypes.INT32)
ice_impact_mdf_1_24.fields.new_expiry_message = ProtoField.new("New Expiry Message", "ice.impact.mdf.newexpirymessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.new_futures_strategy_definition_message = ProtoField.new("New Futures Strategy Definition Message", "ice.impact.mdf.newfuturesstrategydefinitionmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.new_options_market_definition_message = ProtoField.new("New Options Market Definition Message", "ice.impact.mdf.newoptionsmarketdefinitionmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.new_options_strategy_definition_message = ProtoField.new("New Options Strategy Definition Message", "ice.impact.mdf.newoptionsstrategydefinitionmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.notification_date_time = ProtoField.new("Notification Date Time", "ice.impact.mdf.notificationdatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.num_decimals_options_price = ProtoField.new("Num Decimals Options Price", "ice.impact.mdf.numdecimalsoptionsprice", ftypes.STRING)
ice_impact_mdf_1_24.fields.num_decimals_strike_price = ProtoField.new("Num Decimals Strike Price", "ice.impact.mdf.numdecimalsstrikeprice", ftypes.STRING)
ice_impact_mdf_1_24.fields.num_of_book_entries = ProtoField.new("Num Of Book Entries", "ice.impact.mdf.numofbookentries", ftypes.INT32)
ice_impact_mdf_1_24.fields.number_of_hedge_definitions = ProtoField.new("Number Of Hedge Definitions", "ice.impact.mdf.numberofhedgedefinitions", ftypes.INT8, {[1]="Yes",[0]="No"})
ice_impact_mdf_1_24.fields.number_of_leg_definitions = ProtoField.new("Number Of Leg Definitions", "ice.impact.mdf.numberoflegdefinitions", ftypes.INT8, {[1]="Yes",[0]="No"})
ice_impact_mdf_1_24.fields.number_of_special_fields = ProtoField.new("Number Of Special Fields", "ice.impact.mdf.numberofspecialfields", ftypes.INT8, {[1]="Yes",[0]="No"})
ice_impact_mdf_1_24.fields.number_of_strategy_leg_definitions = ProtoField.new("Number Of Strategy Leg Definitions", "ice.impact.mdf.numberofstrategylegdefinitions", ftypes.INT8, {[1]="Yes",[0]="No"})
ice_impact_mdf_1_24.fields.off_exchange_increment_option_price = ProtoField.new("Off Exchange Increment Option Price", "ice.impact.mdf.offexchangeincrementoptionprice", ftypes.INT32)
ice_impact_mdf_1_24.fields.off_exchange_increment_price = ProtoField.new("Off Exchange Increment Price", "ice.impact.mdf.offexchangeincrementprice", ftypes.INT32)
ice_impact_mdf_1_24.fields.off_exchange_increment_qty = ProtoField.new("Off Exchange Increment Qty", "ice.impact.mdf.offexchangeincrementqty", ftypes.INT32)
ice_impact_mdf_1_24.fields.off_exchange_increment_qty_denominator = ProtoField.new("Off Exchange Increment Qty Denominator", "ice.impact.mdf.offexchangeincrementqtydenominator", ftypes.STRING)
ice_impact_mdf_1_24.fields.off_market_trade_type = ProtoField.new("Off Market Trade Type", "ice.impact.mdf.offmarkettradetype", ftypes.STRING)
ice_impact_mdf_1_24.fields.old_off_market_trade_type = ProtoField.new("Old Off Market Trade Type", "ice.impact.mdf.oldoffmarkettradetype", ftypes.STRING)
ice_impact_mdf_1_24.fields.old_strip_id = ProtoField.new("Old Strip ID", "ice.impact.mdf.oldstripid", ftypes.INT16)
ice_impact_mdf_1_24.fields.old_style_options_trade_and_market_stats_message = ProtoField.new("Old Style Options Trade and Market Stats Message", "ice.impact.mdf.oldstyleoptionstradeandmarketstatsmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.open_interest = ProtoField.new("Open Interest", "ice.impact.mdf.openinterest", ftypes.INT32)
ice_impact_mdf_1_24.fields.open_interest_change = ProtoField.new("Open Interest Change", "ice.impact.mdf.openinterestchange", ftypes.INT32)
ice_impact_mdf_1_24.fields.open_interest_date = ProtoField.new("Open Interest Date", "ice.impact.mdf.openinterestdate", ftypes.STRING)
ice_impact_mdf_1_24.fields.open_interest_message = ProtoField.new("Open Interest Message", "ice.impact.mdf.openinterestmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.open_price = ProtoField.new("Open Price", "ice.impact.mdf.openprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.open_price_message = ProtoField.new("Open Price Message", "ice.impact.mdf.openpricemessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.opening_price = ProtoField.new("Opening Price", "ice.impact.mdf.openingprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.option_open_interest_message = ProtoField.new("Option Open Interest Message", "ice.impact.mdf.optionopeninterestmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.option_settlement_price_message = ProtoField.new("Option Settlement Price Message", "ice.impact.mdf.optionsettlementpricemessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.option_type = ProtoField.new("Option Type", "ice.impact.mdf.optiontype", ftypes.STRING)
ice_impact_mdf_1_24.fields.options_expiration_day = ProtoField.new("Options Expiration Day", "ice.impact.mdf.optionsexpirationday", ftypes.INT16)
ice_impact_mdf_1_24.fields.options_expiration_month = ProtoField.new("Options Expiration Month", "ice.impact.mdf.optionsexpirationmonth", ftypes.INT16)
ice_impact_mdf_1_24.fields.options_expiration_type = ProtoField.new("Options Expiration Type", "ice.impact.mdf.optionsexpirationtype", ftypes.STRING)
ice_impact_mdf_1_24.fields.options_expiration_year = ProtoField.new("Options Expiration Year", "ice.impact.mdf.optionsexpirationyear", ftypes.INT16)
ice_impact_mdf_1_24.fields.options_style = ProtoField.new("Options Style", "ice.impact.mdf.optionsstyle", ftypes.STRING)
ice_impact_mdf_1_24.fields.order_count = ProtoField.new("Order Count", "ice.impact.mdf.ordercount", ftypes.INT16)
ice_impact_mdf_1_24.fields.order_entry_date_time = ProtoField.new("Order Entry Date Time", "ice.impact.mdf.orderentrydatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.order_id = ProtoField.new("Order ID", "ice.impact.mdf.orderid", ftypes.INT64)
ice_impact_mdf_1_24.fields.order_price_denominator = ProtoField.new("Order Price Denominator", "ice.impact.mdf.orderpricedenominator", ftypes.STRING)
ice_impact_mdf_1_24.fields.order_sequence_id = ProtoField.new("Order Sequence ID", "ice.impact.mdf.ordersequenceid", ftypes.INT16)
ice_impact_mdf_1_24.fields.packet = ProtoField.new("Packet", "ice.impact.mdf.packet", ftypes.STRING)
ice_impact_mdf_1_24.fields.packet_header = ProtoField.new("Packet Header", "ice.impact.mdf.packetheader", ftypes.STRING)
ice_impact_mdf_1_24.fields.payload = ProtoField.new("Payload", "ice.impact.mdf.payload", ftypes.STRING)
ice_impact_mdf_1_24.fields.pre_open_price = ProtoField.new("Pre Open Price", "ice.impact.mdf.preopenprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.pre_open_price_indicator_message = ProtoField.new("Pre Open Price Indicator Message", "ice.impact.mdf.preopenpriceindicatormessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.pre_open_volume = ProtoField.new("Pre Open Volume", "ice.impact.mdf.preopenvolume", ftypes.INT32)
ice_impact_mdf_1_24.fields.previous_day_settlement_price = ProtoField.new("Previous Day Settlement Price", "ice.impact.mdf.previousdaysettlementprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.price = ProtoField.new("Price", "ice.impact.mdf.price", ftypes.INT64)
ice_impact_mdf_1_24.fields.price_level_position = ProtoField.new("Price Level Position", "ice.impact.mdf.pricelevelposition", ftypes.INT8, {[1]="Yes",[0]="No"})
ice_impact_mdf_1_24.fields.product_id = ProtoField.new("Product ID", "ice.impact.mdf.productid", ftypes.INT32)
ice_impact_mdf_1_24.fields.product_name = ProtoField.new("Product Name", "ice.impact.mdf.productname", ftypes.STRING)
ice_impact_mdf_1_24.fields.published_date_time = ProtoField.new("Published Date Time", "ice.impact.mdf.publisheddatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.quantity = ProtoField.new("Quantity", "ice.impact.mdf.quantity", ftypes.INT32)
ice_impact_mdf_1_24.fields.reserved_field1 = ProtoField.new("Reserved Field1", "ice.impact.mdf.reservedfield1", ftypes.BYTES)
ice_impact_mdf_1_24.fields.rfq_message = ProtoField.new("RFQ Message", "ice.impact.mdf.rfqmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.rfq_system_id = ProtoField.new("RFQ System ID", "ice.impact.mdf.rfqsystemid", ftypes.INT64)
ice_impact_mdf_1_24.fields.round = ProtoField.new("Round", "ice.impact.mdf.round", ftypes.INT16)
ice_impact_mdf_1_24.fields.security_sub_type = ProtoField.new("Security Sub Type", "ice.impact.mdf.securitysubtype", ftypes.INT16)
ice_impact_mdf_1_24.fields.sequence = ProtoField.new("Sequence", "ice.impact.mdf.sequence", ftypes.UINT32)
ice_impact_mdf_1_24.fields.sequence_within_millis = ProtoField.new("Sequence Within Millis", "ice.impact.mdf.sequencewithinmillis", ftypes.INT32)
ice_impact_mdf_1_24.fields.session = ProtoField.new("Session", "ice.impact.mdf.session", ftypes.UINT16)
ice_impact_mdf_1_24.fields.settle_price_date_time = ProtoField.new("Settle Price Date Time", "ice.impact.mdf.settlepricedatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.settle_price_denominator = ProtoField.new("Settle Price Denominator", "ice.impact.mdf.settlepricedenominator", ftypes.STRING)
ice_impact_mdf_1_24.fields.settlement_price = ProtoField.new("Settlement Price", "ice.impact.mdf.settlementprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.settlement_price_message = ProtoField.new("Settlement Price Message", "ice.impact.mdf.settlementpricemessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.settlement_price_with_deal_price_precision = ProtoField.new("Settlement Price With Deal Price Precision", "ice.impact.mdf.settlementpricewithdealpriceprecision", ftypes.INT64)
ice_impact_mdf_1_24.fields.settlement_type = ProtoField.new("Settlement Type", "ice.impact.mdf.settlementtype", ftypes.STRING)
ice_impact_mdf_1_24.fields.short_name = ProtoField.new("Short Name", "ice.impact.mdf.shortname", ftypes.STRING)
ice_impact_mdf_1_24.fields.side = ProtoField.new("Side", "ice.impact.mdf.side", ftypes.STRING)
ice_impact_mdf_1_24.fields.special_field = ProtoField.new("Special Field", "ice.impact.mdf.specialfield", ftypes.STRING)
ice_impact_mdf_1_24.fields.special_field_id = ProtoField.new("Special Field Id", "ice.impact.mdf.specialfieldid", ftypes.UINT8)
ice_impact_mdf_1_24.fields.special_field_length = ProtoField.new("Special Field Length", "ice.impact.mdf.specialfieldlength", ftypes.UINT16)
ice_impact_mdf_1_24.fields.special_field_message = ProtoField.new("Special Field Message", "ice.impact.mdf.specialfieldmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.spot_market_trade_message = ProtoField.new("Spot Market Trade Message", "ice.impact.mdf.spotmarkettrademessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.start_or_end = ProtoField.new("Start Or End", "ice.impact.mdf.startorend", ftypes.STRING)
ice_impact_mdf_1_24.fields.status = ProtoField.new("Status", "ice.impact.mdf.status", ftypes.STRING)
ice_impact_mdf_1_24.fields.strategy_leg_definition = ProtoField.new("Strategy Leg Definition", "ice.impact.mdf.strategylegdefinition", ftypes.STRING)
ice_impact_mdf_1_24.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "ice.impact.mdf.strategysymbol", ftypes.STRING)
ice_impact_mdf_1_24.fields.strike_price = ProtoField.new("Strike Price", "ice.impact.mdf.strikeprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.strip_id = ProtoField.new("Strip ID", "ice.impact.mdf.stripid", ftypes.INT32)
ice_impact_mdf_1_24.fields.strip_info_message = ProtoField.new("Strip Info Message", "ice.impact.mdf.stripinfomessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.strip_name = ProtoField.new("Strip Name", "ice.impact.mdf.stripname", ftypes.STRING)
ice_impact_mdf_1_24.fields.strip_type = ProtoField.new("Strip Type", "ice.impact.mdf.striptype", ftypes.STRING)
ice_impact_mdf_1_24.fields.system_priced_leg_type = ProtoField.new("System Priced Leg Type", "ice.impact.mdf.systempricedlegtype", ftypes.STRING)
ice_impact_mdf_1_24.fields.system_text_message = ProtoField.new("System Text Message", "ice.impact.mdf.systemtextmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.text_message = ProtoField.new("Text Message", "ice.impact.mdf.textmessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.text_message_extra_fld = ProtoField.new("Text Message Extra Fld", "ice.impact.mdf.textmessageextrafld", ftypes.STRING)
ice_impact_mdf_1_24.fields.threshold__imbalance__qty = ProtoField.new("Threshold  Imbalance  Qty", "ice.impact.mdf.thresholdimbalanceqty", ftypes.INT32)
ice_impact_mdf_1_24.fields.tick_value = ProtoField.new("Tick Value", "ice.impact.mdf.tickvalue", ftypes.INT64)
ice_impact_mdf_1_24.fields.time = ProtoField.new("Time", "ice.impact.mdf.time", ftypes.INT64)
ice_impact_mdf_1_24.fields.timestamp = ProtoField.new("Timestamp", "ice.impact.mdf.timestamp", ftypes.UINT64)
ice_impact_mdf_1_24.fields.trade_id = ProtoField.new("Trade ID", "ice.impact.mdf.tradeid", ftypes.INT64)
ice_impact_mdf_1_24.fields.trade_message = ProtoField.new("Trade Message", "ice.impact.mdf.trademessage", ftypes.STRING)
ice_impact_mdf_1_24.fields.trading_status = ProtoField.new("Trading Status", "ice.impact.mdf.tradingstatus", ftypes.STRING)
ice_impact_mdf_1_24.fields.transact_date_time = ProtoField.new("Transact Date Time", "ice.impact.mdf.transactdatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.underlying_market_id = ProtoField.new("Underlying Market ID", "ice.impact.mdf.underlyingmarketid", ftypes.INT32)
ice_impact_mdf_1_24.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "ice.impact.mdf.unitofmeasure", ftypes.STRING)
ice_impact_mdf_1_24.fields.unit_qty_denominator = ProtoField.new("Unit Qty Denominator", "ice.impact.mdf.unitqtydenominator", ftypes.STRING)
ice_impact_mdf_1_24.fields.unit_quantity = ProtoField.new("Unit Quantity", "ice.impact.mdf.unitquantity", ftypes.INT32)
ice_impact_mdf_1_24.fields.usd__price = ProtoField.new("USD  Price", "ice.impact.mdf.usdprice", ftypes.INT64)
ice_impact_mdf_1_24.fields.valuation_date____applying_date = ProtoField.new("Valuation Date /  Applying Date", "ice.impact.mdf.valuationdateapplyingdate", ftypes.STRING)
ice_impact_mdf_1_24.fields.valuation_date_time = ProtoField.new("Valuation Date Time", "ice.impact.mdf.valuationdatetime", ftypes.INT64)
ice_impact_mdf_1_24.fields.volatility = ProtoField.new("Volatility", "ice.impact.mdf.volatility", ftypes.INT64)
ice_impact_mdf_1_24.fields.volume = ProtoField.new("Volume", "ice.impact.mdf.volume", ftypes.INT32)
ice_impact_mdf_1_24.fields.vwap = ProtoField.new("VWAP", "ice.impact.mdf.vwap", ftypes.INT64)

-----------------------------------------------------------------------
-- Dissect Ice iMpact Mdf 1.24
-----------------------------------------------------------------------

-- Display VWAP
display.vwap = function(value)
  return "VWAP: "..value
end

-- Dissect: VWAP
dissect.vwap = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.vwap(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.vwap, range, value, display)

  return offset + length
end

-- Display Low
display.low = function(value)
  return "Low: "..value
end

-- Dissect: Low
dissect.low = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.low(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.low, range, value, display)

  return offset + length
end

-- Display High
display.high = function(value)
  return "High: "..value
end

-- Dissect: High
dissect.high = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.high(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.high, range, value, display)

  return offset + length
end

-- Display EFP Volume
display.efp_volume = function(value)
  return "EFP Volume: "..value
end

-- Dissect: EFP Volume
dissect.efp_volume = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.efp_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.efp_volume, range, value, display)

  return offset + length
end

-- Display EFS Volume
display.efs_volume = function(value)
  return "EFS Volume: "..value
end

-- Dissect: EFS Volume
dissect.efs_volume = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.efs_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.efs_volume, range, value, display)

  return offset + length
end

-- Display Block Volume
display.block_volume = function(value)
  return "Block Volume: "..value
end

-- Dissect: Block Volume
dissect.block_volume = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.block_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.block_volume, range, value, display)

  return offset + length
end

-- Display: Old Style Options Trade and Market Stats Message
display.old_style_options_trade_and_market_stats_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Old Style Options Trade and Market Stats Message
dissect.old_style_options_trade_and_market_stats_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- High: 8 Byte Signed Fixed Width Integer
  index = dissect.high(buffer, index, packet, parent)

  -- Low: 8 Byte Signed Fixed Width Integer
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: 8 Byte Signed Fixed Width Integer
  index = dissect.vwap(buffer, index, packet, parent)

  return index
end

-- Dissect: Old Style Options Trade and Market Stats Message
dissect.old_style_options_trade_and_market_stats_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.old_style_options_trade_and_market_stats_message then
    local range = buffer(offset, 36)
    local display = display.old_style_options_trade_and_market_stats_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.old_style_options_trade_and_market_stats_message, range, display)
  end

  return dissect.old_style_options_trade_and_market_stats_message_fields(buffer, offset, packet, parent)
end

-- Display Delta
display.delta = function(value)
  return "Delta: "..value
end

-- Dissect: Delta
dissect.delta = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.delta(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.delta, range, value, display)

  return offset + length
end

-- Display Settlement Price
display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect: Settlement Price
dissect.settlement_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.settlement_price, range, value, display)

  return offset + length
end

-- Display Volatility
display.volatility = function(value)
  return "Volatility: "..value
end

-- Dissect: Volatility
dissect.volatility = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.volatility(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.volatility, range, value, display)

  return offset + length
end

-- Display Valuation Date Time
display.valuation_date_time = function(value)
  return "Valuation Date Time: "..value
end

-- Dissect: Valuation Date Time
dissect.valuation_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.valuation_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.valuation_date_time, range, value, display)

  return offset + length
end

-- Display Is Official
display.is_official = function(value)
  return "Is Official: "..value
end

-- Dissect: Is Official
dissect.is_official = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_official(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_official, range, value, display)

  return offset + length
end

-- Display Date Time
display.date_time = function(value)
  return "Date Time: "..value
end

-- Dissect: Date Time
dissect.date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.date_time, range, value, display)

  return offset + length
end

-- Display Settlement Price With Deal Price Precision
display.settlement_price_with_deal_price_precision = function(value)
  return "Settlement Price With Deal Price Precision: "..value
end

-- Dissect: Settlement Price With Deal Price Precision
dissect.settlement_price_with_deal_price_precision = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.settlement_price_with_deal_price_precision(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.settlement_price_with_deal_price_precision, range, value, display)

  return offset + length
end

-- Display Market ID
display.market_id = function(value)
  return "Market ID: "..value
end

-- Dissect: Market ID
dissect.market_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.market_id, range, value, display)

  return offset + length
end

-- Display: Option Settlement Price Message
display.option_settlement_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Settlement Price Message
dissect.option_settlement_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_price_with_deal_price_precision(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Is Official: 1 Byte Ascii String
  index = dissect.is_official(buffer, index, packet, parent)

  -- Valuation Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.valuation_date_time(buffer, index, packet, parent)

  -- Volatility: 8 Byte Signed Fixed Width Integer
  index = dissect.volatility(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_price(buffer, index, packet, parent)

  -- Delta: 8 Byte Signed Fixed Width Integer
  index = dissect.delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Settlement Price Message
dissect.option_settlement_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_settlement_price_message then
    local range = buffer(offset, 53)
    local display = display.option_settlement_price_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.option_settlement_price_message, range, display)
  end

  return dissect.option_settlement_price_message_fields(buffer, offset, packet, parent)
end

-- Display Open Interest Date
display.open_interest_date = function(value)
  return "Open Interest Date: "..value
end

-- Dissect: Open Interest Date
dissect.open_interest_date = function(buffer, offset, packet, parent)
  local length = 10
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.open_interest_date(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.open_interest_date, range, value, display)

  return offset + length
end

-- Display Open Interest
display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
dissect.open_interest = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.open_interest(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.open_interest, range, value, display)

  return offset + length
end

-- Display: Option Open Interest Message
display.option_open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Option Open Interest Message
dissect.option_open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Open Interest Date: 10 Byte Ascii String
  index = dissect.open_interest_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Option Open Interest Message
dissect.option_open_interest_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.option_open_interest_message then
    local range = buffer(offset, 26)
    local display = display.option_open_interest_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.option_open_interest_message, range, display)
  end

  return dissect.option_open_interest_message_fields(buffer, offset, packet, parent)
end

-- Display Side
display.side = function(value)
  return "Side: "..value
end

-- Dissect: Side
dissect.side = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.side, range, value, display)

  return offset + length
end

-- Display Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect: Quantity
dissect.quantity = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.quantity, range, value, display)

  return offset + length
end

-- Display Underlying Market ID
display.underlying_market_id = function(value)
  return "Underlying Market ID: "..value
end

-- Dissect: Underlying Market ID
dissect.underlying_market_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.underlying_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.underlying_market_id, range, value, display)

  return offset + length
end

-- Display Market Type ID
display.market_type_id = function(value)
  return "Market Type ID: "..value
end

-- Dissect: Market Type ID
dissect.market_type_id = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.market_type_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.market_type_id, range, value, display)

  return offset + length
end

-- Display RFQ System ID
display.rfq_system_id = function(value)
  return "RFQ System ID: "..value
end

-- Dissect: RFQ System ID
dissect.rfq_system_id = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.rfq_system_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.rfq_system_id, range, value, display)

  return offset + length
end

-- Display Message Timestamp
display.message_timestamp = function(value)
  return "Message Timestamp: "..value
end

-- Dissect: Message Timestamp
dissect.message_timestamp = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.message_timestamp(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.message_timestamp, range, value, display)

  return offset + length
end

-- Display: RFQ Message
display.rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: RFQ Message
dissect.rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Message Timestamp: 8 Byte Signed Fixed Width Integer
  index = dissect.message_timestamp(buffer, index, packet, parent)

  -- RFQ System ID: 8 Byte Signed Fixed Width Integer
  index = dissect.rfq_system_id(buffer, index, packet, parent)

  -- Market Type ID: 2 Byte Signed Fixed Width Integer
  index = dissect.market_type_id(buffer, index, packet, parent)

  -- Underlying Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.underlying_market_id(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect: RFQ Message
dissect.rfq_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.rfq_message then
    local range = buffer(offset, 31)
    local display = display.rfq_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.rfq_message, range, display)
  end

  return dissect.rfq_message_fields(buffer, offset, packet, parent)
end

-- Display Unit Of Measure
display.unit_of_measure = function(value)
  return "Unit Of Measure: "..value
end

-- Dissect: Unit Of Measure
dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local length = 30
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.unit_of_measure, range, value, display)

  return offset + length
end

-- Display Guaranteed Cross Supported
display.guaranteed_cross_supported = function(value)
  return "Guaranteed Cross Supported: "..value
end

-- Dissect: Guaranteed Cross Supported
dissect.guaranteed_cross_supported = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.guaranteed_cross_supported(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.guaranteed_cross_supported, range, value, display)

  return offset + length
end

-- Display Cross Order Supported
display.cross_order_supported = function(value)
  return "Cross Order Supported: "..value
end

-- Dissect: Cross Order Supported
dissect.cross_order_supported = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cross_order_supported(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.cross_order_supported, range, value, display)

  return offset + length
end

-- Display GT Allowed
display.gt_allowed = function(value)
  return "GT Allowed: "..value
end

-- Dissect: GT Allowed
dissect.gt_allowed = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.gt_allowed(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.gt_allowed, range, value, display)

  return offset + length
end

-- Display Is Block Only
display.is_block_only = function(value)
  return "Is Block Only: "..value
end

-- Dissect: Is Block Only
dissect.is_block_only = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_block_only(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_block_only, range, value, display)

  return offset + length
end

-- Display Settlement Type
display.settlement_type = function(value)
  return "Settlement Type: "..value
end

-- Dissect: Settlement Type
dissect.settlement_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settlement_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.settlement_type, range, value, display)

  return offset + length
end

-- Display Flex Allowed
display.flex_allowed = function(value)
  return "Flex Allowed: "..value
end

-- Dissect: Flex Allowed
dissect.flex_allowed = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.flex_allowed(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.flex_allowed, range, value, display)

  return offset + length
end

-- Display Tick Value
display.tick_value = function(value)
  return "Tick Value: "..value
end

-- Dissect: Tick Value
dissect.tick_value = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.tick_value(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.tick_value, range, value, display)

  return offset + length
end

-- Display Unit Qty Denominator
display.unit_qty_denominator = function(value)
  return "Unit Qty Denominator: "..value
end

-- Dissect: Unit Qty Denominator
dissect.unit_qty_denominator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.unit_qty_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.unit_qty_denominator, range, value, display)

  return offset + length
end

-- Display Settle Price Denominator
display.settle_price_denominator = function(value)
  return "Settle Price Denominator: "..value
end

-- Dissect: Settle Price Denominator
dissect.settle_price_denominator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.settle_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.settle_price_denominator, range, value, display)

  return offset + length
end

-- Display Hedge Market ID
display.hedge_market_id = function(value)
  return "Hedge Market ID: "..value
end

-- Dissect: Hedge Market ID
dissect.hedge_market_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.hedge_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedge_market_id, range, value, display)

  return offset + length
end

-- Display Options Expiration Type
display.options_expiration_type = function(value)
  return "Options Expiration Type: "..value
end

-- Dissect: Options Expiration Type
dissect.options_expiration_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.options_expiration_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.options_expiration_type, range, value, display)

  return offset + length
end

-- Display Options Style
display.options_style = function(value)
  return "Options Style: "..value
end

-- Dissect: Options Style
dissect.options_style = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.options_style(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.options_style, range, value, display)

  return offset + length
end

-- Display Options Expiration Day
display.options_expiration_day = function(value)
  return "Options Expiration Day: "..value
end

-- Dissect: Options Expiration Day
dissect.options_expiration_day = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.options_expiration_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.options_expiration_day, range, value, display)

  return offset + length
end

-- Display Options Expiration Month
display.options_expiration_month = function(value)
  return "Options Expiration Month: "..value
end

-- Dissect: Options Expiration Month
dissect.options_expiration_month = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.options_expiration_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.options_expiration_month, range, value, display)

  return offset + length
end

-- Display Options Expiration Year
display.options_expiration_year = function(value)
  return "Options Expiration Year: "..value
end

-- Dissect: Options Expiration Year
dissect.options_expiration_year = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.options_expiration_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.options_expiration_year, range, value, display)

  return offset + length
end

-- Display Increment Premium Price
display.increment_premium_price = function(value)
  return "Increment Premium Price: "..value
end

-- Dissect: Increment Premium Price
dissect.increment_premium_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.increment_premium_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.increment_premium_price, range, value, display)

  return offset + length
end

-- Display Max Options Price
display.max_options_price = function(value)
  return "Max Options Price: "..value
end

-- Dissect: Max Options Price
dissect.max_options_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.max_options_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.max_options_price, range, value, display)

  return offset + length
end

-- Display Min Options Price
display.min_options_price = function(value)
  return "Min Options Price: "..value
end

-- Dissect: Min Options Price
dissect.min_options_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.min_options_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.min_options_price, range, value, display)

  return offset + length
end

-- Display Num Decimals Strike Price
display.num_decimals_strike_price = function(value)
  return "Num Decimals Strike Price: "..value
end

-- Dissect: Num Decimals Strike Price
dissect.num_decimals_strike_price = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.num_decimals_strike_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.num_decimals_strike_price, range, value, display)

  return offset + length
end

-- Display Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect: Currency
dissect.currency = function(buffer, offset, packet, parent)
  local length = 20
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.currency, range, value, display)

  return offset + length
end

-- Display Min Qty
display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
dissect.min_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.min_qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.min_qty, range, value, display)

  return offset + length
end

-- Display Deal Price Denominator
display.deal_price_denominator = function(value)
  return "Deal Price Denominator: "..value
end

-- Dissect: Deal Price Denominator
dissect.deal_price_denominator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.deal_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.deal_price_denominator, range, value, display)

  return offset + length
end

-- Display Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.strike_price, range, value, display)

  return offset + length
end

-- Display Option Type
display.option_type = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
dissect.option_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.option_type, range, value, display)

  return offset + length
end

-- Display Market Desc
display.market_desc = function(value)
  return "Market Desc: "..value
end

-- Dissect: Market Desc
dissect.market_desc = function(buffer, offset, packet, parent)
  local length = 120
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_desc(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.market_desc, range, value, display)

  return offset + length
end

-- Display Lot Size
display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
dissect.lot_size = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.lot_size(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.lot_size, range, value, display)

  return offset + length
end

-- Display Increment Qty
display.increment_qty = function(value)
  return "Increment Qty: "..value
end

-- Dissect: Increment Qty
dissect.increment_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.increment_qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.increment_qty, range, value, display)

  return offset + length
end

-- Display Order Price Denominator
display.order_price_denominator = function(value)
  return "Order Price Denominator: "..value
end

-- Dissect: Order Price Denominator
dissect.order_price_denominator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.order_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.order_price_denominator, range, value, display)

  return offset + length
end

-- Display Trading Status
display.trading_status = function(value)
  return "Trading Status: "..value
end

-- Dissect: Trading Status
dissect.trading_status = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.trading_status, range, value, display)

  return offset + length
end

-- Display Futures Contract Symbol
display.futures_contract_symbol = function(value)
  return "Futures Contract Symbol: "..value
end

-- Dissect: Futures Contract Symbol
dissect.futures_contract_symbol = function(buffer, offset, packet, parent)
  local length = 70
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.futures_contract_symbol(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.futures_contract_symbol, range, value, display)

  return offset + length
end

-- Display: New Options Market Definition Message
display.new_options_market_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Options Market Definition Message
dissect.new_options_market_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Underlying Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.underlying_market_id(buffer, index, packet, parent)

  -- Futures Contract Symbol: 70 Byte Ascii String
  index = dissect.futures_contract_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Order Price Denominator: 1 Byte Ascii String
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Lot Size: 4 Byte Signed Fixed Width Integer
  index = dissect.lot_size(buffer, index, packet, parent)

  -- Market Desc: 120 Byte Ascii String
  index = dissect.market_desc(buffer, index, packet, parent)

  -- Option Type: 1 Byte Ascii String
  index = dissect.option_type(buffer, index, packet, parent)

  -- Strike Price: 8 Byte Signed Fixed Width Integer
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Deal Price Denominator: 1 Byte Ascii String
  index = dissect.deal_price_denominator(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Currency: 20 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Num Decimals Strike Price: 1 Byte Ascii String
  index = dissect.num_decimals_strike_price(buffer, index, packet, parent)

  -- Min Options Price: 8 Byte Signed Fixed Width Integer
  index = dissect.min_options_price(buffer, index, packet, parent)

  -- Max Options Price: 8 Byte Signed Fixed Width Integer
  index = dissect.max_options_price(buffer, index, packet, parent)

  -- Increment Premium Price: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_premium_price(buffer, index, packet, parent)

  -- Options Expiration Year: 2 Byte Signed Fixed Width Integer
  index = dissect.options_expiration_year(buffer, index, packet, parent)

  -- Options Expiration Month: 2 Byte Signed Fixed Width Integer
  index = dissect.options_expiration_month(buffer, index, packet, parent)

  -- Options Expiration Day: 2 Byte Signed Fixed Width Integer
  index = dissect.options_expiration_day(buffer, index, packet, parent)

  -- Options Style: 1 Byte Ascii String
  index = dissect.options_style(buffer, index, packet, parent)

  -- Options Expiration Type: 1 Byte Ascii String
  index = dissect.options_expiration_type(buffer, index, packet, parent)

  -- Hedge Market ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.hedge_market_id(buffer, index, packet, parent)

  -- Settle Price Denominator: 1 Byte Ascii String
  index = dissect.settle_price_denominator(buffer, index, packet, parent)

  -- Unit Qty Denominator: 1 Byte Ascii String
  index = dissect.unit_qty_denominator(buffer, index, packet, parent)

  -- Tick Value: 8 Byte Signed Fixed Width Integer
  index = dissect.tick_value(buffer, index, packet, parent)

  -- Flex Allowed: 1 Byte Ascii String
  index = dissect.flex_allowed(buffer, index, packet, parent)

  -- Settlement Type: 1 Byte Ascii String
  index = dissect.settlement_type(buffer, index, packet, parent)

  -- Is Block Only: 1 Byte Ascii String
  index = dissect.is_block_only(buffer, index, packet, parent)

  -- GT Allowed: 1 Byte Ascii String
  index = dissect.gt_allowed(buffer, index, packet, parent)

  -- Cross Order Supported: 1 Byte Ascii String
  index = dissect.cross_order_supported(buffer, index, packet, parent)

  -- Guaranteed Cross Supported: 1 Byte Ascii String
  index = dissect.guaranteed_cross_supported(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  return index
end

-- Dissect: New Options Market Definition Message
dissect.new_options_market_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_options_market_definition_message then
    local range = buffer(offset, 321)
    local display = display.new_options_market_definition_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.new_options_market_definition_message, range, display)
  end

  return dissect.new_options_market_definition_message_fields(buffer, offset, packet, parent)
end

-- Display Strategy Symbol
display.strategy_symbol = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect: Strategy Symbol
dissect.strategy_symbol = function(buffer, offset, packet, parent)
  local length = 18
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strategy_symbol(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.strategy_symbol, range, value, display)

  return offset + length
end

-- Display Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect: Security Sub Type
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.security_sub_type, range, value, display)

  return offset + length
end

-- Display Hedge Delta
display.hedge_delta = function(value)
  return "Hedge Delta: "..value
end

-- Dissect: Hedge Delta
dissect.hedge_delta = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.hedge_delta(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedge_delta, range, value, display)

  return offset + length
end

-- Display Hedge Price Denominator
display.hedge_price_denominator = function(value)
  return "Hedge Price Denominator: "..value
end

-- Dissect: Hedge Price Denominator
dissect.hedge_price_denominator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.hedge_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedge_price_denominator, range, value, display)

  return offset + length
end

-- Display Hedge Price
display.hedge_price = function(value)
  return "Hedge Price: "..value
end

-- Dissect: Hedge Price
dissect.hedge_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.hedge_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedge_price, range, value, display)

  return offset + length
end

-- Display Hedge Side
display.hedge_side = function(value)
  return "Hedge Side: "..value
end

-- Dissect: Hedge Side
dissect.hedge_side = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.hedge_side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedge_side, range, value, display)

  return offset + length
end

-- Display Hedge Security Type
display.hedge_security_type = function(value)
  return "Hedge Security Type: "..value
end

-- Dissect: Hedge Security Type
dissect.hedge_security_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.hedge_security_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedge_security_type, range, value, display)

  return offset + length
end

-- Display Hedge Market Id
display.hedge_market_id = function(value)
  return "Hedge Market Id: "..value
end

-- Dissect: Hedge Market Id
dissect.hedge_market_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.hedge_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedge_market_id, range, value, display)

  return offset + length
end

-- Display HedgeBodyLength
display.hedgebodylength = function(value)
  return "HedgeBodyLength: "..value
end

-- Dissect: HedgeBodyLength
dissect.hedgebodylength = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.hedgebodylength(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hedgebodylength, range, value, display)

  return offset + length
end

-- Display: Hedge Definition
display.hedge_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Hedge Definition
dissect.hedge_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- HedgeBodyLength: 1 Byte Unsigned Fixed Width Integer
  index = dissect.hedgebodylength(buffer, index, packet, parent)

  -- Hedge Market Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.hedge_market_id(buffer, index, packet, parent)

  -- Hedge Security Type: 1 Byte Ascii String
  index = dissect.hedge_security_type(buffer, index, packet, parent)

  -- Hedge Side: 1 Byte Ascii String
  index = dissect.hedge_side(buffer, index, packet, parent)

  -- Hedge Price: 8 Byte Unsigned Fixed Width Integer
  index = dissect.hedge_price(buffer, index, packet, parent)

  -- Hedge Price Denominator: 1 Byte Ascii String
  index = dissect.hedge_price_denominator(buffer, index, packet, parent)

  -- Hedge Delta: 2 Byte Unsigned Fixed Width Integer
  index = dissect.hedge_delta(buffer, index, packet, parent)

  return index
end

-- Dissect: Hedge Definition
dissect.hedge_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.hedge_definition then
    local range = buffer(offset, 18)
    local display = display.hedge_definition(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.hedge_definition, range, display)
  end

  return dissect.hedge_definition_fields(buffer, offset, packet, parent)
end

-- Display Number Of Hedge Definitions
display.number_of_hedge_definitions = function(value)
  return "Number Of Hedge Definitions: "..value
end

-- Dissect: Number Of Hedge Definitions
dissect.number_of_hedge_definitions = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.number_of_hedge_definitions(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.number_of_hedge_definitions, range, value, display)

  return offset + length, value
end

-- Display Leg Side
display.leg_side = function(value)
  return "Leg Side: "..value
end

-- Dissect: Leg Side
dissect.leg_side = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.leg_side, range, value, display)

  return offset + length
end

-- Display Leg Ratio
display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect: Leg Ratio
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.leg_ratio, range, value, display)

  return offset + length
end

-- Display Leg Underlying Market Id
display.leg_underlying_market_id = function(value)
  return "Leg Underlying Market Id: "..value
end

-- Dissect: Leg Underlying Market Id
dissect.leg_underlying_market_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_underlying_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.leg_underlying_market_id, range, value, display)

  return offset + length
end

-- Display Leg Market Id
display.leg_market_id = function(value)
  return "Leg Market Id: "..value
end

-- Dissect: Leg Market Id
dissect.leg_market_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.leg_market_id, range, value, display)

  return offset + length
end

-- Display Leg Body Length
display.leg_body_length = function(value)
  return "Leg Body Length: "..value
end

-- Dissect: Leg Body Length
dissect.leg_body_length = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.leg_body_length(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.leg_body_length, range, value, display)

  return offset + length
end

-- Display: Strategy Leg Definition
display.strategy_leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strategy Leg Definition
dissect.strategy_leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Body Length: 1 Byte Unsigned Fixed Width Integer
  index = dissect.leg_body_length(buffer, index, packet, parent)

  -- Leg Market Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leg_market_id(buffer, index, packet, parent)

  -- Leg Underlying Market Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leg_underlying_market_id(buffer, index, packet, parent)

  -- Leg Ratio: 2 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String
  index = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Strategy Leg Definition
dissect.strategy_leg_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strategy_leg_definition then
    local range = buffer(offset, 12)
    local display = display.strategy_leg_definition(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.strategy_leg_definition, range, display)
  end

  return dissect.strategy_leg_definition_fields(buffer, offset, packet, parent)
end

-- Display Number Of Strategy Leg Definitions
display.number_of_strategy_leg_definitions = function(value)
  return "Number Of Strategy Leg Definitions: "..value
end

-- Dissect: Number Of Strategy Leg Definitions
dissect.number_of_strategy_leg_definitions = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.number_of_strategy_leg_definitions(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.number_of_strategy_leg_definitions, range, value, display)

  return offset + length, value
end

-- Display Increment Price
display.increment_price = function(value)
  return "Increment Price: "..value
end

-- Dissect: Increment Price
dissect.increment_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.increment_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.increment_price, range, value, display)

  return offset + length
end

-- Display Contract Symbol
display.contract_symbol = function(value)
  return "Contract Symbol: "..value
end

-- Dissect: Contract Symbol
dissect.contract_symbol = function(buffer, offset, packet, parent)
  local length = 35
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.contract_symbol(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.contract_symbol, range, value, display)

  return offset + length
end

-- Calculate runtime size: New Options Strategy Definition Message
size_of.new_options_strategy_definition_message = function(buffer, offset)
  local index = 0

  index = index + 58

  -- Calculate field size from count
  local strategy_leg_definition_count = buffer(offset + index - 1, 1):int()
  index = index + strategy_leg_definition_count * 12

  index = index + 1

  -- Calculate field size from count
  local hedge_definition_count = buffer(offset + index - 1, 1):int()
  index = index + hedge_definition_count * 18

  return index
end

-- Display: New Options Strategy Definition Message
display.new_options_strategy_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Options Strategy Definition Message
dissect.new_options_strategy_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Underlying Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.underlying_market_id(buffer, index, packet, parent)

  -- Contract Symbol: 35 Byte Ascii String
  index = dissect.contract_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Order Price Denominator: 1 Byte Ascii String
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Price: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_price(buffer, index, packet, parent)

  -- Increment Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Number Of Strategy Leg Definitions: 1 Byte Signed Fixed Width Integer
  index = dissect.number_of_strategy_leg_definitions(buffer, index, packet, parent)

  -- Strategy Leg Definition: Struct of 5 fields
  local strategy_leg_definition_count = buffer(index - 1, 1):int()
  for i = 1, strategy_leg_definition_count do
    index = dissect.strategy_leg_definition(buffer, index, packet, parent)
  end


  -- Number Of Hedge Definitions: 1 Byte Signed Fixed Width Integer
  index = dissect.number_of_hedge_definitions(buffer, index, packet, parent)

  -- Hedge Definition: Struct of 7 fields
  local hedge_definition_count = buffer(index - 1, 1):int()
  for i = 1, hedge_definition_count do
    index = dissect.hedge_definition(buffer, index, packet, parent)
  end


  -- Security Sub Type: 2 Byte Signed Fixed Width Integer
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Is Block Only: 1 Byte Ascii String
  index = dissect.is_block_only(buffer, index, packet, parent)

  -- Strategy Symbol: 18 Byte Ascii String
  index = dissect.strategy_symbol(buffer, index, packet, parent)

  -- GT Allowed: 1 Byte Ascii String
  index = dissect.gt_allowed(buffer, index, packet, parent)

  return index
end

-- Dissect: New Options Strategy Definition Message
dissect.new_options_strategy_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_options_strategy_definition_message then
    local length = size_of.new_options_strategy_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_options_strategy_definition_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.new_options_strategy_definition_message, range, display)
  end

  return dissect.new_options_strategy_definition_message_fields(buffer, offset, packet, parent)
end

-- Display Price Level Position
display.price_level_position = function(value)
  return "Price Level Position: "..value
end

-- Dissect: Price Level Position
dissect.price_level_position = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.price_level_position(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.price_level_position, range, value, display)

  return offset + length
end

-- Display: Delete Price Level Message
display.delete_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Price Level Message
dissect.delete_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: 1 Byte Signed Fixed Width Integer
  index = dissect.price_level_position(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Price Level Message
dissect.delete_price_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_price_level_message then
    local range = buffer(offset, 6)
    local display = display.delete_price_level_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.delete_price_level_message, range, display)
  end

  return dissect.delete_price_level_message_fields(buffer, offset, packet, parent)
end

-- Display Implied Order Count
display.implied_order_count = function(value)
  return "Implied Order Count: "..value
end

-- Dissect: Implied Order Count
dissect.implied_order_count = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.implied_order_count(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.implied_order_count, range, value, display)

  return offset + length
end

-- Display Implied Quantity
display.implied_quantity = function(value)
  return "Implied Quantity: "..value
end

-- Dissect: Implied Quantity
dissect.implied_quantity = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.implied_quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.implied_quantity, range, value, display)

  return offset + length
end

-- Display Order Count
display.order_count = function(value)
  return "Order Count: "..value
end

-- Dissect: Order Count
dissect.order_count = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.order_count(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.order_count, range, value, display)

  return offset + length
end

-- Display Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.price, range, value, display)

  return offset + length
end

-- Display: Change Price Level Message
display.change_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Change Price Level Message
dissect.change_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: 1 Byte Signed Fixed Width Integer
  index = dissect.price_level_position(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Order Count: 2 Byte Signed Fixed Width Integer
  index = dissect.order_count(buffer, index, packet, parent)

  -- Implied Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.implied_quantity(buffer, index, packet, parent)

  -- Implied Order Count: 2 Byte Signed Fixed Width Integer
  index = dissect.implied_order_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Change Price Level Message
dissect.change_price_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.change_price_level_message then
    local range = buffer(offset, 26)
    local display = display.change_price_level_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.change_price_level_message, range, display)
  end

  return dissect.change_price_level_message_fields(buffer, offset, packet, parent)
end

-- Display: Add Price Level Message
display.add_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add Price Level Message
dissect.add_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: 1 Byte Signed Fixed Width Integer
  index = dissect.price_level_position(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Order Count: 2 Byte Signed Fixed Width Integer
  index = dissect.order_count(buffer, index, packet, parent)

  -- Implied Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.implied_quantity(buffer, index, packet, parent)

  -- Implied Order Count: 2 Byte Signed Fixed Width Integer
  index = dissect.implied_order_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Add Price Level Message
dissect.add_price_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_price_level_message then
    local range = buffer(offset, 26)
    local display = display.add_price_level_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.add_price_level_message, range, display)
  end

  return dissect.add_price_level_message_fields(buffer, offset, packet, parent)
end

-- Display: Market Snapshot Price Level Message
display.market_snapshot_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Snapshot Price Level Message
dissect.market_snapshot_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: 1 Byte Signed Fixed Width Integer
  index = dissect.price_level_position(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Order Count: 2 Byte Signed Fixed Width Integer
  index = dissect.order_count(buffer, index, packet, parent)

  -- Implied Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.implied_quantity(buffer, index, packet, parent)

  -- Implied Order Count: 2 Byte Signed Fixed Width Integer
  index = dissect.implied_order_count(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Price Level Message
dissect.market_snapshot_price_level_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_snapshot_price_level_message then
    local range = buffer(offset, 26)
    local display = display.market_snapshot_price_level_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.market_snapshot_price_level_message, range, display)
  end

  return dissect.market_snapshot_price_level_message_fields(buffer, offset, packet, parent)
end

-- Display EUR  Price
display.eur__price = function(value)
  return "EUR  Price: "..value
end

-- Dissect: EUR  Price
dissect.eur__price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.eur__price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.eur__price, range, value, display)

  return offset + length
end

-- Display GBP  Price
display.gbp__price = function(value)
  return "GBP  Price: "..value
end

-- Dissect: GBP  Price
dissect.gbp__price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.gbp__price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.gbp__price, range, value, display)

  return offset + length
end

-- Display Is Final
display.is_final = function(value)
  return "Is Final: "..value
end

-- Dissect: Is Final
dissect.is_final = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_final(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_final, range, value, display)

  return offset + length
end

-- Display Is Balanced
display.is_balanced = function(value)
  return "Is Balanced: "..value
end

-- Dissect: Is Balanced
dissect.is_balanced = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_balanced(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_balanced, range, value, display)

  return offset + length
end

-- Display USD  Price
display.usd__price = function(value)
  return "USD  Price: "..value
end

-- Dissect: USD  Price
dissect.usd__price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.usd__price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.usd__price, range, value, display)

  return offset + length
end

-- Display Agg  Offer  Qty
display.agg__offer__qty = function(value)
  return "Agg  Offer  Qty: "..value
end

-- Dissect: Agg  Offer  Qty
dissect.agg__offer__qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.agg__offer__qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.agg__offer__qty, range, value, display)

  return offset + length
end

-- Display Agg  Bid  Qty
display.agg__bid__qty = function(value)
  return "Agg  Bid  Qty: "..value
end

-- Dissect: Agg  Bid  Qty
dissect.agg__bid__qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.agg__bid__qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.agg__bid__qty, range, value, display)

  return offset + length
end

-- Display Round
display.round = function(value)
  return "Round: "..value
end

-- Dissect: Round
dissect.round = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.round(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.round, range, value, display)

  return offset + length
end

-- Display Description
display.description = function(value)
  return "Description: "..value
end

-- Dissect: Description
dissect.description = function(buffer, offset, packet, parent)
  local length = 20
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.description(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.description, range, value, display)

  return offset + length
end

-- Display Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect: Time
dissect.time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.time, range, value, display)

  return offset + length
end

-- Display Auction  Date
display.auction__date = function(value)
  return "Auction  Date: "..value
end

-- Dissect: Auction  Date
dissect.auction__date = function(buffer, offset, packet, parent)
  local length = 10
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.auction__date(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.auction__date, range, value, display)

  return offset + length
end

-- Display: Fixing Lockdown Message
display.fixing_lockdown_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fixing Lockdown Message
dissect.fixing_lockdown_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Auction  Date: 10 Byte Ascii String
  index = dissect.auction__date(buffer, index, packet, parent)

  -- Time: 8 Byte Signed Fixed Width Integer
  index = dissect.time(buffer, index, packet, parent)

  -- Description: 20 Byte Ascii String
  index = dissect.description(buffer, index, packet, parent)

  -- Round: 2 Byte Signed Fixed Width Integer
  index = dissect.round(buffer, index, packet, parent)

  -- Agg  Bid  Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.agg__bid__qty(buffer, index, packet, parent)

  -- Agg  Offer  Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.agg__offer__qty(buffer, index, packet, parent)

  -- USD  Price: 8 Byte Signed Fixed Width Integer
  index = dissect.usd__price(buffer, index, packet, parent)

  -- Is Balanced: 1 Byte Ascii String
  index = dissect.is_balanced(buffer, index, packet, parent)

  -- Is Final: 1 Byte Ascii String
  index = dissect.is_final(buffer, index, packet, parent)

  -- GBP  Price: 8 Byte Signed Fixed Width Integer
  index = dissect.gbp__price(buffer, index, packet, parent)

  -- EUR  Price: 8 Byte Signed Fixed Width Integer
  index = dissect.eur__price(buffer, index, packet, parent)

  return index
end

-- Dissect: Fixing Lockdown Message
dissect.fixing_lockdown_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fixing_lockdown_message then
    local range = buffer(offset, 78)
    local display = display.fixing_lockdown_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.fixing_lockdown_message, range, display)
  end

  return dissect.fixing_lockdown_message_fields(buffer, offset, packet, parent)
end

-- Display Threshold  Imbalance  Qty
display.threshold__imbalance__qty = function(value)
  return "Threshold  Imbalance  Qty: "..value
end

-- Dissect: Threshold  Imbalance  Qty
dissect.threshold__imbalance__qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.threshold__imbalance__qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.threshold__imbalance__qty, range, value, display)

  return offset + length
end

-- Display Auction End Time
display.auction_end_time = function(value)
  return "Auction End Time: "..value
end

-- Dissect: Auction End Time
dissect.auction_end_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.auction_end_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.auction_end_time, range, value, display)

  return offset + length
end

-- Display Status
display.status = function(value)
  return "Status: "..value
end

-- Dissect: Status
dissect.status = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.status(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.status, range, value, display)

  return offset + length
end

-- Display: Fixing Transition Message
display.fixing_transition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Fixing Transition Message
dissect.fixing_transition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index = dissect.status(buffer, index, packet, parent)

  -- Auction End Time: 8 Byte Signed Fixed Width Integer
  index = dissect.auction_end_time(buffer, index, packet, parent)

  -- Threshold  Imbalance  Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.threshold__imbalance__qty(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Fixing Transition Message
dissect.fixing_transition_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.fixing_transition_message then
    local range = buffer(offset, 25)
    local display = display.fixing_transition_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.fixing_transition_message, range, display)
  end

  return dissect.fixing_transition_message_fields(buffer, offset, packet, parent)
end

-- Display Start Or End
display.start_or_end = function(value)
  return "Start Or End: "..value
end

-- Dissect: Start Or End
dissect.start_or_end = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.start_or_end(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.start_or_end, range, value, display)

  return offset + length
end

-- Display: Message Bundle Marker
display.message_bundle_marker = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Bundle Marker
dissect.message_bundle_marker_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Or End: 1 Byte Ascii String
  index = dissect.start_or_end(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Bundle Marker
dissect.message_bundle_marker = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_bundle_marker then
    local range = buffer(offset, 1)
    local display = display.message_bundle_marker(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.message_bundle_marker, range, display)
  end

  return dissect.message_bundle_marker_fields(buffer, offset, packet, parent)
end

-- Display Order ID
display.order_id = function(value)
  return "Order ID: "..value
end

-- Dissect: Order ID
dissect.order_id = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.order_id, range, value, display)

  return offset + length
end

-- Display: Delete Order Message
display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Delete Order Message
dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Order ID: 8 Byte Signed Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Delete Order Message
dissect.delete_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.delete_order_message then
    local range = buffer(offset, 12)
    local display = display.delete_order_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.delete_order_message, range, display)
  end

  return dissect.delete_order_message_fields(buffer, offset, packet, parent)
end

-- Display Sequence Within Millis
display.sequence_within_millis = function(value)
  return "Sequence Within Millis: "..value
end

-- Dissect: Sequence Within Millis
dissect.sequence_within_millis = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.sequence_within_millis(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.sequence_within_millis, range, value, display)

  return offset + length
end

-- Display Extra Flags
display.extra_flags = function(value)
  return "Extra Flags: "..value
end

-- Dissect: Extra Flags
dissect.extra_flags = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.extra_flags(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.extra_flags, range, value, display)

  return offset + length
end

-- Display Order Entry Date Time
display.order_entry_date_time = function(value)
  return "Order Entry Date Time: "..value
end

-- Dissect: Order Entry Date Time
dissect.order_entry_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.order_entry_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.order_entry_date_time, range, value, display)

  return offset + length
end

-- Display Is RFQ
display.is_rfq = function(value)
  return "Is RFQ: "..value
end

-- Dissect: Is RFQ
dissect.is_rfq = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_rfq(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_rfq, range, value, display)

  return offset + length
end

-- Display Is Implied
display.is_implied = function(value)
  return "Is Implied: "..value
end

-- Dissect: Is Implied
dissect.is_implied = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_implied(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_implied, range, value, display)

  return offset + length
end

-- Display Order Sequence ID
display.order_sequence_id = function(value)
  return "Order Sequence ID: "..value
end

-- Dissect: Order Sequence ID
dissect.order_sequence_id = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.order_sequence_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.order_sequence_id, range, value, display)

  return offset + length
end

-- Display: Add or Modify Order Message
display.add_or_modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Add or Modify Order Message
dissect.add_or_modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Order ID: 8 Byte Signed Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Order Sequence ID: 2 Byte Signed Fixed Width Integer
  index = dissect.order_sequence_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Is Implied: 1 Byte Ascii String
  index = dissect.is_implied(buffer, index, packet, parent)

  -- Is RFQ: 1 Byte Ascii String
  index = dissect.is_rfq(buffer, index, packet, parent)

  -- Order Entry Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.order_entry_date_time(buffer, index, packet, parent)

  -- Extra Flags: 1 Byte Signed Fixed Width Integer
  index = dissect.extra_flags(buffer, index, packet, parent)

  -- Sequence Within Millis: 4 Byte Signed Fixed Width Integer
  index = dissect.sequence_within_millis(buffer, index, packet, parent)

  return index
end

-- Dissect: Add or Modify Order Message
dissect.add_or_modify_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.add_or_modify_order_message then
    local range = buffer(offset, 42)
    local display = display.add_or_modify_order_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.add_or_modify_order_message, range, display)
  end

  return dissect.add_or_modify_order_message_fields(buffer, offset, packet, parent)
end

-- Display: Market Snapshot Order Message
display.market_snapshot_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Snapshot Order Message
dissect.market_snapshot_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Order ID: 8 Byte Signed Fixed Width Integer
  index = dissect.order_id(buffer, index, packet, parent)

  -- Order Sequence ID: 2 Byte Signed Fixed Width Integer
  index = dissect.order_sequence_id(buffer, index, packet, parent)

  -- Side: 1 Byte Ascii String
  index = dissect.side(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Is Implied: 1 Byte Ascii String
  index = dissect.is_implied(buffer, index, packet, parent)

  -- Is RFQ: 1 Byte Ascii String
  index = dissect.is_rfq(buffer, index, packet, parent)

  -- Order Entry Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.order_entry_date_time(buffer, index, packet, parent)

  -- Sequence Within Millis: 4 Byte Signed Fixed Width Integer
  index = dissect.sequence_within_millis(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Order Message
dissect.market_snapshot_order_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_snapshot_order_message then
    local range = buffer(offset, 41)
    local display = display.market_snapshot_order_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.market_snapshot_order_message, range, display)
  end

  return dissect.market_snapshot_order_message_fields(buffer, offset, packet, parent)
end

-- Display Special Field Length
display.special_field_length = function(value)
  return "Special Field Length: "..value
end

-- Dissect: Special Field Length
dissect.special_field_length = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.special_field_length(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.special_field_length, range, value, display)

  return offset + length
end

-- Display Special Field Id
display.special_field_id = function(value)
  return "Special Field Id: "..value
end

-- Dissect: Special Field Id
dissect.special_field_id = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.special_field_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.special_field_id, range, value, display)

  return offset + length
end

-- Display: Special Field
display.special_field = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Special Field
dissect.special_field_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Special Field Id: 1 Byte Unsigned Fixed Width Integer
  index = dissect.special_field_id(buffer, index, packet, parent)

  -- Special Field Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.special_field_length(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Field
dissect.special_field = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.special_field then
    local range = buffer(offset, 3)
    local display = display.special_field(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.special_field, range, display)
  end

  return dissect.special_field_fields(buffer, offset, packet, parent)
end

-- Display Number Of Special Fields
display.number_of_special_fields = function(value)
  return "Number Of Special Fields: "..value
end

-- Dissect: Number Of Special Fields
dissect.number_of_special_fields = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.number_of_special_fields(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.number_of_special_fields, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: Special Field Message
size_of.special_field_message = function(buffer, offset)
  local index = 0

  index = index + 1

  -- Calculate field size from count
  local special_field_count = buffer(offset + index - 1, 1):int()
  index = index + special_field_count * 3

  return index
end

-- Display: Special Field Message
display.special_field_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Special Field Message
dissect.special_field_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Special Fields: 1 Byte Signed Fixed Width Integer
  index = dissect.number_of_special_fields(buffer, index, packet, parent)

  -- Special Field: Struct of 2 fields
  local special_field_count = buffer(index - 1, 1):int()
  for i = 1, special_field_count do
    index = dissect.special_field(buffer, index, packet, parent)
  end


  return index
end

-- Dissect: Special Field Message
dissect.special_field_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.special_field_message then
    local length = size_of.special_field_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.special_field_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.special_field_message, range, display)
  end

  return dissect.special_field_message_fields(buffer, offset, packet, parent)
end

-- Display Num Decimals Options Price
display.num_decimals_options_price = function(value)
  return "Num Decimals Options Price: "..value
end

-- Dissect: Num Decimals Options Price
dissect.num_decimals_options_price = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.num_decimals_options_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.num_decimals_options_price, range, value, display)

  return offset + length
end

-- Display ISIN
display.isin = function(value)
  return "ISIN: "..value
end

-- Dissect: ISIN
dissect.isin = function(buffer, offset, packet, parent)
  local length = 12
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.isin(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.isin, range, value, display)

  return offset + length
end

-- Display Off Exchange Increment Option Price
display.off_exchange_increment_option_price = function(value)
  return "Off Exchange Increment Option Price: "..value
end

-- Dissect: Off Exchange Increment Option Price
dissect.off_exchange_increment_option_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.off_exchange_increment_option_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.off_exchange_increment_option_price, range, value, display)

  return offset + length
end

-- Display Off Exchange Increment Price
display.off_exchange_increment_price = function(value)
  return "Off Exchange Increment Price: "..value
end

-- Dissect: Off Exchange Increment Price
dissect.off_exchange_increment_price = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.off_exchange_increment_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.off_exchange_increment_price, range, value, display)

  return offset + length
end

-- Display Off Exchange Increment Qty
display.off_exchange_increment_qty = function(value)
  return "Off Exchange Increment Qty: "..value
end

-- Dissect: Off Exchange Increment Qty
dissect.off_exchange_increment_qty = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.off_exchange_increment_qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.off_exchange_increment_qty, range, value, display)

  return offset + length
end

-- Display Off Exchange Increment Qty Denominator
display.off_exchange_increment_qty_denominator = function(value)
  return "Off Exchange Increment Qty Denominator: "..value
end

-- Dissect: Off Exchange Increment Qty Denominator
dissect.off_exchange_increment_qty_denominator = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.off_exchange_increment_qty_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.off_exchange_increment_qty_denominator, range, value, display)

  return offset + length
end

-- Display MIC Code
display.mic_code = function(value)
  return "MIC Code: "..value
end

-- Dissect: MIC Code
dissect.mic_code = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.mic_code(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.mic_code, range, value, display)

  return offset + length
end

-- Display Strip Name
display.strip_name = function(value)
  return "Strip Name: "..value
end

-- Dissect: Strip Name
dissect.strip_name = function(buffer, offset, packet, parent)
  local length = 50
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strip_name(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.strip_name, range, value, display)

  return offset + length
end

-- Display Strip ID
display.strip_id = function(value)
  return "Strip ID: "..value
end

-- Dissect: Strip ID
dissect.strip_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.strip_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.strip_id, range, value, display)

  return offset + length
end

-- Display Hub Alias
display.hub_alias = function(value)
  return "Hub Alias: "..value
end

-- Dissect: Hub Alias
dissect.hub_alias = function(buffer, offset, packet, parent)
  local length = 80
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.hub_alias(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hub_alias, range, value, display)

  return offset + length
end

-- Display Hub ID
display.hub_id = function(value)
  return "Hub ID: "..value
end

-- Dissect: Hub ID
dissect.hub_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.hub_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.hub_id, range, value, display)

  return offset + length
end

-- Display Product Name
display.product_name = function(value)
  return "Product Name: "..value
end

-- Dissect: Product Name
dissect.product_name = function(buffer, offset, packet, parent)
  local length = 62
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.product_name(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.product_name, range, value, display)

  return offset + length
end

-- Display Product ID
display.product_id = function(value)
  return "Product ID: "..value
end

-- Dissect: Product ID
dissect.product_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.product_id, range, value, display)

  return offset + length
end

-- Display Max Price
display.max_price = function(value)
  return "Max Price: "..value
end

-- Dissect: Max Price
dissect.max_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.max_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.max_price, range, value, display)

  return offset + length
end

-- Display Min Price
display.min_price = function(value)
  return "Min Price: "..value
end

-- Dissect: Min Price
dissect.min_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.min_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.min_price, range, value, display)

  return offset + length
end

-- Display Cleared Alias
display.cleared_alias = function(value)
  return "Cleared Alias: "..value
end

-- Dissect: Cleared Alias
dissect.cleared_alias = function(buffer, offset, packet, parent)
  local length = 15
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cleared_alias(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.cleared_alias, range, value, display)

  return offset + length
end

-- Display Unit Quantity
display.unit_quantity = function(value)
  return "Unit Quantity: "..value
end

-- Dissect: Unit Quantity
dissect.unit_quantity = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.unit_quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.unit_quantity, range, value, display)

  return offset + length
end

-- Display Maturity Day
display.maturity_day = function(value)
  return "Maturity Day: "..value
end

-- Dissect: Maturity Day
dissect.maturity_day = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.maturity_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.maturity_day, range, value, display)

  return offset + length
end

-- Display Maturity Month
display.maturity_month = function(value)
  return "Maturity Month: "..value
end

-- Dissect: Maturity Month
dissect.maturity_month = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.maturity_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.maturity_month, range, value, display)

  return offset + length
end

-- Display Maturity Year
display.maturity_year = function(value)
  return "Maturity Year: "..value
end

-- Dissect: Maturity Year
dissect.maturity_year = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.maturity_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.maturity_year, range, value, display)

  return offset + length
end

-- Display: New Expiry Message
display.new_expiry_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Expiry Message
dissect.new_expiry_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Market Type ID: 2 Byte Signed Fixed Width Integer
  index = dissect.market_type_id(buffer, index, packet, parent)

  -- Order Price Denominator: 1 Byte Ascii String
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Price: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_price(buffer, index, packet, parent)

  -- Increment Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Lot Size: 4 Byte Signed Fixed Width Integer
  index = dissect.lot_size(buffer, index, packet, parent)

  -- Market Desc: 120 Byte Ascii String
  index = dissect.market_desc(buffer, index, packet, parent)

  -- Maturity Year: 2 Byte Signed Fixed Width Integer
  index = dissect.maturity_year(buffer, index, packet, parent)

  -- Maturity Month: 2 Byte Signed Fixed Width Integer
  index = dissect.maturity_month(buffer, index, packet, parent)

  -- Maturity Day: 2 Byte Signed Fixed Width Integer
  index = dissect.maturity_day(buffer, index, packet, parent)

  -- Deal Price Denominator: 1 Byte Ascii String
  index = dissect.deal_price_denominator(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Unit Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.unit_quantity(buffer, index, packet, parent)

  -- Currency: 20 Byte Ascii String
  index = dissect.currency(buffer, index, packet, parent)

  -- Cleared Alias: 15 Byte Ascii String
  index = dissect.cleared_alias(buffer, index, packet, parent)

  -- Min Price: 8 Byte Signed Fixed Width Integer
  index = dissect.min_price(buffer, index, packet, parent)

  -- Max Price: 8 Byte Signed Fixed Width Integer
  index = dissect.max_price(buffer, index, packet, parent)

  -- Product ID: 4 Byte Signed Fixed Width Integer
  index = dissect.product_id(buffer, index, packet, parent)

  -- Product Name: 62 Byte Ascii String
  index = dissect.product_name(buffer, index, packet, parent)

  -- Hub ID: 4 Byte Signed Fixed Width Integer
  index = dissect.hub_id(buffer, index, packet, parent)

  -- Hub Alias: 80 Byte Ascii String
  index = dissect.hub_alias(buffer, index, packet, parent)

  -- Strip ID: 4 Byte Signed Fixed Width Integer
  index = dissect.strip_id(buffer, index, packet, parent)

  -- Strip Name: 50 Byte Ascii String
  index = dissect.strip_name(buffer, index, packet, parent)

  -- Settle Price Denominator: 1 Byte Ascii String
  index = dissect.settle_price_denominator(buffer, index, packet, parent)

  -- MIC Code: 4 Byte Ascii String
  index = dissect.mic_code(buffer, index, packet, parent)

  -- Unit Qty Denominator: 1 Byte Ascii String
  index = dissect.unit_qty_denominator(buffer, index, packet, parent)

  -- Off Exchange Increment Qty Denominator: 1 Byte Ascii String
  index = dissect.off_exchange_increment_qty_denominator(buffer, index, packet, parent)

  -- Off Exchange Increment Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.off_exchange_increment_qty(buffer, index, packet, parent)

  -- Off Exchange Increment Price: 4 Byte Signed Fixed Width Integer
  index = dissect.off_exchange_increment_price(buffer, index, packet, parent)

  -- Off Exchange Increment Option Price: 4 Byte Signed Fixed Width Integer
  index = dissect.off_exchange_increment_option_price(buffer, index, packet, parent)

  -- Contract Symbol: 35 Byte Ascii String
  index = dissect.contract_symbol(buffer, index, packet, parent)

  -- ISIN: 12 Byte Ascii String
  index = dissect.isin(buffer, index, packet, parent)

  -- Num Decimals Options Price: 1 Byte Ascii String
  index = dissect.num_decimals_options_price(buffer, index, packet, parent)

  -- Hedge Market ID: 4 Byte Unsigned Fixed Width Integer
  index = dissect.hedge_market_id(buffer, index, packet, parent)

  -- Settlement Type: 1 Byte Ascii String
  index = dissect.settlement_type(buffer, index, packet, parent)

  -- GT Allowed: 1 Byte Ascii String
  index = dissect.gt_allowed(buffer, index, packet, parent)

  -- Cross Order Supported: 1 Byte Ascii String
  index = dissect.cross_order_supported(buffer, index, packet, parent)

  -- Unit Of Measure: 30 Byte Ascii String
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  return index
end

-- Dissect: New Expiry Message
dissect.new_expiry_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.new_expiry_message then
    local range = buffer(offset, 513)
    local display = display.new_expiry_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.new_expiry_message, range, display)
  end

  return dissect.new_expiry_message_fields(buffer, offset, packet, parent)
end

-- Display: Leg Definition
display.leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Leg Definition
dissect.leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Body Length: 1 Byte Unsigned Fixed Width Integer
  index = dissect.leg_body_length(buffer, index, packet, parent)

  -- Leg Market Id: 4 Byte Unsigned Fixed Width Integer
  index = dissect.leg_market_id(buffer, index, packet, parent)

  -- Leg Ratio: 2 Byte Unsigned Fixed Width Integer
  index = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Side: 1 Byte Ascii String
  index = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect: Leg Definition
dissect.leg_definition = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.leg_definition then
    local range = buffer(offset, 8)
    local display = display.leg_definition(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.leg_definition, range, display)
  end

  return dissect.leg_definition_fields(buffer, offset, packet, parent)
end

-- Display Number Of Leg Definitions
display.number_of_leg_definitions = function(value)
  return "Number Of Leg Definitions: "..value
end

-- Dissect: Number Of Leg Definitions
dissect.number_of_leg_definitions = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.number_of_leg_definitions(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.number_of_leg_definitions, range, value, display)

  return offset + length, value
end

-- Calculate runtime size: New Futures Strategy Definition Message
size_of.new_futures_strategy_definition_message = function(buffer, offset)
  local index = 0

  index = index + 89

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 1, 1):int()
  index = index + leg_definition_count * 8

  return index
end

-- Display: New Futures Strategy Definition Message
display.new_futures_strategy_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: New Futures Strategy Definition Message
dissect.new_futures_strategy_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Futures Contract Symbol: 70 Byte Ascii String
  index = dissect.futures_contract_symbol(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Order Price Denominator: 1 Byte Ascii String
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Price: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_price(buffer, index, packet, parent)

  -- Increment Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Min Qty: 4 Byte Signed Fixed Width Integer
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Number Of Leg Definitions: 1 Byte Signed Fixed Width Integer
  index = dissect.number_of_leg_definitions(buffer, index, packet, parent)

  -- Leg Definition: Struct of 4 fields
  local leg_definition_count = buffer(index - 1, 1):int()
  for i = 1, leg_definition_count do
    index = dissect.leg_definition(buffer, index, packet, parent)
  end


  -- Security Sub Type: 2 Byte Signed Fixed Width Integer
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Is Block Only: 1 Byte Ascii String
  index = dissect.is_block_only(buffer, index, packet, parent)

  -- Strategy Symbol: 18 Byte Ascii String
  index = dissect.strategy_symbol(buffer, index, packet, parent)

  -- GT Allowed: 1 Byte Ascii String
  index = dissect.gt_allowed(buffer, index, packet, parent)

  return index
end

-- Dissect: New Futures Strategy Definition Message
dissect.new_futures_strategy_definition_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.new_futures_strategy_definition_message then
    local length = size_of.new_futures_strategy_definition_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.new_futures_strategy_definition_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.new_futures_strategy_definition_message, range, display)
  end

  return dissect.new_futures_strategy_definition_message_fields(buffer, offset, packet, parent)
end

-- Display IPL Down
display.ipl_down = function(value)
  return "IPL Down: "..value
end

-- Dissect: IPL Down
dissect.ipl_down = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.ipl_down(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.ipl_down, range, value, display)

  return offset + length
end

-- Display IPL Up
display.ipl_up = function(value)
  return "IPL Up: "..value
end

-- Dissect: IPL Up
dissect.ipl_up = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.ipl_up(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.ipl_up, range, value, display)

  return offset + length
end

-- Display IPL Hold Duration
display.ipl_hold_duration = function(value)
  return "IPL Hold Duration: "..value
end

-- Dissect: IPL Hold Duration
dissect.ipl_hold_duration = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.ipl_hold_duration(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.ipl_hold_duration, range, value, display)

  return offset + length
end

-- Display Is Up
display.is_up = function(value)
  return "Is Up: "..value
end

-- Dissect: Is Up
dissect.is_up = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_up(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_up, range, value, display)

  return offset + length
end

-- Display Notification Date Time
display.notification_date_time = function(value)
  return "Notification Date Time: "..value
end

-- Dissect: Notification Date Time
dissect.notification_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.notification_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.notification_date_time, range, value, display)

  return offset + length
end

-- Display IPL Hold Type
display.ipl_hold_type = function(value)
  return "IPL Hold Type: "..value
end

-- Dissect: IPL Hold Type
dissect.ipl_hold_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.ipl_hold_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.ipl_hold_type, range, value, display)

  return offset + length
end

-- Display: Interval Price Limit Notification Message
display.interval_price_limit_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Interval Price Limit Notification Message
dissect.interval_price_limit_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- IPL Hold Type: 1 Byte Ascii String
  index = dissect.ipl_hold_type(buffer, index, packet, parent)

  -- Notification Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.notification_date_time(buffer, index, packet, parent)

  -- Is Up: 1 Byte Ascii String
  index = dissect.is_up(buffer, index, packet, parent)

  -- IPL Hold Duration: 4 Byte Signed Fixed Width Integer
  index = dissect.ipl_hold_duration(buffer, index, packet, parent)

  -- IPL Up: 8 Byte Signed Fixed Width Integer
  index = dissect.ipl_up(buffer, index, packet, parent)

  -- IPL Down: 8 Byte Signed Fixed Width Integer
  index = dissect.ipl_down(buffer, index, packet, parent)

  return index
end

-- Dissect: Interval Price Limit Notification Message
dissect.interval_price_limit_notification_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.interval_price_limit_notification_message then
    local range = buffer(offset, 34)
    local display = display.interval_price_limit_notification_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.interval_price_limit_notification_message, range, display)
  end

  return dissect.interval_price_limit_notification_message_fields(buffer, offset, packet, parent)
end

-- Display End Day
display.end_day = function(value)
  return "End Day: "..value
end

-- Dissect: End Day
dissect.end_day = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.end_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.end_day, range, value, display)

  return offset + length
end

-- Display End Month
display.end_month = function(value)
  return "End Month: "..value
end

-- Dissect: End Month
dissect.end_month = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.end_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.end_month, range, value, display)

  return offset + length
end

-- Display End Year
display.end_year = function(value)
  return "End Year: "..value
end

-- Dissect: End Year
dissect.end_year = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.end_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.end_year, range, value, display)

  return offset + length
end

-- Display Begin Day
display.begin_day = function(value)
  return "Begin Day: "..value
end

-- Dissect: Begin Day
dissect.begin_day = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.begin_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.begin_day, range, value, display)

  return offset + length
end

-- Display Begin Month
display.begin_month = function(value)
  return "Begin Month: "..value
end

-- Dissect: Begin Month
dissect.begin_month = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.begin_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.begin_month, range, value, display)

  return offset + length
end

-- Display Begin Year
display.begin_year = function(value)
  return "Begin Year: "..value
end

-- Dissect: Begin Year
dissect.begin_year = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.begin_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.begin_year, range, value, display)

  return offset + length
end

-- Display Strip Type
display.strip_type = function(value)
  return "Strip Type: "..value
end

-- Dissect: Strip Type
dissect.strip_type = function(buffer, offset, packet, parent)
  local length = 20
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strip_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.strip_type, range, value, display)

  return offset + length
end

-- Display Old Strip ID
display.old_strip_id = function(value)
  return "Old Strip ID: "..value
end

-- Dissect: Old Strip ID
dissect.old_strip_id = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.old_strip_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.old_strip_id, range, value, display)

  return offset + length
end

-- Display: Strip Info Message
display.strip_info_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Strip Info Message
dissect.strip_info_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Old Strip ID: 2 Byte Signed Fixed Width Integer
  index = dissect.old_strip_id(buffer, index, packet, parent)

  -- Strip Type: 20 Byte Ascii String
  index = dissect.strip_type(buffer, index, packet, parent)

  -- Begin Year: 2 Byte Signed Fixed Width Integer
  index = dissect.begin_year(buffer, index, packet, parent)

  -- Begin Month: 2 Byte Signed Fixed Width Integer
  index = dissect.begin_month(buffer, index, packet, parent)

  -- Begin Day: 2 Byte Signed Fixed Width Integer
  index = dissect.begin_day(buffer, index, packet, parent)

  -- End Year: 2 Byte Signed Fixed Width Integer
  index = dissect.end_year(buffer, index, packet, parent)

  -- End Month: 2 Byte Signed Fixed Width Integer
  index = dissect.end_month(buffer, index, packet, parent)

  -- End Day: 2 Byte Signed Fixed Width Integer
  index = dissect.end_day(buffer, index, packet, parent)

  -- Strip Name: 50 Byte Ascii String
  index = dissect.strip_name(buffer, index, packet, parent)

  -- Strip ID: 4 Byte Signed Fixed Width Integer
  index = dissect.strip_id(buffer, index, packet, parent)

  return index
end

-- Dissect: Strip Info Message
dissect.strip_info_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.strip_info_message then
    local range = buffer(offset, 88)
    local display = display.strip_info_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.strip_info_message, range, display)
  end

  return dissect.strip_info_message_fields(buffer, offset, packet, parent)
end

-- Display Pre Open Volume
display.pre_open_volume = function(value)
  return "Pre Open Volume: "..value
end

-- Dissect: Pre Open Volume
dissect.pre_open_volume = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.pre_open_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.pre_open_volume, range, value, display)

  return offset + length
end

-- Display Has Pre Open Volume
display.has_pre_open_volume = function(value)
  return "Has Pre Open Volume: "..value
end

-- Dissect: Has Pre Open Volume
dissect.has_pre_open_volume = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.has_pre_open_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.has_pre_open_volume, range, value, display)

  return offset + length
end

-- Display Pre Open Price
display.pre_open_price = function(value)
  return "Pre Open Price: "..value
end

-- Dissect: Pre Open Price
dissect.pre_open_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.pre_open_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.pre_open_price, range, value, display)

  return offset + length
end

-- Display: Pre Open Price Indicator Message
display.pre_open_price_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Pre Open Price Indicator Message
dissect.pre_open_price_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Pre Open Price: 8 Byte Signed Fixed Width Integer
  index = dissect.pre_open_price(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Has Pre Open Volume: 1 Byte Ascii String
  index = dissect.has_pre_open_volume(buffer, index, packet, parent)

  -- Pre Open Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.pre_open_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Pre Open Price Indicator Message
dissect.pre_open_price_indicator_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.pre_open_price_indicator_message then
    local range = buffer(offset, 25)
    local display = display.pre_open_price_indicator_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.pre_open_price_indicator_message, range, display)
  end

  return dissect.pre_open_price_indicator_message_fields(buffer, offset, packet, parent)
end

-- Display Event Type
display.event_type = function(value)
  return "Event Type: "..value
end

-- Dissect: Event Type
dissect.event_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.event_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.event_type, range, value, display)

  return offset + length
end

-- Display: Market Event Message
display.market_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Event Message
dissect.market_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Event Type: 1 Byte Ascii String
  index = dissect.event_type(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Event Message
dissect.market_event_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_event_message then
    local range = buffer(offset, 13)
    local display = display.market_event_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.market_event_message, range, display)
  end

  return dissect.market_event_message_fields(buffer, offset, packet, parent)
end

-- Display Opening Price
display.opening_price = function(value)
  return "Opening Price: "..value
end

-- Dissect: Opening Price
dissect.opening_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.opening_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.opening_price, range, value, display)

  return offset + length
end

-- Display Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.volume, range, value, display)

  return offset + length
end

-- Display: End of Day Market Summary Message
display.end_of_day_market_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End of Day Market Summary Message
dissect.end_of_day_market_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Block Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- Opening Price: 8 Byte Signed Fixed Width Integer
  index = dissect.opening_price(buffer, index, packet, parent)

  -- High: 8 Byte Signed Fixed Width Integer
  index = dissect.high(buffer, index, packet, parent)

  -- Low: 8 Byte Signed Fixed Width Integer
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: 8 Byte Signed Fixed Width Integer
  index = dissect.vwap(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_price_with_deal_price_precision(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_price(buffer, index, packet, parent)

  return index
end

-- Dissect: End of Day Market Summary Message
dissect.end_of_day_market_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.end_of_day_market_summary_message then
    local range = buffer(offset, 80)
    local display = display.end_of_day_market_summary_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.end_of_day_market_summary_message, range, display)
  end

  return dissect.end_of_day_market_summary_message_fields(buffer, offset, packet, parent)
end

-- Display Valuation Date /  Applying Date
display.valuation_date____applying_date = function(value)
  return "Valuation Date /  Applying Date: "..value
end

-- Dissect: Valuation Date /  Applying Date
dissect.valuation_date____applying_date = function(buffer, offset, packet, parent)
  local length = 10
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.valuation_date____applying_date(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.valuation_date____applying_date, range, value, display)

  return offset + length
end

-- Display Published Date Time
display.published_date_time = function(value)
  return "Published Date Time: "..value
end

-- Dissect: Published Date Time
dissect.published_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.published_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.published_date_time, range, value, display)

  return offset + length
end

-- Display Short Name
display.short_name = function(value)
  return "Short Name: "..value
end

-- Dissect: Short Name
dissect.short_name = function(buffer, offset, packet, parent)
  local length = 30
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.short_name(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.short_name, range, value, display)

  return offset + length
end

-- Display: Marker Index Prices
display.marker_index_prices = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Marker Index Prices
dissect.marker_index_prices_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Short Name: 30 Byte Ascii String
  index = dissect.short_name(buffer, index, packet, parent)

  -- Published Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.published_date_time(buffer, index, packet, parent)

  -- Valuation Date /  Applying Date: 10 Byte Ascii String
  index = dissect.valuation_date____applying_date(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index = dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect: Marker Index Prices
dissect.marker_index_prices = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.marker_index_prices then
    local range = buffer(offset, 61)
    local display = display.marker_index_prices(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.marker_index_prices, range, display)
  end

  return dissect.marker_index_prices_fields(buffer, offset, packet, parent)
end

-- Display: Settlement Price Message
display.settlement_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Settlement Price Message
dissect.settlement_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Is Official: 1 Byte Ascii String
  index = dissect.is_official(buffer, index, packet, parent)

  -- Valuation Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.valuation_date_time(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Settlement Price Message
dissect.settlement_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.settlement_price_message then
    local range = buffer(offset, 25)
    local display = display.settlement_price_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.settlement_price_message, range, display)
  end

  return dissect.settlement_price_message_fields(buffer, offset, packet, parent)
end

-- Display Close Price
display.close_price = function(value)
  return "Close Price: "..value
end

-- Dissect: Close Price
dissect.close_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.close_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.close_price, range, value, display)

  return offset + length
end

-- Display: Close Price Message
display.close_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Close Price Message
dissect.close_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Close Price: 8 Byte Signed Fixed Width Integer
  index = dissect.close_price(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Price Message
dissect.close_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.close_price_message then
    local range = buffer(offset, 20)
    local display = display.close_price_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.close_price_message, range, display)
  end

  return dissect.close_price_message_fields(buffer, offset, packet, parent)
end

-- Display Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
dissect.open_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.open_price, range, value, display)

  return offset + length
end

-- Display: Open Price Message
display.open_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Price Message
dissect.open_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Open Price: 8 Byte Signed Fixed Width Integer
  index = dissect.open_price(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Price Message
dissect.open_price_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_price_message then
    local range = buffer(offset, 20)
    local display = display.open_price_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.open_price_message, range, display)
  end

  return dissect.open_price_message_fields(buffer, offset, packet, parent)
end

-- Display Open Interest Change
display.open_interest_change = function(value)
  return "Open Interest Change: "..value
end

-- Dissect: Open Interest Change
dissect.open_interest_change = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.open_interest_change(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.open_interest_change, range, value, display)

  return offset + length
end

-- Display: Open Interest Message
display.open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Interest Message
dissect.open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Open Interest Change: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest_change(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Open Interest Date: 10 Byte Ascii String
  index = dissect.open_interest_date(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
dissect.open_interest_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_interest_message then
    local range = buffer(offset, 30)
    local display = display.open_interest_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.open_interest_message, range, display)
  end

  return dissect.open_interest_message_fields(buffer, offset, packet, parent)
end

-- Display Text Message Extra Fld
display.text_message_extra_fld = function(value)
  return "Text Message Extra Fld: "..value
end

-- Dissect: Text Message Extra Fld
dissect.text_message_extra_fld = function(buffer, offset, packet, parent)
  local length = 800
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.text_message_extra_fld(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.text_message_extra_fld, range, value, display)

  return offset + length
end

-- Display Text Message
display.text_message = function(value)
  return "Text Message: "..value
end

-- Dissect: Text Message
dissect.text_message = function(buffer, offset, packet, parent)
  local length = 200
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.text_message(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.text_message, range, value, display)

  return offset + length
end

-- Display: System Text Message
display.system_text_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: System Text Message
dissect.system_text_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Message: 200 Byte Ascii String
  index = dissect.text_message(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Text Message Extra Fld: 800 Byte Ascii String
  index = dissect.text_message_extra_fld(buffer, index, packet, parent)

  return index
end

-- Dissect: System Text Message
dissect.system_text_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.system_text_message then
    local range = buffer(offset, 1008)
    local display = display.system_text_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.system_text_message, range, display)
  end

  return dissect.system_text_message_fields(buffer, offset, packet, parent)
end

-- Display: Market State Change Message
display.market_state_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market State Change Message
dissect.market_state_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Market State Change Message
dissect.market_state_change_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_state_change_message then
    local range = buffer(offset, 13)
    local display = display.market_state_change_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.market_state_change_message, range, display)
  end

  return dissect.market_state_change_message_fields(buffer, offset, packet, parent)
end

-- Display: Market Statistics Message
display.market_statistics_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Statistics Message
dissect.market_statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Block Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- High: 8 Byte Signed Fixed Width Integer
  index = dissect.high(buffer, index, packet, parent)

  -- Low: 8 Byte Signed Fixed Width Integer
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: 8 Byte Signed Fixed Width Integer
  index = dissect.vwap(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Statistics Message
dissect.market_statistics_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_statistics_message then
    local range = buffer(offset, 52)
    local display = display.market_statistics_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.market_statistics_message, range, display)
  end

  return dissect.market_statistics_message_fields(buffer, offset, packet, parent)
end

-- Display Off Market Trade Type
display.off_market_trade_type = function(value)
  return "Off Market Trade Type: "..value
end

-- Dissect: Off Market Trade Type
dissect.off_market_trade_type = function(buffer, offset, packet, parent)
  local length = 3
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.off_market_trade_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.off_market_trade_type, range, value, display)

  return offset + length
end

-- Display Old Off Market Trade Type
display.old_off_market_trade_type = function(value)
  return "Old Off Market Trade Type: "..value
end

-- Dissect: Old Off Market Trade Type
dissect.old_off_market_trade_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.old_off_market_trade_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.old_off_market_trade_type, range, value, display)

  return offset + length
end

-- Display Trade ID
display.trade_id = function(value)
  return "Trade ID: "..value
end

-- Dissect: Trade ID
dissect.trade_id = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.trade_id, range, value, display)

  return offset + length
end

-- Display: Cancelled Trade Message
display.cancelled_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Cancelled Trade Message
dissect.cancelled_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: 8 Byte Signed Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Old Off Market Trade Type: 1 Byte Ascii String
  index = dissect.old_off_market_trade_type(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Off Market Trade Type: 3 Byte Ascii String
  index = dissect.off_market_trade_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancelled Trade Message
dissect.cancelled_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.cancelled_trade_message then
    local range = buffer(offset, 36)
    local display = display.cancelled_trade_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.cancelled_trade_message, range, display)
  end

  return dissect.cancelled_trade_message_fields(buffer, offset, packet, parent)
end

-- Display: Investigated Trade Message
display.investigated_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Investigated Trade Message
dissect.investigated_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: 8 Byte Signed Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Old Off Market Trade Type: 1 Byte Ascii String
  index = dissect.old_off_market_trade_type(buffer, index, packet, parent)

  -- Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.date_time(buffer, index, packet, parent)

  -- Status: 1 Byte Ascii String
  index = dissect.status(buffer, index, packet, parent)

  -- Off Market Trade Type: 3 Byte Ascii String
  index = dissect.off_market_trade_type(buffer, index, packet, parent)

  return index
end

-- Dissect: Investigated Trade Message
dissect.investigated_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.investigated_trade_message then
    local range = buffer(offset, 37)
    local display = display.investigated_trade_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.investigated_trade_message, range, display)
  end

  return dissect.investigated_trade_message_fields(buffer, offset, packet, parent)
end

-- Display Is System Priced Leg
display.is_system_priced_leg = function(value)
  return "Is System Priced Leg: "..value
end

-- Dissect: Is System Priced Leg
dissect.is_system_priced_leg = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_system_priced_leg(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_system_priced_leg, range, value, display)

  return offset + length
end

-- Display Delivery End Date Time
display.delivery_end_date_time = function(value)
  return "Delivery End Date Time: "..value
end

-- Dissect: Delivery End Date Time
dissect.delivery_end_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.delivery_end_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.delivery_end_date_time, range, value, display)

  return offset + length
end

-- Display Delivery Begin Date Time
display.delivery_begin_date_time = function(value)
  return "Delivery Begin Date Time: "..value
end

-- Dissect: Delivery Begin Date Time
dissect.delivery_begin_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.delivery_begin_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.delivery_begin_date_time, range, value, display)

  return offset + length
end

-- Display Transact Date Time
display.transact_date_time = function(value)
  return "Transact Date Time: "..value
end

-- Dissect: Transact Date Time
dissect.transact_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.transact_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.transact_date_time, range, value, display)

  return offset + length
end

-- Display: Spot Market Trade Message
display.spot_market_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Spot Market Trade Message
dissect.spot_market_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: 8 Byte Signed Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Transact Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.transact_date_time(buffer, index, packet, parent)

  -- Extra Flags: 1 Byte Signed Fixed Width Integer
  index = dissect.extra_flags(buffer, index, packet, parent)

  -- Delivery Begin Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.delivery_begin_date_time(buffer, index, packet, parent)

  -- Delivery End Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.delivery_end_date_time(buffer, index, packet, parent)

  -- Is System Priced Leg: 1 Byte Ascii String
  index = dissect.is_system_priced_leg(buffer, index, packet, parent)

  return index
end

-- Dissect: Spot Market Trade Message
dissect.spot_market_trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.spot_market_trade_message then
    local range = buffer(offset, 50)
    local display = display.spot_market_trade_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.spot_market_trade_message, range, display)
  end

  return dissect.spot_market_trade_message_fields(buffer, offset, packet, parent)
end

-- Display Aggressor Side
display.aggressor_side = function(value)
  return "Aggressor Side: "..value
end

-- Dissect: Aggressor Side
dissect.aggressor_side = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.aggressor_side, range, value, display)

  return offset + length
end

-- Display Is Adjusted Trade
display.is_adjusted_trade = function(value)
  return "Is Adjusted Trade: "..value
end

-- Dissect: Is Adjusted Trade
dissect.is_adjusted_trade = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_adjusted_trade(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_adjusted_trade, range, value, display)

  return offset + length
end

-- Display Is Implied Spread At Market Open
display.is_implied_spread_at_market_open = function(value)
  return "Is Implied Spread At Market Open: "..value
end

-- Dissect: Is Implied Spread At Market Open
dissect.is_implied_spread_at_market_open = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_implied_spread_at_market_open(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_implied_spread_at_market_open, range, value, display)

  return offset + length
end

-- Display System Priced Leg Type
display.system_priced_leg_type = function(value)
  return "System Priced Leg Type: "..value
end

-- Dissect: System Priced Leg Type
dissect.system_priced_leg_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.system_priced_leg_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.system_priced_leg_type, range, value, display)

  return offset + length
end

-- Display: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Message
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: 8 Byte Signed Fixed Width Integer
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Is System Priced Leg: 1 Byte Ascii String
  index = dissect.is_system_priced_leg(buffer, index, packet, parent)

  -- Price: 8 Byte Signed Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.quantity(buffer, index, packet, parent)

  -- Old Off Market Trade Type: 1 Byte Ascii String
  index = dissect.old_off_market_trade_type(buffer, index, packet, parent)

  -- Transact Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.transact_date_time(buffer, index, packet, parent)

  -- System Priced Leg Type: 1 Byte Ascii String
  index = dissect.system_priced_leg_type(buffer, index, packet, parent)

  -- Is Implied Spread At Market Open: 1 Byte Ascii String
  index = dissect.is_implied_spread_at_market_open(buffer, index, packet, parent)

  -- Is Adjusted Trade: 1 Byte Ascii String
  index = dissect.is_adjusted_trade(buffer, index, packet, parent)

  -- Aggressor Side: 1 Byte Ascii String
  index = dissect.aggressor_side(buffer, index, packet, parent)

  -- Extra Flags: 1 Byte Signed Fixed Width Integer
  index = dissect.extra_flags(buffer, index, packet, parent)

  -- Off Market Trade Type: 3 Byte Ascii String
  index = dissect.off_market_trade_type(buffer, index, packet, parent)

  -- Sequence Within Millis: 4 Byte Signed Fixed Width Integer
  index = dissect.sequence_within_millis(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.trade_message then
    local range = buffer(offset, 46)
    local display = display.trade_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.trade_message, range, display)
  end

  return dissect.trade_message_fields(buffer, offset, packet, parent)
end

-- Display Previous Day Settlement Price
display.previous_day_settlement_price = function(value)
  return "Previous Day Settlement Price: "..value
end

-- Dissect: Previous Day Settlement Price
dissect.previous_day_settlement_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.previous_day_settlement_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.previous_day_settlement_price, range, value, display)

  return offset + length
end

-- Display Has Previous Day Settlement Price
display.has_previous_day_settlement_price = function(value)
  return "Has Previous Day Settlement Price: "..value
end

-- Dissect: Has Previous Day Settlement Price
dissect.has_previous_day_settlement_price = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.has_previous_day_settlement_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.has_previous_day_settlement_price, range, value, display)

  return offset + length
end

-- Display Is Settle Price Official
display.is_settle_price_official = function(value)
  return "Is Settle Price Official: "..value
end

-- Dissect: Is Settle Price Official
dissect.is_settle_price_official = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.is_settle_price_official(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.is_settle_price_official, range, value, display)

  return offset + length
end

-- Display Reserved Field1
display.reserved_field1 = function(value)
  return "Reserved Field1: "..value
end

-- Dissect: Reserved Field1
dissect.reserved_field1 = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_field1(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.reserved_field1, range, value, display)

  return offset + length
end

-- Display Last Message Sequence ID
display.last_message_sequence_id = function(value)
  return "Last Message Sequence ID: "..value
end

-- Dissect: Last Message Sequence ID
dissect.last_message_sequence_id = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.last_message_sequence_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.last_message_sequence_id, range, value, display)

  return offset + length
end

-- Display Settle Price Date Time
display.settle_price_date_time = function(value)
  return "Settle Price Date Time: "..value
end

-- Dissect: Settle Price Date Time
dissect.settle_price_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.settle_price_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.settle_price_date_time, range, value, display)

  return offset + length
end

-- Display Last Trade Date Time
display.last_trade_date_time = function(value)
  return "Last Trade Date Time: "..value
end

-- Dissect: Last Trade Date Time
dissect.last_trade_date_time = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.last_trade_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.last_trade_date_time, range, value, display)

  return offset + length
end

-- Display Last Trade Quantity
display.last_trade_quantity = function(value)
  return "Last Trade Quantity: "..value
end

-- Dissect: Last Trade Quantity
dissect.last_trade_quantity = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.last_trade_quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.last_trade_quantity, range, value, display)

  return offset + length
end

-- Display Last Trade Price
display.last_trade_price = function(value)
  return "Last Trade Price: "..value
end

-- Dissect: Last Trade Price
dissect.last_trade_price = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.last_trade_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.last_trade_price, range, value, display)

  return offset + length
end

-- Display Num Of Book Entries
display.num_of_book_entries = function(value)
  return "Num Of Book Entries: "..value
end

-- Dissect: Num Of Book Entries
dissect.num_of_book_entries = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.num_of_book_entries(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.num_of_book_entries, range, value, display)

  return offset + length
end

-- Display Market Type
display.market_type = function(value)
  return "Market Type: "..value
end

-- Dissect: Market Type
dissect.market_type = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.market_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.market_type, range, value, display)

  return offset + length
end

-- Display: Market Snapshot Message
display.market_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Snapshot Message
dissect.market_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: 4 Byte Signed Fixed Width Integer
  index = dissect.market_id(buffer, index, packet, parent)

  -- Market Type: 2 Byte Signed Fixed Width Integer
  index = dissect.market_type(buffer, index, packet, parent)

  -- Trading Status: 1 Byte Ascii String
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.volume(buffer, index, packet, parent)

  -- Block Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: 4 Byte Signed Fixed Width Integer
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- Open Interest: 4 Byte Signed Fixed Width Integer
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Opening Price: 8 Byte Signed Fixed Width Integer
  index = dissect.opening_price(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_price_with_deal_price_precision(buffer, index, packet, parent)

  -- High: 8 Byte Signed Fixed Width Integer
  index = dissect.high(buffer, index, packet, parent)

  -- Low: 8 Byte Signed Fixed Width Integer
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: 8 Byte Signed Fixed Width Integer
  index = dissect.vwap(buffer, index, packet, parent)

  -- Num Of Book Entries: 4 Byte Signed Fixed Width Integer
  index = dissect.num_of_book_entries(buffer, index, packet, parent)

  -- Last Trade Price: 8 Byte Signed Fixed Width Integer
  index = dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Quantity: 4 Byte Signed Fixed Width Integer
  index = dissect.last_trade_quantity(buffer, index, packet, parent)

  -- Last Trade Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.last_trade_date_time(buffer, index, packet, parent)

  -- Settle Price Date Time: 8 Byte Signed Fixed Width Integer
  index = dissect.settle_price_date_time(buffer, index, packet, parent)

  -- Last Message Sequence ID: 4 Byte Signed Fixed Width Integer
  index = dissect.last_message_sequence_id(buffer, index, packet, parent)

  -- Reserved Field1: 2 Byte
  index = dissect.reserved_field1(buffer, index, packet, parent)

  -- Open Interest Date: 10 Byte Ascii String
  index = dissect.open_interest_date(buffer, index, packet, parent)

  -- Is Settle Price Official: 1 Byte Ascii String
  index = dissect.is_settle_price_official(buffer, index, packet, parent)

  -- Settlement Price: 8 Byte Signed Fixed Width Integer
  index = dissect.settlement_price(buffer, index, packet, parent)

  -- Has Previous Day Settlement Price: 1 Byte Ascii String
  index = dissect.has_previous_day_settlement_price(buffer, index, packet, parent)

  -- Previous Day Settlement Price: 8 Byte Signed Fixed Width Integer
  index = dissect.previous_day_settlement_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Snapshot Message
dissect.market_snapshot_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.market_snapshot_message then
    local range = buffer(offset, 133)
    local display = display.market_snapshot_message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.market_snapshot_message, range, display)
  end

  return dissect.market_snapshot_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, code)
  -- Size of Market Snapshot Message
  if code == "C" then
    return 133
  end
  -- Size of Trade Message
  if code == "G" then
    return 46
  end
  -- Size of Spot Market Trade Message
  if code == "Y" then
    return 50
  end
  -- Size of Investigated Trade Message
  if code == "H" then
    return 37
  end
  -- Size of Cancelled Trade Message
  if code == "I" then
    return 36
  end
  -- Size of Market Statistics Message
  if code == "J" then
    return 52
  end
  -- Size of Market State Change Message
  if code == "K" then
    return 13
  end
  -- Size of System Text Message
  if code == "L" then
    return 1008
  end
  -- Size of Open Interest Message
  if code == "M" then
    return 30
  end
  -- Size of Open Price Message
  if code == "N" then
    return 20
  end
  -- Size of Close Price Message
  if code == "c" then
    return 20
  end
  -- Size of Settlement Price Message
  if code == "O" then
    return 25
  end
  -- Size of Marker Index Prices
  if code == "z" then
    return 61
  end
  -- Size of End of Day Market Summary Message
  if code == "u" then
    return 80
  end
  -- Size of Market Event Message
  if code == "f" then
    return 13
  end
  -- Size of Pre Open Price Indicator Message
  if code == "g" then
    return 25
  end
  -- Size of Strip Info Message
  if code == "i" then
    return 88
  end
  -- Size of Interval Price Limit Notification Message
  if code == "V" then
    return 34
  end
  -- Size of New Futures Strategy Definition Message
  if code == "9" then
    return size_of.new_futures_strategy_definition_message(buffer, offset)
  end
  -- Size of New Expiry Message
  if code == "R" then
    return 513
  end
  -- Size of Special Field Message
  if code == "b" then
    return size_of.special_field_message(buffer, offset)
  end
  -- Size of Market Snapshot Order Message
  if code == "D" then
    return 41
  end
  -- Size of Add or Modify Order Message
  if code == "E" then
    return 42
  end
  -- Size of Delete Order Message
  if code == "F" then
    return 12
  end
  -- Size of Message Bundle Marker
  if code == "T" then
    return 1
  end
  -- Size of Fixing Transition Message
  if code == "3" then
    return 25
  end
  -- Size of Fixing Lockdown Message
  if code == "4" then
    return 78
  end
  -- Size of Market Snapshot Price Level Message
  if code == "m" then
    return 26
  end
  -- Size of Add Price Level Message
  if code == "t" then
    return 26
  end
  -- Size of Change Price Level Message
  if code == "s" then
    return 26
  end
  -- Size of Delete Price Level Message
  if code == "r" then
    return 6
  end
  -- Size of New Options Strategy Definition Message
  if code == "U" then
    return size_of.new_options_strategy_definition_message(buffer, offset)
  end
  -- Size of New Options Market Definition Message
  if code == "l" then
    return 321
  end
  -- Size of RFQ Message
  if code == "k" then
    return 31
  end
  -- Size of Option Open Interest Message
  if code == "v" then
    return 26
  end
  -- Size of Option Settlement Price Message
  if code == "w" then
    return 53
  end
  -- Size of Old Style Options Trade and Market Stats Message
  if code == "W" then
    return 36
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches:
dissect.payload_branches = function(code, buffer, offset, packet, parent)
  -- Dissect Market Snapshot Message
  if code == "C" then
    return dissect.market_snapshot_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if code == "G" then
    return dissect.trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Spot Market Trade Message
  if code == "Y" then
    return dissect.spot_market_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Investigated Trade Message
  if code == "H" then
    return dissect.investigated_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Cancelled Trade Message
  if code == "I" then
    return dissect.cancelled_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Statistics Message
  if code == "J" then
    return dissect.market_statistics_message(buffer, offset, packet, parent)
  end
  -- Dissect Market State Change Message
  if code == "K" then
    return dissect.market_state_change_message(buffer, offset, packet, parent)
  end
  -- Dissect System Text Message
  if code == "L" then
    return dissect.system_text_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if code == "M" then
    return dissect.open_interest_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Price Message
  if code == "N" then
    return dissect.open_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Close Price Message
  if code == "c" then
    return dissect.close_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Settlement Price Message
  if code == "O" then
    return dissect.settlement_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Marker Index Prices
  if code == "z" then
    return dissect.marker_index_prices(buffer, offset, packet, parent)
  end
  -- Dissect End of Day Market Summary Message
  if code == "u" then
    return dissect.end_of_day_market_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Event Message
  if code == "f" then
    return dissect.market_event_message(buffer, offset, packet, parent)
  end
  -- Dissect Pre Open Price Indicator Message
  if code == "g" then
    return dissect.pre_open_price_indicator_message(buffer, offset, packet, parent)
  end
  -- Dissect Strip Info Message
  if code == "i" then
    return dissect.strip_info_message(buffer, offset, packet, parent)
  end
  -- Dissect Interval Price Limit Notification Message
  if code == "V" then
    return dissect.interval_price_limit_notification_message(buffer, offset, packet, parent)
  end
  -- Dissect New Futures Strategy Definition Message
  if code == "9" then
    return dissect.new_futures_strategy_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect New Expiry Message
  if code == "R" then
    return dissect.new_expiry_message(buffer, offset, packet, parent)
  end
  -- Dissect Special Field Message
  if code == "b" then
    return dissect.special_field_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Snapshot Order Message
  if code == "D" then
    return dissect.market_snapshot_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Add or Modify Order Message
  if code == "E" then
    return dissect.add_or_modify_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Order Message
  if code == "F" then
    return dissect.delete_order_message(buffer, offset, packet, parent)
  end
  -- Dissect Message Bundle Marker
  if code == "T" then
    return dissect.message_bundle_marker(buffer, offset, packet, parent)
  end
  -- Dissect Fixing Transition Message
  if code == "3" then
    return dissect.fixing_transition_message(buffer, offset, packet, parent)
  end
  -- Dissect Fixing Lockdown Message
  if code == "4" then
    return dissect.fixing_lockdown_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Snapshot Price Level Message
  if code == "m" then
    return dissect.market_snapshot_price_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Add Price Level Message
  if code == "t" then
    return dissect.add_price_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Change Price Level Message
  if code == "s" then
    return dissect.change_price_level_message(buffer, offset, packet, parent)
  end
  -- Dissect Delete Price Level Message
  if code == "r" then
    return dissect.delete_price_level_message(buffer, offset, packet, parent)
  end
  -- Dissect New Options Strategy Definition Message
  if code == "U" then
    return dissect.new_options_strategy_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect New Options Market Definition Message
  if code == "l" then
    return dissect.new_options_market_definition_message(buffer, offset, packet, parent)
  end
  -- Dissect RFQ Message
  if code == "k" then
    return dissect.rfq_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Open Interest Message
  if code == "v" then
    return dissect.option_open_interest_message(buffer, offset, packet, parent)
  end
  -- Dissect Option Settlement Price Message
  if code == "w" then
    return dissect.option_settlement_price_message(buffer, offset, packet, parent)
  end
  -- Dissect Old Style Options Trade and Market Stats Message
  if code == "W" then
    return dissect.old_style_options_trade_and_market_stats_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent)
  -- Parse Payload type dependency
  local code = buffer(offset - 3, 1):string()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(ice_impact_mdf_1_24.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Display Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect: Length
dissect.length = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.length, range, value, display)

  return offset + length
end

-- Display: Message Type
display.message_type = function(value)
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
    return "Message Type: Marker Index Prices (z)"
  end
  if value == "u" then
    return "Message Type: End of Day Market Summary Message (u)"
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
  if value == "D" then
    return "Message Type: Market Snapshot Order Message (D)"
  end
  if value == "E" then
    return "Message Type: Add or Modify Order Message (E)"
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
    return "Message Type: RFQ Message (k)"
  end
  if value == "v" then
    return "Message Type: Option Open Interest Message (v)"
  end
  if value == "w" then
    return "Message Type: Option Settlement Price Message (w)"
  end
  if value == "W" then
    return "Message Type: Old Style Options Trade and Market Stats Message (W)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = 1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.message_type, range, value, display)

  return offset + length, value
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String Enum with 37 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.length(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 3)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 3, 1):string()
  index = index + size_of.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: Runtime Type with 37 branches
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Display Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
dissect.timestamp = function(buffer, offset, packet, parent)
  local length = 8
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.timestamp, range, value, display)

  return offset + length
end

-- Display Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect: Count
dissect.count = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.count, range, value, display)

  return offset + length, value
end

-- Display Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect: Sequence
dissect.sequence = function(buffer, offset, packet, parent)
  local length = 4
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.sequence, range, value, display)

  return offset + length
end

-- Display Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect: Session
dissect.session = function(buffer, offset, packet, parent)
  local length = 2
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(ice_impact_mdf_1_24.fields.session, range, value, display)

  return offset + length
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: 2 Byte Unsigned Fixed Width Integer
  index = dissect.session(buffer, index, packet, parent)

  -- Sequence: 4 Byte Unsigned Fixed Width Integer
  index = dissect.sequence(buffer, index, packet, parent)

  -- Count: 2 Byte Unsigned Fixed Width Integer
  index = dissect.count(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index = dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 16)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(ice_impact_mdf_1_24.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 4 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct of 2 fields
  local message_count = buffer(index - 10, 2):uint()
  for i = 1, message_count do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function ice_impact_mdf_1_24.init()
end

-- Dissector for Ice iMpact Mdf 1.24
function ice_impact_mdf_1_24.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = ice_impact_mdf_1_24.name

  -- Dissect protocol
  local protocol = parent:add(ice_impact_mdf_1_24, buffer(), ice_impact_mdf_1_24.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, ice_impact_mdf_1_24)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.ice_impact_mdf_1_24_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Ice iMpact Mdf 1.24
local function ice_impact_mdf_1_24_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.ice_impact_mdf_1_24_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = ice_impact_mdf_1_24
  ice_impact_mdf_1_24.dissector(buffer, packet, parent)

  return true
end

-- Register Ice iMpact Mdf 1.24 Heuristic
ice_impact_mdf_1_24:register_heuristic("udp", ice_impact_mdf_1_24_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: 1.24
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
