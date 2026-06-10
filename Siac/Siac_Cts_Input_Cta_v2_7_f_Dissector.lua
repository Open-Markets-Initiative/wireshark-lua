-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cts Input Cta 2.7.f Protocol
local omi_siac_cts_input_cta_v2_7_f = Proto("Omi.Siac.Cts.Input.Cta.v2.7.f", "Siac Cts Input Cta 2.7.f")

-- Protocol table
local siac_cts_input_cta_v2_7_f = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cts Input Cta 2.7.f Fields
omi_siac_cts_input_cta_v2_7_f.fields.administrative_message = ProtoField.new("Administrative Message", "siac.cts.input.cta.v2.7.f.administrativemessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.cts.input.cta.v2.7.f.administrativemessagetype", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cts.input.cta.v2.7.f.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cts.input.cta.v2.7.f.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cts.input.cta.v2.7.f.auctioncollarupperthresholdprice", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cts.input.cta.v2.7.f.blockchecksum", ftypes.UINT16)
omi_siac_cts_input_cta_v2_7_f.fields.block_header = ProtoField.new("Block Header", "siac.cts.input.cta.v2.7.f.blockheader", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cts.input.cta.v2.7.f.blockpadbyte", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.block_separator = ProtoField.new("Block Separator", "siac.cts.input.cta.v2.7.f.blockseparator", ftypes.UINT16)
omi_siac_cts_input_cta_v2_7_f.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cts.input.cta.v2.7.f.blocksequencenumber", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.block_size = ProtoField.new("Block Size", "siac.cts.input.cta.v2.7.f.blocksize", ftypes.UINT16)
omi_siac_cts_input_cta_v2_7_f.fields.buy_volume = ProtoField.new("Buy Volume", "siac.cts.input.cta.v2.7.f.buyvolume", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.cancel_error_action = ProtoField.new("Cancel Error Action", "siac.cts.input.cta.v2.7.f.cancelerroraction", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.control_message = ProtoField.new("Control Message", "siac.cts.input.cta.v2.7.f.controlmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cts.input.cta.v2.7.f.controlmessagetype", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_fractional_trade_volume = ProtoField.new("Corrected Fractional Trade Volume", "siac.cts.input.cta.v2.7.f.correctedfractionaltradevolume", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_prior_day_trade_date_and_time = ProtoField.new("Corrected Prior Day Trade Date And Time", "siac.cts.input.cta.v2.7.f.correctedpriordaytradedateandtime", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_sale_condition = ProtoField.new("Corrected Sale Condition", "siac.cts.input.cta.v2.7.f.correctedsalecondition", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_sellers_sale_days = ProtoField.new("Corrected Sellers Sale Days", "siac.cts.input.cta.v2.7.f.correctedsellerssaledays", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_short_sale_restriction_indicator = ProtoField.new("Corrected Short Sale Restriction Indicator", "siac.cts.input.cta.v2.7.f.correctedshortsalerestrictionindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_stop_stock_indicator = ProtoField.new("Corrected Stop Stock Indicator", "siac.cts.input.cta.v2.7.f.correctedstopstockindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "siac.cts.input.cta.v2.7.f.correctedtradeprice", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_trade_through_exempt_indicator = ProtoField.new("Corrected Trade Through Exempt Indicator", "siac.cts.input.cta.v2.7.f.correctedtradethroughexemptindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.corrected_trade_volume = ProtoField.new("Corrected Trade Volume", "siac.cts.input.cta.v2.7.f.correctedtradevolume", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_i_total_trades_volume = ProtoField.new("Crossing Session I Total Trades Volume", "siac.cts.input.cta.v2.7.f.crossingsessionitotaltradesvolume", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_ii_dollar_value = ProtoField.new("Crossing Session Ii Dollar Value", "siac.cts.input.cta.v2.7.f.crossingsessioniidollarvalue", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_ii_total_trades_volume = ProtoField.new("Crossing Session Ii Total Trades Volume", "siac.cts.input.cta.v2.7.f.crossingsessioniitotaltradesvolume", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.current_block_sequence_number = ProtoField.new("Current Block Sequence Number", "siac.cts.input.cta.v2.7.f.currentblocksequencenumber", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.data = ProtoField.new("Data", "siac.cts.input.cta.v2.7.f.data", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.dollar_value = ProtoField.new("Dollar Value", "siac.cts.input.cta.v2.7.f.dollarvalue", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.error_code = ProtoField.new("Error Code", "siac.cts.input.cta.v2.7.f.errorcode", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.fractional_trade_volume = ProtoField.new("Fractional Trade Volume", "siac.cts.input.cta.v2.7.f.fractionaltradevolume", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cts.input.cta.v2.7.f.haltreason", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.high_indication_price_upper_limit_price_band = ProtoField.new("High Indication Price Upper Limit Price Band", "siac.cts.input.cta.v2.7.f.highindicationpriceupperlimitpriceband", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.index_symbol = ProtoField.new("Index Symbol", "siac.cts.input.cta.v2.7.f.indexsymbol", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.index_value = ProtoField.new("Index Value", "siac.cts.input.cta.v2.7.f.indexvalue", ftypes.INT64)
omi_siac_cts_input_cta_v2_7_f.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cts.input.cta.v2.7.f.instrumenttype", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.last_participant_reference_number = ProtoField.new("Last Participant Reference Number", "siac.cts.input.cta.v2.7.f.lastparticipantreferencenumber", ftypes.INT64)
omi_siac_cts_input_cta_v2_7_f.fields.last_price_opening_reopening_luld_reference_price = ProtoField.new("Last Price Opening Reopening Luld Reference Price", "siac.cts.input.cta.v2.7.f.lastpriceopeningreopeningluldreferenceprice", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.low_indication_price_lower_limit_price_band = ProtoField.new("Low Indication Price Lower Limit Price Band", "siac.cts.input.cta.v2.7.f.lowindicationpricelowerlimitpriceband", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.market_status_message = ProtoField.new("Market Status Message", "siac.cts.input.cta.v2.7.f.marketstatusmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.market_status_message_type = ProtoField.new("Market Status Message Type", "siac.cts.input.cta.v2.7.f.marketstatusmessagetype", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.message = ProtoField.new("Message", "siac.cts.input.cta.v2.7.f.message", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.message_category = ProtoField.new("Message Category", "siac.cts.input.cta.v2.7.f.messagecategory", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.message_count = ProtoField.new("Message Count", "siac.cts.input.cta.v2.7.f.messagecount", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.message_header = ProtoField.new("Message Header", "siac.cts.input.cta.v2.7.f.messageheader", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.message_id = ProtoField.new("Message ID", "siac.cts.input.cta.v2.7.f.messageid", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.message_length = ProtoField.new("Message Length", "siac.cts.input.cta.v2.7.f.messagelength", ftypes.UINT16)
omi_siac_cts_input_cta_v2_7_f.fields.message_type = ProtoField.new("Message Type", "siac.cts.input.cta.v2.7.f.messagetype", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cts.input.cta.v2.7.f.messagesinblock", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cts.input.cta.v2.7.f.nanoseconds", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cts.input.cta.v2.7.f.numberofextensions", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.original_fractional_trade_volume = ProtoField.new("Original Fractional Trade Volume", "siac.cts.input.cta.v2.7.f.originalfractionaltradevolume", ftypes.UINT64)
omi_siac_cts_input_cta_v2_7_f.fields.original_participant_reference_number = ProtoField.new("Original Participant Reference Number", "siac.cts.input.cta.v2.7.f.originalparticipantreferencenumber", ftypes.INT64)
omi_siac_cts_input_cta_v2_7_f.fields.original_prior_day_trade_date_and_time = ProtoField.new("Original Prior Day Trade Date And Time", "siac.cts.input.cta.v2.7.f.originalpriordaytradedateandtime", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.original_sale_condition = ProtoField.new("Original Sale Condition", "siac.cts.input.cta.v2.7.f.originalsalecondition", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.original_sellers_sale_days = ProtoField.new("Original Sellers Sale Days", "siac.cts.input.cta.v2.7.f.originalsellerssaledays", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.original_short_sale_restriction_indicator = ProtoField.new("Original Short Sale Restriction Indicator", "siac.cts.input.cta.v2.7.f.originalshortsalerestrictionindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.original_stop_stock_indicator = ProtoField.new("Original Stop Stock Indicator", "siac.cts.input.cta.v2.7.f.originalstopstockindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.original_trade_price = ProtoField.new("Original Trade Price", "siac.cts.input.cta.v2.7.f.originaltradeprice", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.original_trade_through_exempt_indicator = ProtoField.new("Original Trade Through Exempt Indicator", "siac.cts.input.cta.v2.7.f.originaltradethroughexemptindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.original_trade_volume = ProtoField.new("Original Trade Volume", "siac.cts.input.cta.v2.7.f.originaltradevolume", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.packet = ProtoField.new("Packet", "siac.cts.input.cta.v2.7.f.packet", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.participant_id = ProtoField.new("Participant ID", "siac.cts.input.cta.v2.7.f.participantid", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cts.input.cta.v2.7.f.participantreferencenumber", ftypes.INT64)
omi_siac_cts_input_cta_v2_7_f.fields.previous_block_sequence_number = ProtoField.new("Previous Block Sequence Number", "siac.cts.input.cta.v2.7.f.previousblocksequencenumber", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.previous_participant_reference_number = ProtoField.new("Previous Participant Reference Number", "siac.cts.input.cta.v2.7.f.previousparticipantreferencenumber", ftypes.INT64)
omi_siac_cts_input_cta_v2_7_f.fields.prior_day_message = ProtoField.new("Prior Day Message", "siac.cts.input.cta.v2.7.f.priordaymessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.prior_day_message_type = ProtoField.new("Prior Day Message Type", "siac.cts.input.cta.v2.7.f.priordaymessagetype", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_date_and_time = ProtoField.new("Prior Day Trade Date And Time", "siac.cts.input.cta.v2.7.f.priordaytradedateandtime", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.reserved = ProtoField.new("Reserved", "siac.cts.input.cta.v2.7.f.reserved", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.reserved_3 = ProtoField.new("Reserved 3", "siac.cts.input.cta.v2.7.f.reserved3", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.reserved_62 = ProtoField.new("Reserved 62", "siac.cts.input.cta.v2.7.f.reserved62", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.sale_condition = ProtoField.new("Sale Condition", "siac.cts.input.cta.v2.7.f.salecondition", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.sale_condition_category = ProtoField.new("Sale Condition Category", "siac.cts.input.cta.v2.7.f.saleconditioncategory", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.seconds = ProtoField.new("Seconds", "siac.cts.input.cta.v2.7.f.seconds", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.security_status = ProtoField.new("Security Status", "siac.cts.input.cta.v2.7.f.securitystatus", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cts.input.cta.v2.7.f.securitysymbol", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.sell_volume = ProtoField.new("Sell Volume", "siac.cts.input.cta.v2.7.f.sellvolume", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "siac.cts.input.cta.v2.7.f.sellerssaledays", ftypes.UINT8)
omi_siac_cts_input_cta_v2_7_f.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cts.input.cta.v2.7.f.shortsalerestrictionindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.stop_stock_indicator = ProtoField.new("Stop Stock Indicator", "siac.cts.input.cta.v2.7.f.stopstockindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.timestamp_1 = ProtoField.new("Timestamp 1", "siac.cts.input.cta.v2.7.f.timestamp1", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.timestamp_2 = ProtoField.new("Timestamp 2", "siac.cts.input.cta.v2.7.f.timestamp2", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.total_trades = ProtoField.new("Total Trades", "siac.cts.input.cta.v2.7.f.totaltrades", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.trade_message = ProtoField.new("Trade Message", "siac.cts.input.cta.v2.7.f.trademessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.trade_message_type = ProtoField.new("Trade Message Type", "siac.cts.input.cta.v2.7.f.trademessagetype", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.trade_price = ProtoField.new("Trade Price", "siac.cts.input.cta.v2.7.f.tradeprice", ftypes.DOUBLE)
omi_siac_cts_input_cta_v2_7_f.fields.trade_reporting_facility_id = ProtoField.new("Trade Reporting Facility Id", "siac.cts.input.cta.v2.7.f.tradereportingfacilityid", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.trade_through_exempt_indicator = ProtoField.new("Trade Through Exempt Indicator", "siac.cts.input.cta.v2.7.f.tradethroughexemptindicator", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.trade_volume = ProtoField.new("Trade Volume", "siac.cts.input.cta.v2.7.f.tradevolume", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.trading_status_id = ProtoField.new("Trading Status Id", "siac.cts.input.cta.v2.7.f.tradingstatusid", ftypes.UINT32)
omi_siac_cts_input_cta_v2_7_f.fields.version = ProtoField.new("Version", "siac.cts.input.cta.v2.7.f.version", ftypes.UINT8)

-- Siac Cts Cta Input 2.7.f Application Messages
omi_siac_cts_input_cta_v2_7_f.fields.approximate_trades_and_total_dollar_value_message = ProtoField.new("Approximate Trades And Total Dollar Value Message", "siac.cts.input.cta.v2.7.f.approximatetradesandtotaldollarvaluemessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.auction_status_message = ProtoField.new("Auction Status Message", "siac.cts.input.cta.v2.7.f.auctionstatusmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_message = ProtoField.new("Crossing Session Message", "siac.cts.input.cta.v2.7.f.crossingsessionmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.end_of_day_message = ProtoField.new("End Of Day Message", "siac.cts.input.cta.v2.7.f.endofdaymessage", ftypes.BYTES)
omi_siac_cts_input_cta_v2_7_f.fields.fractional_long_trade_message = ProtoField.new("Fractional Long Trade Message", "siac.cts.input.cta.v2.7.f.fractionallongtrademessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.fractional_prior_day_trade_cancel_error_message = ProtoField.new("Fractional Prior Day Trade Cancel Error Message", "siac.cts.input.cta.v2.7.f.fractionalpriordaytradecancelerrormessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.fractional_prior_day_trade_correction_message = ProtoField.new("Fractional Prior Day Trade Correction Message", "siac.cts.input.cta.v2.7.f.fractionalpriordaytradecorrectionmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.fractional_prior_day_trade_message = ProtoField.new("Fractional Prior Day Trade Message", "siac.cts.input.cta.v2.7.f.fractionalpriordaytrademessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.fractional_short_trade_message = ProtoField.new("Fractional Short Trade Message", "siac.cts.input.cta.v2.7.f.fractionalshorttrademessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.fractional_trade_correction_message = ProtoField.new("Fractional Trade Correction Message", "siac.cts.input.cta.v2.7.f.fractionaltradecorrectionmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.index_message = ProtoField.new("Index Message", "siac.cts.input.cta.v2.7.f.indexmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cts.input.cta.v2.7.f.lineintegritymessage", ftypes.BYTES)
omi_siac_cts_input_cta_v2_7_f.fields.long_trade_message = ProtoField.new("Long Trade Message", "siac.cts.input.cta.v2.7.f.longtrademessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_cancel_error_message = ProtoField.new("Prior Day Trade Cancel Error Message", "siac.cts.input.cta.v2.7.f.priordaytradecancelerrormessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_correction_message = ProtoField.new("Prior Day Trade Correction Message", "siac.cts.input.cta.v2.7.f.priordaytradecorrectionmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_message = ProtoField.new("Prior Day Trade Message", "siac.cts.input.cta.v2.7.f.priordaytrademessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.rejection_message = ProtoField.new("Rejection Message", "siac.cts.input.cta.v2.7.f.rejectionmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.sequence_information_and_message_count_inquiry_message = ProtoField.new("Sequence Information And Message Count Inquiry Message", "siac.cts.input.cta.v2.7.f.sequenceinformationandmessagecountinquirymessage", ftypes.BYTES)
omi_siac_cts_input_cta_v2_7_f.fields.sequence_information_and_message_count_response_message = ProtoField.new("Sequence Information And Message Count Response Message", "siac.cts.input.cta.v2.7.f.sequenceinformationandmessagecountresponsemessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.short_trade_message = ProtoField.new("Short Trade Message", "siac.cts.input.cta.v2.7.f.shorttrademessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cts.input.cta.v2.7.f.startofdaymessage", ftypes.BYTES)
omi_siac_cts_input_cta_v2_7_f.fields.test_message = ProtoField.new("Test Message", "siac.cts.input.cta.v2.7.f.testmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "siac.cts.input.cta.v2.7.f.tradecancelerrormessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "siac.cts.input.cta.v2.7.f.tradecorrectionmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.trading_status_message = ProtoField.new("Trading Status Message", "siac.cts.input.cta.v2.7.f.tradingstatusmessage", ftypes.STRING)
omi_siac_cts_input_cta_v2_7_f.fields.warning_message = ProtoField.new("Warning Message", "siac.cts.input.cta.v2.7.f.warningmessage", ftypes.STRING)

-- Siac Cts Input Cta 2.7.f generated fields
omi_siac_cts_input_cta_v2_7_f.fields.message_index = ProtoField.new("Message Index", "siac.cts.input.cta.v2.7.f.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Cts Input Cta 2.7.f Element Dissection Options
show.administrative_message = true
show.application_messages = true
show.block_header = true
show.control_message = true
show.corrected_prior_day_trade_date_and_time = true
show.market_status_message = true
show.message = true
show.message_header = true
show.original_prior_day_trade_date_and_time = true
show.packet = true
show.prior_day_message = true
show.prior_day_trade_date_and_time = true
show.timestamp_1 = true
show.timestamp_2 = true
show.trade_message = true
show.message_index = true

-- Register Siac Cts Input Cta 2.7.f Show Options
omi_siac_cts_input_cta_v2_7_f.prefs.show_administrative_message = Pref.bool("Show Administrative Message", show.administrative_message, "Parse and add Administrative Message to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_control_message = Pref.bool("Show Control Message", show.control_message, "Parse and add Control Message to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_corrected_prior_day_trade_date_and_time = Pref.bool("Show Corrected Prior Day Trade Date And Time", show.corrected_prior_day_trade_date_and_time, "Parse and add Corrected Prior Day Trade Date And Time to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_market_status_message = Pref.bool("Show Market Status Message", show.market_status_message, "Parse and add Market Status Message to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_original_prior_day_trade_date_and_time = Pref.bool("Show Original Prior Day Trade Date And Time", show.original_prior_day_trade_date_and_time, "Parse and add Original Prior Day Trade Date And Time to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_prior_day_message = Pref.bool("Show Prior Day Message", show.prior_day_message, "Parse and add Prior Day Message to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_prior_day_trade_date_and_time = Pref.bool("Show Prior Day Trade Date And Time", show.prior_day_trade_date_and_time, "Parse and add Prior Day Trade Date And Time to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_timestamp_1 = Pref.bool("Show Timestamp 1", show.timestamp_1, "Parse and add Timestamp 1 to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_timestamp_2 = Pref.bool("Show Timestamp 2", show.timestamp_2, "Parse and add Timestamp 2 to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_siac_cts_input_cta_v2_7_f.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_siac_cts_input_cta_v2_7_f.prefs_changed()

  -- Check if preferences have changed
  if show.administrative_message ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_administrative_message then
    show.administrative_message = omi_siac_cts_input_cta_v2_7_f.prefs.show_administrative_message
  end
  if show.application_messages ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_application_messages then
    show.application_messages = omi_siac_cts_input_cta_v2_7_f.prefs.show_application_messages
  end
  if show.block_header ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_block_header then
    show.block_header = omi_siac_cts_input_cta_v2_7_f.prefs.show_block_header
  end
  if show.control_message ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_control_message then
    show.control_message = omi_siac_cts_input_cta_v2_7_f.prefs.show_control_message
  end
  if show.corrected_prior_day_trade_date_and_time ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_corrected_prior_day_trade_date_and_time then
    show.corrected_prior_day_trade_date_and_time = omi_siac_cts_input_cta_v2_7_f.prefs.show_corrected_prior_day_trade_date_and_time
  end
  if show.market_status_message ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_market_status_message then
    show.market_status_message = omi_siac_cts_input_cta_v2_7_f.prefs.show_market_status_message
  end
  if show.message ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_message then
    show.message = omi_siac_cts_input_cta_v2_7_f.prefs.show_message
  end
  if show.message_header ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_message_header then
    show.message_header = omi_siac_cts_input_cta_v2_7_f.prefs.show_message_header
  end
  if show.original_prior_day_trade_date_and_time ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_original_prior_day_trade_date_and_time then
    show.original_prior_day_trade_date_and_time = omi_siac_cts_input_cta_v2_7_f.prefs.show_original_prior_day_trade_date_and_time
  end
  if show.packet ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_packet then
    show.packet = omi_siac_cts_input_cta_v2_7_f.prefs.show_packet
  end
  if show.prior_day_message ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_prior_day_message then
    show.prior_day_message = omi_siac_cts_input_cta_v2_7_f.prefs.show_prior_day_message
  end
  if show.prior_day_trade_date_and_time ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_prior_day_trade_date_and_time then
    show.prior_day_trade_date_and_time = omi_siac_cts_input_cta_v2_7_f.prefs.show_prior_day_trade_date_and_time
  end
  if show.timestamp_1 ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_timestamp_1 then
    show.timestamp_1 = omi_siac_cts_input_cta_v2_7_f.prefs.show_timestamp_1
  end
  if show.timestamp_2 ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_timestamp_2 then
    show.timestamp_2 = omi_siac_cts_input_cta_v2_7_f.prefs.show_timestamp_2
  end
  if show.trade_message ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_trade_message then
    show.trade_message = omi_siac_cts_input_cta_v2_7_f.prefs.show_trade_message
  end
  if show.message_index ~= omi_siac_cts_input_cta_v2_7_f.prefs.show_message_index then
    show.message_index = omi_siac_cts_input_cta_v2_7_f.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

-- Is value not even?
uneven = function(value)
  return (value % 2 == 1)
end

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
-- Siac Cts Input Cta 2.7.f Fields
-----------------------------------------------------------------------

-- Administrative Message Type
siac_cts_input_cta_v2_7_f.administrative_message_type = {}

-- Size: Administrative Message Type
siac_cts_input_cta_v2_7_f.administrative_message_type.size = 1

-- Display: Administrative Message Type
siac_cts_input_cta_v2_7_f.administrative_message_type.display = function(value)
  return "Administrative Message Type: "..value
end

-- Dissect: Administrative Message Type
siac_cts_input_cta_v2_7_f.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Auction Collar Lower Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price = {}

-- Size: Auction Collar Lower Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.size = 8

-- Display: Auction Collar Lower Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.display = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
siac_cts_input_cta_v2_7_f.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
siac_cts_input_cta_v2_7_f.auction_collar_reference_price.size = 8

-- Display: Auction Collar Reference Price
siac_cts_input_cta_v2_7_f.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
siac_cts_input_cta_v2_7_f.auction_collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cts_input_cta_v2_7_f.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.auction_collar_reference_price.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Upper Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price = {}

-- Size: Auction Collar Upper Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.size = 8

-- Display: Auction Collar Upper Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.display = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Block Checksum
siac_cts_input_cta_v2_7_f.block_checksum = {}

-- Size: Block Checksum
siac_cts_input_cta_v2_7_f.block_checksum.size = 2

-- Display: Block Checksum
siac_cts_input_cta_v2_7_f.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cts_input_cta_v2_7_f.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Block Pad Byte
siac_cts_input_cta_v2_7_f.block_pad_byte = {}

-- Size: Block Pad Byte
siac_cts_input_cta_v2_7_f.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_cts_input_cta_v2_7_f.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cts_input_cta_v2_7_f.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Block Separator
siac_cts_input_cta_v2_7_f.block_separator = {}

-- Size: Block Separator
siac_cts_input_cta_v2_7_f.block_separator.size = 2

-- Display: Block Separator
siac_cts_input_cta_v2_7_f.block_separator.display = function(value)
  return "Block Separator: "..value
end

-- Dissect: Block Separator
siac_cts_input_cta_v2_7_f.block_separator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.block_separator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.block_separator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.block_separator, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_cts_input_cta_v2_7_f.block_sequence_number = {}

-- Size: Block Sequence Number
siac_cts_input_cta_v2_7_f.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_cts_input_cta_v2_7_f.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cts_input_cta_v2_7_f.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_cts_input_cta_v2_7_f.block_size = {}

-- Size: Block Size
siac_cts_input_cta_v2_7_f.block_size.size = 2

-- Display: Block Size
siac_cts_input_cta_v2_7_f.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cts_input_cta_v2_7_f.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.block_size, range, value, display)

  return offset + length, value
end

-- Buy Volume
siac_cts_input_cta_v2_7_f.buy_volume = {}

-- Size: Buy Volume
siac_cts_input_cta_v2_7_f.buy_volume.size = 4

-- Display: Buy Volume
siac_cts_input_cta_v2_7_f.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
siac_cts_input_cta_v2_7_f.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.buy_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Cancel Error Action
siac_cts_input_cta_v2_7_f.cancel_error_action = {}

-- Size: Cancel Error Action
siac_cts_input_cta_v2_7_f.cancel_error_action.size = 1

-- Display: Cancel Error Action
siac_cts_input_cta_v2_7_f.cancel_error_action.display = function(value)
  if value == "1" then
    return "Cancel Error Action: Cancel (1)"
  end
  if value == "2" then
    return "Cancel Error Action: Error (2)"
  end

  return "Cancel Error Action: Unknown("..value..")"
end

-- Dissect: Cancel Error Action
siac_cts_input_cta_v2_7_f.cancel_error_action.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.cancel_error_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.cancel_error_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.cancel_error_action, range, value, display)

  return offset + length, value
end

-- Control Message Type
siac_cts_input_cta_v2_7_f.control_message_type = {}

-- Size: Control Message Type
siac_cts_input_cta_v2_7_f.control_message_type.size = 1

-- Display: Control Message Type
siac_cts_input_cta_v2_7_f.control_message_type.display = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
siac_cts_input_cta_v2_7_f.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Corrected Fractional Trade Volume
siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume = {}

-- Size: Corrected Fractional Trade Volume
siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.size = 8

-- Display: Corrected Fractional Trade Volume
siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.display = function(value)
  return "Corrected Fractional Trade Volume: "..value
end

-- Dissect: Corrected Fractional Trade Volume
siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_fractional_trade_volume, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition
siac_cts_input_cta_v2_7_f.corrected_sale_condition = {}

-- Size: Corrected Sale Condition
siac_cts_input_cta_v2_7_f.corrected_sale_condition.size = 4

-- Display: Corrected Sale Condition
siac_cts_input_cta_v2_7_f.corrected_sale_condition.display = function(value)
  return "Corrected Sale Condition: "..value
end

-- Dissect: Corrected Sale Condition
siac_cts_input_cta_v2_7_f.corrected_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.corrected_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_sale_condition, range, value, display)

  return offset + length, value
end

-- Corrected Sellers Sale Days
siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days = {}

-- Size: Corrected Sellers Sale Days
siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.size = 1

-- Display: Corrected Sellers Sale Days
siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.display = function(value)
  return "Corrected Sellers Sale Days: "..value
end

-- Dissect: Corrected Sellers Sale Days
siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Corrected Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator = {}

-- Size: Corrected Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.size = 1

-- Display: Corrected Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.display = function(value)
  return "Corrected Short Sale Restriction Indicator: "..value
end

-- Dissect: Corrected Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Corrected Stop Stock Indicator
siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator = {}

-- Size: Corrected Stop Stock Indicator
siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.size = 1

-- Display: Corrected Stop Stock Indicator
siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.display = function(value)
  return "Corrected Stop Stock Indicator: "..value
end

-- Dissect: Corrected Stop Stock Indicator
siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
siac_cts_input_cta_v2_7_f.corrected_trade_price = {}

-- Size: Corrected Trade Price
siac_cts_input_cta_v2_7_f.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
siac_cts_input_cta_v2_7_f.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
siac_cts_input_cta_v2_7_f.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
siac_cts_input_cta_v2_7_f.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.corrected_trade_price.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator = {}

-- Size: Corrected Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.size = 1

-- Display: Corrected Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.display = function(value)
  return "Corrected Trade Through Exempt Indicator: "..value
end

-- Dissect: Corrected Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Corrected Trade Volume
siac_cts_input_cta_v2_7_f.corrected_trade_volume = {}

-- Size: Corrected Trade Volume
siac_cts_input_cta_v2_7_f.corrected_trade_volume.size = 4

-- Display: Corrected Trade Volume
siac_cts_input_cta_v2_7_f.corrected_trade_volume.display = function(value)
  return "Corrected Trade Volume: "..value
end

-- Dissect: Corrected Trade Volume
siac_cts_input_cta_v2_7_f.corrected_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.corrected_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.corrected_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_trade_volume, range, value, display)

  return offset + length, value
end

-- Crossing Session I Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume = {}

-- Size: Crossing Session I Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume.size = 8

-- Display: Crossing Session I Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume.display = function(value)
  return "Crossing Session I Total Trades Volume: "..value
end

-- Dissect: Crossing Session I Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_i_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Crossing Session Ii Dollar Value
siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value = {}

-- Size: Crossing Session Ii Dollar Value
siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value.size = 8

-- Display: Crossing Session Ii Dollar Value
siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value.display = function(value)
  return "Crossing Session Ii Dollar Value: "..value
end

-- Dissect: Crossing Session Ii Dollar Value
siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_ii_dollar_value, range, value, display)

  return offset + length, value
end

-- Crossing Session Ii Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume = {}

-- Size: Crossing Session Ii Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume.size = 8

-- Display: Crossing Session Ii Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume.display = function(value)
  return "Crossing Session Ii Total Trades Volume: "..value
end

-- Dissect: Crossing Session Ii Total Trades Volume
siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_ii_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Current Block Sequence Number
siac_cts_input_cta_v2_7_f.current_block_sequence_number = {}

-- Size: Current Block Sequence Number
siac_cts_input_cta_v2_7_f.current_block_sequence_number.size = 4

-- Display: Current Block Sequence Number
siac_cts_input_cta_v2_7_f.current_block_sequence_number.display = function(value)
  return "Current Block Sequence Number: "..value
end

-- Dissect: Current Block Sequence Number
siac_cts_input_cta_v2_7_f.current_block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.current_block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.current_block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.current_block_sequence_number, range, value, display)

  return offset + length, value
end

-- Data
siac_cts_input_cta_v2_7_f.data = {}

-- Size: Data
siac_cts_input_cta_v2_7_f.data.size = 256

-- Display: Data
siac_cts_input_cta_v2_7_f.data.display = function(value)
  return "Data: "..value
end

-- Dissect: Data
siac_cts_input_cta_v2_7_f.data.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.data.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.data.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.data, range, value, display)

  return offset + length, value
end

-- Dollar Value
siac_cts_input_cta_v2_7_f.dollar_value = {}

-- Size: Dollar Value
siac_cts_input_cta_v2_7_f.dollar_value.size = 8

-- Display: Dollar Value
siac_cts_input_cta_v2_7_f.dollar_value.display = function(value)
  return "Dollar Value: "..value
end

-- Dissect: Dollar Value
siac_cts_input_cta_v2_7_f.dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.dollar_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.dollar_value, range, value, display)

  return offset + length, value
end

-- Error Code
siac_cts_input_cta_v2_7_f.error_code = {}

-- Size: Error Code
siac_cts_input_cta_v2_7_f.error_code.size = 1

-- Display: Error Code
siac_cts_input_cta_v2_7_f.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
siac_cts_input_cta_v2_7_f.error_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.error_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.error_code, range, value, display)

  return offset + length, value
end

-- Fractional Trade Volume
siac_cts_input_cta_v2_7_f.fractional_trade_volume = {}

-- Size: Fractional Trade Volume
siac_cts_input_cta_v2_7_f.fractional_trade_volume.size = 8

-- Display: Fractional Trade Volume
siac_cts_input_cta_v2_7_f.fractional_trade_volume.display = function(value)
  return "Fractional Trade Volume: "..value
end

-- Dissect: Fractional Trade Volume
siac_cts_input_cta_v2_7_f.fractional_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.fractional_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.fractional_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.fractional_trade_volume, range, value, display)

  return offset + length, value
end

-- Halt Reason
siac_cts_input_cta_v2_7_f.halt_reason = {}

-- Size: Halt Reason
siac_cts_input_cta_v2_7_f.halt_reason.size = 1

-- Display: Halt Reason
siac_cts_input_cta_v2_7_f.halt_reason.display = function(value)
  if value == " " then
    return "Halt Reason: Halt Reason Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Halt Reason: Additional Information Requested (A)"
  end
  if value == "C" then
    return "Halt Reason: Regulatory Concern (C)"
  end
  if value == "D" then
    return "Halt Reason: News Released (D)"
  end
  if value == "E" then
    return "Halt Reason: Merger Effective (E)"
  end
  if value == "F" then
    return "Halt Reason: Etf Component Prices Not Available (F)"
  end
  if value == "I" then
    return "Halt Reason: Order Imbalance (I)"
  end
  if value == "M" then
    return "Halt Reason: Limit Up Limit Down Luld Trading Pause (M)"
  end
  if value == "N" then
    return "Halt Reason: Corporate Action (N)"
  end
  if value == "O" then
    return "Halt Reason: New Security Offering (O)"
  end
  if value == "P" then
    return "Halt Reason: News Pending (P)"
  end
  if value == "V" then
    return "Halt Reason: Intraday Indicative Value Not Available (V)"
  end
  if value == "X" then
    return "Halt Reason: Operational (X)"
  end
  if value == "Y" then
    return "Halt Reason: Sub Penny Trading (Y)"
  end
  if value == "1" then
    return "Halt Reason: Market Wide Circuit Breaker Level 1 Breached (1)"
  end
  if value == "2" then
    return "Halt Reason: Market Wide Circuit Breaker Level 2 Breached (2)"
  end
  if value == "3" then
    return "Halt Reason: Market Wide Circuit Breaker Level 3 Breached (3)"
  end

  return "Halt Reason: Unknown("..value..")"
end

-- Dissect: Halt Reason
siac_cts_input_cta_v2_7_f.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- High Indication Price Upper Limit Price Band
siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band = {}

-- Size: High Indication Price Upper Limit Price Band
siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.size = 8

-- Display: High Indication Price Upper Limit Price Band
siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.display = function(value)
  return "High Indication Price Upper Limit Price Band: "..value
end

-- Translate: High Indication Price Upper Limit Price Band
siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price Upper Limit Price Band
siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.high_indication_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Index Symbol
siac_cts_input_cta_v2_7_f.index_symbol = {}

-- Size: Index Symbol
siac_cts_input_cta_v2_7_f.index_symbol.size = 11

-- Display: Index Symbol
siac_cts_input_cta_v2_7_f.index_symbol.display = function(value)
  return "Index Symbol: "..value
end

-- Dissect: Index Symbol
siac_cts_input_cta_v2_7_f.index_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.index_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.index_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.index_symbol, range, value, display)

  return offset + length, value
end

-- Index Value
siac_cts_input_cta_v2_7_f.index_value = {}

-- Size: Index Value
siac_cts_input_cta_v2_7_f.index_value.size = 8

-- Display: Index Value
siac_cts_input_cta_v2_7_f.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
siac_cts_input_cta_v2_7_f.index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.index_value.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_input_cta_v2_7_f.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.index_value, range, value, display)

  return offset + length, value
end

-- Instrument Type
siac_cts_input_cta_v2_7_f.instrument_type = {}

-- Size: Instrument Type
siac_cts_input_cta_v2_7_f.instrument_type.size = 1

-- Display: Instrument Type
siac_cts_input_cta_v2_7_f.instrument_type.display = function(value)
  if value == "0" then
    return "Instrument Type: Cta Eligible Equity (0)"
  end
  if value == "1" then
    return "Instrument Type: Local Issue (1)"
  end
  if value == "2" then
    return "Instrument Type: Corporate Bond (2)"
  end
  if value == "3" then
    return "Instrument Type: Government Bond (3)"
  end

  return "Instrument Type: Unknown("..value..")"
end

-- Dissect: Instrument Type
siac_cts_input_cta_v2_7_f.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Last Participant Reference Number
siac_cts_input_cta_v2_7_f.last_participant_reference_number = {}

-- Size: Last Participant Reference Number
siac_cts_input_cta_v2_7_f.last_participant_reference_number.size = 8

-- Display: Last Participant Reference Number
siac_cts_input_cta_v2_7_f.last_participant_reference_number.display = function(value)
  return "Last Participant Reference Number: "..value
end

-- Dissect: Last Participant Reference Number
siac_cts_input_cta_v2_7_f.last_participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.last_participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_input_cta_v2_7_f.last_participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.last_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Last Price Opening Reopening Luld Reference Price
siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price = {}

-- Size: Last Price Opening Reopening Luld Reference Price
siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.size = 8

-- Display: Last Price Opening Reopening Luld Reference Price
siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.display = function(value)
  return "Last Price Opening Reopening Luld Reference Price: "..value
end

-- Translate: Last Price Opening Reopening Luld Reference Price
siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price Opening Reopening Luld Reference Price
siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.last_price_opening_reopening_luld_reference_price, range, value, display)

  return offset + length, value
end

-- Low Indication Price Lower Limit Price Band
siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band = {}

-- Size: Low Indication Price Lower Limit Price Band
siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.size = 8

-- Display: Low Indication Price Lower Limit Price Band
siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.display = function(value)
  return "Low Indication Price Lower Limit Price Band: "..value
end

-- Translate: Low Indication Price Lower Limit Price Band
siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price Lower Limit Price Band
siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.low_indication_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Market Status Message Type
siac_cts_input_cta_v2_7_f.market_status_message_type = {}

-- Size: Market Status Message Type
siac_cts_input_cta_v2_7_f.market_status_message_type.size = 1

-- Display: Market Status Message Type
siac_cts_input_cta_v2_7_f.market_status_message_type.display = function(value)
  return "Market Status Message Type: "..value
end

-- Dissect: Market Status Message Type
siac_cts_input_cta_v2_7_f.market_status_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.market_status_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.market_status_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.market_status_message_type, range, value, display)

  return offset + length, value
end

-- Message Category
siac_cts_input_cta_v2_7_f.message_category = {}

-- Size: Message Category
siac_cts_input_cta_v2_7_f.message_category.size = 1

-- Display: Message Category
siac_cts_input_cta_v2_7_f.message_category.display = function(value)
  if value == "A" then
    return "Message Category: Administrative (A)"
  end
  if value == "C" then
    return "Message Category: Control (C)"
  end
  if value == "I" then
    return "Message Category: Index (I)"
  end
  if value == "M" then
    return "Message Category: Market Status (M)"
  end
  if value == "P" then
    return "Message Category: Prior Day (P)"
  end
  if value == "T" then
    return "Message Category: Trade (T)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_cts_input_cta_v2_7_f.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Count
siac_cts_input_cta_v2_7_f.message_count = {}

-- Size: Message Count
siac_cts_input_cta_v2_7_f.message_count.size = 8

-- Display: Message Count
siac_cts_input_cta_v2_7_f.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
siac_cts_input_cta_v2_7_f.message_count.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message ID
siac_cts_input_cta_v2_7_f.message_id = {}

-- Size: Message ID
siac_cts_input_cta_v2_7_f.message_id.size = 1

-- Display: Message ID
siac_cts_input_cta_v2_7_f.message_id.display = function(value)
  return "Message ID: "..value
end

-- Dissect: Message ID
siac_cts_input_cta_v2_7_f.message_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.message_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message_id, range, value, display)

  return offset + length, value
end

-- Message Length
siac_cts_input_cta_v2_7_f.message_length = {}

-- Size: Message Length
siac_cts_input_cta_v2_7_f.message_length.size = 2

-- Display: Message Length
siac_cts_input_cta_v2_7_f.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cts_input_cta_v2_7_f.message_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
siac_cts_input_cta_v2_7_f.message_type = {}

-- Size: Message Type
siac_cts_input_cta_v2_7_f.message_type.size = 1

-- Display: Message Type
siac_cts_input_cta_v2_7_f.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
siac_cts_input_cta_v2_7_f.message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message_type, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_cts_input_cta_v2_7_f.messages_in_block = {}

-- Size: Messages In Block
siac_cts_input_cta_v2_7_f.messages_in_block.size = 1

-- Display: Messages In Block
siac_cts_input_cta_v2_7_f.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cts_input_cta_v2_7_f.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_cts_input_cta_v2_7_f.nanoseconds = {}

-- Size: Nanoseconds
siac_cts_input_cta_v2_7_f.nanoseconds.size = 4

-- Display: Nanoseconds
siac_cts_input_cta_v2_7_f.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cts_input_cta_v2_7_f.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Extensions
siac_cts_input_cta_v2_7_f.number_of_extensions = {}

-- Size: Number Of Extensions
siac_cts_input_cta_v2_7_f.number_of_extensions.size = 1

-- Display: Number Of Extensions
siac_cts_input_cta_v2_7_f.number_of_extensions.display = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cts_input_cta_v2_7_f.number_of_extensions.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.number_of_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.number_of_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Original Fractional Trade Volume
siac_cts_input_cta_v2_7_f.original_fractional_trade_volume = {}

-- Size: Original Fractional Trade Volume
siac_cts_input_cta_v2_7_f.original_fractional_trade_volume.size = 8

-- Display: Original Fractional Trade Volume
siac_cts_input_cta_v2_7_f.original_fractional_trade_volume.display = function(value)
  return "Original Fractional Trade Volume: "..value
end

-- Dissect: Original Fractional Trade Volume
siac_cts_input_cta_v2_7_f.original_fractional_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_fractional_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_input_cta_v2_7_f.original_fractional_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_fractional_trade_volume, range, value, display)

  return offset + length, value
end

-- Original Participant Reference Number
siac_cts_input_cta_v2_7_f.original_participant_reference_number = {}

-- Size: Original Participant Reference Number
siac_cts_input_cta_v2_7_f.original_participant_reference_number.size = 8

-- Display: Original Participant Reference Number
siac_cts_input_cta_v2_7_f.original_participant_reference_number.display = function(value)
  return "Original Participant Reference Number: "..value
end

-- Dissect: Original Participant Reference Number
siac_cts_input_cta_v2_7_f.original_participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_input_cta_v2_7_f.original_participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Original Sale Condition
siac_cts_input_cta_v2_7_f.original_sale_condition = {}

-- Size: Original Sale Condition
siac_cts_input_cta_v2_7_f.original_sale_condition.size = 4

-- Display: Original Sale Condition
siac_cts_input_cta_v2_7_f.original_sale_condition.display = function(value)
  return "Original Sale Condition: "..value
end

-- Dissect: Original Sale Condition
siac_cts_input_cta_v2_7_f.original_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.original_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_sale_condition, range, value, display)

  return offset + length, value
end

-- Original Sellers Sale Days
siac_cts_input_cta_v2_7_f.original_sellers_sale_days = {}

-- Size: Original Sellers Sale Days
siac_cts_input_cta_v2_7_f.original_sellers_sale_days.size = 1

-- Display: Original Sellers Sale Days
siac_cts_input_cta_v2_7_f.original_sellers_sale_days.display = function(value)
  return "Original Sellers Sale Days: "..value
end

-- Dissect: Original Sellers Sale Days
siac_cts_input_cta_v2_7_f.original_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.original_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Original Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator = {}

-- Size: Original Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.size = 1

-- Display: Original Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.display = function(value)
  return "Original Short Sale Restriction Indicator: "..value
end

-- Dissect: Original Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Original Stop Stock Indicator
siac_cts_input_cta_v2_7_f.original_stop_stock_indicator = {}

-- Size: Original Stop Stock Indicator
siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.size = 1

-- Display: Original Stop Stock Indicator
siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.display = function(value)
  return "Original Stop Stock Indicator: "..value
end

-- Dissect: Original Stop Stock Indicator
siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Original Trade Price
siac_cts_input_cta_v2_7_f.original_trade_price = {}

-- Size: Original Trade Price
siac_cts_input_cta_v2_7_f.original_trade_price.size = 8

-- Display: Original Trade Price
siac_cts_input_cta_v2_7_f.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
siac_cts_input_cta_v2_7_f.original_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
siac_cts_input_cta_v2_7_f.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.original_trade_price.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator = {}

-- Size: Original Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.size = 1

-- Display: Original Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.display = function(value)
  return "Original Trade Through Exempt Indicator: "..value
end

-- Dissect: Original Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Original Trade Volume
siac_cts_input_cta_v2_7_f.original_trade_volume = {}

-- Size: Original Trade Volume
siac_cts_input_cta_v2_7_f.original_trade_volume.size = 4

-- Display: Original Trade Volume
siac_cts_input_cta_v2_7_f.original_trade_volume.display = function(value)
  return "Original Trade Volume: "..value
end

-- Dissect: Original Trade Volume
siac_cts_input_cta_v2_7_f.original_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.original_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.original_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_trade_volume, range, value, display)

  return offset + length, value
end

-- Participant ID
siac_cts_input_cta_v2_7_f.participant_id = {}

-- Size: Participant ID
siac_cts_input_cta_v2_7_f.participant_id.size = 1

-- Display: Participant ID
siac_cts_input_cta_v2_7_f.participant_id.display = function(value)
  return "Participant ID: "..value
end

-- Dissect: Participant ID
siac_cts_input_cta_v2_7_f.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Reference Number
siac_cts_input_cta_v2_7_f.participant_reference_number = {}

-- Size: Participant Reference Number
siac_cts_input_cta_v2_7_f.participant_reference_number.size = 8

-- Display: Participant Reference Number
siac_cts_input_cta_v2_7_f.participant_reference_number.display = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_cts_input_cta_v2_7_f.participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_input_cta_v2_7_f.participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Previous Block Sequence Number
siac_cts_input_cta_v2_7_f.previous_block_sequence_number = {}

-- Size: Previous Block Sequence Number
siac_cts_input_cta_v2_7_f.previous_block_sequence_number.size = 4

-- Display: Previous Block Sequence Number
siac_cts_input_cta_v2_7_f.previous_block_sequence_number.display = function(value)
  return "Previous Block Sequence Number: "..value
end

-- Dissect: Previous Block Sequence Number
siac_cts_input_cta_v2_7_f.previous_block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.previous_block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.previous_block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.previous_block_sequence_number, range, value, display)

  return offset + length, value
end

-- Previous Participant Reference Number
siac_cts_input_cta_v2_7_f.previous_participant_reference_number = {}

-- Size: Previous Participant Reference Number
siac_cts_input_cta_v2_7_f.previous_participant_reference_number.size = 8

-- Display: Previous Participant Reference Number
siac_cts_input_cta_v2_7_f.previous_participant_reference_number.display = function(value)
  return "Previous Participant Reference Number: "..value
end

-- Dissect: Previous Participant Reference Number
siac_cts_input_cta_v2_7_f.previous_participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.previous_participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_input_cta_v2_7_f.previous_participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.previous_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Prior Day Message Type
siac_cts_input_cta_v2_7_f.prior_day_message_type = {}

-- Size: Prior Day Message Type
siac_cts_input_cta_v2_7_f.prior_day_message_type.size = 1

-- Display: Prior Day Message Type
siac_cts_input_cta_v2_7_f.prior_day_message_type.display = function(value)
  return "Prior Day Message Type: "..value
end

-- Dissect: Prior Day Message Type
siac_cts_input_cta_v2_7_f.prior_day_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.prior_day_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.prior_day_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.prior_day_message_type, range, value, display)

  return offset + length, value
end

-- Reserved
siac_cts_input_cta_v2_7_f.reserved = {}

-- Size: Reserved
siac_cts_input_cta_v2_7_f.reserved.size = 4

-- Display: Reserved
siac_cts_input_cta_v2_7_f.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cts_input_cta_v2_7_f.reserved.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 3
siac_cts_input_cta_v2_7_f.reserved_3 = {}

-- Size: Reserved 3
siac_cts_input_cta_v2_7_f.reserved_3.size = 3

-- Display: Reserved 3
siac_cts_input_cta_v2_7_f.reserved_3.display = function(value)
  return "Reserved 3: "..value
end

-- Dissect: Reserved 3
siac_cts_input_cta_v2_7_f.reserved_3.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.reserved_3.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.reserved_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.reserved_3, range, value, display)

  return offset + length, value
end

-- Reserved 62
siac_cts_input_cta_v2_7_f.reserved_62 = {}

-- Size: Reserved 62
siac_cts_input_cta_v2_7_f.reserved_62.size = 62

-- Display: Reserved 62
siac_cts_input_cta_v2_7_f.reserved_62.display = function(value)
  return "Reserved 62: "..value
end

-- Dissect: Reserved 62
siac_cts_input_cta_v2_7_f.reserved_62.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.reserved_62.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.reserved_62.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.reserved_62, range, value, display)

  return offset + length, value
end

-- Sale Condition
siac_cts_input_cta_v2_7_f.sale_condition = {}

-- Size: Sale Condition
siac_cts_input_cta_v2_7_f.sale_condition.size = 4

-- Display: Sale Condition
siac_cts_input_cta_v2_7_f.sale_condition.display = function(value)
  return "Sale Condition: "..value
end

-- Dissect: Sale Condition
siac_cts_input_cta_v2_7_f.sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.sale_condition, range, value, display)

  return offset + length, value
end

-- Sale Condition Category
siac_cts_input_cta_v2_7_f.sale_condition_category = {}

-- Size: Sale Condition Category
siac_cts_input_cta_v2_7_f.sale_condition_category.size = 1

-- Display: Sale Condition Category
siac_cts_input_cta_v2_7_f.sale_condition_category.display = function(value)
  if value == " " then
    return "Sale Condition Category: Sale Condition Category Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Sale Condition Category: Sale Condition Category 1 (1)"
  end
  if value == "2" then
    return "Sale Condition Category: Sale Condition Category 2 (2)"
  end
  if value == "3" then
    return "Sale Condition Category: Sale Condition Category 3 (3)"
  end
  if value == "4" then
    return "Sale Condition Category: Sale Condition Category 4 (4)"
  end

  return "Sale Condition Category: Unknown("..value..")"
end

-- Dissect: Sale Condition Category
siac_cts_input_cta_v2_7_f.sale_condition_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.sale_condition_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.sale_condition_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.sale_condition_category, range, value, display)

  return offset + length, value
end

-- Seconds
siac_cts_input_cta_v2_7_f.seconds = {}

-- Size: Seconds
siac_cts_input_cta_v2_7_f.seconds.size = 4

-- Display: Seconds
siac_cts_input_cta_v2_7_f.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cts_input_cta_v2_7_f.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
siac_cts_input_cta_v2_7_f.security_status = {}

-- Size: Security Status
siac_cts_input_cta_v2_7_f.security_status.size = 1

-- Display: Security Status
siac_cts_input_cta_v2_7_f.security_status.display = function(value)
  if value == " " then
    return "Security Status: Security Status Not Applicable (<whitespace>)"
  end
  if value == "2" then
    return "Security Status: Trading Halt (2)"
  end
  if value == "3" then
    return "Security Status: Resume (3)"
  end
  if value == "5" then
    return "Security Status: Price Indication (5)"
  end
  if value == "6" then
    return "Security Status: Trading Range Indication (6)"
  end
  if value == "7" then
    return "Security Status: Market Imbalance Buy (7)"
  end
  if value == "8" then
    return "Security Status: Market Imbalance Sell (8)"
  end
  if value == "9" then
    return "Security Status: Closing Imbalance Buy (9)"
  end
  if value == "A" then
    return "Security Status: Closing Imbalance Sell (A)"
  end
  if value == "C" then
    return "Security Status: No Market Imbalance (C)"
  end
  if value == "D" then
    return "Security Status: No Closing Imbalance (D)"
  end
  if value == "E" then
    return "Security Status: Short Sale Restriction (E)"
  end
  if value == "F" then
    return "Security Status: Limit Up Limit Down Luld Reference Price (F)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
siac_cts_input_cta_v2_7_f.security_status.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_cts_input_cta_v2_7_f.security_symbol = {}

-- Size: Security Symbol
siac_cts_input_cta_v2_7_f.security_symbol.size = 11

-- Display: Security Symbol
siac_cts_input_cta_v2_7_f.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cts_input_cta_v2_7_f.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_input_cta_v2_7_f.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Sell Volume
siac_cts_input_cta_v2_7_f.sell_volume = {}

-- Size: Sell Volume
siac_cts_input_cta_v2_7_f.sell_volume.size = 4

-- Display: Sell Volume
siac_cts_input_cta_v2_7_f.sell_volume.display = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
siac_cts_input_cta_v2_7_f.sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.sell_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Sellers Sale Days
siac_cts_input_cta_v2_7_f.sellers_sale_days = {}

-- Size: Sellers Sale Days
siac_cts_input_cta_v2_7_f.sellers_sale_days.size = 1

-- Display: Sellers Sale Days
siac_cts_input_cta_v2_7_f.sellers_sale_days.display = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
siac_cts_input_cta_v2_7_f.sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator = {}

-- Size: Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.size = 1

-- Display: Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.display = function(value)
  if value == " " then
    return "Short Sale Restriction Indicator: Short Sale Restriction Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Short Sale Restriction Indicator: Short Sale Restriction Activated (A)"
  end
  if value == "C" then
    return "Short Sale Restriction Indicator: Short Sale Restriction Continued (C)"
  end
  if value == "D" then
    return "Short Sale Restriction Indicator: Short Sale Restriction Deactivated (D)"
  end
  if value == "E" then
    return "Short Sale Restriction Indicator: Short Sale Restriction In Effect (E)"
  end

  return "Short Sale Restriction Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction Indicator
siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Stop Stock Indicator
siac_cts_input_cta_v2_7_f.stop_stock_indicator = {}

-- Size: Stop Stock Indicator
siac_cts_input_cta_v2_7_f.stop_stock_indicator.size = 1

-- Display: Stop Stock Indicator
siac_cts_input_cta_v2_7_f.stop_stock_indicator.display = function(value)
  if value == "0" then
    return "Stop Stock Indicator: Stop Stock Not Applicable (0)"
  end
  if value == "1" then
    return "Stop Stock Indicator: Stop Stock (1)"
  end

  return "Stop Stock Indicator: Unknown("..value..")"
end

-- Dissect: Stop Stock Indicator
siac_cts_input_cta_v2_7_f.stop_stock_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.stop_stock_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.stop_stock_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Total Trades
siac_cts_input_cta_v2_7_f.total_trades = {}

-- Size: Total Trades
siac_cts_input_cta_v2_7_f.total_trades.size = 4

-- Display: Total Trades
siac_cts_input_cta_v2_7_f.total_trades.display = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
siac_cts_input_cta_v2_7_f.total_trades.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.total_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.total_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.total_trades, range, value, display)

  return offset + length, value
end

-- Trade Message Type
siac_cts_input_cta_v2_7_f.trade_message_type = {}

-- Size: Trade Message Type
siac_cts_input_cta_v2_7_f.trade_message_type.size = 1

-- Display: Trade Message Type
siac_cts_input_cta_v2_7_f.trade_message_type.display = function(value)
  return "Trade Message Type: "..value
end

-- Dissect: Trade Message Type
siac_cts_input_cta_v2_7_f.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Trade Price
siac_cts_input_cta_v2_7_f.trade_price = {}

-- Size: Trade Price
siac_cts_input_cta_v2_7_f.trade_price.size = 8

-- Display: Trade Price
siac_cts_input_cta_v2_7_f.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
siac_cts_input_cta_v2_7_f.trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
siac_cts_input_cta_v2_7_f.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_input_cta_v2_7_f.trade_price.translate(raw)
  local display = siac_cts_input_cta_v2_7_f.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Reporting Facility Id
siac_cts_input_cta_v2_7_f.trade_reporting_facility_id = {}

-- Size: Trade Reporting Facility Id
siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size = 1

-- Display: Trade Reporting Facility Id
siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.display = function(value)
  if value == " " then
    return "Trade Reporting Facility Id: Trf Not Applicable (<whitespace>)"
  end
  if value == "d" then
    return "Trade Reporting Facility Id: Finra Adf (d)"
  end
  if value == "B" then
    return "Trade Reporting Facility Id: Finra Nasdaq Trf Chicago (B)"
  end
  if value == "N" then
    return "Trade Reporting Facility Id: Finra Nyse Trf (N)"
  end
  if value == "T" then
    return "Trade Reporting Facility Id: Finra Nasdaq Trf Carteret (T)"
  end

  return "Trade Reporting Facility Id: Unknown("..value..")"
end

-- Dissect: Trade Reporting Facility Id
siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_reporting_facility_id, range, value, display)

  return offset + length, value
end

-- Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator = {}

-- Size: Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size = 1

-- Display: Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.display = function(value)
  if value == "0" then
    return "Trade Through Exempt Indicator: Not A Trade Through Exemption (0)"
  end
  if value == "1" then
    return "Trade Through Exempt Indicator: Trade Through Exemption (1)"
  end

  return "Trade Through Exempt Indicator: Unknown("..value..")"
end

-- Dissect: Trade Through Exempt Indicator
siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Trade Volume
siac_cts_input_cta_v2_7_f.trade_volume = {}

-- Size: Trade Volume
siac_cts_input_cta_v2_7_f.trade_volume.size = 4

-- Display: Trade Volume
siac_cts_input_cta_v2_7_f.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
siac_cts_input_cta_v2_7_f.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trading Status Id
siac_cts_input_cta_v2_7_f.trading_status_id = {}

-- Size: Trading Status Id
siac_cts_input_cta_v2_7_f.trading_status_id.size = 4

-- Display: Trading Status Id
siac_cts_input_cta_v2_7_f.trading_status_id.display = function(value)
  return "Trading Status Id: "..value
end

-- Dissect: Trading Status Id
siac_cts_input_cta_v2_7_f.trading_status_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.trading_status_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.trading_status_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trading_status_id, range, value, display)

  return offset + length, value
end

-- Version
siac_cts_input_cta_v2_7_f.version = {}

-- Size: Version
siac_cts_input_cta_v2_7_f.version.size = 1

-- Display: Version
siac_cts_input_cta_v2_7_f.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cts_input_cta_v2_7_f.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_input_cta_v2_7_f.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_input_cta_v2_7_f.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_input_cta_v2_7_f.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Siac Cts Input Cta 2.7.f
-----------------------------------------------------------------------

-- Timestamp 2
siac_cts_input_cta_v2_7_f.timestamp_2 = {}

-- Size: Timestamp 2
siac_cts_input_cta_v2_7_f.timestamp_2.size =
  siac_cts_input_cta_v2_7_f.seconds.size + 
  siac_cts_input_cta_v2_7_f.nanoseconds.size

-- Display: Timestamp 2
siac_cts_input_cta_v2_7_f.timestamp_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp 2
siac_cts_input_cta_v2_7_f.timestamp_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = siac_cts_input_cta_v2_7_f.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = siac_cts_input_cta_v2_7_f.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 2
siac_cts_input_cta_v2_7_f.timestamp_2.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_2 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.timestamp_2, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.timestamp_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.timestamp_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.timestamp_2.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.trade_cancel_error_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.original_participant_reference_number.size + 
  siac_cts_input_cta_v2_7_f.timestamp_2.size + 
  siac_cts_input_cta_v2_7_f.cancel_error_action.size

-- Display: Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Original Participant Reference Number: Signed Long
  index, original_participant_reference_number = siac_cts_input_cta_v2_7_f.original_participant_reference_number.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_input_cta_v2_7_f.timestamp_2.dissect(buffer, index, packet, parent)

  -- Cancel Error Action: Char
  index, cancel_error_action = siac_cts_input_cta_v2_7_f.cancel_error_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Short Trade Message
siac_cts_input_cta_v2_7_f.fractional_short_trade_message = {}

-- Size: Fractional Short Trade Message
siac_cts_input_cta_v2_7_f.fractional_short_trade_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.sale_condition_category.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.fractional_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.reserved_3.size

-- Display: Fractional Short Trade Message
siac_cts_input_cta_v2_7_f.fractional_short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Short Trade Message
siac_cts_input_cta_v2_7_f.fractional_short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Sale Condition Category: Char
  index, sale_condition_category = siac_cts_input_cta_v2_7_f.sale_condition_category.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_input_cta_v2_7_f.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Reserved 3: Char[]
  index, reserved_3 = siac_cts_input_cta_v2_7_f.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Short Trade Message
siac_cts_input_cta_v2_7_f.fractional_short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.fractional_short_trade_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.fractional_short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.fractional_short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.fractional_short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Trade Message
siac_cts_input_cta_v2_7_f.short_trade_message = {}

-- Size: Short Trade Message
siac_cts_input_cta_v2_7_f.short_trade_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.sale_condition_category.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.trade_volume.size + 
  siac_cts_input_cta_v2_7_f.reserved_3.size

-- Display: Short Trade Message
siac_cts_input_cta_v2_7_f.short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
siac_cts_input_cta_v2_7_f.short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Sale Condition Category: Char
  index, sale_condition_category = siac_cts_input_cta_v2_7_f.sale_condition_category.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_input_cta_v2_7_f.trade_volume.dissect(buffer, index, packet, parent)

  -- Reserved 3: Char[]
  index, reserved_3 = siac_cts_input_cta_v2_7_f.reserved_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
siac_cts_input_cta_v2_7_f.short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.short_trade_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
siac_cts_input_cta_v2_7_f.trading_status_message = {}

-- Size: Trading Status Message
siac_cts_input_cta_v2_7_f.trading_status_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.size + 
  siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.size + 
  siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.size + 
  siac_cts_input_cta_v2_7_f.buy_volume.size + 
  siac_cts_input_cta_v2_7_f.sell_volume.size + 
  siac_cts_input_cta_v2_7_f.security_status.size + 
  siac_cts_input_cta_v2_7_f.halt_reason.size + 
  siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.trading_status_id.size

-- Display: Trading Status Message
siac_cts_input_cta_v2_7_f.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
siac_cts_input_cta_v2_7_f.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Last Price Opening Reopening Luld Reference Price: Long
  index, last_price_opening_reopening_luld_reference_price = siac_cts_input_cta_v2_7_f.last_price_opening_reopening_luld_reference_price.dissect(buffer, index, packet, parent)

  -- High Indication Price Upper Limit Price Band: Long
  index, high_indication_price_upper_limit_price_band = siac_cts_input_cta_v2_7_f.high_indication_price_upper_limit_price_band.dissect(buffer, index, packet, parent)

  -- Low Indication Price Lower Limit Price Band: Long
  index, low_indication_price_lower_limit_price_band = siac_cts_input_cta_v2_7_f.low_indication_price_lower_limit_price_band.dissect(buffer, index, packet, parent)

  -- Buy Volume: Integer
  index, buy_volume = siac_cts_input_cta_v2_7_f.buy_volume.dissect(buffer, index, packet, parent)

  -- Sell Volume: Integer
  index, sell_volume = siac_cts_input_cta_v2_7_f.sell_volume.dissect(buffer, index, packet, parent)

  -- Security Status: Char
  index, security_status = siac_cts_input_cta_v2_7_f.security_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cts_input_cta_v2_7_f.halt_reason.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trading Status Id: Integer
  index, trading_status_id = siac_cts_input_cta_v2_7_f.trading_status_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
siac_cts_input_cta_v2_7_f.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trading_status_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Long Trade Message
siac_cts_input_cta_v2_7_f.fractional_long_trade_message = {}

-- Size: Fractional Long Trade Message
siac_cts_input_cta_v2_7_f.fractional_long_trade_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.fractional_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.timestamp_2.size

-- Display: Fractional Long Trade Message
siac_cts_input_cta_v2_7_f.fractional_long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Long Trade Message
siac_cts_input_cta_v2_7_f.fractional_long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_input_cta_v2_7_f.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_input_cta_v2_7_f.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_input_cta_v2_7_f.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_input_cta_v2_7_f.timestamp_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Long Trade Message
siac_cts_input_cta_v2_7_f.fractional_long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.fractional_long_trade_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.fractional_long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.fractional_long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.fractional_long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Trade Message
siac_cts_input_cta_v2_7_f.long_trade_message = {}

-- Size: Long Trade Message
siac_cts_input_cta_v2_7_f.long_trade_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.trade_volume.size + 
  siac_cts_input_cta_v2_7_f.sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.timestamp_2.size

-- Display: Long Trade Message
siac_cts_input_cta_v2_7_f.long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
siac_cts_input_cta_v2_7_f.long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_input_cta_v2_7_f.trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_input_cta_v2_7_f.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_input_cta_v2_7_f.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_input_cta_v2_7_f.timestamp_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
siac_cts_input_cta_v2_7_f.long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.long_trade_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_trade_correction_message = {}

-- Size: Fractional Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.corrected_sale_condition.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_price.size + 
  siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.timestamp_2.size + 
  siac_cts_input_cta_v2_7_f.original_participant_reference_number.size

-- Display: Fractional Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Char[]
  index, corrected_sale_condition = siac_cts_input_cta_v2_7_f.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Long
  index, corrected_trade_price = siac_cts_input_cta_v2_7_f.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Fractional Trade Volume: Long
  index, corrected_fractional_trade_volume = siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: Byte
  index, corrected_sellers_sale_days = siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Stop Stock Indicator: Char
  index, corrected_stop_stock_indicator = siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Indicator: Char
  index, corrected_trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Short Sale Restriction Indicator: Char
  index, corrected_short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_input_cta_v2_7_f.timestamp_2.dissect(buffer, index, packet, parent)

  -- Original Participant Reference Number: Signed Long
  index, original_participant_reference_number = siac_cts_input_cta_v2_7_f.original_participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.fractional_trade_correction_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
siac_cts_input_cta_v2_7_f.trade_correction_message = {}

-- Size: Trade Correction Message
siac_cts_input_cta_v2_7_f.trade_correction_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.corrected_sale_condition.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_price.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.timestamp_2.size + 
  siac_cts_input_cta_v2_7_f.original_participant_reference_number.size

-- Display: Trade Correction Message
siac_cts_input_cta_v2_7_f.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
siac_cts_input_cta_v2_7_f.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Char[]
  index, corrected_sale_condition = siac_cts_input_cta_v2_7_f.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Long
  index, corrected_trade_price = siac_cts_input_cta_v2_7_f.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Volume: Integer
  index, corrected_trade_volume = siac_cts_input_cta_v2_7_f.corrected_trade_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: Byte
  index, corrected_sellers_sale_days = siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Stop Stock Indicator: Char
  index, corrected_stop_stock_indicator = siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Indicator: Char
  index, corrected_trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Short Sale Restriction Indicator: Char
  index, corrected_short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_input_cta_v2_7_f.timestamp_2.dissect(buffer, index, packet, parent)

  -- Original Participant Reference Number: Signed Long
  index, original_participant_reference_number = siac_cts_input_cta_v2_7_f.original_participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
siac_cts_input_cta_v2_7_f.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_correction_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Status Message
siac_cts_input_cta_v2_7_f.auction_status_message = {}

-- Size: Auction Status Message
siac_cts_input_cta_v2_7_f.auction_status_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.auction_collar_reference_price.size + 
  siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.size + 
  siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.size + 
  siac_cts_input_cta_v2_7_f.number_of_extensions.size + 
  siac_cts_input_cta_v2_7_f.reserved_62.size

-- Display: Auction Status Message
siac_cts_input_cta_v2_7_f.auction_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Status Message
siac_cts_input_cta_v2_7_f.auction_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Long
  index, auction_collar_reference_price = siac_cts_input_cta_v2_7_f.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: Long
  index, auction_collar_upper_threshold_price = siac_cts_input_cta_v2_7_f.auction_collar_upper_threshold_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: Long
  index, auction_collar_lower_threshold_price = siac_cts_input_cta_v2_7_f.auction_collar_lower_threshold_price.dissect(buffer, index, packet, parent)

  -- Number Of Extensions: Byte
  index, number_of_extensions = siac_cts_input_cta_v2_7_f.number_of_extensions.dissect(buffer, index, packet, parent)

  -- Reserved 62: Char[]
  index, reserved_62 = siac_cts_input_cta_v2_7_f.reserved_62.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
siac_cts_input_cta_v2_7_f.auction_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.auction_status_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.auction_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.auction_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.auction_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Payload
siac_cts_input_cta_v2_7_f.trade_message_payload = {}

-- Dissect: Trade Message Payload
siac_cts_input_cta_v2_7_f.trade_message_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Auction Status Message
  if trade_message_type == "A" then
    return siac_cts_input_cta_v2_7_f.auction_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "C" then
    return siac_cts_input_cta_v2_7_f.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Trade Correction Message
  if trade_message_type == "O" then
    return siac_cts_input_cta_v2_7_f.fractional_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Trade Message
  if trade_message_type == "L" then
    return siac_cts_input_cta_v2_7_f.long_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Long Trade Message
  if trade_message_type == "R" then
    return siac_cts_input_cta_v2_7_f.fractional_long_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if trade_message_type == "S" then
    return siac_cts_input_cta_v2_7_f.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Trade Message
  if trade_message_type == "T" then
    return siac_cts_input_cta_v2_7_f.short_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Short Trade Message
  if trade_message_type == "H" then
    return siac_cts_input_cta_v2_7_f.fractional_short_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "X" then
    return siac_cts_input_cta_v2_7_f.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Trade Message
siac_cts_input_cta_v2_7_f.trade_message = {}

-- Calculate size of: Trade Message
siac_cts_input_cta_v2_7_f.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_input_cta_v2_7_f.trade_message_type.size

  -- Calculate runtime size of Trade Message Payload field
  local trade_message_payload_offset = offset + index
  local trade_message_payload_type = buffer(trade_message_payload_offset - 1, 1):string()
  index = index + siac_cts_input_cta_v2_7_f.trade_message_payload.size(buffer, trade_message_payload_offset, trade_message_payload_type)

  return index
end

-- Display: Trade Message
siac_cts_input_cta_v2_7_f.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
siac_cts_input_cta_v2_7_f.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: Char
  index, trade_message_type = siac_cts_input_cta_v2_7_f.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Message Payload: Runtime Type with 9 branches
  index = siac_cts_input_cta_v2_7_f.trade_message_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade Message
siac_cts_input_cta_v2_7_f.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.trade_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time = {}

-- Size: Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.size =
  siac_cts_input_cta_v2_7_f.seconds.size + 
  siac_cts_input_cta_v2_7_f.nanoseconds.size

-- Display: Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = siac_cts_input_cta_v2_7_f.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = siac_cts_input_cta_v2_7_f.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.dissect = function(buffer, offset, packet, parent)
  if show.prior_day_trade_date_and_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_date_and_time, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message = {}

-- Size: Fractional Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.fractional_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.size + 
  siac_cts_input_cta_v2_7_f.cancel_error_action.size

-- Display: Fractional Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_input_cta_v2_7_f.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_input_cta_v2_7_f.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_input_cta_v2_7_f.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  -- Cancel Error Action: Char
  index, cancel_error_action = siac_cts_input_cta_v2_7_f.cancel_error_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.fractional_prior_day_trade_cancel_error_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message = {}

-- Size: Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.trade_volume.size + 
  siac_cts_input_cta_v2_7_f.sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.size + 
  siac_cts_input_cta_v2_7_f.cancel_error_action.size

-- Display: Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_input_cta_v2_7_f.trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_input_cta_v2_7_f.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_input_cta_v2_7_f.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  -- Cancel Error Action: Char
  index, cancel_error_action = siac_cts_input_cta_v2_7_f.cancel_error_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Cancel Error Message
siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_cancel_error_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Prior Day Trade Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message = {}

-- Size: Fractional Prior Day Trade Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.fractional_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.size

-- Display: Fractional Prior Day Trade Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Prior Day Trade Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_input_cta_v2_7_f.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_input_cta_v2_7_f.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_input_cta_v2_7_f.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Prior Day Trade Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.fractional_prior_day_trade_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Trade Message
siac_cts_input_cta_v2_7_f.prior_day_trade_message = {}

-- Size: Prior Day Trade Message
siac_cts_input_cta_v2_7_f.prior_day_trade_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.sale_condition.size + 
  siac_cts_input_cta_v2_7_f.trade_price.size + 
  siac_cts_input_cta_v2_7_f.trade_volume.size + 
  siac_cts_input_cta_v2_7_f.sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.size

-- Display: Prior Day Trade Message
siac_cts_input_cta_v2_7_f.prior_day_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Message
siac_cts_input_cta_v2_7_f.prior_day_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition: Char[]
  index, sale_condition = siac_cts_input_cta_v2_7_f.sale_condition.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_input_cta_v2_7_f.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_input_cta_v2_7_f.trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_input_cta_v2_7_f.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_input_cta_v2_7_f.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Message
siac_cts_input_cta_v2_7_f.prior_day_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.prior_day_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.prior_day_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.prior_day_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Original Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time = {}

-- Size: Original Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.size =
  siac_cts_input_cta_v2_7_f.seconds.size + 
  siac_cts_input_cta_v2_7_f.nanoseconds.size

-- Display: Original Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = siac_cts_input_cta_v2_7_f.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = siac_cts_input_cta_v2_7_f.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.dissect = function(buffer, offset, packet, parent)
  if show.original_prior_day_trade_date_and_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.original_prior_day_trade_date_and_time, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.fields(buffer, offset, packet, parent)
  end
end

-- Corrected Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time = {}

-- Size: Corrected Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.size =
  siac_cts_input_cta_v2_7_f.seconds.size + 
  siac_cts_input_cta_v2_7_f.nanoseconds.size

-- Display: Corrected Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = siac_cts_input_cta_v2_7_f.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = siac_cts_input_cta_v2_7_f.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Prior Day Trade Date And Time
siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.dissect = function(buffer, offset, packet, parent)
  if show.corrected_prior_day_trade_date_and_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.corrected_prior_day_trade_date_and_time, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message = {}

-- Size: Fractional Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.corrected_sale_condition.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_price.size + 
  siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.original_sale_condition.size + 
  siac_cts_input_cta_v2_7_f.original_trade_price.size + 
  siac_cts_input_cta_v2_7_f.original_fractional_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.original_sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.size

-- Display: Fractional Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Char[]
  index, corrected_sale_condition = siac_cts_input_cta_v2_7_f.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Long
  index, corrected_trade_price = siac_cts_input_cta_v2_7_f.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Fractional Trade Volume: Long
  index, corrected_fractional_trade_volume = siac_cts_input_cta_v2_7_f.corrected_fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: Byte
  index, corrected_sellers_sale_days = siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Stop Stock Indicator: Char
  index, corrected_stop_stock_indicator = siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Indicator: Char
  index, corrected_trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Short Sale Restriction Indicator: Char
  index, corrected_short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Prior Day Trade Date And Time: Struct of 2 fields
  index, corrected_prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: Char[]
  index, original_sale_condition = siac_cts_input_cta_v2_7_f.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Long
  index, original_trade_price = siac_cts_input_cta_v2_7_f.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Fractional Trade Volume: Long
  index, original_fractional_trade_volume = siac_cts_input_cta_v2_7_f.original_fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: Byte
  index, original_sellers_sale_days = siac_cts_input_cta_v2_7_f.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Original Stop Stock Indicator: Char
  index, original_stop_stock_indicator = siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Indicator: Char
  index, original_trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Original Short Sale Restriction Indicator: Char
  index, original_short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Original Prior Day Trade Date And Time: Struct of 2 fields
  index, original_prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.fractional_prior_day_trade_correction_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message = {}

-- Size: Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.size =
  siac_cts_input_cta_v2_7_f.security_symbol.size + 
  siac_cts_input_cta_v2_7_f.instrument_type.size + 
  siac_cts_input_cta_v2_7_f.corrected_sale_condition.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_price.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.size + 
  siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.size + 
  siac_cts_input_cta_v2_7_f.original_sale_condition.size + 
  siac_cts_input_cta_v2_7_f.original_trade_price.size + 
  siac_cts_input_cta_v2_7_f.original_trade_volume.size + 
  siac_cts_input_cta_v2_7_f.original_sellers_sale_days.size + 
  siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.size + 
  siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.size + 
  siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.size + 
  siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.size

-- Display: Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_input_cta_v2_7_f.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_input_cta_v2_7_f.instrument_type.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Char[]
  index, corrected_sale_condition = siac_cts_input_cta_v2_7_f.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Long
  index, corrected_trade_price = siac_cts_input_cta_v2_7_f.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Volume: Integer
  index, corrected_trade_volume = siac_cts_input_cta_v2_7_f.corrected_trade_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: Byte
  index, corrected_sellers_sale_days = siac_cts_input_cta_v2_7_f.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Stop Stock Indicator: Char
  index, corrected_stop_stock_indicator = siac_cts_input_cta_v2_7_f.corrected_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Indicator: Char
  index, corrected_trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.corrected_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Short Sale Restriction Indicator: Char
  index, corrected_short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.corrected_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Prior Day Trade Date And Time: Struct of 2 fields
  index, corrected_prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.corrected_prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_input_cta_v2_7_f.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: Char[]
  index, original_sale_condition = siac_cts_input_cta_v2_7_f.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Long
  index, original_trade_price = siac_cts_input_cta_v2_7_f.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Volume: Integer
  index, original_trade_volume = siac_cts_input_cta_v2_7_f.original_trade_volume.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: Byte
  index, original_sellers_sale_days = siac_cts_input_cta_v2_7_f.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Original Stop Stock Indicator: Char
  index, original_stop_stock_indicator = siac_cts_input_cta_v2_7_f.original_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Indicator: Char
  index, original_trade_through_exempt_indicator = siac_cts_input_cta_v2_7_f.original_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Original Short Sale Restriction Indicator: Char
  index, original_short_sale_restriction_indicator = siac_cts_input_cta_v2_7_f.original_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Original Prior Day Trade Date And Time: Struct of 2 fields
  index, original_prior_day_trade_date_and_time = siac_cts_input_cta_v2_7_f.original_prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Correction Message
siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.prior_day_trade_correction_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Message Payload
siac_cts_input_cta_v2_7_f.prior_day_message_payload = {}

-- Dissect: Prior Day Message Payload
siac_cts_input_cta_v2_7_f.prior_day_message_payload.dissect = function(buffer, offset, packet, parent, prior_day_message_type)
  -- Dissect Prior Day Trade Correction Message
  if prior_day_message_type == "C" then
    return siac_cts_input_cta_v2_7_f.prior_day_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Prior Day Trade Correction Message
  if prior_day_message_type == "O" then
    return siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Message
  if prior_day_message_type == "T" then
    return siac_cts_input_cta_v2_7_f.prior_day_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Prior Day Trade Message
  if prior_day_message_type == "R" then
    return siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Cancel Error Message
  if prior_day_message_type == "X" then
    return siac_cts_input_cta_v2_7_f.prior_day_trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Prior Day Trade Cancel Error Message
  if prior_day_message_type == "E" then
    return siac_cts_input_cta_v2_7_f.fractional_prior_day_trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Prior Day Message
siac_cts_input_cta_v2_7_f.prior_day_message = {}

-- Calculate size of: Prior Day Message
siac_cts_input_cta_v2_7_f.prior_day_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_input_cta_v2_7_f.prior_day_message_type.size

  -- Calculate runtime size of Prior Day Message Payload field
  local prior_day_message_payload_offset = offset + index
  local prior_day_message_payload_type = buffer(prior_day_message_payload_offset - 1, 1):string()
  index = index + siac_cts_input_cta_v2_7_f.prior_day_message_payload.size(buffer, prior_day_message_payload_offset, prior_day_message_payload_type)

  return index
end

-- Display: Prior Day Message
siac_cts_input_cta_v2_7_f.prior_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Message
siac_cts_input_cta_v2_7_f.prior_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prior Day Message Type: Char
  index, prior_day_message_type = siac_cts_input_cta_v2_7_f.prior_day_message_type.dissect(buffer, index, packet, parent)

  -- Prior Day Message Payload: Runtime Type with 6 branches
  index = siac_cts_input_cta_v2_7_f.prior_day_message_payload.dissect(buffer, index, packet, parent, prior_day_message_type)

  return index
end

-- Dissect: Prior Day Message
siac_cts_input_cta_v2_7_f.prior_day_message.dissect = function(buffer, offset, packet, parent)
  if show.prior_day_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.prior_day_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.prior_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.prior_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.prior_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Crossing Session Message
siac_cts_input_cta_v2_7_f.crossing_session_message = {}

-- Size: Crossing Session Message
siac_cts_input_cta_v2_7_f.crossing_session_message.size =
  siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume.size + 
  siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value.size + 
  siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume.size

-- Display: Crossing Session Message
siac_cts_input_cta_v2_7_f.crossing_session_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Crossing Session Message
siac_cts_input_cta_v2_7_f.crossing_session_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Crossing Session I Total Trades Volume: Long
  index, crossing_session_i_total_trades_volume = siac_cts_input_cta_v2_7_f.crossing_session_i_total_trades_volume.dissect(buffer, index, packet, parent)

  -- Crossing Session Ii Dollar Value: Long
  index, crossing_session_ii_dollar_value = siac_cts_input_cta_v2_7_f.crossing_session_ii_dollar_value.dissect(buffer, index, packet, parent)

  -- Crossing Session Ii Total Trades Volume: Long
  index, crossing_session_ii_total_trades_volume = siac_cts_input_cta_v2_7_f.crossing_session_ii_total_trades_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Crossing Session Message
siac_cts_input_cta_v2_7_f.crossing_session_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.crossing_session_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.crossing_session_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.crossing_session_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.crossing_session_message.fields(buffer, offset, packet, parent)
  end
end

-- Approximate Trades And Total Dollar Value Message
siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message = {}

-- Size: Approximate Trades And Total Dollar Value Message
siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.size =
  siac_cts_input_cta_v2_7_f.total_trades.size + 
  siac_cts_input_cta_v2_7_f.dollar_value.size

-- Display: Approximate Trades And Total Dollar Value Message
siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Approximate Trades And Total Dollar Value Message
siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Total Trades: Integer
  index, total_trades = siac_cts_input_cta_v2_7_f.total_trades.dissect(buffer, index, packet, parent)

  -- Dollar Value: Long
  index, dollar_value = siac_cts_input_cta_v2_7_f.dollar_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Approximate Trades And Total Dollar Value Message
siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.approximate_trades_and_total_dollar_value_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message Payload
siac_cts_input_cta_v2_7_f.market_status_message_payload = {}

-- Dissect: Market Status Message Payload
siac_cts_input_cta_v2_7_f.market_status_message_payload.dissect = function(buffer, offset, packet, parent, market_status_message_type)
  -- Dissect Approximate Trades And Total Dollar Value Message
  if market_status_message_type == "O" then
    return siac_cts_input_cta_v2_7_f.approximate_trades_and_total_dollar_value_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Crossing Session Message
  if market_status_message_type == "P" then
    return siac_cts_input_cta_v2_7_f.crossing_session_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Market Status Message
siac_cts_input_cta_v2_7_f.market_status_message = {}

-- Calculate size of: Market Status Message
siac_cts_input_cta_v2_7_f.market_status_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_input_cta_v2_7_f.market_status_message_type.size

  -- Calculate runtime size of Market Status Message Payload field
  local market_status_message_payload_offset = offset + index
  local market_status_message_payload_type = buffer(market_status_message_payload_offset - 1, 1):string()
  index = index + siac_cts_input_cta_v2_7_f.market_status_message_payload.size(buffer, market_status_message_payload_offset, market_status_message_payload_type)

  return index
end

-- Display: Market Status Message
siac_cts_input_cta_v2_7_f.market_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status Message
siac_cts_input_cta_v2_7_f.market_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Status Message Type: Char
  index, market_status_message_type = siac_cts_input_cta_v2_7_f.market_status_message_type.dissect(buffer, index, packet, parent)

  -- Market Status Message Payload: Runtime Type with 2 branches
  index = siac_cts_input_cta_v2_7_f.market_status_message_payload.dissect(buffer, index, packet, parent, market_status_message_type)

  return index
end

-- Dissect: Market Status Message
siac_cts_input_cta_v2_7_f.market_status_message.dissect = function(buffer, offset, packet, parent)
  if show.market_status_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.market_status_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.market_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.market_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.market_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Message
siac_cts_input_cta_v2_7_f.index_message = {}

-- Size: Index Message
siac_cts_input_cta_v2_7_f.index_message.size =
  siac_cts_input_cta_v2_7_f.index_symbol.size + 
  siac_cts_input_cta_v2_7_f.index_value.size

-- Display: Index Message
siac_cts_input_cta_v2_7_f.index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Message
siac_cts_input_cta_v2_7_f.index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Symbol: Char[]
  index, index_symbol = siac_cts_input_cta_v2_7_f.index_symbol.dissect(buffer, index, packet, parent)

  -- Index Value: Signed Long
  index, index_value = siac_cts_input_cta_v2_7_f.index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Message
siac_cts_input_cta_v2_7_f.index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.index_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.index_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Message
siac_cts_input_cta_v2_7_f.test_message = {}

-- Size: Test Message
siac_cts_input_cta_v2_7_f.test_message.size =
  siac_cts_input_cta_v2_7_f.data.size

-- Display: Test Message
siac_cts_input_cta_v2_7_f.test_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Message
siac_cts_input_cta_v2_7_f.test_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data: Char[]
  index, data = siac_cts_input_cta_v2_7_f.data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Message
siac_cts_input_cta_v2_7_f.test_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.test_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.test_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.test_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.test_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Information And Message Count Response Message
siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message = {}

-- Size: Sequence Information And Message Count Response Message
siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.size =
  siac_cts_input_cta_v2_7_f.current_block_sequence_number.size + 
  siac_cts_input_cta_v2_7_f.last_participant_reference_number.size + 
  siac_cts_input_cta_v2_7_f.message_count.size

-- Display: Sequence Information And Message Count Response Message
siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Information And Message Count Response Message
siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Block Sequence Number: Integer
  index, current_block_sequence_number = siac_cts_input_cta_v2_7_f.current_block_sequence_number.dissect(buffer, index, packet, parent)

  -- Last Participant Reference Number: Signed Long
  index, last_participant_reference_number = siac_cts_input_cta_v2_7_f.last_participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message Count: Long
  index, message_count = siac_cts_input_cta_v2_7_f.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Information And Message Count Response Message
siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.sequence_information_and_message_count_response_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
siac_cts_input_cta_v2_7_f.control_message_payload = {}

-- Dissect: Control Message Payload
siac_cts_input_cta_v2_7_f.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "A" then
    return offset
  end
  -- Dissect Sequence Information And Message Count Inquiry Message
  if control_message_type == "I" then
    return offset
  end
  -- Dissect Sequence Information And Message Count Response Message
  if control_message_type == "N" then
    return siac_cts_input_cta_v2_7_f.sequence_information_and_message_count_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return offset
  end
  -- Dissect End Of Day Message
  if control_message_type == "Z" then
    return offset
  end
  -- Dissect Test Message
  if control_message_type == "5" then
    return siac_cts_input_cta_v2_7_f.test_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
siac_cts_input_cta_v2_7_f.control_message = {}

-- Calculate size of: Control Message
siac_cts_input_cta_v2_7_f.control_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_input_cta_v2_7_f.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + siac_cts_input_cta_v2_7_f.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
siac_cts_input_cta_v2_7_f.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
siac_cts_input_cta_v2_7_f.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: Char
  index, control_message_type = siac_cts_input_cta_v2_7_f.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 6 branches
  index = siac_cts_input_cta_v2_7_f.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
siac_cts_input_cta_v2_7_f.control_message.dissect = function(buffer, offset, packet, parent)
  if show.control_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.control_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Warning Message
siac_cts_input_cta_v2_7_f.warning_message = {}

-- Size: Warning Message
siac_cts_input_cta_v2_7_f.warning_message.size =
  siac_cts_input_cta_v2_7_f.previous_block_sequence_number.size + 
  siac_cts_input_cta_v2_7_f.previous_participant_reference_number.size

-- Display: Warning Message
siac_cts_input_cta_v2_7_f.warning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Warning Message
siac_cts_input_cta_v2_7_f.warning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Previous Block Sequence Number: Integer
  index, previous_block_sequence_number = siac_cts_input_cta_v2_7_f.previous_block_sequence_number.dissect(buffer, index, packet, parent)

  -- Previous Participant Reference Number: Signed Long
  index, previous_participant_reference_number = siac_cts_input_cta_v2_7_f.previous_participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Warning Message
siac_cts_input_cta_v2_7_f.warning_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.warning_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.warning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.warning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.warning_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejection Message
siac_cts_input_cta_v2_7_f.rejection_message = {}

-- Size: Rejection Message
siac_cts_input_cta_v2_7_f.rejection_message.size =
  siac_cts_input_cta_v2_7_f.error_code.size + 
  siac_cts_input_cta_v2_7_f.block_sequence_number.size + 
  siac_cts_input_cta_v2_7_f.participant_reference_number.size + 
  siac_cts_input_cta_v2_7_f.message_id.size

-- Display: Rejection Message
siac_cts_input_cta_v2_7_f.rejection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejection Message
siac_cts_input_cta_v2_7_f.rejection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Code: Byte
  index, error_code = siac_cts_input_cta_v2_7_f.error_code.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: Integer
  index, block_sequence_number = siac_cts_input_cta_v2_7_f.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_input_cta_v2_7_f.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message ID: Byte
  index, message_id = siac_cts_input_cta_v2_7_f.message_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejection Message
siac_cts_input_cta_v2_7_f.rejection_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.rejection_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.rejection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.rejection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.rejection_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
siac_cts_input_cta_v2_7_f.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
siac_cts_input_cta_v2_7_f.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Rejection Message
  if administrative_message_type == "R" then
    return siac_cts_input_cta_v2_7_f.rejection_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Warning Message
  if administrative_message_type == "W" then
    return siac_cts_input_cta_v2_7_f.warning_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
siac_cts_input_cta_v2_7_f.administrative_message = {}

-- Calculate size of: Administrative Message
siac_cts_input_cta_v2_7_f.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_input_cta_v2_7_f.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + siac_cts_input_cta_v2_7_f.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
siac_cts_input_cta_v2_7_f.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
siac_cts_input_cta_v2_7_f.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: Char
  index, administrative_message_type = siac_cts_input_cta_v2_7_f.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 2 branches
  index = siac_cts_input_cta_v2_7_f.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
siac_cts_input_cta_v2_7_f.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.administrative_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.administrative_message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
siac_cts_input_cta_v2_7_f.category_payload = {}

-- Dissect: Category Payload
siac_cts_input_cta_v2_7_f.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative Message
  if message_category == "A" then
    return siac_cts_input_cta_v2_7_f.administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "C" then
    return siac_cts_input_cta_v2_7_f.control_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index Message
  if message_category == "I" then
    return siac_cts_input_cta_v2_7_f.index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status Message
  if message_category == "M" then
    return siac_cts_input_cta_v2_7_f.market_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Message
  if message_category == "P" then
    return siac_cts_input_cta_v2_7_f.prior_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_category == "T" then
    return siac_cts_input_cta_v2_7_f.trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Timestamp 1
siac_cts_input_cta_v2_7_f.timestamp_1 = {}

-- Size: Timestamp 1
siac_cts_input_cta_v2_7_f.timestamp_1.size =
  siac_cts_input_cta_v2_7_f.seconds.size + 
  siac_cts_input_cta_v2_7_f.nanoseconds.size

-- Display: Timestamp 1
siac_cts_input_cta_v2_7_f.timestamp_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp 1
siac_cts_input_cta_v2_7_f.timestamp_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = siac_cts_input_cta_v2_7_f.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = siac_cts_input_cta_v2_7_f.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 1
siac_cts_input_cta_v2_7_f.timestamp_1.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_1 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.timestamp_1, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.timestamp_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.timestamp_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.timestamp_1.fields(buffer, offset, packet, parent)
  end
end

-- Message Header
siac_cts_input_cta_v2_7_f.message_header = {}

-- Size: Message Header
siac_cts_input_cta_v2_7_f.message_header.size =
  siac_cts_input_cta_v2_7_f.message_length.size + 
  siac_cts_input_cta_v2_7_f.message_category.size + 
  siac_cts_input_cta_v2_7_f.message_type.size + 
  siac_cts_input_cta_v2_7_f.participant_id.size + 
  siac_cts_input_cta_v2_7_f.timestamp_1.size + 
  siac_cts_input_cta_v2_7_f.message_id.size + 
  siac_cts_input_cta_v2_7_f.reserved.size + 
  siac_cts_input_cta_v2_7_f.participant_reference_number.size

-- Display: Message Header
siac_cts_input_cta_v2_7_f.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
siac_cts_input_cta_v2_7_f.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Short
  index, message_length = siac_cts_input_cta_v2_7_f.message_length.dissect(buffer, index, packet, parent)

  -- Message Category: Char
  index, message_category = siac_cts_input_cta_v2_7_f.message_category.dissect(buffer, index, packet, parent)

  -- Message Type: Char
  index, message_type = siac_cts_input_cta_v2_7_f.message_type.dissect(buffer, index, packet, parent)

  -- Participant ID: Char
  index, participant_id = siac_cts_input_cta_v2_7_f.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_input_cta_v2_7_f.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message ID: Byte
  index, message_id = siac_cts_input_cta_v2_7_f.message_id.dissect(buffer, index, packet, parent)

  -- Reserved: Char [4]
  index, reserved = siac_cts_input_cta_v2_7_f.reserved.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_input_cta_v2_7_f.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_cts_input_cta_v2_7_f.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message_header, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
siac_cts_input_cta_v2_7_f.message = {}

-- Calculate size of: Message
siac_cts_input_cta_v2_7_f.message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_input_cta_v2_7_f.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 26, 2):uint()

  return index
end

-- Display: Message
siac_cts_input_cta_v2_7_f.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cts_input_cta_v2_7_f.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 8 fields
  index, message_header = siac_cts_input_cta_v2_7_f.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 24, 1):string()

  -- Category Payload: Runtime Type with 6 branches
  index = siac_cts_input_cta_v2_7_f.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cts_input_cta_v2_7_f.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.message, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Block Header
siac_cts_input_cta_v2_7_f.block_header = {}

-- Size: Block Header
siac_cts_input_cta_v2_7_f.block_header.size =
  siac_cts_input_cta_v2_7_f.version.size + 
  siac_cts_input_cta_v2_7_f.block_size.size + 
  siac_cts_input_cta_v2_7_f.block_sequence_number.size + 
  siac_cts_input_cta_v2_7_f.messages_in_block.size + 
  siac_cts_input_cta_v2_7_f.block_checksum.size

-- Display: Block Header
siac_cts_input_cta_v2_7_f.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cts_input_cta_v2_7_f.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: Byte
  index, version = siac_cts_input_cta_v2_7_f.version.dissect(buffer, index, packet, parent)

  -- Block Size: Short
  index, block_size = siac_cts_input_cta_v2_7_f.block_size.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: Integer
  index, block_sequence_number = siac_cts_input_cta_v2_7_f.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: Byte
  index, messages_in_block = siac_cts_input_cta_v2_7_f.messages_in_block.dissect(buffer, index, packet, parent)

  -- Block Checksum: Short
  index, block_checksum = siac_cts_input_cta_v2_7_f.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cts_input_cta_v2_7_f.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_input_cta_v2_7_f.fields.block_header, buffer(offset, 0))
    local index = siac_cts_input_cta_v2_7_f.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_input_cta_v2_7_f.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_input_cta_v2_7_f.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_cts_input_cta_v2_7_f.packet = {}

-- Verify required size of Tcp packet
siac_cts_input_cta_v2_7_f.packet.requiredsize = function(buffer)
  return buffer:len() >= siac_cts_input_cta_v2_7_f.block_separator.size + siac_cts_input_cta_v2_7_f.block_header.size
end

-- Dissect Packet
siac_cts_input_cta_v2_7_f.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Separator: Byte [2]
  index, block_separator = siac_cts_input_cta_v2_7_f.block_separator.dissect(buffer, index, packet, parent)

  -- Block Header: Struct of 5 fields
  index, block_header = siac_cts_input_cta_v2_7_f.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 3, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do
    index, message = siac_cts_input_cta_v2_7_f.message.dissect(buffer, index, packet, parent, message_index)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_cts_input_cta_v2_7_f.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_cts_input_cta_v2_7_f.init()
end

-- Dissector for Siac Cts Input Cta 2.7.f
function omi_siac_cts_input_cta_v2_7_f.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_cts_input_cta_v2_7_f.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_cts_input_cta_v2_7_f, buffer(), omi_siac_cts_input_cta_v2_7_f.description, "("..buffer:len().." Bytes)")
  return siac_cts_input_cta_v2_7_f.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Siac Cts Input Cta 2.7.f (Tcp)
local function omi_siac_cts_input_cta_v2_7_f_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_cts_input_cta_v2_7_f.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_cts_input_cta_v2_7_f
  omi_siac_cts_input_cta_v2_7_f.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cts Input Cta 2.7.f
omi_siac_cts_input_cta_v2_7_f:register_heuristic("tcp", omi_siac_cts_input_cta_v2_7_f_tcp_heuristic)

-- Register Siac Cts Input Cta 2.7.f on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_cts_input_cta_v2_7_f)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The Securities Industry Automation Corporation
--   Version: 2.7.f
--   Date: Thursday, January 29, 2026
--   Specification: CTS_Pillar_Input_Specification.pdf
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
