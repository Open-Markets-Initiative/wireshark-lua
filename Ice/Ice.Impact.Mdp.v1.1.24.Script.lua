-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Ice impact v124 Protocol
local ice_impact_v124 = Proto("ice.impact.v124.lua", "Ice impact v124 Protocol")

-- Component Tables
local show = {}
local display = {}
local dissect = {}
local calculate = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Ice impact v124 Protocol Element Dissection Options
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
show.payload = true

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Ice impact v124 Protocol Fields
ice_impact_v124.fields.add_or_modify_order_message = ProtoField.new("Add or Modify Order Message", "ice.impact.v124.addormodifyordermessage", ftypes.STRING)
ice_impact_v124.fields.add_price_level_message = ProtoField.new("Add Price Level Message", "ice.impact.v124.addpricelevelmessage", ftypes.STRING)
ice_impact_v124.fields.agg__bid__qty = ProtoField.new("Agg  Bid  Qty", "ice.impact.v124.aggbidqty", ftypes.INT32)
ice_impact_v124.fields.agg__offer__qty = ProtoField.new("Agg  Offer  Qty", "ice.impact.v124.aggofferqty", ftypes.INT32)
ice_impact_v124.fields.aggressor_side = ProtoField.new("Aggressor Side", "ice.impact.v124.aggressorside", ftypes.STRING)
ice_impact_v124.fields.auction__date = ProtoField.new("Auction  Date", "ice.impact.v124.auctiondate", ftypes.STRING)
ice_impact_v124.fields.auction_end_time = ProtoField.new("Auction End Time", "ice.impact.v124.auctionendtime", ftypes.INT64)
ice_impact_v124.fields.begin_day = ProtoField.new("Begin Day", "ice.impact.v124.beginday", ftypes.INT16)
ice_impact_v124.fields.begin_month = ProtoField.new("Begin Month", "ice.impact.v124.beginmonth", ftypes.INT16)
ice_impact_v124.fields.begin_year = ProtoField.new("Begin Year", "ice.impact.v124.beginyear", ftypes.INT16)
ice_impact_v124.fields.block_volume = ProtoField.new("Block Volume", "ice.impact.v124.blockvolume", ftypes.INT32)
ice_impact_v124.fields.cancelled_trade_message = ProtoField.new("Cancelled Trade Message", "ice.impact.v124.cancelledtrademessage", ftypes.STRING)
ice_impact_v124.fields.change_price_level_message = ProtoField.new("Change Price Level Message", "ice.impact.v124.changepricelevelmessage", ftypes.STRING)
ice_impact_v124.fields.cleared_alias = ProtoField.new("Cleared Alias", "ice.impact.v124.clearedalias", ftypes.STRING)
ice_impact_v124.fields.close_price = ProtoField.new("Close Price", "ice.impact.v124.closeprice", ftypes.INT64)
ice_impact_v124.fields.close_price_message = ProtoField.new("Close Price Message", "ice.impact.v124.closepricemessage", ftypes.STRING)
ice_impact_v124.fields.contract_symbol = ProtoField.new("Contract Symbol", "ice.impact.v124.contractsymbol", ftypes.STRING)
ice_impact_v124.fields.count = ProtoField.new("Count", "ice.impact.v124.count", ftypes.UINT16)
ice_impact_v124.fields.cross_order_supported = ProtoField.new("Cross Order Supported", "ice.impact.v124.crossordersupported", ftypes.STRING)
ice_impact_v124.fields.currency = ProtoField.new("Currency", "ice.impact.v124.currency", ftypes.STRING)
ice_impact_v124.fields.date_time = ProtoField.new("Date Time", "ice.impact.v124.datetime", ftypes.INT64)
ice_impact_v124.fields.deal_price_denominator = ProtoField.new("Deal Price Denominator", "ice.impact.v124.dealpricedenominator", ftypes.STRING)
ice_impact_v124.fields.delete_order_message = ProtoField.new("Delete Order Message", "ice.impact.v124.deleteordermessage", ftypes.STRING)
ice_impact_v124.fields.delete_price_level_message = ProtoField.new("Delete Price Level Message", "ice.impact.v124.deletepricelevelmessage", ftypes.STRING)
ice_impact_v124.fields.delivery_begin_date_time = ProtoField.new("Delivery Begin Date Time", "ice.impact.v124.deliverybegindatetime", ftypes.INT64)
ice_impact_v124.fields.delivery_end_date_time = ProtoField.new("Delivery End Date Time", "ice.impact.v124.deliveryenddatetime", ftypes.INT64)
ice_impact_v124.fields.delta = ProtoField.new("Delta", "ice.impact.v124.delta", ftypes.INT64)
ice_impact_v124.fields.description = ProtoField.new("Description", "ice.impact.v124.description", ftypes.STRING)
ice_impact_v124.fields.efp_volume = ProtoField.new("EFP Volume", "ice.impact.v124.efpvolume", ftypes.INT32)
ice_impact_v124.fields.efs_volume = ProtoField.new("EFS Volume", "ice.impact.v124.efsvolume", ftypes.INT32)
ice_impact_v124.fields.end_day = ProtoField.new("End Day", "ice.impact.v124.endday", ftypes.INT16)
ice_impact_v124.fields.end_month = ProtoField.new("End Month", "ice.impact.v124.endmonth", ftypes.INT16)
ice_impact_v124.fields.end_of_day_market_summary_message = ProtoField.new("End of Day Market Summary Message", "ice.impact.v124.endofdaymarketsummarymessage", ftypes.STRING)
ice_impact_v124.fields.end_year = ProtoField.new("End Year", "ice.impact.v124.endyear", ftypes.INT16)
ice_impact_v124.fields.eur__price = ProtoField.new("EUR  Price", "ice.impact.v124.eurprice", ftypes.INT64)
ice_impact_v124.fields.event_type = ProtoField.new("Event Type", "ice.impact.v124.eventtype", ftypes.STRING)
ice_impact_v124.fields.extra_flags = ProtoField.new("Extra Flags", "ice.impact.v124.extraflags", ftypes.INT8)
ice_impact_v124.fields.fixing_lockdown_message = ProtoField.new("Fixing Lockdown Message", "ice.impact.v124.fixinglockdownmessage", ftypes.STRING)
ice_impact_v124.fields.fixing_transition_message = ProtoField.new("Fixing Transition Message", "ice.impact.v124.fixingtransitionmessage", ftypes.STRING)
ice_impact_v124.fields.flex_allowed = ProtoField.new("Flex Allowed", "ice.impact.v124.flexallowed", ftypes.STRING)
ice_impact_v124.fields.futures_contract_symbol = ProtoField.new("Futures Contract Symbol", "ice.impact.v124.futurescontractsymbol", ftypes.STRING)
ice_impact_v124.fields.gbp__price = ProtoField.new("GBP  Price", "ice.impact.v124.gbpprice", ftypes.INT64)
ice_impact_v124.fields.gt_allowed = ProtoField.new("GT Allowed", "ice.impact.v124.gtallowed", ftypes.STRING)
ice_impact_v124.fields.guaranteed_cross_supported = ProtoField.new("Guaranteed Cross Supported", "ice.impact.v124.guaranteedcrosssupported", ftypes.STRING)
ice_impact_v124.fields.has_pre_open_volume = ProtoField.new("Has Pre Open Volume", "ice.impact.v124.haspreopenvolume", ftypes.STRING)
ice_impact_v124.fields.has_previous_day_settlement_price = ProtoField.new("Has Previous Day Settlement Price", "ice.impact.v124.haspreviousdaysettlementprice", ftypes.STRING)
ice_impact_v124.fields.hedge_definition = ProtoField.new("Hedge Definition", "ice.impact.v124.hedgedefinition", ftypes.STRING)
ice_impact_v124.fields.hedge_delta = ProtoField.new("Hedge Delta", "ice.impact.v124.hedgedelta", ftypes.UINT16)
ice_impact_v124.fields.hedge_market_id = ProtoField.new("Hedge Market ID", "ice.impact.v124.hedgemarketid", ftypes.UINT32)
ice_impact_v124.fields.hedge_price = ProtoField.new("Hedge Price", "ice.impact.v124.hedgeprice", ftypes.UINT64)
ice_impact_v124.fields.hedge_price_denominator = ProtoField.new("Hedge Price Denominator", "ice.impact.v124.hedgepricedenominator", ftypes.STRING)
ice_impact_v124.fields.hedge_security_type = ProtoField.new("Hedge Security Type", "ice.impact.v124.hedgesecuritytype", ftypes.STRING)
ice_impact_v124.fields.hedge_side = ProtoField.new("Hedge Side", "ice.impact.v124.hedgeside", ftypes.STRING)
ice_impact_v124.fields.hedgebodylength = ProtoField.new("HedgeBodyLength", "ice.impact.v124.hedgebodylength", ftypes.UINT8)
ice_impact_v124.fields.high = ProtoField.new("High", "ice.impact.v124.high", ftypes.INT64)
ice_impact_v124.fields.hub_alias = ProtoField.new("Hub Alias", "ice.impact.v124.hubalias", ftypes.STRING)
ice_impact_v124.fields.hub_id = ProtoField.new("Hub ID", "ice.impact.v124.hubid", ftypes.INT32)
ice_impact_v124.fields.implied_order_count = ProtoField.new("Implied Order Count", "ice.impact.v124.impliedordercount", ftypes.INT16)
ice_impact_v124.fields.implied_quantity = ProtoField.new("Implied Quantity", "ice.impact.v124.impliedquantity", ftypes.INT32)
ice_impact_v124.fields.increment_premium_price = ProtoField.new("Increment Premium Price", "ice.impact.v124.incrementpremiumprice", ftypes.INT32)
ice_impact_v124.fields.increment_price = ProtoField.new("Increment Price", "ice.impact.v124.incrementprice", ftypes.INT32)
ice_impact_v124.fields.increment_qty = ProtoField.new("Increment Qty", "ice.impact.v124.incrementqty", ftypes.INT32)
ice_impact_v124.fields.interval_price_limit_notification_message = ProtoField.new("Interval Price Limit Notification Message", "ice.impact.v124.intervalpricelimitnotificationmessage", ftypes.STRING)
ice_impact_v124.fields.investigated_trade_message = ProtoField.new("Investigated Trade Message", "ice.impact.v124.investigatedtrademessage", ftypes.STRING)
ice_impact_v124.fields.ipl_down = ProtoField.new("IPL Down", "ice.impact.v124.ipldown", ftypes.INT64)
ice_impact_v124.fields.ipl_hold_duration = ProtoField.new("IPL Hold Duration", "ice.impact.v124.iplholdduration", ftypes.INT32)
ice_impact_v124.fields.ipl_hold_type = ProtoField.new("IPL Hold Type", "ice.impact.v124.iplholdtype", ftypes.STRING)
ice_impact_v124.fields.ipl_up = ProtoField.new("IPL Up", "ice.impact.v124.iplup", ftypes.INT64)
ice_impact_v124.fields.is_adjusted_trade = ProtoField.new("Is Adjusted Trade", "ice.impact.v124.isadjustedtrade", ftypes.STRING)
ice_impact_v124.fields.is_balanced = ProtoField.new("Is Balanced", "ice.impact.v124.isbalanced", ftypes.STRING)
ice_impact_v124.fields.is_block_only = ProtoField.new("Is Block Only", "ice.impact.v124.isblockonly", ftypes.STRING)
ice_impact_v124.fields.is_final = ProtoField.new("Is Final", "ice.impact.v124.isfinal", ftypes.STRING)
ice_impact_v124.fields.is_implied = ProtoField.new("Is Implied", "ice.impact.v124.isimplied", ftypes.STRING)
ice_impact_v124.fields.is_implied_spread_at_market_open = ProtoField.new("Is Implied Spread At Market Open", "ice.impact.v124.isimpliedspreadatmarketopen", ftypes.STRING)
ice_impact_v124.fields.is_official = ProtoField.new("Is Official", "ice.impact.v124.isofficial", ftypes.STRING)
ice_impact_v124.fields.is_rfq = ProtoField.new("Is RFQ", "ice.impact.v124.isrfq", ftypes.STRING)
ice_impact_v124.fields.is_settle_price_official = ProtoField.new("Is Settle Price Official", "ice.impact.v124.issettlepriceofficial", ftypes.STRING)
ice_impact_v124.fields.is_system_priced_leg = ProtoField.new("Is System Priced Leg", "ice.impact.v124.issystempricedleg", ftypes.STRING)
ice_impact_v124.fields.is_up = ProtoField.new("Is Up", "ice.impact.v124.isup", ftypes.STRING)
ice_impact_v124.fields.isin = ProtoField.new("ISIN", "ice.impact.v124.isin", ftypes.STRING)
ice_impact_v124.fields.last_message_sequence_id = ProtoField.new("Last Message Sequence ID", "ice.impact.v124.lastmessagesequenceid", ftypes.INT32)
ice_impact_v124.fields.last_trade_date_time = ProtoField.new("Last Trade Date Time", "ice.impact.v124.lasttradedatetime", ftypes.INT64)
ice_impact_v124.fields.last_trade_price = ProtoField.new("Last Trade Price", "ice.impact.v124.lasttradeprice", ftypes.INT64)
ice_impact_v124.fields.last_trade_quantity = ProtoField.new("Last Trade Quantity", "ice.impact.v124.lasttradequantity", ftypes.INT32)
ice_impact_v124.fields.leg_body_length = ProtoField.new("Leg Body Length", "ice.impact.v124.legbodylength", ftypes.UINT8)
ice_impact_v124.fields.leg_definition = ProtoField.new("Leg Definition", "ice.impact.v124.legdefinition", ftypes.STRING)
ice_impact_v124.fields.leg_market_id = ProtoField.new("Leg Market Id", "ice.impact.v124.legmarketid", ftypes.UINT32)
ice_impact_v124.fields.leg_ratio = ProtoField.new("Leg Ratio", "ice.impact.v124.legratio", ftypes.UINT16)
ice_impact_v124.fields.leg_side = ProtoField.new("Leg Side", "ice.impact.v124.legside", ftypes.STRING)
ice_impact_v124.fields.leg_underlying_market_id = ProtoField.new("Leg Underlying Market Id", "ice.impact.v124.legunderlyingmarketid", ftypes.UINT32)
ice_impact_v124.fields.length = ProtoField.new("Length", "ice.impact.v124.length", ftypes.UINT16)
ice_impact_v124.fields.lot_size = ProtoField.new("Lot Size", "ice.impact.v124.lotsize", ftypes.INT32)
ice_impact_v124.fields.low = ProtoField.new("Low", "ice.impact.v124.low", ftypes.INT64)
ice_impact_v124.fields.marker_index_prices = ProtoField.new("Marker Index Prices", "ice.impact.v124.markerindexprices", ftypes.STRING)
ice_impact_v124.fields.market_desc = ProtoField.new("Market Desc", "ice.impact.v124.marketdesc", ftypes.STRING)
ice_impact_v124.fields.market_event_message = ProtoField.new("Market Event Message", "ice.impact.v124.marketeventmessage", ftypes.STRING)
ice_impact_v124.fields.market_id = ProtoField.new("Market ID", "ice.impact.v124.marketid", ftypes.INT32)
ice_impact_v124.fields.market_snapshot_message = ProtoField.new("Market Snapshot Message", "ice.impact.v124.marketsnapshotmessage", ftypes.STRING)
ice_impact_v124.fields.market_snapshot_order_message = ProtoField.new("Market Snapshot Order Message", "ice.impact.v124.marketsnapshotordermessage", ftypes.STRING)
ice_impact_v124.fields.market_snapshot_price_level_message = ProtoField.new("Market Snapshot Price Level Message", "ice.impact.v124.marketsnapshotpricelevelmessage", ftypes.STRING)
ice_impact_v124.fields.market_state_change_message = ProtoField.new("Market State Change Message", "ice.impact.v124.marketstatechangemessage", ftypes.STRING)
ice_impact_v124.fields.market_statistics_message = ProtoField.new("Market Statistics Message", "ice.impact.v124.marketstatisticsmessage", ftypes.STRING)
ice_impact_v124.fields.market_type = ProtoField.new("Market Type", "ice.impact.v124.markettype", ftypes.INT16)
ice_impact_v124.fields.market_type_id = ProtoField.new("Market Type ID", "ice.impact.v124.markettypeid", ftypes.INT16)
ice_impact_v124.fields.maturity_day = ProtoField.new("Maturity Day", "ice.impact.v124.maturityday", ftypes.INT16)
ice_impact_v124.fields.maturity_month = ProtoField.new("Maturity Month", "ice.impact.v124.maturitymonth", ftypes.INT16)
ice_impact_v124.fields.maturity_year = ProtoField.new("Maturity Year", "ice.impact.v124.maturityyear", ftypes.INT16)
ice_impact_v124.fields.max_options_price = ProtoField.new("Max Options Price", "ice.impact.v124.maxoptionsprice", ftypes.INT64)
ice_impact_v124.fields.max_price = ProtoField.new("Max Price", "ice.impact.v124.maxprice", ftypes.INT64)
ice_impact_v124.fields.message = ProtoField.new("Message", "ice.impact.v124.message", ftypes.STRING)
ice_impact_v124.fields.message_bundle_marker = ProtoField.new("Message Bundle Marker", "ice.impact.v124.messagebundlemarker", ftypes.STRING)
ice_impact_v124.fields.message_header = ProtoField.new("Message Header", "ice.impact.v124.messageheader", ftypes.STRING)
ice_impact_v124.fields.message_timestamp = ProtoField.new("Message Timestamp", "ice.impact.v124.messagetimestamp", ftypes.INT64)
ice_impact_v124.fields.message_type = ProtoField.new("Message Type", "ice.impact.v124.messagetype", ftypes.STRING)
ice_impact_v124.fields.mic_code = ProtoField.new("MIC Code", "ice.impact.v124.miccode", ftypes.STRING)
ice_impact_v124.fields.min_options_price = ProtoField.new("Min Options Price", "ice.impact.v124.minoptionsprice", ftypes.INT64)
ice_impact_v124.fields.min_price = ProtoField.new("Min Price", "ice.impact.v124.minprice", ftypes.INT64)
ice_impact_v124.fields.min_qty = ProtoField.new("Min Qty", "ice.impact.v124.minqty", ftypes.INT32)
ice_impact_v124.fields.new_expiry_message = ProtoField.new("New Expiry Message", "ice.impact.v124.newexpirymessage", ftypes.STRING)
ice_impact_v124.fields.new_futures_strategy_definition_message = ProtoField.new("New Futures Strategy Definition Message", "ice.impact.v124.newfuturesstrategydefinitionmessage", ftypes.STRING)
ice_impact_v124.fields.new_options_market_definition_message = ProtoField.new("New Options Market Definition Message", "ice.impact.v124.newoptionsmarketdefinitionmessage", ftypes.STRING)
ice_impact_v124.fields.new_options_strategy_definition_message = ProtoField.new("New Options Strategy Definition Message", "ice.impact.v124.newoptionsstrategydefinitionmessage", ftypes.STRING)
ice_impact_v124.fields.notification_date_time = ProtoField.new("Notification Date Time", "ice.impact.v124.notificationdatetime", ftypes.INT64)
ice_impact_v124.fields.num_decimals_options_price = ProtoField.new("Num Decimals Options Price", "ice.impact.v124.numdecimalsoptionsprice", ftypes.STRING)
ice_impact_v124.fields.num_decimals_strike_price = ProtoField.new("Num Decimals Strike Price", "ice.impact.v124.numdecimalsstrikeprice", ftypes.STRING)
ice_impact_v124.fields.num_of_book_entries = ProtoField.new("Num Of Book Entries", "ice.impact.v124.numofbookentries", ftypes.INT32)
ice_impact_v124.fields.number_of_hedge_definitions = ProtoField.new("Number Of Hedge Definitions", "ice.impact.v124.numberofhedgedefinitions", ftypes.INT8)
ice_impact_v124.fields.number_of_leg_definitions = ProtoField.new("Number Of Leg Definitions", "ice.impact.v124.numberoflegdefinitions", ftypes.INT8)
ice_impact_v124.fields.number_of_special_fields = ProtoField.new("Number Of Special Fields", "ice.impact.v124.numberofspecialfields", ftypes.INT8)
ice_impact_v124.fields.number_of_strategy_leg_definitions = ProtoField.new("Number Of Strategy Leg Definitions", "ice.impact.v124.numberofstrategylegdefinitions", ftypes.INT8)
ice_impact_v124.fields.off_exchange_increment_option_price = ProtoField.new("Off Exchange Increment Option Price", "ice.impact.v124.offexchangeincrementoptionprice", ftypes.INT32)
ice_impact_v124.fields.off_exchange_increment_price = ProtoField.new("Off Exchange Increment Price", "ice.impact.v124.offexchangeincrementprice", ftypes.INT32)
ice_impact_v124.fields.off_exchange_increment_qty = ProtoField.new("Off Exchange Increment Qty", "ice.impact.v124.offexchangeincrementqty", ftypes.INT32)
ice_impact_v124.fields.off_exchange_increment_qty_denominator = ProtoField.new("Off Exchange Increment Qty Denominator", "ice.impact.v124.offexchangeincrementqtydenominator", ftypes.STRING)
ice_impact_v124.fields.off_market_trade_type = ProtoField.new("Off Market Trade Type", "ice.impact.v124.offmarkettradetype", ftypes.STRING)
ice_impact_v124.fields.old_off_market_trade_type = ProtoField.new("Old Off Market Trade Type", "ice.impact.v124.oldoffmarkettradetype", ftypes.STRING)
ice_impact_v124.fields.old_strip_id = ProtoField.new("Old Strip ID", "ice.impact.v124.oldstripid", ftypes.INT16)
ice_impact_v124.fields.old_style_options_trade_and_market_stats_message = ProtoField.new("Old Style Options Trade and Market Stats Message", "ice.impact.v124.oldstyleoptionstradeandmarketstatsmessage", ftypes.STRING)
ice_impact_v124.fields.open_interest = ProtoField.new("Open Interest", "ice.impact.v124.openinterest", ftypes.INT32)
ice_impact_v124.fields.open_interest_change = ProtoField.new("Open Interest Change", "ice.impact.v124.openinterestchange", ftypes.INT32)
ice_impact_v124.fields.open_interest_date = ProtoField.new("Open Interest Date", "ice.impact.v124.openinterestdate", ftypes.STRING)
ice_impact_v124.fields.open_interest_message = ProtoField.new("Open Interest Message", "ice.impact.v124.openinterestmessage", ftypes.STRING)
ice_impact_v124.fields.open_price = ProtoField.new("Open Price", "ice.impact.v124.openprice", ftypes.INT64)
ice_impact_v124.fields.open_price_message = ProtoField.new("Open Price Message", "ice.impact.v124.openpricemessage", ftypes.STRING)
ice_impact_v124.fields.opening_price = ProtoField.new("Opening Price", "ice.impact.v124.openingprice", ftypes.INT64)
ice_impact_v124.fields.option_open_interest_message = ProtoField.new("Option Open Interest Message", "ice.impact.v124.optionopeninterestmessage", ftypes.STRING)
ice_impact_v124.fields.option_settlement_price_message = ProtoField.new("Option Settlement Price Message", "ice.impact.v124.optionsettlementpricemessage", ftypes.STRING)
ice_impact_v124.fields.option_type = ProtoField.new("Option Type", "ice.impact.v124.optiontype", ftypes.STRING)
ice_impact_v124.fields.options_expiration_day = ProtoField.new("Options Expiration Day", "ice.impact.v124.optionsexpirationday", ftypes.INT16)
ice_impact_v124.fields.options_expiration_month = ProtoField.new("Options Expiration Month", "ice.impact.v124.optionsexpirationmonth", ftypes.INT16)
ice_impact_v124.fields.options_expiration_type = ProtoField.new("Options Expiration Type", "ice.impact.v124.optionsexpirationtype", ftypes.STRING)
ice_impact_v124.fields.options_expiration_year = ProtoField.new("Options Expiration Year", "ice.impact.v124.optionsexpirationyear", ftypes.INT16)
ice_impact_v124.fields.options_style = ProtoField.new("Options Style", "ice.impact.v124.optionsstyle", ftypes.STRING)
ice_impact_v124.fields.order_count = ProtoField.new("Order Count", "ice.impact.v124.ordercount", ftypes.INT16)
ice_impact_v124.fields.order_entry_date_time = ProtoField.new("Order Entry Date Time", "ice.impact.v124.orderentrydatetime", ftypes.INT64)
ice_impact_v124.fields.order_id = ProtoField.new("Order ID", "ice.impact.v124.orderid", ftypes.INT64)
ice_impact_v124.fields.order_price_denominator = ProtoField.new("Order Price Denominator", "ice.impact.v124.orderpricedenominator", ftypes.STRING)
ice_impact_v124.fields.order_sequence_id = ProtoField.new("Order Sequence ID", "ice.impact.v124.ordersequenceid", ftypes.INT16)
ice_impact_v124.fields.packet = ProtoField.new("packet", "ice.impact.v124.packet", ftypes.STRING)
ice_impact_v124.fields.packet_header = ProtoField.new("Packet Header", "ice.impact.v124.packetheader", ftypes.STRING)
ice_impact_v124.fields.payload = ProtoField.new("Payload", "ice.impact.v124.payload", ftypes.STRING)
ice_impact_v124.fields.pre_open_price = ProtoField.new("Pre Open Price", "ice.impact.v124.preopenprice", ftypes.INT64)
ice_impact_v124.fields.pre_open_price_indicator_message = ProtoField.new("Pre Open Price Indicator Message", "ice.impact.v124.preopenpriceindicatormessage", ftypes.STRING)
ice_impact_v124.fields.pre_open_volume = ProtoField.new("Pre Open Volume", "ice.impact.v124.preopenvolume", ftypes.INT32)
ice_impact_v124.fields.previous_day_settlement_price = ProtoField.new("Previous Day Settlement Price", "ice.impact.v124.previousdaysettlementprice", ftypes.INT64)
ice_impact_v124.fields.price = ProtoField.new("Price", "ice.impact.v124.price", ftypes.INT64)
ice_impact_v124.fields.price_level_position = ProtoField.new("Price Level Position", "ice.impact.v124.pricelevelposition", ftypes.INT8)
ice_impact_v124.fields.product_id = ProtoField.new("Product ID", "ice.impact.v124.productid", ftypes.INT32)
ice_impact_v124.fields.product_name = ProtoField.new("Product Name", "ice.impact.v124.productname", ftypes.STRING)
ice_impact_v124.fields.published_date_time = ProtoField.new("Published Date Time", "ice.impact.v124.publisheddatetime", ftypes.INT64)
ice_impact_v124.fields.quantity = ProtoField.new("Quantity", "ice.impact.v124.quantity", ftypes.INT32)
ice_impact_v124.fields.reserved_field1 = ProtoField.new("Reserved Field1", "ice.impact.v124.reservedfield1", ftypes.BYTES)
ice_impact_v124.fields.rfq_message = ProtoField.new("RFQ Message", "ice.impact.v124.rfqmessage", ftypes.STRING)
ice_impact_v124.fields.rfq_system_id = ProtoField.new("RFQ System ID", "ice.impact.v124.rfqsystemid", ftypes.INT64)
ice_impact_v124.fields.round = ProtoField.new("Round", "ice.impact.v124.round", ftypes.INT16)
ice_impact_v124.fields.security_sub_type = ProtoField.new("Security Sub Type", "ice.impact.v124.securitysubtype", ftypes.INT16)
ice_impact_v124.fields.sequence = ProtoField.new("Sequence", "ice.impact.v124.sequence", ftypes.UINT32)
ice_impact_v124.fields.sequence_within_millis = ProtoField.new("Sequence Within Millis", "ice.impact.v124.sequencewithinmillis", ftypes.INT32)
ice_impact_v124.fields.session = ProtoField.new("Session", "ice.impact.v124.session", ftypes.UINT16)
ice_impact_v124.fields.settle_price_date_time = ProtoField.new("Settle Price Date Time", "ice.impact.v124.settlepricedatetime", ftypes.INT64)
ice_impact_v124.fields.settle_price_denominator = ProtoField.new("Settle Price Denominator", "ice.impact.v124.settlepricedenominator", ftypes.STRING)
ice_impact_v124.fields.settlement_price = ProtoField.new("Settlement Price", "ice.impact.v124.settlementprice", ftypes.INT64)
ice_impact_v124.fields.settlement_price_message = ProtoField.new("Settlement Price Message", "ice.impact.v124.settlementpricemessage", ftypes.STRING)
ice_impact_v124.fields.settlement_price_with_deal_price_precision = ProtoField.new("Settlement Price With Deal Price Precision", "ice.impact.v124.settlementpricewithdealpriceprecision", ftypes.INT64)
ice_impact_v124.fields.settlement_type = ProtoField.new("Settlement Type", "ice.impact.v124.settlementtype", ftypes.STRING)
ice_impact_v124.fields.short_name = ProtoField.new("Short Name", "ice.impact.v124.shortname", ftypes.STRING)
ice_impact_v124.fields.side = ProtoField.new("Side", "ice.impact.v124.side", ftypes.STRING)
ice_impact_v124.fields.special_field = ProtoField.new("Special Field", "ice.impact.v124.specialfield", ftypes.STRING)
ice_impact_v124.fields.special_field_id = ProtoField.new("Special Field Id", "ice.impact.v124.specialfieldid", ftypes.UINT8)
ice_impact_v124.fields.special_field_length = ProtoField.new("Special Field Length", "ice.impact.v124.specialfieldlength", ftypes.UINT16)
ice_impact_v124.fields.special_field_message = ProtoField.new("Special Field Message", "ice.impact.v124.specialfieldmessage", ftypes.STRING)
ice_impact_v124.fields.spot_market_trade_message = ProtoField.new("Spot Market Trade Message", "ice.impact.v124.spotmarkettrademessage", ftypes.STRING)
ice_impact_v124.fields.start_or_end = ProtoField.new("Start Or End", "ice.impact.v124.startorend", ftypes.STRING)
ice_impact_v124.fields.status = ProtoField.new("Status", "ice.impact.v124.status", ftypes.STRING)
ice_impact_v124.fields.strategy_leg_definition = ProtoField.new("Strategy Leg Definition", "ice.impact.v124.strategylegdefinition", ftypes.STRING)
ice_impact_v124.fields.strategy_symbol = ProtoField.new("Strategy Symbol", "ice.impact.v124.strategysymbol", ftypes.STRING)
ice_impact_v124.fields.strike_price = ProtoField.new("Strike Price", "ice.impact.v124.strikeprice", ftypes.INT64)
ice_impact_v124.fields.strip_id = ProtoField.new("Strip ID", "ice.impact.v124.stripid", ftypes.INT32)
ice_impact_v124.fields.strip_info_message = ProtoField.new("Strip Info Message", "ice.impact.v124.stripinfomessage", ftypes.STRING)
ice_impact_v124.fields.strip_name = ProtoField.new("Strip Name", "ice.impact.v124.stripname", ftypes.STRING)
ice_impact_v124.fields.strip_type = ProtoField.new("Strip Type", "ice.impact.v124.striptype", ftypes.STRING)
ice_impact_v124.fields.system_priced_leg_type = ProtoField.new("System Priced Leg Type", "ice.impact.v124.systempricedlegtype", ftypes.STRING)
ice_impact_v124.fields.system_text_message = ProtoField.new("System Text Message", "ice.impact.v124.systemtextmessage", ftypes.STRING)
ice_impact_v124.fields.text_message = ProtoField.new("Text Message", "ice.impact.v124.textmessage", ftypes.STRING)
ice_impact_v124.fields.text_message_extra_fld = ProtoField.new("Text Message Extra Fld", "ice.impact.v124.textmessageextrafld", ftypes.STRING)
ice_impact_v124.fields.threshold__imbalance__qty = ProtoField.new("Threshold  Imbalance  Qty", "ice.impact.v124.thresholdimbalanceqty", ftypes.INT32)
ice_impact_v124.fields.tick_value = ProtoField.new("Tick Value", "ice.impact.v124.tickvalue", ftypes.INT64)
ice_impact_v124.fields.time = ProtoField.new("Time", "ice.impact.v124.time", ftypes.INT64)
ice_impact_v124.fields.timestamp = ProtoField.new("Timestamp", "ice.impact.v124.timestamp", ftypes.UINT64)
ice_impact_v124.fields.trade_id = ProtoField.new("Trade ID", "ice.impact.v124.tradeid", ftypes.INT64)
ice_impact_v124.fields.trade_message = ProtoField.new("Trade Message", "ice.impact.v124.trademessage", ftypes.STRING)
ice_impact_v124.fields.trading_status = ProtoField.new("Trading Status", "ice.impact.v124.tradingstatus", ftypes.STRING)
ice_impact_v124.fields.transact_date_time = ProtoField.new("Transact Date Time", "ice.impact.v124.transactdatetime", ftypes.INT64)
ice_impact_v124.fields.underlying_market_id = ProtoField.new("Underlying Market ID", "ice.impact.v124.underlyingmarketid", ftypes.INT32)
ice_impact_v124.fields.unit_of_measure = ProtoField.new("Unit Of Measure", "ice.impact.v124.unitofmeasure", ftypes.STRING)
ice_impact_v124.fields.unit_qty_denominator = ProtoField.new("Unit Qty Denominator", "ice.impact.v124.unitqtydenominator", ftypes.STRING)
ice_impact_v124.fields.unit_quantity = ProtoField.new("Unit Quantity", "ice.impact.v124.unitquantity", ftypes.INT32)
ice_impact_v124.fields.usd__price = ProtoField.new("USD  Price", "ice.impact.v124.usdprice", ftypes.INT64)
ice_impact_v124.fields.valuation_date____applying_date = ProtoField.new("Valuation Date /  Applying Date", "ice.impact.v124.valuationdateapplyingdate", ftypes.STRING)
ice_impact_v124.fields.valuation_date_time = ProtoField.new("Valuation Date Time", "ice.impact.v124.valuationdatetime", ftypes.INT64)
ice_impact_v124.fields.volatility = ProtoField.new("Volatility", "ice.impact.v124.volatility", ftypes.INT64)
ice_impact_v124.fields.volume = ProtoField.new("Volume", "ice.impact.v124.volume", ftypes.INT32)
ice_impact_v124.fields.vwap = ProtoField.new("VWAP", "ice.impact.v124.vwap", ftypes.INT64)

-----------------------------------------------------------------------
-- Dissect Ice impact v124 Protocol
-----------------------------------------------------------------------

-- Display VWAP
display.vwap = function(value)
  return "VWAP: "..value
end

-- Dissect VWAP Field
dissect.vwap = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.vwap(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.vwap, range, value, display)

  return offset + size
end

-- Display Low
display.low = function(value)
  return "Low: "..value
end

-- Dissect Low Field
dissect.low = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.low(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.low, range, value, display)

  return offset + size
end

-- Display High
display.high = function(value)
  return "High: "..value
end

-- Dissect High Field
dissect.high = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.high(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.high, range, value, display)

  return offset + size
end

-- Display EFP Volume
display.efp_volume = function(value)
  return "EFP Volume: "..value
end

-- Dissect EFP Volume Field
dissect.efp_volume = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.efp_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.efp_volume, range, value, display)

  return offset + size
end

-- Display EFS Volume
display.efs_volume = function(value)
  return "EFS Volume: "..value
end

-- Dissect EFS Volume Field
dissect.efs_volume = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.efs_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.efs_volume, range, value, display)

  return offset + size
end

-- Display Block Volume
display.block_volume = function(value)
  return "Block Volume: "..value
end

-- Dissect Block Volume Field
dissect.block_volume = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.block_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.block_volume, range, value, display)

  return offset + size
end

-- Display function for: Old Style Options Trade and Market Stats Message
display.old_style_options_trade_and_market_stats_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Old Style Options Trade and Market Stats Message Fields
dissect.old_style_options_trade_and_market_stats_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Block Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- High: Signed 8 Byte Integer, BigEndian
  index = dissect.high(buffer, index, packet, parent)

  -- Low: Signed 8 Byte Integer, BigEndian
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: Signed 8 Byte Integer, BigEndian
  index = dissect.vwap(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Old Style Options Trade and Market Stats Message
dissect.old_style_options_trade_and_market_stats_message = function(buffer, offset, packet, parent)
  if not show.old_style_options_trade_and_market_stats_message then
    return dissect.old_style_options_trade_and_market_stats_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 36)
  local display = display.old_style_options_trade_and_market_stats_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.old_style_options_trade_and_market_stats_message, range, display)

  return dissect.old_style_options_trade_and_market_stats_message_fields(buffer, offset, packet, element)
end

-- Display Delta
display.delta = function(value)
  return "Delta: "..value
end

-- Dissect Delta Field
dissect.delta = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.delta(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.delta, range, value, display)

  return offset + size
end

-- Display Settlement Price
display.settlement_price = function(value)
  return "Settlement Price: "..value
end

-- Dissect Settlement Price Field
dissect.settlement_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.settlement_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.settlement_price, range, value, display)

  return offset + size
end

-- Display Volatility
display.volatility = function(value)
  return "Volatility: "..value
end

-- Dissect Volatility Field
dissect.volatility = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.volatility(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.volatility, range, value, display)

  return offset + size
end

-- Display Valuation Date Time
display.valuation_date_time = function(value)
  return "Valuation Date Time: "..value
end

-- Dissect Valuation Date Time Field
dissect.valuation_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.valuation_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.valuation_date_time, range, value, display)

  return offset + size
end

-- Display Is Official
display.is_official = function(value)
  return "Is Official: "..value
end

-- Dissect Is Official Field
dissect.is_official = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_official(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_official, range, value, display)

  return offset + size
end

-- Display Date Time
display.date_time = function(value)
  return "Date Time: "..value
end

-- Dissect Date Time Field
dissect.date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.date_time, range, value, display)

  return offset + size
end

-- Display Settlement Price With Deal Price Precision
display.settlement_price_with_deal_price_precision = function(value)
  return "Settlement Price With Deal Price Precision: "..value
end

-- Dissect Settlement Price With Deal Price Precision Field
dissect.settlement_price_with_deal_price_precision = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.settlement_price_with_deal_price_precision(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.settlement_price_with_deal_price_precision, range, value, display)

  return offset + size
end

-- Display Market ID
display.market_id = function(value)
  return "Market ID: "..value
end

-- Dissect Market ID Field
dissect.market_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.market_id, range, value, display)

  return offset + size
end

-- Display function for: Option Settlement Price Message
display.option_settlement_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Option Settlement Price Message Fields
dissect.option_settlement_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: Signed 8 Byte Integer, BigEndian
  index = dissect.settlement_price_with_deal_price_precision(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Is Official: Character
  index = dissect.is_official(buffer, index, packet, parent)

  -- Valuation Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.valuation_date_time(buffer, index, packet, parent)

  -- Volatility: Signed 8 Byte Integer, BigEndian
  index = dissect.volatility(buffer, index, packet, parent)

  -- Settlement Price: Signed 8 Byte Integer, BigEndian
  index = dissect.settlement_price(buffer, index, packet, parent)

  -- Delta: Signed 8 Byte Integer, BigEndian
  index = dissect.delta(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Option Settlement Price Message
dissect.option_settlement_price_message = function(buffer, offset, packet, parent)
  if not show.option_settlement_price_message then
    return dissect.option_settlement_price_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 53)
  local display = display.option_settlement_price_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.option_settlement_price_message, range, display)

  return dissect.option_settlement_price_message_fields(buffer, offset, packet, element)
end

-- Display Open Interest Date
display.open_interest_date = function(value)
  return "Open Interest Date: "..value
end

-- Dissect Open Interest Date Field
dissect.open_interest_date = function(buffer, offset, packet, parent)
  local size = 10
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.open_interest_date(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.open_interest_date, range, value, display)

  return offset + size
end

-- Display Open Interest
display.open_interest = function(value)
  return "Open Interest: "..value
end

-- Dissect Open Interest Field
dissect.open_interest = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.open_interest(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.open_interest, range, value, display)

  return offset + size
end

-- Display function for: Option Open Interest Message
display.option_open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Option Open Interest Message Fields
dissect.option_open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Open Interest: Signed 4 Byte Integer, BigEndian
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Open Interest Date: Fixed Size String Field 10 bytes
  index = dissect.open_interest_date(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Option Open Interest Message
dissect.option_open_interest_message = function(buffer, offset, packet, parent)
  if not show.option_open_interest_message then
    return dissect.option_open_interest_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 26)
  local display = display.option_open_interest_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.option_open_interest_message, range, display)

  return dissect.option_open_interest_message_fields(buffer, offset, packet, element)
end

-- Display Side
display.side = function(value)
  return "Side: "..value
end

-- Dissect Side Field
dissect.side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.side, range, value, display)

  return offset + size
end

-- Display Quantity
display.quantity = function(value)
  return "Quantity: "..value
end

-- Dissect Quantity Field
dissect.quantity = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.quantity, range, value, display)

  return offset + size
end

-- Display Underlying Market ID
display.underlying_market_id = function(value)
  return "Underlying Market ID: "..value
end

-- Dissect Underlying Market ID Field
dissect.underlying_market_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.underlying_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.underlying_market_id, range, value, display)

  return offset + size
end

-- Display Market Type ID
display.market_type_id = function(value)
  return "Market Type ID: "..value
end

-- Dissect Market Type ID Field
dissect.market_type_id = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.market_type_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.market_type_id, range, value, display)

  return offset + size
end

-- Display RFQ System ID
display.rfq_system_id = function(value)
  return "RFQ System ID: "..value
end

-- Dissect RFQ System ID Field
dissect.rfq_system_id = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.rfq_system_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.rfq_system_id, range, value, display)

  return offset + size
end

-- Display Message Timestamp
display.message_timestamp = function(value)
  return "Message Timestamp: "..value
end

-- Dissect Message Timestamp Field
dissect.message_timestamp = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.message_timestamp(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.message_timestamp, range, value, display)

  return offset + size
end

-- Display function for: RFQ Message
display.rfq_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect RFQ Message Fields
dissect.rfq_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Message Timestamp: Signed 8 Byte Integer, BigEndian
  index = dissect.message_timestamp(buffer, index, packet, parent)

  -- RFQ System ID: Signed 8 Byte Integer, BigEndian
  index = dissect.rfq_system_id(buffer, index, packet, parent)

  -- Market Type ID: Signed 2 Byte Integer, BigEndian
  index = dissect.market_type_id(buffer, index, packet, parent)

  -- Underlying Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.underlying_market_id(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Side: Character
  index = dissect.side(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: RFQ Message
dissect.rfq_message = function(buffer, offset, packet, parent)
  if not show.rfq_message then
    return dissect.rfq_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 31)
  local display = display.rfq_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.rfq_message, range, display)

  return dissect.rfq_message_fields(buffer, offset, packet, element)
end

-- Display Unit Of Measure
display.unit_of_measure = function(value)
  return "Unit Of Measure: "..value
end

-- Dissect Unit Of Measure Field
dissect.unit_of_measure = function(buffer, offset, packet, parent)
  local size = 30
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.unit_of_measure(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.unit_of_measure, range, value, display)

  return offset + size
end

-- Display Guaranteed Cross Supported
display.guaranteed_cross_supported = function(value)
  return "Guaranteed Cross Supported: "..value
end

-- Dissect Guaranteed Cross Supported Field
dissect.guaranteed_cross_supported = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.guaranteed_cross_supported(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.guaranteed_cross_supported, range, value, display)

  return offset + size
end

-- Display Cross Order Supported
display.cross_order_supported = function(value)
  return "Cross Order Supported: "..value
end

-- Dissect Cross Order Supported Field
dissect.cross_order_supported = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.cross_order_supported(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.cross_order_supported, range, value, display)

  return offset + size
end

-- Display GT Allowed
display.gt_allowed = function(value)
  return "GT Allowed: "..value
end

-- Dissect GT Allowed Field
dissect.gt_allowed = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.gt_allowed(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.gt_allowed, range, value, display)

  return offset + size
end

-- Display Is Block Only
display.is_block_only = function(value)
  return "Is Block Only: "..value
end

-- Dissect Is Block Only Field
dissect.is_block_only = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_block_only(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_block_only, range, value, display)

  return offset + size
end

-- Display Settlement Type
display.settlement_type = function(value)
  return "Settlement Type: "..value
end

-- Dissect Settlement Type Field
dissect.settlement_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.settlement_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.settlement_type, range, value, display)

  return offset + size
end

-- Display Flex Allowed
display.flex_allowed = function(value)
  return "Flex Allowed: "..value
end

-- Dissect Flex Allowed Field
dissect.flex_allowed = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.flex_allowed(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.flex_allowed, range, value, display)

  return offset + size
end

-- Display Tick Value
display.tick_value = function(value)
  return "Tick Value: "..value
end

-- Dissect Tick Value Field
dissect.tick_value = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.tick_value(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.tick_value, range, value, display)

  return offset + size
end

-- Display Unit Qty Denominator
display.unit_qty_denominator = function(value)
  return "Unit Qty Denominator: "..value
end

-- Dissect Unit Qty Denominator Field
dissect.unit_qty_denominator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.unit_qty_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.unit_qty_denominator, range, value, display)

  return offset + size
end

-- Display Settle Price Denominator
display.settle_price_denominator = function(value)
  return "Settle Price Denominator: "..value
end

-- Dissect Settle Price Denominator Field
dissect.settle_price_denominator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.settle_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.settle_price_denominator, range, value, display)

  return offset + size
end

-- Display Hedge Market ID
display.hedge_market_id = function(value)
  return "Hedge Market ID: "..value
end

-- Dissect Hedge Market ID Field
dissect.hedge_market_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.hedge_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hedge_market_id, range, value, display)

  return offset + size
end

-- Display Options Expiration Type
display.options_expiration_type = function(value)
  return "Options Expiration Type: "..value
end

-- Dissect Options Expiration Type Field
dissect.options_expiration_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.options_expiration_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.options_expiration_type, range, value, display)

  return offset + size
end

-- Display Options Style
display.options_style = function(value)
  return "Options Style: "..value
end

-- Dissect Options Style Field
dissect.options_style = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.options_style(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.options_style, range, value, display)

  return offset + size
end

-- Display Options Expiration Day
display.options_expiration_day = function(value)
  return "Options Expiration Day: "..value
end

-- Dissect Options Expiration Day Field
dissect.options_expiration_day = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.options_expiration_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.options_expiration_day, range, value, display)

  return offset + size
end

-- Display Options Expiration Month
display.options_expiration_month = function(value)
  return "Options Expiration Month: "..value
end

-- Dissect Options Expiration Month Field
dissect.options_expiration_month = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.options_expiration_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.options_expiration_month, range, value, display)

  return offset + size
end

-- Display Options Expiration Year
display.options_expiration_year = function(value)
  return "Options Expiration Year: "..value
end

-- Dissect Options Expiration Year Field
dissect.options_expiration_year = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.options_expiration_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.options_expiration_year, range, value, display)

  return offset + size
end

-- Display Increment Premium Price
display.increment_premium_price = function(value)
  return "Increment Premium Price: "..value
end

-- Dissect Increment Premium Price Field
dissect.increment_premium_price = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.increment_premium_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.increment_premium_price, range, value, display)

  return offset + size
end

-- Display Max Options Price
display.max_options_price = function(value)
  return "Max Options Price: "..value
end

-- Dissect Max Options Price Field
dissect.max_options_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.max_options_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.max_options_price, range, value, display)

  return offset + size
end

-- Display Min Options Price
display.min_options_price = function(value)
  return "Min Options Price: "..value
end

-- Dissect Min Options Price Field
dissect.min_options_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.min_options_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.min_options_price, range, value, display)

  return offset + size
end

-- Display Num Decimals Strike Price
display.num_decimals_strike_price = function(value)
  return "Num Decimals Strike Price: "..value
end

-- Dissect Num Decimals Strike Price Field
dissect.num_decimals_strike_price = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.num_decimals_strike_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.num_decimals_strike_price, range, value, display)

  return offset + size
end

-- Display Currency
display.currency = function(value)
  return "Currency: "..value
end

-- Dissect Currency Field
dissect.currency = function(buffer, offset, packet, parent)
  local size = 20
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.currency(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.currency, range, value, display)

  return offset + size
end

-- Display Min Qty
display.min_qty = function(value)
  return "Min Qty: "..value
end

-- Dissect Min Qty Field
dissect.min_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.min_qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.min_qty, range, value, display)

  return offset + size
end

-- Display Deal Price Denominator
display.deal_price_denominator = function(value)
  return "Deal Price Denominator: "..value
end

-- Dissect Deal Price Denominator Field
dissect.deal_price_denominator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.deal_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.deal_price_denominator, range, value, display)

  return offset + size
end

-- Display Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect Strike Price Field
dissect.strike_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.strike_price, range, value, display)

  return offset + size
end

-- Display Option Type
display.option_type = function(value)
  return "Option Type: "..value
end

-- Dissect Option Type Field
dissect.option_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.option_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.option_type, range, value, display)

  return offset + size
end

-- Display Market Desc
display.market_desc = function(value)
  return "Market Desc: "..value
end

-- Dissect Market Desc Field
dissect.market_desc = function(buffer, offset, packet, parent)
  local size = 120
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.market_desc(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.market_desc, range, value, display)

  return offset + size
end

-- Display Lot Size
display.lot_size = function(value)
  return "Lot Size: "..value
end

-- Dissect Lot Size Field
dissect.lot_size = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.lot_size(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.lot_size, range, value, display)

  return offset + size
end

-- Display Increment Qty
display.increment_qty = function(value)
  return "Increment Qty: "..value
end

-- Dissect Increment Qty Field
dissect.increment_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.increment_qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.increment_qty, range, value, display)

  return offset + size
end

-- Display Order Price Denominator
display.order_price_denominator = function(value)
  return "Order Price Denominator: "..value
end

-- Dissect Order Price Denominator Field
dissect.order_price_denominator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.order_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.order_price_denominator, range, value, display)

  return offset + size
end

-- Display Trading Status
display.trading_status = function(value)
  return "Trading Status: "..value
end

-- Dissect Trading Status Field
dissect.trading_status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.trading_status(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.trading_status, range, value, display)

  return offset + size
end

-- Display Futures Contract Symbol
display.futures_contract_symbol = function(value)
  return "Futures Contract Symbol: "..value
end

-- Dissect Futures Contract Symbol Field
dissect.futures_contract_symbol = function(buffer, offset, packet, parent)
  local size = 70
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.futures_contract_symbol(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.futures_contract_symbol, range, value, display)

  return offset + size
end

-- Display function for: New Options Market Definition Message
display.new_options_market_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect New Options Market Definition Message Fields
dissect.new_options_market_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Underlying Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.underlying_market_id(buffer, index, packet, parent)

  -- Futures Contract Symbol: Fixed Size String Field 70 bytes
  index = dissect.futures_contract_symbol(buffer, index, packet, parent)

  -- Trading Status: Character
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Order Price Denominator: Character
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Lot Size: Signed 4 Byte Integer, BigEndian
  index = dissect.lot_size(buffer, index, packet, parent)

  -- Market Desc: Fixed Size String Field 120 bytes
  index = dissect.market_desc(buffer, index, packet, parent)

  -- Option Type: Character
  index = dissect.option_type(buffer, index, packet, parent)

  -- Strike Price: Signed 8 Byte Integer, BigEndian
  index = dissect.strike_price(buffer, index, packet, parent)

  -- Deal Price Denominator: Character
  index = dissect.deal_price_denominator(buffer, index, packet, parent)

  -- Min Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Currency: Fixed Size String Field 20 bytes
  index = dissect.currency(buffer, index, packet, parent)

  -- Num Decimals Strike Price: Character
  index = dissect.num_decimals_strike_price(buffer, index, packet, parent)

  -- Min Options Price: Signed 8 Byte Integer, BigEndian
  index = dissect.min_options_price(buffer, index, packet, parent)

  -- Max Options Price: Signed 8 Byte Integer, BigEndian
  index = dissect.max_options_price(buffer, index, packet, parent)

  -- Increment Premium Price: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_premium_price(buffer, index, packet, parent)

  -- Options Expiration Year: Signed 2 Byte Integer, BigEndian
  index = dissect.options_expiration_year(buffer, index, packet, parent)

  -- Options Expiration Month: Signed 2 Byte Integer, BigEndian
  index = dissect.options_expiration_month(buffer, index, packet, parent)

  -- Options Expiration Day: Signed 2 Byte Integer, BigEndian
  index = dissect.options_expiration_day(buffer, index, packet, parent)

  -- Options Style: Character
  index = dissect.options_style(buffer, index, packet, parent)

  -- Options Expiration Type: Character
  index = dissect.options_expiration_type(buffer, index, packet, parent)

  -- Hedge Market ID: Unsigned 4 Byte Integer, BigEndian
  index = dissect.hedge_market_id(buffer, index, packet, parent)

  -- Settle Price Denominator: Character
  index = dissect.settle_price_denominator(buffer, index, packet, parent)

  -- Unit Qty Denominator: Character
  index = dissect.unit_qty_denominator(buffer, index, packet, parent)

  -- Tick Value: Signed 8 Byte Integer, BigEndian
  index = dissect.tick_value(buffer, index, packet, parent)

  -- Flex Allowed: Character
  index = dissect.flex_allowed(buffer, index, packet, parent)

  -- Settlement Type: Character
  index = dissect.settlement_type(buffer, index, packet, parent)

  -- Is Block Only: Character
  index = dissect.is_block_only(buffer, index, packet, parent)

  -- GT Allowed: Character
  index = dissect.gt_allowed(buffer, index, packet, parent)

  -- Cross Order Supported: Character
  index = dissect.cross_order_supported(buffer, index, packet, parent)

  -- Guaranteed Cross Supported: Character
  index = dissect.guaranteed_cross_supported(buffer, index, packet, parent)

  -- Unit Of Measure: Fixed Size String Field 30 bytes
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: New Options Market Definition Message
dissect.new_options_market_definition_message = function(buffer, offset, packet, parent)
  if not show.new_options_market_definition_message then
    return dissect.new_options_market_definition_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 321)
  local display = display.new_options_market_definition_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.new_options_market_definition_message, range, display)

  return dissect.new_options_market_definition_message_fields(buffer, offset, packet, element)
end

-- Display Strategy Symbol
display.strategy_symbol = function(value)
  return "Strategy Symbol: "..value
end

-- Dissect Strategy Symbol Field
dissect.strategy_symbol = function(buffer, offset, packet, parent)
  local size = 18
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.strategy_symbol(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.strategy_symbol, range, value, display)

  return offset + size
end

-- Display Security Sub Type
display.security_sub_type = function(value)
  return "Security Sub Type: "..value
end

-- Dissect Security Sub Type Field
dissect.security_sub_type = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.security_sub_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.security_sub_type, range, value, display)

  return offset + size
end

-- Display Hedge Delta
display.hedge_delta = function(value)
  return "Hedge Delta: "..value
end

-- Dissect Hedge Delta Field
dissect.hedge_delta = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.hedge_delta(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hedge_delta, range, value, display)

  return offset + size
end

-- Display Hedge Price Denominator
display.hedge_price_denominator = function(value)
  return "Hedge Price Denominator: "..value
end

-- Dissect Hedge Price Denominator Field
dissect.hedge_price_denominator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.hedge_price_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hedge_price_denominator, range, value, display)

  return offset + size
end

-- Display Hedge Price
display.hedge_price = function(value)
  return "Hedge Price: "..value
end

-- Dissect Hedge Price Field
dissect.hedge_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:uint64()
  local display = display.hedge_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hedge_price, range, value, display)

  return offset + size
end

-- Display Hedge Side
display.hedge_side = function(value)
  return "Hedge Side: "..value
end

-- Dissect Hedge Side Field
dissect.hedge_side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.hedge_side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hedge_side, range, value, display)

  return offset + size
end

-- Display Hedge Security Type
display.hedge_security_type = function(value)
  return "Hedge Security Type: "..value
end

-- Dissect Hedge Security Type Field
dissect.hedge_security_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.hedge_security_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hedge_security_type, range, value, display)

  return offset + size
end

-- Display HedgeBodyLength
display.hedgebodylength = function(value)
  return "HedgeBodyLength: "..value
end

-- Dissect HedgeBodyLength Field
dissect.hedgebodylength = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.hedgebodylength(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hedgebodylength, range, value, display)

  return offset + size
end

-- Display function for: Hedge Definition
display.hedge_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Hedge Definition Fields
dissect.hedge_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- HedgeBodyLength: Unsigned 1 Byte Integer, BigEndian
  index = dissect.hedgebodylength(buffer, index, packet, parent)

  -- Hedge Market Id: Unsigned 4 Byte Integer, BigEndian
  index = dissect.hedge_market_id(buffer, index, packet, parent)

  -- Hedge Security Type: Character
  index = dissect.hedge_security_type(buffer, index, packet, parent)

  -- Hedge Side: Character
  index = dissect.hedge_side(buffer, index, packet, parent)

  -- Hedge Price: Unsigned 8 Byte Integer, BigEndian
  index = dissect.hedge_price(buffer, index, packet, parent)

  -- Hedge Price Denominator: Character
  index = dissect.hedge_price_denominator(buffer, index, packet, parent)

  -- Hedge Delta: Unsigned 2 Byte Integer, BigEndian
  index = dissect.hedge_delta(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Hedge Definition
dissect.hedge_definition = function(buffer, offset, packet, parent)
  if not show.hedge_definition then
    return dissect.hedge_definition_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 18)
  local display = display.hedge_definition(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.hedge_definition, range, display)

  return dissect.hedge_definition_fields(buffer, offset, packet, element)
end

-- Display Number Of Hedge Definitions
display.number_of_hedge_definitions = function(value)
  return "Number Of Hedge Definitions: "..value
end

-- Dissect Number Of Hedge Definitions Field
dissect.number_of_hedge_definitions = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.number_of_hedge_definitions(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.number_of_hedge_definitions, range, value, display)

  return offset + size
end

-- Display Leg Side
display.leg_side = function(value)
  return "Leg Side: "..value
end

-- Dissect Leg Side Field
dissect.leg_side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.leg_side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.leg_side, range, value, display)

  return offset + size
end

-- Display Leg Ratio
display.leg_ratio = function(value)
  return "Leg Ratio: "..value
end

-- Dissect Leg Ratio Field
dissect.leg_ratio = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.leg_ratio(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.leg_ratio, range, value, display)

  return offset + size
end

-- Display Leg Underlying Market Id
display.leg_underlying_market_id = function(value)
  return "Leg Underlying Market Id: "..value
end

-- Dissect Leg Underlying Market Id Field
dissect.leg_underlying_market_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.leg_underlying_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.leg_underlying_market_id, range, value, display)

  return offset + size
end

-- Display Leg Market Id
display.leg_market_id = function(value)
  return "Leg Market Id: "..value
end

-- Dissect Leg Market Id Field
dissect.leg_market_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.leg_market_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.leg_market_id, range, value, display)

  return offset + size
end

-- Display Leg Body Length
display.leg_body_length = function(value)
  return "Leg Body Length: "..value
end

-- Dissect Leg Body Length Field
dissect.leg_body_length = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.leg_body_length(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.leg_body_length, range, value, display)

  return offset + size
end

-- Display function for: Strategy Leg Definition
display.strategy_leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Strategy Leg Definition Fields
dissect.strategy_leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Body Length: Unsigned 1 Byte Integer, BigEndian
  index = dissect.leg_body_length(buffer, index, packet, parent)

  -- Leg Market Id: Unsigned 4 Byte Integer, BigEndian
  index = dissect.leg_market_id(buffer, index, packet, parent)

  -- Leg Underlying Market Id: Unsigned 4 Byte Integer, BigEndian
  index = dissect.leg_underlying_market_id(buffer, index, packet, parent)

  -- Leg Ratio: Unsigned 2 Byte Integer, BigEndian
  index = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Side: Character
  index = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Strategy Leg Definition
dissect.strategy_leg_definition = function(buffer, offset, packet, parent)
  if not show.strategy_leg_definition then
    return dissect.strategy_leg_definition_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 12)
  local display = display.strategy_leg_definition(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.strategy_leg_definition, range, display)

  return dissect.strategy_leg_definition_fields(buffer, offset, packet, element)
end

-- Display Number Of Strategy Leg Definitions
display.number_of_strategy_leg_definitions = function(value)
  return "Number Of Strategy Leg Definitions: "..value
end

-- Dissect Number Of Strategy Leg Definitions Field
dissect.number_of_strategy_leg_definitions = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.number_of_strategy_leg_definitions(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.number_of_strategy_leg_definitions, range, value, display)

  return offset + size
end

-- Display Increment Price
display.increment_price = function(value)
  return "Increment Price: "..value
end

-- Dissect Increment Price Field
dissect.increment_price = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.increment_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.increment_price, range, value, display)

  return offset + size
end

-- Display Contract Symbol
display.contract_symbol = function(value)
  return "Contract Symbol: "..value
end

-- Dissect Contract Symbol Field
dissect.contract_symbol = function(buffer, offset, packet, parent)
  local size = 35
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.contract_symbol(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.contract_symbol, range, value, display)

  return offset + size
end

-- Calculate runtime size: New Options Strategy Definition Message
calculate.new_options_strategy_definition_message = function(buffer, offset)
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

-- Display function for: New Options Strategy Definition Message
display.new_options_strategy_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect New Options Strategy Definition Message Fields
dissect.new_options_strategy_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Underlying Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.underlying_market_id(buffer, index, packet, parent)

  -- Contract Symbol: Fixed Size String Field 35 bytes
  index = dissect.contract_symbol(buffer, index, packet, parent)

  -- Trading Status: Character
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Order Price Denominator: Character
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Price: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_price(buffer, index, packet, parent)

  -- Increment Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Min Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Number Of Strategy Leg Definitions: Signed 1 Byte Integer, BigEndian
  index = dissect.number_of_strategy_leg_definitions(buffer, index, packet, parent)

  -- Strategy Leg Definition: Struct with 5 Fields
  local strategy_leg_definition_count = buffer(index - 1, 1):int()
  for i = 1, strategy_leg_definition_count do
    index = dissect.strategy_leg_definition(buffer, index, packet, parent)
  end


  -- Number Of Hedge Definitions: Signed 1 Byte Integer, BigEndian
  index = dissect.number_of_hedge_definitions(buffer, index, packet, parent)

  -- Hedge Definition: Struct with 7 Fields
  local hedge_definition_count = buffer(index - 1, 1):int()
  for i = 1, hedge_definition_count do
    index = dissect.hedge_definition(buffer, index, packet, parent)
  end


  -- Security Sub Type: Signed 2 Byte Integer, BigEndian
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Is Block Only: Character
  index = dissect.is_block_only(buffer, index, packet, parent)

  -- Strategy Symbol: Fixed Size String Field 18 bytes
  index = dissect.strategy_symbol(buffer, index, packet, parent)

  -- GT Allowed: Character
  index = dissect.gt_allowed(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: New Options Strategy Definition Message
dissect.new_options_strategy_definition_message = function(buffer, offset, packet, parent)
  if not show.new_options_strategy_definition_message then
    return dissect.new_options_strategy_definition_message_fields(buffer, offset, packet, parent)
  end

  local size = calculate.new_options_strategy_definition_message(buffer, offset)
  local range = buffer(offset, size)
  local display = display.new_options_strategy_definition_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.new_options_strategy_definition_message, range, display)

  return dissect.new_options_strategy_definition_message_fields(buffer, offset, packet, element)
end

-- Display Price Level Position
display.price_level_position = function(value)
  return "Price Level Position: "..value
end

-- Dissect Price Level Position Field
dissect.price_level_position = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.price_level_position(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.price_level_position, range, value, display)

  return offset + size
end

-- Display function for: Delete Price Level Message
display.delete_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Delete Price Level Message Fields
dissect.delete_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: Character
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: Signed 1 Byte Integer, BigEndian
  index = dissect.price_level_position(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Delete Price Level Message
dissect.delete_price_level_message = function(buffer, offset, packet, parent)
  if not show.delete_price_level_message then
    return dissect.delete_price_level_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 6)
  local display = display.delete_price_level_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.delete_price_level_message, range, display)

  return dissect.delete_price_level_message_fields(buffer, offset, packet, element)
end

-- Display Implied Order Count
display.implied_order_count = function(value)
  return "Implied Order Count: "..value
end

-- Dissect Implied Order Count Field
dissect.implied_order_count = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.implied_order_count(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.implied_order_count, range, value, display)

  return offset + size
end

-- Display Implied Quantity
display.implied_quantity = function(value)
  return "Implied Quantity: "..value
end

-- Dissect Implied Quantity Field
dissect.implied_quantity = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.implied_quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.implied_quantity, range, value, display)

  return offset + size
end

-- Display Order Count
display.order_count = function(value)
  return "Order Count: "..value
end

-- Dissect Order Count Field
dissect.order_count = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.order_count(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.order_count, range, value, display)

  return offset + size
end

-- Display Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect Price Field
dissect.price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.price, range, value, display)

  return offset + size
end

-- Display function for: Change Price Level Message
display.change_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Change Price Level Message Fields
dissect.change_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: Character
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: Signed 1 Byte Integer, BigEndian
  index = dissect.price_level_position(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Order Count: Signed 2 Byte Integer, BigEndian
  index = dissect.order_count(buffer, index, packet, parent)

  -- Implied Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.implied_quantity(buffer, index, packet, parent)

  -- Implied Order Count: Signed 2 Byte Integer, BigEndian
  index = dissect.implied_order_count(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Change Price Level Message
dissect.change_price_level_message = function(buffer, offset, packet, parent)
  if not show.change_price_level_message then
    return dissect.change_price_level_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 26)
  local display = display.change_price_level_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.change_price_level_message, range, display)

  return dissect.change_price_level_message_fields(buffer, offset, packet, element)
end

-- Display function for: Add Price Level Message
display.add_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Add Price Level Message Fields
dissect.add_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: Character
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: Signed 1 Byte Integer, BigEndian
  index = dissect.price_level_position(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Order Count: Signed 2 Byte Integer, BigEndian
  index = dissect.order_count(buffer, index, packet, parent)

  -- Implied Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.implied_quantity(buffer, index, packet, parent)

  -- Implied Order Count: Signed 2 Byte Integer, BigEndian
  index = dissect.implied_order_count(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Add Price Level Message
dissect.add_price_level_message = function(buffer, offset, packet, parent)
  if not show.add_price_level_message then
    return dissect.add_price_level_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 26)
  local display = display.add_price_level_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.add_price_level_message, range, display)

  return dissect.add_price_level_message_fields(buffer, offset, packet, element)
end

-- Display function for: Market Snapshot Price Level Message
display.market_snapshot_price_level_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Market Snapshot Price Level Message Fields
dissect.market_snapshot_price_level_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Side: Character
  index = dissect.side(buffer, index, packet, parent)

  -- Price Level Position: Signed 1 Byte Integer, BigEndian
  index = dissect.price_level_position(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Order Count: Signed 2 Byte Integer, BigEndian
  index = dissect.order_count(buffer, index, packet, parent)

  -- Implied Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.implied_quantity(buffer, index, packet, parent)

  -- Implied Order Count: Signed 2 Byte Integer, BigEndian
  index = dissect.implied_order_count(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Market Snapshot Price Level Message
dissect.market_snapshot_price_level_message = function(buffer, offset, packet, parent)
  if not show.market_snapshot_price_level_message then
    return dissect.market_snapshot_price_level_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 26)
  local display = display.market_snapshot_price_level_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.market_snapshot_price_level_message, range, display)

  return dissect.market_snapshot_price_level_message_fields(buffer, offset, packet, element)
end

-- Display EUR  Price
display.eur__price = function(value)
  return "EUR  Price: "..value
end

-- Dissect EUR  Price Field
dissect.eur__price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.eur__price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.eur__price, range, value, display)

  return offset + size
end

-- Display GBP  Price
display.gbp__price = function(value)
  return "GBP  Price: "..value
end

-- Dissect GBP  Price Field
dissect.gbp__price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.gbp__price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.gbp__price, range, value, display)

  return offset + size
end

-- Display Is Final
display.is_final = function(value)
  return "Is Final: "..value
end

-- Dissect Is Final Field
dissect.is_final = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_final(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_final, range, value, display)

  return offset + size
end

-- Display Is Balanced
display.is_balanced = function(value)
  return "Is Balanced: "..value
end

-- Dissect Is Balanced Field
dissect.is_balanced = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_balanced(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_balanced, range, value, display)

  return offset + size
end

-- Display USD  Price
display.usd__price = function(value)
  return "USD  Price: "..value
end

-- Dissect USD  Price Field
dissect.usd__price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.usd__price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.usd__price, range, value, display)

  return offset + size
end

-- Display Agg  Offer  Qty
display.agg__offer__qty = function(value)
  return "Agg  Offer  Qty: "..value
end

-- Dissect Agg  Offer  Qty Field
dissect.agg__offer__qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.agg__offer__qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.agg__offer__qty, range, value, display)

  return offset + size
end

-- Display Agg  Bid  Qty
display.agg__bid__qty = function(value)
  return "Agg  Bid  Qty: "..value
end

-- Dissect Agg  Bid  Qty Field
dissect.agg__bid__qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.agg__bid__qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.agg__bid__qty, range, value, display)

  return offset + size
end

-- Display Round
display.round = function(value)
  return "Round: "..value
end

-- Dissect Round Field
dissect.round = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.round(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.round, range, value, display)

  return offset + size
end

-- Display Description
display.description = function(value)
  return "Description: "..value
end

-- Dissect Description Field
dissect.description = function(buffer, offset, packet, parent)
  local size = 20
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.description(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.description, range, value, display)

  return offset + size
end

-- Display Time
display.time = function(value)
  return "Time: "..value
end

-- Dissect Time Field
dissect.time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.time, range, value, display)

  return offset + size
end

-- Display Auction  Date
display.auction__date = function(value)
  return "Auction  Date: "..value
end

-- Dissect Auction  Date Field
dissect.auction__date = function(buffer, offset, packet, parent)
  local size = 10
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.auction__date(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.auction__date, range, value, display)

  return offset + size
end

-- Display function for: Fixing Lockdown Message
display.fixing_lockdown_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fixing Lockdown Message Fields
dissect.fixing_lockdown_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Auction  Date: Fixed Size String Field 10 bytes
  index = dissect.auction__date(buffer, index, packet, parent)

  -- Time: Signed 8 Byte Integer, BigEndian
  index = dissect.time(buffer, index, packet, parent)

  -- Description: Fixed Size String Field 20 bytes
  index = dissect.description(buffer, index, packet, parent)

  -- Round: Signed 2 Byte Integer, BigEndian
  index = dissect.round(buffer, index, packet, parent)

  -- Agg  Bid  Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.agg__bid__qty(buffer, index, packet, parent)

  -- Agg  Offer  Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.agg__offer__qty(buffer, index, packet, parent)

  -- USD  Price: Signed 8 Byte Integer, BigEndian
  index = dissect.usd__price(buffer, index, packet, parent)

  -- Is Balanced: Character
  index = dissect.is_balanced(buffer, index, packet, parent)

  -- Is Final: Character
  index = dissect.is_final(buffer, index, packet, parent)

  -- GBP  Price: Signed 8 Byte Integer, BigEndian
  index = dissect.gbp__price(buffer, index, packet, parent)

  -- EUR  Price: Signed 8 Byte Integer, BigEndian
  index = dissect.eur__price(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Fixing Lockdown Message
dissect.fixing_lockdown_message = function(buffer, offset, packet, parent)
  if not show.fixing_lockdown_message then
    return dissect.fixing_lockdown_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 78)
  local display = display.fixing_lockdown_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.fixing_lockdown_message, range, display)

  return dissect.fixing_lockdown_message_fields(buffer, offset, packet, element)
end

-- Display Threshold  Imbalance  Qty
display.threshold__imbalance__qty = function(value)
  return "Threshold  Imbalance  Qty: "..value
end

-- Dissect Threshold  Imbalance  Qty Field
dissect.threshold__imbalance__qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.threshold__imbalance__qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.threshold__imbalance__qty, range, value, display)

  return offset + size
end

-- Display Auction End Time
display.auction_end_time = function(value)
  return "Auction End Time: "..value
end

-- Dissect Auction End Time Field
dissect.auction_end_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.auction_end_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.auction_end_time, range, value, display)

  return offset + size
end

-- Display Status
display.status = function(value)
  return "Status: "..value
end

-- Dissect Status Field
dissect.status = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.status(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.status, range, value, display)

  return offset + size
end

-- Display function for: Fixing Transition Message
display.fixing_transition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fixing Transition Message Fields
dissect.fixing_transition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Status: Character
  index = dissect.status(buffer, index, packet, parent)

  -- Auction End Time: Signed 8 Byte Integer, BigEndian
  index = dissect.auction_end_time(buffer, index, packet, parent)

  -- Threshold  Imbalance  Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.threshold__imbalance__qty(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Fixing Transition Message
dissect.fixing_transition_message = function(buffer, offset, packet, parent)
  if not show.fixing_transition_message then
    return dissect.fixing_transition_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 25)
  local display = display.fixing_transition_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.fixing_transition_message, range, display)

  return dissect.fixing_transition_message_fields(buffer, offset, packet, element)
end

-- Display Start Or End
display.start_or_end = function(value)
  return "Start Or End: "..value
end

-- Dissect Start Or End Field
dissect.start_or_end = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.start_or_end(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.start_or_end, range, value, display)

  return offset + size
end

-- Display function for: Message Bundle Marker
display.message_bundle_marker = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Message Bundle Marker Fields
dissect.message_bundle_marker_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Or End: Character
  index = dissect.start_or_end(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Message Bundle Marker
dissect.message_bundle_marker = function(buffer, offset, packet, parent)
  if not show.message_bundle_marker then
    return dissect.message_bundle_marker_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 1)
  local display = display.message_bundle_marker(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.message_bundle_marker, range, display)

  return dissect.message_bundle_marker_fields(buffer, offset, packet, element)
end

-- Display Order ID
display.order_id = function(value)
  return "Order ID: "..value
end

-- Dissect Order ID Field
dissect.order_id = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.order_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.order_id, range, value, display)

  return offset + size
end

-- Display function for: Delete Order Message
display.delete_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Delete Order Message Fields
dissect.delete_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Order ID: Signed 8 Byte Integer, BigEndian
  index = dissect.order_id(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Delete Order Message
dissect.delete_order_message = function(buffer, offset, packet, parent)
  if not show.delete_order_message then
    return dissect.delete_order_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 12)
  local display = display.delete_order_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.delete_order_message, range, display)

  return dissect.delete_order_message_fields(buffer, offset, packet, element)
end

-- Display Sequence Within Millis
display.sequence_within_millis = function(value)
  return "Sequence Within Millis: "..value
end

-- Dissect Sequence Within Millis Field
dissect.sequence_within_millis = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.sequence_within_millis(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.sequence_within_millis, range, value, display)

  return offset + size
end

-- Display Extra Flags
display.extra_flags = function(value)
  return "Extra Flags: "..value
end

-- Dissect Extra Flags Field
dissect.extra_flags = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.extra_flags(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.extra_flags, range, value, display)

  return offset + size
end

-- Display Order Entry Date Time
display.order_entry_date_time = function(value)
  return "Order Entry Date Time: "..value
end

-- Dissect Order Entry Date Time Field
dissect.order_entry_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.order_entry_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.order_entry_date_time, range, value, display)

  return offset + size
end

-- Display Is RFQ
display.is_rfq = function(value)
  return "Is RFQ: "..value
end

-- Dissect Is RFQ Field
dissect.is_rfq = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_rfq(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_rfq, range, value, display)

  return offset + size
end

-- Display Is Implied
display.is_implied = function(value)
  return "Is Implied: "..value
end

-- Dissect Is Implied Field
dissect.is_implied = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_implied(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_implied, range, value, display)

  return offset + size
end

-- Display Order Sequence ID
display.order_sequence_id = function(value)
  return "Order Sequence ID: "..value
end

-- Dissect Order Sequence ID Field
dissect.order_sequence_id = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.order_sequence_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.order_sequence_id, range, value, display)

  return offset + size
end

-- Display function for: Add or Modify Order Message
display.add_or_modify_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Add or Modify Order Message Fields
dissect.add_or_modify_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Order ID: Signed 8 Byte Integer, BigEndian
  index = dissect.order_id(buffer, index, packet, parent)

  -- Order Sequence ID: Signed 2 Byte Integer, BigEndian
  index = dissect.order_sequence_id(buffer, index, packet, parent)

  -- Side: Character
  index = dissect.side(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Is Implied: Character
  index = dissect.is_implied(buffer, index, packet, parent)

  -- Is RFQ: Character
  index = dissect.is_rfq(buffer, index, packet, parent)

  -- Order Entry Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.order_entry_date_time(buffer, index, packet, parent)

  -- Extra Flags: Signed 1 Byte Integer, BigEndian
  index = dissect.extra_flags(buffer, index, packet, parent)

  -- Sequence Within Millis: Signed 4 Byte Integer, BigEndian
  index = dissect.sequence_within_millis(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Add or Modify Order Message
dissect.add_or_modify_order_message = function(buffer, offset, packet, parent)
  if not show.add_or_modify_order_message then
    return dissect.add_or_modify_order_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 42)
  local display = display.add_or_modify_order_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.add_or_modify_order_message, range, display)

  return dissect.add_or_modify_order_message_fields(buffer, offset, packet, element)
end

-- Display function for: Market Snapshot Order Message
display.market_snapshot_order_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Market Snapshot Order Message Fields
dissect.market_snapshot_order_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Order ID: Signed 8 Byte Integer, BigEndian
  index = dissect.order_id(buffer, index, packet, parent)

  -- Order Sequence ID: Signed 2 Byte Integer, BigEndian
  index = dissect.order_sequence_id(buffer, index, packet, parent)

  -- Side: Character
  index = dissect.side(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Is Implied: Character
  index = dissect.is_implied(buffer, index, packet, parent)

  -- Is RFQ: Character
  index = dissect.is_rfq(buffer, index, packet, parent)

  -- Order Entry Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.order_entry_date_time(buffer, index, packet, parent)

  -- Sequence Within Millis: Signed 4 Byte Integer, BigEndian
  index = dissect.sequence_within_millis(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Market Snapshot Order Message
dissect.market_snapshot_order_message = function(buffer, offset, packet, parent)
  if not show.market_snapshot_order_message then
    return dissect.market_snapshot_order_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 41)
  local display = display.market_snapshot_order_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.market_snapshot_order_message, range, display)

  return dissect.market_snapshot_order_message_fields(buffer, offset, packet, element)
end

-- Display Special Field Length
display.special_field_length = function(value)
  return "Special Field Length: "..value
end

-- Dissect Special Field Length Field
dissect.special_field_length = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.special_field_length(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.special_field_length, range, value, display)

  return offset + size
end

-- Display Special Field Id
display.special_field_id = function(value)
  return "Special Field Id: "..value
end

-- Dissect Special Field Id Field
dissect.special_field_id = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.special_field_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.special_field_id, range, value, display)

  return offset + size
end

-- Display function for: Special Field
display.special_field = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Special Field Fields
dissect.special_field_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Special Field Id: Unsigned 1 Byte Integer, BigEndian
  index = dissect.special_field_id(buffer, index, packet, parent)

  -- Special Field Length: Unsigned 2 Byte Integer, BigEndian
  index = dissect.special_field_length(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Special Field
dissect.special_field = function(buffer, offset, packet, parent)
  if not show.special_field then
    return dissect.special_field_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 3)
  local display = display.special_field(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.special_field, range, display)

  return dissect.special_field_fields(buffer, offset, packet, element)
end

-- Display Number Of Special Fields
display.number_of_special_fields = function(value)
  return "Number Of Special Fields: "..value
end

-- Dissect Number Of Special Fields Field
dissect.number_of_special_fields = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.number_of_special_fields(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.number_of_special_fields, range, value, display)

  return offset + size
end

-- Calculate runtime size: Special Field Message
calculate.special_field_message = function(buffer, offset)
  local index = 0

  index = index + 1

  -- Calculate field size from count
  local special_field_count = buffer(offset + index - 1, 1):int()
  index = index + special_field_count * 3

  return index
end

-- Display function for: Special Field Message
display.special_field_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Special Field Message Fields
dissect.special_field_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Special Fields: Signed 1 Byte Integer, BigEndian
  index = dissect.number_of_special_fields(buffer, index, packet, parent)

  -- Special Field: Struct with 2 Fields
  local special_field_count = buffer(index - 1, 1):int()
  for i = 1, special_field_count do
    index = dissect.special_field(buffer, index, packet, parent)
  end


  return index
end

-- Dissect Struct: Special Field Message
dissect.special_field_message = function(buffer, offset, packet, parent)
  if not show.special_field_message then
    return dissect.special_field_message_fields(buffer, offset, packet, parent)
  end

  local size = calculate.special_field_message(buffer, offset)
  local range = buffer(offset, size)
  local display = display.special_field_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.special_field_message, range, display)

  return dissect.special_field_message_fields(buffer, offset, packet, element)
end

-- Display Num Decimals Options Price
display.num_decimals_options_price = function(value)
  return "Num Decimals Options Price: "..value
end

-- Dissect Num Decimals Options Price Field
dissect.num_decimals_options_price = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.num_decimals_options_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.num_decimals_options_price, range, value, display)

  return offset + size
end

-- Display ISIN
display.isin = function(value)
  return "ISIN: "..value
end

-- Dissect ISIN Field
dissect.isin = function(buffer, offset, packet, parent)
  local size = 12
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.isin(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.isin, range, value, display)

  return offset + size
end

-- Display Off Exchange Increment Option Price
display.off_exchange_increment_option_price = function(value)
  return "Off Exchange Increment Option Price: "..value
end

-- Dissect Off Exchange Increment Option Price Field
dissect.off_exchange_increment_option_price = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.off_exchange_increment_option_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.off_exchange_increment_option_price, range, value, display)

  return offset + size
end

-- Display Off Exchange Increment Price
display.off_exchange_increment_price = function(value)
  return "Off Exchange Increment Price: "..value
end

-- Dissect Off Exchange Increment Price Field
dissect.off_exchange_increment_price = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.off_exchange_increment_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.off_exchange_increment_price, range, value, display)

  return offset + size
end

-- Display Off Exchange Increment Qty
display.off_exchange_increment_qty = function(value)
  return "Off Exchange Increment Qty: "..value
end

-- Dissect Off Exchange Increment Qty Field
dissect.off_exchange_increment_qty = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.off_exchange_increment_qty(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.off_exchange_increment_qty, range, value, display)

  return offset + size
end

-- Display Off Exchange Increment Qty Denominator
display.off_exchange_increment_qty_denominator = function(value)
  return "Off Exchange Increment Qty Denominator: "..value
end

-- Dissect Off Exchange Increment Qty Denominator Field
dissect.off_exchange_increment_qty_denominator = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.off_exchange_increment_qty_denominator(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.off_exchange_increment_qty_denominator, range, value, display)

  return offset + size
end

-- Display MIC Code
display.mic_code = function(value)
  return "MIC Code: "..value
end

-- Dissect MIC Code Field
dissect.mic_code = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.mic_code(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.mic_code, range, value, display)

  return offset + size
end

-- Display Strip Name
display.strip_name = function(value)
  return "Strip Name: "..value
end

-- Dissect Strip Name Field
dissect.strip_name = function(buffer, offset, packet, parent)
  local size = 50
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.strip_name(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.strip_name, range, value, display)

  return offset + size
end

-- Display Strip ID
display.strip_id = function(value)
  return "Strip ID: "..value
end

-- Dissect Strip ID Field
dissect.strip_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.strip_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.strip_id, range, value, display)

  return offset + size
end

-- Display Hub Alias
display.hub_alias = function(value)
  return "Hub Alias: "..value
end

-- Dissect Hub Alias Field
dissect.hub_alias = function(buffer, offset, packet, parent)
  local size = 80
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.hub_alias(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hub_alias, range, value, display)

  return offset + size
end

-- Display Hub ID
display.hub_id = function(value)
  return "Hub ID: "..value
end

-- Dissect Hub ID Field
dissect.hub_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.hub_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.hub_id, range, value, display)

  return offset + size
end

-- Display Product Name
display.product_name = function(value)
  return "Product Name: "..value
end

-- Dissect Product Name Field
dissect.product_name = function(buffer, offset, packet, parent)
  local size = 62
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.product_name(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.product_name, range, value, display)

  return offset + size
end

-- Display Product ID
display.product_id = function(value)
  return "Product ID: "..value
end

-- Dissect Product ID Field
dissect.product_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.product_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.product_id, range, value, display)

  return offset + size
end

-- Display Max Price
display.max_price = function(value)
  return "Max Price: "..value
end

-- Dissect Max Price Field
dissect.max_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.max_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.max_price, range, value, display)

  return offset + size
end

-- Display Min Price
display.min_price = function(value)
  return "Min Price: "..value
end

-- Dissect Min Price Field
dissect.min_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.min_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.min_price, range, value, display)

  return offset + size
end

-- Display Cleared Alias
display.cleared_alias = function(value)
  return "Cleared Alias: "..value
end

-- Dissect Cleared Alias Field
dissect.cleared_alias = function(buffer, offset, packet, parent)
  local size = 15
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.cleared_alias(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.cleared_alias, range, value, display)

  return offset + size
end

-- Display Unit Quantity
display.unit_quantity = function(value)
  return "Unit Quantity: "..value
end

-- Dissect Unit Quantity Field
dissect.unit_quantity = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.unit_quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.unit_quantity, range, value, display)

  return offset + size
end

-- Display Maturity Day
display.maturity_day = function(value)
  return "Maturity Day: "..value
end

-- Dissect Maturity Day Field
dissect.maturity_day = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.maturity_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.maturity_day, range, value, display)

  return offset + size
end

-- Display Maturity Month
display.maturity_month = function(value)
  return "Maturity Month: "..value
end

-- Dissect Maturity Month Field
dissect.maturity_month = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.maturity_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.maturity_month, range, value, display)

  return offset + size
end

-- Display Maturity Year
display.maturity_year = function(value)
  return "Maturity Year: "..value
end

-- Dissect Maturity Year Field
dissect.maturity_year = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.maturity_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.maturity_year, range, value, display)

  return offset + size
end

-- Display function for: New Expiry Message
display.new_expiry_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect New Expiry Message Fields
dissect.new_expiry_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Market Type ID: Signed 2 Byte Integer, BigEndian
  index = dissect.market_type_id(buffer, index, packet, parent)

  -- Order Price Denominator: Character
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Price: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_price(buffer, index, packet, parent)

  -- Increment Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Lot Size: Signed 4 Byte Integer, BigEndian
  index = dissect.lot_size(buffer, index, packet, parent)

  -- Market Desc: Fixed Size String Field 120 bytes
  index = dissect.market_desc(buffer, index, packet, parent)

  -- Maturity Year: Signed 2 Byte Integer, BigEndian
  index = dissect.maturity_year(buffer, index, packet, parent)

  -- Maturity Month: Signed 2 Byte Integer, BigEndian
  index = dissect.maturity_month(buffer, index, packet, parent)

  -- Maturity Day: Signed 2 Byte Integer, BigEndian
  index = dissect.maturity_day(buffer, index, packet, parent)

  -- Deal Price Denominator: Character
  index = dissect.deal_price_denominator(buffer, index, packet, parent)

  -- Min Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Unit Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.unit_quantity(buffer, index, packet, parent)

  -- Currency: Fixed Size String Field 20 bytes
  index = dissect.currency(buffer, index, packet, parent)

  -- Cleared Alias: Fixed Size String Field 15 bytes
  index = dissect.cleared_alias(buffer, index, packet, parent)

  -- Min Price: Signed 8 Byte Integer, BigEndian
  index = dissect.min_price(buffer, index, packet, parent)

  -- Max Price: Signed 8 Byte Integer, BigEndian
  index = dissect.max_price(buffer, index, packet, parent)

  -- Product ID: Signed 4 Byte Integer, BigEndian
  index = dissect.product_id(buffer, index, packet, parent)

  -- Product Name: Fixed Size String Field 62 bytes
  index = dissect.product_name(buffer, index, packet, parent)

  -- Hub ID: Signed 4 Byte Integer, BigEndian
  index = dissect.hub_id(buffer, index, packet, parent)

  -- Hub Alias: Fixed Size String Field 80 bytes
  index = dissect.hub_alias(buffer, index, packet, parent)

  -- Strip ID: Signed 4 Byte Integer, BigEndian
  index = dissect.strip_id(buffer, index, packet, parent)

  -- Strip Name: Fixed Size String Field 50 bytes
  index = dissect.strip_name(buffer, index, packet, parent)

  -- Settle Price Denominator: Character
  index = dissect.settle_price_denominator(buffer, index, packet, parent)

  -- MIC Code: Fixed Size String Field 4 bytes
  index = dissect.mic_code(buffer, index, packet, parent)

  -- Unit Qty Denominator: Character
  index = dissect.unit_qty_denominator(buffer, index, packet, parent)

  -- Off Exchange Increment Qty Denominator: Character
  index = dissect.off_exchange_increment_qty_denominator(buffer, index, packet, parent)

  -- Off Exchange Increment Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.off_exchange_increment_qty(buffer, index, packet, parent)

  -- Off Exchange Increment Price: Signed 4 Byte Integer, BigEndian
  index = dissect.off_exchange_increment_price(buffer, index, packet, parent)

  -- Off Exchange Increment Option Price: Signed 4 Byte Integer, BigEndian
  index = dissect.off_exchange_increment_option_price(buffer, index, packet, parent)

  -- Contract Symbol: Fixed Size String Field 35 bytes
  index = dissect.contract_symbol(buffer, index, packet, parent)

  -- ISIN: Fixed Size String Field 12 bytes
  index = dissect.isin(buffer, index, packet, parent)

  -- Num Decimals Options Price: Character
  index = dissect.num_decimals_options_price(buffer, index, packet, parent)

  -- Hedge Market ID: Unsigned 4 Byte Integer, BigEndian
  index = dissect.hedge_market_id(buffer, index, packet, parent)

  -- Settlement Type: Character
  index = dissect.settlement_type(buffer, index, packet, parent)

  -- GT Allowed: Character
  index = dissect.gt_allowed(buffer, index, packet, parent)

  -- Cross Order Supported: Character
  index = dissect.cross_order_supported(buffer, index, packet, parent)

  -- Unit Of Measure: Fixed Size String Field 30 bytes
  index = dissect.unit_of_measure(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: New Expiry Message
dissect.new_expiry_message = function(buffer, offset, packet, parent)
  if not show.new_expiry_message then
    return dissect.new_expiry_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 513)
  local display = display.new_expiry_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.new_expiry_message, range, display)

  return dissect.new_expiry_message_fields(buffer, offset, packet, element)
end

-- Display function for: Leg Definition
display.leg_definition = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Leg Definition Fields
dissect.leg_definition_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Leg Body Length: Unsigned 1 Byte Integer, BigEndian
  index = dissect.leg_body_length(buffer, index, packet, parent)

  -- Leg Market Id: Unsigned 4 Byte Integer, BigEndian
  index = dissect.leg_market_id(buffer, index, packet, parent)

  -- Leg Ratio: Unsigned 2 Byte Integer, BigEndian
  index = dissect.leg_ratio(buffer, index, packet, parent)

  -- Leg Side: Character
  index = dissect.leg_side(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Leg Definition
dissect.leg_definition = function(buffer, offset, packet, parent)
  if not show.leg_definition then
    return dissect.leg_definition_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 8)
  local display = display.leg_definition(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.leg_definition, range, display)

  return dissect.leg_definition_fields(buffer, offset, packet, element)
end

-- Display Number Of Leg Definitions
display.number_of_leg_definitions = function(value)
  return "Number Of Leg Definitions: "..value
end

-- Dissect Number Of Leg Definitions Field
dissect.number_of_leg_definitions = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.number_of_leg_definitions(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.number_of_leg_definitions, range, value, display)

  return offset + size
end

-- Calculate runtime size: New Futures Strategy Definition Message
calculate.new_futures_strategy_definition_message = function(buffer, offset)
  local index = 0

  index = index + 89

  -- Calculate field size from count
  local leg_definition_count = buffer(offset + index - 1, 1):int()
  index = index + leg_definition_count * 8

  return index
end

-- Display function for: New Futures Strategy Definition Message
display.new_futures_strategy_definition_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect New Futures Strategy Definition Message Fields
dissect.new_futures_strategy_definition_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Futures Contract Symbol: Fixed Size String Field 70 bytes
  index = dissect.futures_contract_symbol(buffer, index, packet, parent)

  -- Trading Status: Character
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Order Price Denominator: Character
  index = dissect.order_price_denominator(buffer, index, packet, parent)

  -- Increment Price: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_price(buffer, index, packet, parent)

  -- Increment Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.increment_qty(buffer, index, packet, parent)

  -- Min Qty: Signed 4 Byte Integer, BigEndian
  index = dissect.min_qty(buffer, index, packet, parent)

  -- Number Of Leg Definitions: Signed 1 Byte Integer, BigEndian
  index = dissect.number_of_leg_definitions(buffer, index, packet, parent)

  -- Leg Definition: Struct with 4 Fields
  local leg_definition_count = buffer(index - 1, 1):int()
  for i = 1, leg_definition_count do
    index = dissect.leg_definition(buffer, index, packet, parent)
  end


  -- Security Sub Type: Signed 2 Byte Integer, BigEndian
  index = dissect.security_sub_type(buffer, index, packet, parent)

  -- Is Block Only: Character
  index = dissect.is_block_only(buffer, index, packet, parent)

  -- Strategy Symbol: Fixed Size String Field 18 bytes
  index = dissect.strategy_symbol(buffer, index, packet, parent)

  -- GT Allowed: Character
  index = dissect.gt_allowed(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: New Futures Strategy Definition Message
dissect.new_futures_strategy_definition_message = function(buffer, offset, packet, parent)
  if not show.new_futures_strategy_definition_message then
    return dissect.new_futures_strategy_definition_message_fields(buffer, offset, packet, parent)
  end

  local size = calculate.new_futures_strategy_definition_message(buffer, offset)
  local range = buffer(offset, size)
  local display = display.new_futures_strategy_definition_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.new_futures_strategy_definition_message, range, display)

  return dissect.new_futures_strategy_definition_message_fields(buffer, offset, packet, element)
end

-- Display IPL Down
display.ipl_down = function(value)
  return "IPL Down: "..value
end

-- Dissect IPL Down Field
dissect.ipl_down = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.ipl_down(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.ipl_down, range, value, display)

  return offset + size
end

-- Display IPL Up
display.ipl_up = function(value)
  return "IPL Up: "..value
end

-- Dissect IPL Up Field
dissect.ipl_up = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.ipl_up(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.ipl_up, range, value, display)

  return offset + size
end

-- Display IPL Hold Duration
display.ipl_hold_duration = function(value)
  return "IPL Hold Duration: "..value
end

-- Dissect IPL Hold Duration Field
dissect.ipl_hold_duration = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.ipl_hold_duration(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.ipl_hold_duration, range, value, display)

  return offset + size
end

-- Display Is Up
display.is_up = function(value)
  return "Is Up: "..value
end

-- Dissect Is Up Field
dissect.is_up = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_up(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_up, range, value, display)

  return offset + size
end

-- Display Notification Date Time
display.notification_date_time = function(value)
  return "Notification Date Time: "..value
end

-- Dissect Notification Date Time Field
dissect.notification_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.notification_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.notification_date_time, range, value, display)

  return offset + size
end

-- Display IPL Hold Type
display.ipl_hold_type = function(value)
  return "IPL Hold Type: "..value
end

-- Dissect IPL Hold Type Field
dissect.ipl_hold_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.ipl_hold_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.ipl_hold_type, range, value, display)

  return offset + size
end

-- Display function for: Interval Price Limit Notification Message
display.interval_price_limit_notification_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Interval Price Limit Notification Message Fields
dissect.interval_price_limit_notification_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- IPL Hold Type: Character
  index = dissect.ipl_hold_type(buffer, index, packet, parent)

  -- Notification Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.notification_date_time(buffer, index, packet, parent)

  -- Is Up: Character
  index = dissect.is_up(buffer, index, packet, parent)

  -- IPL Hold Duration: Signed 4 Byte Integer, BigEndian
  index = dissect.ipl_hold_duration(buffer, index, packet, parent)

  -- IPL Up: Signed 8 Byte Integer, BigEndian
  index = dissect.ipl_up(buffer, index, packet, parent)

  -- IPL Down: Signed 8 Byte Integer, BigEndian
  index = dissect.ipl_down(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Interval Price Limit Notification Message
dissect.interval_price_limit_notification_message = function(buffer, offset, packet, parent)
  if not show.interval_price_limit_notification_message then
    return dissect.interval_price_limit_notification_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 34)
  local display = display.interval_price_limit_notification_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.interval_price_limit_notification_message, range, display)

  return dissect.interval_price_limit_notification_message_fields(buffer, offset, packet, element)
end

-- Display End Day
display.end_day = function(value)
  return "End Day: "..value
end

-- Dissect End Day Field
dissect.end_day = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.end_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.end_day, range, value, display)

  return offset + size
end

-- Display End Month
display.end_month = function(value)
  return "End Month: "..value
end

-- Dissect End Month Field
dissect.end_month = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.end_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.end_month, range, value, display)

  return offset + size
end

-- Display End Year
display.end_year = function(value)
  return "End Year: "..value
end

-- Dissect End Year Field
dissect.end_year = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.end_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.end_year, range, value, display)

  return offset + size
end

-- Display Begin Day
display.begin_day = function(value)
  return "Begin Day: "..value
end

-- Dissect Begin Day Field
dissect.begin_day = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.begin_day(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.begin_day, range, value, display)

  return offset + size
end

-- Display Begin Month
display.begin_month = function(value)
  return "Begin Month: "..value
end

-- Dissect Begin Month Field
dissect.begin_month = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.begin_month(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.begin_month, range, value, display)

  return offset + size
end

-- Display Begin Year
display.begin_year = function(value)
  return "Begin Year: "..value
end

-- Dissect Begin Year Field
dissect.begin_year = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.begin_year(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.begin_year, range, value, display)

  return offset + size
end

-- Display Strip Type
display.strip_type = function(value)
  return "Strip Type: "..value
end

-- Dissect Strip Type Field
dissect.strip_type = function(buffer, offset, packet, parent)
  local size = 20
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.strip_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.strip_type, range, value, display)

  return offset + size
end

-- Display Old Strip ID
display.old_strip_id = function(value)
  return "Old Strip ID: "..value
end

-- Dissect Old Strip ID Field
dissect.old_strip_id = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.old_strip_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.old_strip_id, range, value, display)

  return offset + size
end

-- Display function for: Strip Info Message
display.strip_info_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Strip Info Message Fields
dissect.strip_info_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Old Strip ID: Signed 2 Byte Integer, BigEndian
  index = dissect.old_strip_id(buffer, index, packet, parent)

  -- Strip Type: Fixed Size String Field 20 bytes
  index = dissect.strip_type(buffer, index, packet, parent)

  -- Begin Year: Signed 2 Byte Integer, BigEndian
  index = dissect.begin_year(buffer, index, packet, parent)

  -- Begin Month: Signed 2 Byte Integer, BigEndian
  index = dissect.begin_month(buffer, index, packet, parent)

  -- Begin Day: Signed 2 Byte Integer, BigEndian
  index = dissect.begin_day(buffer, index, packet, parent)

  -- End Year: Signed 2 Byte Integer, BigEndian
  index = dissect.end_year(buffer, index, packet, parent)

  -- End Month: Signed 2 Byte Integer, BigEndian
  index = dissect.end_month(buffer, index, packet, parent)

  -- End Day: Signed 2 Byte Integer, BigEndian
  index = dissect.end_day(buffer, index, packet, parent)

  -- Strip Name: Fixed Size String Field 50 bytes
  index = dissect.strip_name(buffer, index, packet, parent)

  -- Strip ID: Signed 4 Byte Integer, BigEndian
  index = dissect.strip_id(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Strip Info Message
dissect.strip_info_message = function(buffer, offset, packet, parent)
  if not show.strip_info_message then
    return dissect.strip_info_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 88)
  local display = display.strip_info_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.strip_info_message, range, display)

  return dissect.strip_info_message_fields(buffer, offset, packet, element)
end

-- Display Pre Open Volume
display.pre_open_volume = function(value)
  return "Pre Open Volume: "..value
end

-- Dissect Pre Open Volume Field
dissect.pre_open_volume = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.pre_open_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.pre_open_volume, range, value, display)

  return offset + size
end

-- Display Has Pre Open Volume
display.has_pre_open_volume = function(value)
  return "Has Pre Open Volume: "..value
end

-- Dissect Has Pre Open Volume Field
dissect.has_pre_open_volume = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.has_pre_open_volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.has_pre_open_volume, range, value, display)

  return offset + size
end

-- Display Pre Open Price
display.pre_open_price = function(value)
  return "Pre Open Price: "..value
end

-- Dissect Pre Open Price Field
dissect.pre_open_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.pre_open_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.pre_open_price, range, value, display)

  return offset + size
end

-- Display function for: Pre Open Price Indicator Message
display.pre_open_price_indicator_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Pre Open Price Indicator Message Fields
dissect.pre_open_price_indicator_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Pre Open Price: Signed 8 Byte Integer, BigEndian
  index = dissect.pre_open_price(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Has Pre Open Volume: Character
  index = dissect.has_pre_open_volume(buffer, index, packet, parent)

  -- Pre Open Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.pre_open_volume(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Pre Open Price Indicator Message
dissect.pre_open_price_indicator_message = function(buffer, offset, packet, parent)
  if not show.pre_open_price_indicator_message then
    return dissect.pre_open_price_indicator_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 25)
  local display = display.pre_open_price_indicator_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.pre_open_price_indicator_message, range, display)

  return dissect.pre_open_price_indicator_message_fields(buffer, offset, packet, element)
end

-- Display Event Type
display.event_type = function(value)
  return "Event Type: "..value
end

-- Dissect Event Type Field
dissect.event_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.event_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.event_type, range, value, display)

  return offset + size
end

-- Display function for: Market Event Message
display.market_event_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Market Event Message Fields
dissect.market_event_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Event Type: Character
  index = dissect.event_type(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Market Event Message
dissect.market_event_message = function(buffer, offset, packet, parent)
  if not show.market_event_message then
    return dissect.market_event_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 13)
  local display = display.market_event_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.market_event_message, range, display)

  return dissect.market_event_message_fields(buffer, offset, packet, element)
end

-- Display Opening Price
display.opening_price = function(value)
  return "Opening Price: "..value
end

-- Dissect Opening Price Field
dissect.opening_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.opening_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.opening_price, range, value, display)

  return offset + size
end

-- Display Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect Volume Field
dissect.volume = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.volume, range, value, display)

  return offset + size
end

-- Display function for: End of Day Market Summary Message
display.end_of_day_market_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect End of Day Market Summary Message Fields
dissect.end_of_day_market_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.volume(buffer, index, packet, parent)

  -- Block Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- Opening Price: Signed 8 Byte Integer, BigEndian
  index = dissect.opening_price(buffer, index, packet, parent)

  -- High: Signed 8 Byte Integer, BigEndian
  index = dissect.high(buffer, index, packet, parent)

  -- Low: Signed 8 Byte Integer, BigEndian
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: Signed 8 Byte Integer, BigEndian
  index = dissect.vwap(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: Signed 8 Byte Integer, BigEndian
  index = dissect.settlement_price_with_deal_price_precision(buffer, index, packet, parent)

  -- Open Interest: Signed 4 Byte Integer, BigEndian
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Settlement Price: Signed 8 Byte Integer, BigEndian
  index = dissect.settlement_price(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: End of Day Market Summary Message
dissect.end_of_day_market_summary_message = function(buffer, offset, packet, parent)
  if not show.end_of_day_market_summary_message then
    return dissect.end_of_day_market_summary_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 80)
  local display = display.end_of_day_market_summary_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.end_of_day_market_summary_message, range, display)

  return dissect.end_of_day_market_summary_message_fields(buffer, offset, packet, element)
end

-- Display Valuation Date /  Applying Date
display.valuation_date____applying_date = function(value)
  return "Valuation Date /  Applying Date: "..value
end

-- Dissect Valuation Date /  Applying Date Field
dissect.valuation_date____applying_date = function(buffer, offset, packet, parent)
  local size = 10
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.valuation_date____applying_date(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.valuation_date____applying_date, range, value, display)

  return offset + size
end

-- Display Published Date Time
display.published_date_time = function(value)
  return "Published Date Time: "..value
end

-- Dissect Published Date Time Field
dissect.published_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.published_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.published_date_time, range, value, display)

  return offset + size
end

-- Display Short Name
display.short_name = function(value)
  return "Short Name: "..value
end

-- Dissect Short Name Field
dissect.short_name = function(buffer, offset, packet, parent)
  local size = 30
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.short_name(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.short_name, range, value, display)

  return offset + size
end

-- Display function for: Marker Index Prices
display.marker_index_prices = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Marker Index Prices Fields
dissect.marker_index_prices_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Short Name: Fixed Size String Field 30 bytes
  index = dissect.short_name(buffer, index, packet, parent)

  -- Published Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.published_date_time(buffer, index, packet, parent)

  -- Valuation Date /  Applying Date: Fixed Size String Field 10 bytes
  index = dissect.valuation_date____applying_date(buffer, index, packet, parent)

  -- Status: Character
  index = dissect.status(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Marker Index Prices
dissect.marker_index_prices = function(buffer, offset, packet, parent)
  if not show.marker_index_prices then
    return dissect.marker_index_prices_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 61)
  local display = display.marker_index_prices(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.marker_index_prices, range, display)

  return dissect.marker_index_prices_fields(buffer, offset, packet, element)
end

-- Display function for: Settlement Price Message
display.settlement_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Settlement Price Message Fields
dissect.settlement_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Is Official: Character
  index = dissect.is_official(buffer, index, packet, parent)

  -- Valuation Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.valuation_date_time(buffer, index, packet, parent)

  -- Settlement Price: Signed 8 Byte Integer, BigEndian
  index = dissect.settlement_price(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Settlement Price Message
dissect.settlement_price_message = function(buffer, offset, packet, parent)
  if not show.settlement_price_message then
    return dissect.settlement_price_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 25)
  local display = display.settlement_price_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.settlement_price_message, range, display)

  return dissect.settlement_price_message_fields(buffer, offset, packet, element)
end

-- Display Close Price
display.close_price = function(value)
  return "Close Price: "..value
end

-- Dissect Close Price Field
dissect.close_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.close_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.close_price, range, value, display)

  return offset + size
end

-- Display function for: Close Price Message
display.close_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Close Price Message Fields
dissect.close_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Close Price: Signed 8 Byte Integer, BigEndian
  index = dissect.close_price(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Close Price Message
dissect.close_price_message = function(buffer, offset, packet, parent)
  if not show.close_price_message then
    return dissect.close_price_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 20)
  local display = display.close_price_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.close_price_message, range, display)

  return dissect.close_price_message_fields(buffer, offset, packet, element)
end

-- Display Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect Open Price Field
dissect.open_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.open_price, range, value, display)

  return offset + size
end

-- Display function for: Open Price Message
display.open_price_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Open Price Message Fields
dissect.open_price_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Open Price: Signed 8 Byte Integer, BigEndian
  index = dissect.open_price(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Open Price Message
dissect.open_price_message = function(buffer, offset, packet, parent)
  if not show.open_price_message then
    return dissect.open_price_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 20)
  local display = display.open_price_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.open_price_message, range, display)

  return dissect.open_price_message_fields(buffer, offset, packet, element)
end

-- Display Open Interest Change
display.open_interest_change = function(value)
  return "Open Interest Change: "..value
end

-- Dissect Open Interest Change Field
dissect.open_interest_change = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.open_interest_change(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.open_interest_change, range, value, display)

  return offset + size
end

-- Display function for: Open Interest Message
display.open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Open Interest Message Fields
dissect.open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Open Interest: Signed 4 Byte Integer, BigEndian
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Open Interest Change: Signed 4 Byte Integer, BigEndian
  index = dissect.open_interest_change(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Open Interest Date: Fixed Size String Field 10 bytes
  index = dissect.open_interest_date(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Open Interest Message
dissect.open_interest_message = function(buffer, offset, packet, parent)
  if not show.open_interest_message then
    return dissect.open_interest_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 30)
  local display = display.open_interest_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.open_interest_message, range, display)

  return dissect.open_interest_message_fields(buffer, offset, packet, element)
end

-- Display Text Message Extra Fld
display.text_message_extra_fld = function(value)
  return "Text Message Extra Fld: "..value
end

-- Dissect Text Message Extra Fld Field
dissect.text_message_extra_fld = function(buffer, offset, packet, parent)
  local size = 800
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.text_message_extra_fld(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.text_message_extra_fld, range, value, display)

  return offset + size
end

-- Display Text Message
display.text_message = function(value)
  return "Text Message: "..value
end

-- Dissect Text Message Field
dissect.text_message = function(buffer, offset, packet, parent)
  local size = 200
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.text_message(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.text_message, range, value, display)

  return offset + size
end

-- Display function for: System Text Message
display.system_text_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect System Text Message Fields
dissect.system_text_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Text Message: Fixed Size String Field 200 bytes
  index = dissect.text_message(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Text Message Extra Fld: Fixed Size String Field 800 bytes
  index = dissect.text_message_extra_fld(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: System Text Message
dissect.system_text_message = function(buffer, offset, packet, parent)
  if not show.system_text_message then
    return dissect.system_text_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 1008)
  local display = display.system_text_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.system_text_message, range, display)

  return dissect.system_text_message_fields(buffer, offset, packet, element)
end

-- Display function for: Market State Change Message
display.market_state_change_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Market State Change Message Fields
dissect.market_state_change_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trading Status: Character
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Market State Change Message
dissect.market_state_change_message = function(buffer, offset, packet, parent)
  if not show.market_state_change_message then
    return dissect.market_state_change_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 13)
  local display = display.market_state_change_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.market_state_change_message, range, display)

  return dissect.market_state_change_message_fields(buffer, offset, packet, element)
end

-- Display function for: Market Statistics Message
display.market_statistics_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Market Statistics Message Fields
dissect.market_statistics_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.volume(buffer, index, packet, parent)

  -- Block Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- High: Signed 8 Byte Integer, BigEndian
  index = dissect.high(buffer, index, packet, parent)

  -- Low: Signed 8 Byte Integer, BigEndian
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: Signed 8 Byte Integer, BigEndian
  index = dissect.vwap(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Market Statistics Message
dissect.market_statistics_message = function(buffer, offset, packet, parent)
  if not show.market_statistics_message then
    return dissect.market_statistics_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 52)
  local display = display.market_statistics_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.market_statistics_message, range, display)

  return dissect.market_statistics_message_fields(buffer, offset, packet, element)
end

-- Display Off Market Trade Type
display.off_market_trade_type = function(value)
  return "Off Market Trade Type: "..value
end

-- Dissect Off Market Trade Type Field
dissect.off_market_trade_type = function(buffer, offset, packet, parent)
  local size = 3
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.off_market_trade_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.off_market_trade_type, range, value, display)

  return offset + size
end

-- Display Old Off Market Trade Type
display.old_off_market_trade_type = function(value)
  return "Old Off Market Trade Type: "..value
end

-- Dissect Old Off Market Trade Type Field
dissect.old_off_market_trade_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.old_off_market_trade_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.old_off_market_trade_type, range, value, display)

  return offset + size
end

-- Display Trade ID
display.trade_id = function(value)
  return "Trade ID: "..value
end

-- Dissect Trade ID Field
dissect.trade_id = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.trade_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.trade_id, range, value, display)

  return offset + size
end

-- Display function for: Cancelled Trade Message
display.cancelled_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Cancelled Trade Message Fields
dissect.cancelled_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: Signed 8 Byte Integer, BigEndian
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Old Off Market Trade Type: Character
  index = dissect.old_off_market_trade_type(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Off Market Trade Type: Fixed Size String Field 3 bytes
  index = dissect.off_market_trade_type(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Cancelled Trade Message
dissect.cancelled_trade_message = function(buffer, offset, packet, parent)
  if not show.cancelled_trade_message then
    return dissect.cancelled_trade_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 36)
  local display = display.cancelled_trade_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.cancelled_trade_message, range, display)

  return dissect.cancelled_trade_message_fields(buffer, offset, packet, element)
end

-- Display function for: Investigated Trade Message
display.investigated_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Investigated Trade Message Fields
dissect.investigated_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: Signed 8 Byte Integer, BigEndian
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Old Off Market Trade Type: Character
  index = dissect.old_off_market_trade_type(buffer, index, packet, parent)

  -- Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.date_time(buffer, index, packet, parent)

  -- Status: Character
  index = dissect.status(buffer, index, packet, parent)

  -- Off Market Trade Type: Fixed Size String Field 3 bytes
  index = dissect.off_market_trade_type(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Investigated Trade Message
dissect.investigated_trade_message = function(buffer, offset, packet, parent)
  if not show.investigated_trade_message then
    return dissect.investigated_trade_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 37)
  local display = display.investigated_trade_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.investigated_trade_message, range, display)

  return dissect.investigated_trade_message_fields(buffer, offset, packet, element)
end

-- Display Is System Priced Leg
display.is_system_priced_leg = function(value)
  return "Is System Priced Leg: "..value
end

-- Dissect Is System Priced Leg Field
dissect.is_system_priced_leg = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_system_priced_leg(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_system_priced_leg, range, value, display)

  return offset + size
end

-- Display Delivery End Date Time
display.delivery_end_date_time = function(value)
  return "Delivery End Date Time: "..value
end

-- Dissect Delivery End Date Time Field
dissect.delivery_end_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.delivery_end_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.delivery_end_date_time, range, value, display)

  return offset + size
end

-- Display Delivery Begin Date Time
display.delivery_begin_date_time = function(value)
  return "Delivery Begin Date Time: "..value
end

-- Dissect Delivery Begin Date Time Field
dissect.delivery_begin_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.delivery_begin_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.delivery_begin_date_time, range, value, display)

  return offset + size
end

-- Display Transact Date Time
display.transact_date_time = function(value)
  return "Transact Date Time: "..value
end

-- Dissect Transact Date Time Field
dissect.transact_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.transact_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.transact_date_time, range, value, display)

  return offset + size
end

-- Display function for: Spot Market Trade Message
display.spot_market_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Spot Market Trade Message Fields
dissect.spot_market_trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: Signed 8 Byte Integer, BigEndian
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Transact Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.transact_date_time(buffer, index, packet, parent)

  -- Extra Flags: Signed 1 Byte Integer, BigEndian
  index = dissect.extra_flags(buffer, index, packet, parent)

  -- Delivery Begin Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.delivery_begin_date_time(buffer, index, packet, parent)

  -- Delivery End Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.delivery_end_date_time(buffer, index, packet, parent)

  -- Is System Priced Leg: Character
  index = dissect.is_system_priced_leg(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Spot Market Trade Message
dissect.spot_market_trade_message = function(buffer, offset, packet, parent)
  if not show.spot_market_trade_message then
    return dissect.spot_market_trade_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 50)
  local display = display.spot_market_trade_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.spot_market_trade_message, range, display)

  return dissect.spot_market_trade_message_fields(buffer, offset, packet, element)
end

-- Display Aggressor Side
display.aggressor_side = function(value)
  return "Aggressor Side: "..value
end

-- Dissect Aggressor Side Field
dissect.aggressor_side = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.aggressor_side(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.aggressor_side, range, value, display)

  return offset + size
end

-- Display Is Adjusted Trade
display.is_adjusted_trade = function(value)
  return "Is Adjusted Trade: "..value
end

-- Dissect Is Adjusted Trade Field
dissect.is_adjusted_trade = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_adjusted_trade(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_adjusted_trade, range, value, display)

  return offset + size
end

-- Display Is Implied Spread At Market Open
display.is_implied_spread_at_market_open = function(value)
  return "Is Implied Spread At Market Open: "..value
end

-- Dissect Is Implied Spread At Market Open Field
dissect.is_implied_spread_at_market_open = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_implied_spread_at_market_open(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_implied_spread_at_market_open, range, value, display)

  return offset + size
end

-- Display System Priced Leg Type
display.system_priced_leg_type = function(value)
  return "System Priced Leg Type: "..value
end

-- Dissect System Priced Leg Type Field
dissect.system_priced_leg_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.system_priced_leg_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.system_priced_leg_type, range, value, display)

  return offset + size
end

-- Display function for: Trade Message
display.trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Trade Message Fields
dissect.trade_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Trade ID: Signed 8 Byte Integer, BigEndian
  index = dissect.trade_id(buffer, index, packet, parent)

  -- Is System Priced Leg: Character
  index = dissect.is_system_priced_leg(buffer, index, packet, parent)

  -- Price: Signed 8 Byte Integer, BigEndian
  index = dissect.price(buffer, index, packet, parent)

  -- Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.quantity(buffer, index, packet, parent)

  -- Old Off Market Trade Type: Character
  index = dissect.old_off_market_trade_type(buffer, index, packet, parent)

  -- Transact Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.transact_date_time(buffer, index, packet, parent)

  -- System Priced Leg Type: Character
  index = dissect.system_priced_leg_type(buffer, index, packet, parent)

  -- Is Implied Spread At Market Open: Character
  index = dissect.is_implied_spread_at_market_open(buffer, index, packet, parent)

  -- Is Adjusted Trade: Character
  index = dissect.is_adjusted_trade(buffer, index, packet, parent)

  -- Aggressor Side: Character
  index = dissect.aggressor_side(buffer, index, packet, parent)

  -- Extra Flags: Signed 1 Byte Integer, BigEndian
  index = dissect.extra_flags(buffer, index, packet, parent)

  -- Off Market Trade Type: Fixed Size String Field 3 bytes
  index = dissect.off_market_trade_type(buffer, index, packet, parent)

  -- Sequence Within Millis: Signed 4 Byte Integer, BigEndian
  index = dissect.sequence_within_millis(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Trade Message
dissect.trade_message = function(buffer, offset, packet, parent)
  if not show.trade_message then
    return dissect.trade_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 46)
  local display = display.trade_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.trade_message, range, display)

  return dissect.trade_message_fields(buffer, offset, packet, element)
end

-- Display Previous Day Settlement Price
display.previous_day_settlement_price = function(value)
  return "Previous Day Settlement Price: "..value
end

-- Dissect Previous Day Settlement Price Field
dissect.previous_day_settlement_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.previous_day_settlement_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.previous_day_settlement_price, range, value, display)

  return offset + size
end

-- Display Has Previous Day Settlement Price
display.has_previous_day_settlement_price = function(value)
  return "Has Previous Day Settlement Price: "..value
end

-- Dissect Has Previous Day Settlement Price Field
dissect.has_previous_day_settlement_price = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.has_previous_day_settlement_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.has_previous_day_settlement_price, range, value, display)

  return offset + size
end

-- Display Is Settle Price Official
display.is_settle_price_official = function(value)
  return "Is Settle Price Official: "..value
end

-- Dissect Is Settle Price Official Field
dissect.is_settle_price_official = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.is_settle_price_official(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.is_settle_price_official, range, value, display)

  return offset + size
end

-- Display Reserved Field1
display.reserved_field1 = function(value)
  return "Reserved Field1: "..value
end

-- Dissect Reserved Field1 Field
dissect.reserved_field1 = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_field1(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.reserved_field1, range, value, display)

  return offset + size
end

-- Display Last Message Sequence ID
display.last_message_sequence_id = function(value)
  return "Last Message Sequence ID: "..value
end

-- Dissect Last Message Sequence ID Field
dissect.last_message_sequence_id = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.last_message_sequence_id(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.last_message_sequence_id, range, value, display)

  return offset + size
end

-- Display Settle Price Date Time
display.settle_price_date_time = function(value)
  return "Settle Price Date Time: "..value
end

-- Dissect Settle Price Date Time Field
dissect.settle_price_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.settle_price_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.settle_price_date_time, range, value, display)

  return offset + size
end

-- Display Last Trade Date Time
display.last_trade_date_time = function(value)
  return "Last Trade Date Time: "..value
end

-- Dissect Last Trade Date Time Field
dissect.last_trade_date_time = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.last_trade_date_time(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.last_trade_date_time, range, value, display)

  return offset + size
end

-- Display Last Trade Quantity
display.last_trade_quantity = function(value)
  return "Last Trade Quantity: "..value
end

-- Dissect Last Trade Quantity Field
dissect.last_trade_quantity = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.last_trade_quantity(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.last_trade_quantity, range, value, display)

  return offset + size
end

-- Display Last Trade Price
display.last_trade_price = function(value)
  return "Last Trade Price: "..value
end

-- Dissect Last Trade Price Field
dissect.last_trade_price = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:int64()
  local display = display.last_trade_price(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.last_trade_price, range, value, display)

  return offset + size
end

-- Display Num Of Book Entries
display.num_of_book_entries = function(value)
  return "Num Of Book Entries: "..value
end

-- Dissect Num Of Book Entries Field
dissect.num_of_book_entries = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.num_of_book_entries(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.num_of_book_entries, range, value, display)

  return offset + size
end

-- Display Market Type
display.market_type = function(value)
  return "Market Type: "..value
end

-- Dissect Market Type Field
dissect.market_type = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:int()
  local display = display.market_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.market_type, range, value, display)

  return offset + size
end

-- Display function for: Market Snapshot Message
display.market_snapshot_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Market Snapshot Message Fields
dissect.market_snapshot_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market ID: Signed 4 Byte Integer, BigEndian
  index = dissect.market_id(buffer, index, packet, parent)

  -- Market Type: Signed 2 Byte Integer, BigEndian
  index = dissect.market_type(buffer, index, packet, parent)

  -- Trading Status: Character
  index = dissect.trading_status(buffer, index, packet, parent)

  -- Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.volume(buffer, index, packet, parent)

  -- Block Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.block_volume(buffer, index, packet, parent)

  -- EFS Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efs_volume(buffer, index, packet, parent)

  -- EFP Volume: Signed 4 Byte Integer, BigEndian
  index = dissect.efp_volume(buffer, index, packet, parent)

  -- Open Interest: Signed 4 Byte Integer, BigEndian
  index = dissect.open_interest(buffer, index, packet, parent)

  -- Opening Price: Signed 8 Byte Integer, BigEndian
  index = dissect.opening_price(buffer, index, packet, parent)

  -- Settlement Price With Deal Price Precision: Signed 8 Byte Integer, BigEndian
  index = dissect.settlement_price_with_deal_price_precision(buffer, index, packet, parent)

  -- High: Signed 8 Byte Integer, BigEndian
  index = dissect.high(buffer, index, packet, parent)

  -- Low: Signed 8 Byte Integer, BigEndian
  index = dissect.low(buffer, index, packet, parent)

  -- VWAP: Signed 8 Byte Integer, BigEndian
  index = dissect.vwap(buffer, index, packet, parent)

  -- Num Of Book Entries: Signed 4 Byte Integer, BigEndian
  index = dissect.num_of_book_entries(buffer, index, packet, parent)

  -- Last Trade Price: Signed 8 Byte Integer, BigEndian
  index = dissect.last_trade_price(buffer, index, packet, parent)

  -- Last Trade Quantity: Signed 4 Byte Integer, BigEndian
  index = dissect.last_trade_quantity(buffer, index, packet, parent)

  -- Last Trade Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.last_trade_date_time(buffer, index, packet, parent)

  -- Settle Price Date Time: Signed 8 Byte Integer, BigEndian
  index = dissect.settle_price_date_time(buffer, index, packet, parent)

  -- Last Message Sequence ID: Signed 4 Byte Integer, BigEndian
  index = dissect.last_message_sequence_id(buffer, index, packet, parent)

  -- Reserved Field1: 2 Byte Fixed Size Array
  index = dissect.reserved_field1(buffer, index, packet, parent)

  -- Open Interest Date: Fixed Size String Field 10 bytes
  index = dissect.open_interest_date(buffer, index, packet, parent)

  -- Is Settle Price Official: Character
  index = dissect.is_settle_price_official(buffer, index, packet, parent)

  -- Settlement Price: Signed 8 Byte Integer, BigEndian
  index = dissect.settlement_price(buffer, index, packet, parent)

  -- Has Previous Day Settlement Price: Character
  index = dissect.has_previous_day_settlement_price(buffer, index, packet, parent)

  -- Previous Day Settlement Price: Signed 8 Byte Integer, BigEndian
  index = dissect.previous_day_settlement_price(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Market Snapshot Message
dissect.market_snapshot_message = function(buffer, offset, packet, parent)
  if not show.market_snapshot_message then
    return dissect.market_snapshot_message_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 133)
  local display = display.market_snapshot_message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.market_snapshot_message, range, display)

  return dissect.market_snapshot_message_fields(buffer, offset, packet, element)
end

-- Calculate runtime size of: Payload
calculate.payload = function(buffer, offset, code)
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
    return calculate.new_futures_strategy_definition_message(buffer, offset)
  end
  -- Size of New Expiry Message
  if code == "R" then
    return 513
  end
  -- Size of Special Field Message
  if code == "b" then
    return calculate.special_field_message(buffer, offset)
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
    return calculate.new_options_strategy_definition_message(buffer, offset)
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

  -- Report error
  error("Unknown Type: "..code)

  return 0
end

-- Display function for Branch: Payload
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
  -- Parse payload type dependency
  local code = buffer(offset - 3, 1):string()

  if not show.payload then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Calculate size
  local size = calculate.payload(buffer, offset, code)
  if size < 1 then
    return dissect.payload_branches(code, buffer, offset, packet, parent)
  end

  -- Dissect if branch has fields
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.payload, range, display)

  return dissect.payload_branches(code, buffer, offset, packet, element)
end

-- Display Length
display.length = function(value)
  return "Length: "..value
end

-- Dissect Length Field
dissect.length = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.length(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.length, range, value, display)

  return offset + size
end

-- Display Field: Message Type
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

-- Dissect Message Type Field
dissect.message_type = function(buffer, offset, packet, parent)
  local size = 1
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.message_type, range, value, display)

  return offset + size
end

-- Display function for: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Message Header Fields
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: Character Enum with 37 values
  index = dissect.message_type(buffer, index, packet, parent)

  -- Length: Unsigned 2 Byte Integer, BigEndian
  index = dissect.length(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  if not show.message_header then
    return dissect.message_header_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 3)
  local display = display.message_header(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.message_header, range, display)

  return dissect.message_header_fields(buffer, offset, packet, element)
end

-- Calculate runtime size: Message
calculate.message = function(buffer, offset)
  local index = 0

  index = index + 3

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 3, 1):string()
  index = index + calculate.payload(buffer, payload_offset, payload_type)

  return index
end

-- Display function for: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Message Fields
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct with 2 Fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Payload: 37  Branches with runtime type Message Type
  index = dissect.payload(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Message
dissect.message = function(buffer, offset, packet, parent)
  if not show.message then
    return dissect.message_fields(buffer, offset, packet, parent)
  end

  local size = calculate.message(buffer, offset)
  local range = buffer(offset, size)
  local display = display.message(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.message, range, display)

  return dissect.message_fields(buffer, offset, packet, element)
end

-- Display Timestamp
display.timestamp = function(value)
  return "Timestamp: "..value
end

-- Dissect Timestamp Field
dissect.timestamp = function(buffer, offset, packet, parent)
  local size = 8
  local range = buffer(offset, size)
  local value = range:uint64()
  local display = display.timestamp(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.timestamp, range, value, display)

  return offset + size
end

-- Display Count
display.count = function(value)
  return "Count: "..value
end

-- Dissect Count Field
dissect.count = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.count(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.count, range, value, display)

  return offset + size
end

-- Display Sequence
display.sequence = function(value)
  return "Sequence: "..value
end

-- Dissect Sequence Field
dissect.sequence = function(buffer, offset, packet, parent)
  local size = 4
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.sequence(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.sequence, range, value, display)

  return offset + size
end

-- Display Session
display.session = function(value)
  return "Session: "..value
end

-- Dissect Session Field
dissect.session = function(buffer, offset, packet, parent)
  local size = 2
  local range = buffer(offset, size)
  local value = range:uint()
  local display = display.session(value, buffer, offset, packet, parent)

  parent:add(ice_impact_v124.fields.session, range, value, display)

  return offset + size
end

-- Display function for: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Packet Header Fields
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Unsigned 2 Byte Integer, BigEndian
  index = dissect.session(buffer, index, packet, parent)

  -- Sequence: Unsigned 4 Byte Integer, BigEndian
  index = dissect.sequence(buffer, index, packet, parent)

  -- Count: Unsigned 2 Byte Integer, BigEndian
  index = dissect.count(buffer, index, packet, parent)

  -- Timestamp: Unsigned 8 Byte Integer, BigEndian
  index = dissect.timestamp(buffer, index, packet, parent)

  return index
end

-- Dissect Struct: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  if not show.packet_header then
    return dissect.packet_header_fields(buffer, offset, packet, parent)
  end

  local range = buffer(offset, 16)
  local display = display.packet_header(buffer, packet, parent)
  local element = parent:add(ice_impact_v124.fields.packet_header, range, display)

  return dissect.packet_header_fields(buffer, offset, packet, element)
end

-- Dissect packet
function dissect.packet(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct with 4 Fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Message: Struct with 2 Fields
  local message_count = buffer(index - 10, 2):uint()
  for i = 1, message_count do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize dissector variables
function ice_impact_v124.init()
end
-- Dissector for ice impact v124 protocol
function ice_impact_v124.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = ice_impact_v124.name

  -- Dissect protocol
  local protocol = parent:add(ice_impact_v124, buffer(), ice_impact_v124.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register ice impact v124 protocol with udp table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, ice_impact_v124)

-- Verify size of packet
verify.ice_impact_v124_packet_size = function(buffer)

  return true
end

-- Dissector heuristic for ice impact v124 protocol
local function ice_impact_v124_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.ice_impact_v124_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = ice_impact_v124
  ice_impact_v124.dissector(buffer, packet, parent)

  return true
end

-- Register ice impact v124 protocol heuristic
ice_impact_v124:register_heuristic("udp", ice_impact_v124_heuristic)

-----------------------------------------------------------------------
-- This file was generated by a tool for the open markets initiative
-- Protocol Version: v124
-- Script Version: 1.0.0.0
-- Date:
-- License: Public/GPLv3
-- Authors: Omi Developers
-- 
-- This script dissector is provided as an easily edited and modified
-- cross platform dissection solution. Feel free to modify. Enjoy.
-----------------------------------------------------------------------
