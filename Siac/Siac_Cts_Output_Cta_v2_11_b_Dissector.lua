-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cts Output Cta 2.11.b Protocol
local omi_siac_cts_output_cta_v2_11_b = Proto("Siac.Cts.Output.Cta.v2.11.b.Lua", "Siac Cts Output Cta 2.11.b")

-- Protocol table
local siac_cts_output_cta_v2_11_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cts Output Cta 2.11.b Fields
omi_siac_cts_output_cta_v2_11_b.fields.administrative = ProtoField.new("Administrative", "siac.cts.output.cta.v2.11.b.administrative", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.cts.output.cta.v2.11.b.administrativemessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.approximate_volume_participant = ProtoField.new("Approximate Volume Participant", "siac.cts.output.cta.v2.11.b.approximatevolumeparticipant", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cts.output.cta.v2.11.b.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cts.output.cta.v2.11.b.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cts.output.cta.v2.11.b.auctioncollarupperthresholdprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.bid_index_value = ProtoField.new("Bid Index Value", "siac.cts.output.cta.v2.11.b.bidindexvalue", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cts.output.cta.v2.11.b.blockchecksum", ftypes.UINT16)
omi_siac_cts_output_cta_v2_11_b.fields.block_header = ProtoField.new("Block Header", "siac.cts.output.cta.v2.11.b.blockheader", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cts.output.cta.v2.11.b.blockpadbyte", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cts.output.cta.v2.11.b.blocksequencenumber", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.block_size = ProtoField.new("Block Size", "siac.cts.output.cta.v2.11.b.blocksize", ftypes.UINT16)
omi_siac_cts_output_cta_v2_11_b.fields.buy_volume = ProtoField.new("Buy Volume", "siac.cts.output.cta.v2.11.b.buyvolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.cancel_error_action = ProtoField.new("Cancel Error Action", "siac.cts.output.cta.v2.11.b.cancelerroraction", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.category_1 = ProtoField.new("Category 1", "siac.cts.output.cta.v2.11.b.category1", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.category_2 = ProtoField.new("Category 2", "siac.cts.output.cta.v2.11.b.category2", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.category_3 = ProtoField.new("Category 3", "siac.cts.output.cta.v2.11.b.category3", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.category_4 = ProtoField.new("Category 4", "siac.cts.output.cta.v2.11.b.category4", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_closing_price = ProtoField.new("Consolidated Closing Price", "siac.cts.output.cta.v2.11.b.consolidatedclosingprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_fractional_total_volume = ProtoField.new("Consolidated Fractional Total Volume", "siac.cts.output.cta.v2.11.b.consolidatedfractionaltotalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_high_low_last_indicator = ProtoField.new("Consolidated High Low Last Indicator", "siac.cts.output.cta.v2.11.b.consolidatedhighlowlastindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_high_price = ProtoField.new("Consolidated High Price", "siac.cts.output.cta.v2.11.b.consolidatedhighprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_last_participant_id = ProtoField.new("Consolidated Last Participant Id", "siac.cts.output.cta.v2.11.b.consolidatedlastparticipantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_last_price = ProtoField.new("Consolidated Last Price", "siac.cts.output.cta.v2.11.b.consolidatedlastprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_low_price = ProtoField.new("Consolidated Low Price", "siac.cts.output.cta.v2.11.b.consolidatedlowprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_previous_close_price_date = ProtoField.new("Consolidated Previous Close Price Date", "siac.cts.output.cta.v2.11.b.consolidatedpreviousclosepricedate", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_tick = ProtoField.new("Consolidated Tick", "siac.cts.output.cta.v2.11.b.consolidatedtick", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_total_volume = ProtoField.new("Consolidated Total Volume", "siac.cts.output.cta.v2.11.b.consolidatedtotalvolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.control = ProtoField.new("Control", "siac.cts.output.cta.v2.11.b.control", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cts.output.cta.v2.11.b.controlmessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_fractional_trade_volume = ProtoField.new("Corrected Fractional Trade Volume", "siac.cts.output.cta.v2.11.b.correctedfractionaltradevolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_prior_day_trade_date_and_time = ProtoField.new("Corrected Prior Day Trade Date And Time", "siac.cts.output.cta.v2.11.b.correctedpriordaytradedateandtime", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_sale_condition = ProtoField.new("Corrected Sale Condition", "siac.cts.output.cta.v2.11.b.correctedsalecondition", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_sellers_sale_days = ProtoField.new("Corrected Sellers Sale Days", "siac.cts.output.cta.v2.11.b.correctedsellerssaledays", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_short_sale_restriction_indicator = ProtoField.new("Corrected Short Sale Restriction Indicator", "siac.cts.output.cta.v2.11.b.correctedshortsalerestrictionindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_stop_stock_indicator = ProtoField.new("Corrected Stop Stock Indicator", "siac.cts.output.cta.v2.11.b.correctedstopstockindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_trade_price = ProtoField.new("Corrected Trade Price", "siac.cts.output.cta.v2.11.b.correctedtradeprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_trade_through_exempt_indicator = ProtoField.new("Corrected Trade Through Exempt Indicator", "siac.cts.output.cta.v2.11.b.correctedtradethroughexemptindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.corrected_trade_volume = ProtoField.new("Corrected Trade Volume", "siac.cts.output.cta.v2.11.b.correctedtradevolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_i_total_trades_volume = ProtoField.new("Crossing Session I Total Trades Volume", "siac.cts.output.cta.v2.11.b.crossingsessionitotaltradesvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_ii_dollar_value = ProtoField.new("Crossing Session Ii Dollar Value", "siac.cts.output.cta.v2.11.b.crossingsessioniidollarvalue", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_ii_total_trades_volume = ProtoField.new("Crossing Session Ii Total Trades Volume", "siac.cts.output.cta.v2.11.b.crossingsessioniitotaltradesvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.cts.output.cta.v2.11.b.datafeedindicator", ftypes.BYTES)
omi_siac_cts_output_cta_v2_11_b.fields.dollar_value = ProtoField.new("Dollar Value", "siac.cts.output.cta.v2.11.b.dollarvalue", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cts.output.cta.v2.11.b.financialstatusindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_total_volume = ProtoField.new("Fractional Total Volume", "siac.cts.output.cta.v2.11.b.fractionaltotalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_total_volume = ProtoField.new("Fractional Trade Total Volume", "siac.cts.output.cta.v2.11.b.fractionaltradetotalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_volume = ProtoField.new("Fractional Trade Volume", "siac.cts.output.cta.v2.11.b.fractionaltradevolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_volume_4 = ProtoField.new("Fractional Trade Volume 4", "siac.cts.output.cta.v2.11.b.fractionaltradevolume4", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cts.output.cta.v2.11.b.haltreason", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.held_trade_indicator = ProtoField.new("Held Trade Indicator", "siac.cts.output.cta.v2.11.b.heldtradeindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.high_indication_price_upper_limit_price_band = ProtoField.new("High Indication Price Upper Limit Price Band", "siac.cts.output.cta.v2.11.b.highindicationpriceupperlimitpriceband", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.high_price = ProtoField.new("High Price", "siac.cts.output.cta.v2.11.b.highprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.index = ProtoField.new("Index", "siac.cts.output.cta.v2.11.b.index", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.index_message_type = ProtoField.new("Index Message Type", "siac.cts.output.cta.v2.11.b.indexmessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.index_symbol = ProtoField.new("Index Symbol", "siac.cts.output.cta.v2.11.b.indexsymbol", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.index_value = ProtoField.new("Index Value", "siac.cts.output.cta.v2.11.b.indexvalue", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cts.output.cta.v2.11.b.instrumenttype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.ipo = ProtoField.new("Ipo", "siac.cts.output.cta.v2.11.b.ipo", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.last_participant_id = ProtoField.new("Last Participant Id", "siac.cts.output.cta.v2.11.b.lastparticipantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.last_price = ProtoField.new("Last Price", "siac.cts.output.cta.v2.11.b.lastprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.limit_up_limit_down_luld_indicator = ProtoField.new("Limit Up Limit Down Luld Indicator", "siac.cts.output.cta.v2.11.b.limituplimitdownluldindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.low_indication_price_lower_limit_price_band = ProtoField.new("Low Indication Price Lower Limit Price Band", "siac.cts.output.cta.v2.11.b.lowindicationpricelowerlimitpriceband", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.low_price = ProtoField.new("Low Price", "siac.cts.output.cta.v2.11.b.lowprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.luld_leverage_ratio = ProtoField.new("Luld Leverage Ratio", "siac.cts.output.cta.v2.11.b.luldleverageratio", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.luld_tier = ProtoField.new("Luld Tier", "siac.cts.output.cta.v2.11.b.luldtier", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.market_status = ProtoField.new("Market Status", "siac.cts.output.cta.v2.11.b.marketstatus", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.market_status_message_type = ProtoField.new("Market Status Message Type", "siac.cts.output.cta.v2.11.b.marketstatusmessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.market_wide_circuit_breaker_level_indicator = ProtoField.new("Market Wide Circuit Breaker Level Indicator", "siac.cts.output.cta.v2.11.b.marketwidecircuitbreakerlevelindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.message = ProtoField.new("Message", "siac.cts.output.cta.v2.11.b.message", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.message_category = ProtoField.new("Message Category", "siac.cts.output.cta.v2.11.b.messagecategory", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.message_id = ProtoField.new("Message Id", "siac.cts.output.cta.v2.11.b.messageid", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.message_length = ProtoField.new("Message Length", "siac.cts.output.cta.v2.11.b.messagelength", ftypes.UINT16)
omi_siac_cts_output_cta_v2_11_b.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cts.output.cta.v2.11.b.messagesinblock", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.minimum_price_increment_indicator = ProtoField.new("Minimum Price Increment Indicator", "siac.cts.output.cta.v2.11.b.minimumpriceincrementindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "siac.cts.output.cta.v2.11.b.mwcblevel1", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cts.output.cta.v2.11.b.mwcblevel2", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cts.output.cta.v2.11.b.mwcblevel3", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cts.output.cta.v2.11.b.nanoseconds", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cts.output.cta.v2.11.b.numberofextensions", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.number_of_participants = ProtoField.new("Number Of Participants", "siac.cts.output.cta.v2.11.b.numberofparticipants", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.offer_index_value = ProtoField.new("Offer Index Value", "siac.cts.output.cta.v2.11.b.offerindexvalue", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.open_price = ProtoField.new("Open Price", "siac.cts.output.cta.v2.11.b.openprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.original_fractional_trade_volume = ProtoField.new("Original Fractional Trade Volume", "siac.cts.output.cta.v2.11.b.originalfractionaltradevolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.original_participant_reference_number = ProtoField.new("Original Participant Reference Number", "siac.cts.output.cta.v2.11.b.originalparticipantreferencenumber", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.original_prior_day_trade_date_and_time = ProtoField.new("Original Prior Day Trade Date And Time", "siac.cts.output.cta.v2.11.b.originalpriordaytradedateandtime", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.original_sale_condition = ProtoField.new("Original Sale Condition", "siac.cts.output.cta.v2.11.b.originalsalecondition", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.original_sellers_sale_days = ProtoField.new("Original Sellers Sale Days", "siac.cts.output.cta.v2.11.b.originalsellerssaledays", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.original_short_sale_restriction_indicator = ProtoField.new("Original Short Sale Restriction Indicator", "siac.cts.output.cta.v2.11.b.originalshortsalerestrictionindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.original_stop_stock_indicator = ProtoField.new("Original Stop Stock Indicator", "siac.cts.output.cta.v2.11.b.originalstopstockindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.original_trade_price = ProtoField.new("Original Trade Price", "siac.cts.output.cta.v2.11.b.originaltradeprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.original_trade_through_exempt_indicator = ProtoField.new("Original Trade Through Exempt Indicator", "siac.cts.output.cta.v2.11.b.originaltradethroughexemptindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.original_trade_volume = ProtoField.new("Original Trade Volume", "siac.cts.output.cta.v2.11.b.originaltradevolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.packet = ProtoField.new("Packet", "siac.cts.output.cta.v2.11.b.packet", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.participant = ProtoField.new("Participant", "siac.cts.output.cta.v2.11.b.participant", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.participant_fractional_total_volume = ProtoField.new("Participant Fractional Total Volume", "siac.cts.output.cta.v2.11.b.participantfractionaltotalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.participant_high_price = ProtoField.new("Participant High Price", "siac.cts.output.cta.v2.11.b.participanthighprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.participant_id = ProtoField.new("Participant Id", "siac.cts.output.cta.v2.11.b.participantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.participant_last_price = ProtoField.new("Participant Last Price", "siac.cts.output.cta.v2.11.b.participantlastprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.participant_low_price = ProtoField.new("Participant Low Price", "siac.cts.output.cta.v2.11.b.participantlowprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.participant_open_high_low_last_indicator = ProtoField.new("Participant Open High Low Last Indicator", "siac.cts.output.cta.v2.11.b.participantopenhighlowlastindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.participant_open_price = ProtoField.new("Participant Open Price", "siac.cts.output.cta.v2.11.b.participantopenprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.participant_previous_close_price_date = ProtoField.new("Participant Previous Close Price Date", "siac.cts.output.cta.v2.11.b.participantpreviousclosepricedate", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cts.output.cta.v2.11.b.participantreferencenumber", ftypes.INT64)
omi_siac_cts_output_cta_v2_11_b.fields.participant_tick = ProtoField.new("Participant Tick", "siac.cts.output.cta.v2.11.b.participanttick", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.participant_total_volume = ProtoField.new("Participant Total Volume", "siac.cts.output.cta.v2.11.b.participanttotalvolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.previous_close_price = ProtoField.new("Previous Close Price", "siac.cts.output.cta.v2.11.b.previouscloseprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.previous_close_price_date = ProtoField.new("Previous Close Price Date", "siac.cts.output.cta.v2.11.b.previousclosepricedate", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cts.output.cta.v2.11.b.primarylistingmarketparticipantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.primary_listing_market_previous_closing_price = ProtoField.new("Primary Listing Market Previous Closing Price", "siac.cts.output.cta.v2.11.b.primarylistingmarketpreviousclosingprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.prior_day = ProtoField.new("Prior Day", "siac.cts.output.cta.v2.11.b.priorday", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.prior_day_message_type = ProtoField.new("Prior Day Message Type", "siac.cts.output.cta.v2.11.b.priordaymessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_date_and_time = ProtoField.new("Prior Day Trade Date And Time", "siac.cts.output.cta.v2.11.b.priordaytradedateandtime", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.prior_security_symbol = ProtoField.new("Prior Security Symbol", "siac.cts.output.cta.v2.11.b.priorsecuritysymbol", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.reserved = ProtoField.new("Reserved", "siac.cts.output.cta.v2.11.b.reserved", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.reserved_128 = ProtoField.new("Reserved 128", "siac.cts.output.cta.v2.11.b.reserved128", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.reserved_62 = ProtoField.new("Reserved 62", "siac.cts.output.cta.v2.11.b.reserved62", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.cts.output.cta.v2.11.b.retransmissionindicator", ftypes.BYTES)
omi_siac_cts_output_cta_v2_11_b.fields.round_lot_size = ProtoField.new("Round Lot Size", "siac.cts.output.cta.v2.11.b.roundlotsize", ftypes.UINT16)
omi_siac_cts_output_cta_v2_11_b.fields.sale_condition_1 = ProtoField.new("Sale Condition 1", "siac.cts.output.cta.v2.11.b.salecondition1", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.sale_condition_4 = ProtoField.new("Sale Condition 4", "siac.cts.output.cta.v2.11.b.salecondition4", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.sale_condition_category = ProtoField.new("Sale Condition Category", "siac.cts.output.cta.v2.11.b.saleconditioncategory", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.seconds = ProtoField.new("Seconds", "siac.cts.output.cta.v2.11.b.seconds", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.security_status = ProtoField.new("Security Status", "siac.cts.output.cta.v2.11.b.securitystatus", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cts.output.cta.v2.11.b.securitysymbol", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.security_symbol_5 = ProtoField.new("Security Symbol 5", "siac.cts.output.cta.v2.11.b.securitysymbol5", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.sell_volume = ProtoField.new("Sell Volume", "siac.cts.output.cta.v2.11.b.sellvolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "siac.cts.output.cta.v2.11.b.sellerssaledays", ftypes.UINT8)
omi_siac_cts_output_cta_v2_11_b.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cts.output.cta.v2.11.b.shortsalerestrictionindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.sip_block_timestamp = ProtoField.new("SIP Block Timestamp", "siac.cts.output.cta.v2.11.b.sipblocktimestamp", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.stop_stock_indicator = ProtoField.new("Stop Stock Indicator", "siac.cts.output.cta.v2.11.b.stopstockindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.summary = ProtoField.new("Summary", "siac.cts.output.cta.v2.11.b.summary", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.summary_message_type = ProtoField.new("Summary Message Type", "siac.cts.output.cta.v2.11.b.summarymessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.test = ProtoField.new("Test", "siac.cts.output.cta.v2.11.b.test", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.tick = ProtoField.new("Tick", "siac.cts.output.cta.v2.11.b.tick", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.timestamp_1 = ProtoField.new("Timestamp 1", "siac.cts.output.cta.v2.11.b.timestamp1", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.timestamp_2 = ProtoField.new("Timestamp 2", "siac.cts.output.cta.v2.11.b.timestamp2", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.total_trades = ProtoField.new("Total Trades", "siac.cts.output.cta.v2.11.b.totaltrades", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.total_volume = ProtoField.new("Total Volume", "siac.cts.output.cta.v2.11.b.totalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.trade = ProtoField.new("Trade", "siac.cts.output.cta.v2.11.b.trade", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.trade_message_type = ProtoField.new("Trade Message Type", "siac.cts.output.cta.v2.11.b.trademessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.trade_price = ProtoField.new("Trade Price", "siac.cts.output.cta.v2.11.b.tradeprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.trade_price_2 = ProtoField.new("Trade Price 2", "siac.cts.output.cta.v2.11.b.tradeprice2", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_11_b.fields.trade_reporting_facility_id = ProtoField.new("Trade Reporting Facility Id", "siac.cts.output.cta.v2.11.b.tradereportingfacilityid", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.trade_through_exempt_indicator = ProtoField.new("Trade Through Exempt Indicator", "siac.cts.output.cta.v2.11.b.tradethroughexemptindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.trade_total_volume = ProtoField.new("Trade Total Volume", "siac.cts.output.cta.v2.11.b.tradetotalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_11_b.fields.trade_volume = ProtoField.new("Trade Volume", "siac.cts.output.cta.v2.11.b.tradevolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.trade_volume_2 = ProtoField.new("Trade Volume 2", "siac.cts.output.cta.v2.11.b.tradevolume2", ftypes.UINT16)
omi_siac_cts_output_cta_v2_11_b.fields.transaction_id = ProtoField.new("Transaction Id", "siac.cts.output.cta.v2.11.b.transactionid", ftypes.UINT32)
omi_siac_cts_output_cta_v2_11_b.fields.version = ProtoField.new("Version", "siac.cts.output.cta.v2.11.b.version", ftypes.UINT8)

-- Siac Cts Cta Output 2.11.b Application Messages
omi_siac_cts_output_cta_v2_11_b.fields.approximate_adjusted_volume_market_center_message = ProtoField.new("Approximate Adjusted Volume Market Center Message", "siac.cts.output.cta.v2.11.b.approximateadjustedvolumemarketcentermessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.approximate_trades_and_total_dollar_value_message = ProtoField.new("Approximate Trades And Total Dollar Value Message", "siac.cts.output.cta.v2.11.b.approximatetradesandtotaldollarvaluemessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.auction_status_message = ProtoField.new("Auction Status Message", "siac.cts.output.cta.v2.11.b.auctionstatusmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.bid_and_offer_index_message = ProtoField.new("Bid And Offer Index Message", "siac.cts.output.cta.v2.11.b.bidandofferindexmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_end_of_day_summary_message = ProtoField.new("Consolidated End Of Day Summary Message", "siac.cts.output.cta.v2.11.b.consolidatedendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.consolidated_start_of_day_summary_message = ProtoField.new("Consolidated Start Of Day Summary Message", "siac.cts.output.cta.v2.11.b.consolidatedstartofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_summary_message = ProtoField.new("Crossing Session Summary Message", "siac.cts.output.cta.v2.11.b.crossingsessionsummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.disaster_recovery_data_center_activation_message = ProtoField.new("Disaster Recovery Data Center Activation Message", "siac.cts.output.cta.v2.11.b.disasterrecoverydatacenteractivationmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.end_of_day_message = ProtoField.new("End Of Day Message", "siac.cts.output.cta.v2.11.b.endofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.end_of_end_of_day_summary_message = ProtoField.new("End Of End Of Day Summary Message", "siac.cts.output.cta.v2.11.b.endofendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.end_of_start_of_day_summary_message = ProtoField.new("End Of Start Of Day Summary Message", "siac.cts.output.cta.v2.11.b.endofstartofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_approximate_adjusted_volume_market_center_message = ProtoField.new("Fractional Approximate Adjusted Volume Market Center Message", "siac.cts.output.cta.v2.11.b.fractionalapproximateadjustedvolumemarketcentermessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_consolidated_end_of_day_summary_message = ProtoField.new("Fractional Consolidated End Of Day Summary Message", "siac.cts.output.cta.v2.11.b.fractionalconsolidatedendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_long_trade_message = ProtoField.new("Fractional Long Trade Message", "siac.cts.output.cta.v2.11.b.fractionallongtrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_participant_end_of_day_summary_message = ProtoField.new("Fractional Participant End Of Day Summary Message", "siac.cts.output.cta.v2.11.b.fractionalparticipantendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_prior_day_trade_cancel_error_message = ProtoField.new("Fractional Prior Day Trade Cancel Error Message", "siac.cts.output.cta.v2.11.b.fractionalpriordaytradecancelerrormessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_prior_day_trade_correction_message = ProtoField.new("Fractional Prior Day Trade Correction Message", "siac.cts.output.cta.v2.11.b.fractionalpriordaytradecorrectionmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_prior_day_trade_message = ProtoField.new("Fractional Prior Day Trade Message", "siac.cts.output.cta.v2.11.b.fractionalpriordaytrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_short_trade_message = ProtoField.new("Fractional Short Trade Message", "siac.cts.output.cta.v2.11.b.fractionalshorttrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_cancel_error_message = ProtoField.new("Fractional Trade Cancel Error Message", "siac.cts.output.cta.v2.11.b.fractionaltradecancelerrormessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_correction_message = ProtoField.new("Fractional Trade Correction Message", "siac.cts.output.cta.v2.11.b.fractionaltradecorrectionmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.index_message = ProtoField.new("Index Message", "siac.cts.output.cta.v2.11.b.indexmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cts.output.cta.v2.11.b.lineintegritymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.long_trade_message = ProtoField.new("Long Trade Message", "siac.cts.output.cta.v2.11.b.longtrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.market_wide_circuit_breaker_decline_level_status_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Message", "siac.cts.output.cta.v2.11.b.marketwidecircuitbreakerdeclinelevelstatusmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "siac.cts.output.cta.v2.11.b.marketwidecircuitbreakerstatusmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.participant_end_of_day_summary_message = ProtoField.new("Participant End Of Day Summary Message", "siac.cts.output.cta.v2.11.b.participantendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.participant_start_of_day_summary_message = ProtoField.new("Participant Start Of Day Summary Message", "siac.cts.output.cta.v2.11.b.participantstartofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_cancel_error_message = ProtoField.new("Prior Day Trade Cancel Error Message", "siac.cts.output.cta.v2.11.b.priordaytradecancelerrormessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_correction_message = ProtoField.new("Prior Day Trade Correction Message", "siac.cts.output.cta.v2.11.b.priordaytradecorrectionmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_message = ProtoField.new("Prior Day Trade Message", "siac.cts.output.cta.v2.11.b.priordaytrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.reset_block_sequence_number_message = ProtoField.new("Reset Block Sequence Number Message", "siac.cts.output.cta.v2.11.b.resetblocksequencenumbermessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.short_trade_message = ProtoField.new("Short Trade Message", "siac.cts.output.cta.v2.11.b.shorttrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cts.output.cta.v2.11.b.startofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.start_of_end_of_day_summary_message = ProtoField.new("Start Of End Of Day Summary Message", "siac.cts.output.cta.v2.11.b.startofendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.start_of_start_of_day_summary_message = ProtoField.new("Start Of Start Of Day Summary Message", "siac.cts.output.cta.v2.11.b.startofstartofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.symbol_reference_data_message = ProtoField.new("Symbol Reference Data Message", "siac.cts.output.cta.v2.11.b.symbolreferencedatamessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "siac.cts.output.cta.v2.11.b.tradecancelerrormessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "siac.cts.output.cta.v2.11.b.tradecorrectionmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_11_b.fields.trading_status_message = ProtoField.new("Trading Status Message", "siac.cts.output.cta.v2.11.b.tradingstatusmessage", ftypes.STRING)

-- Siac Cts Output Cta 2.11.b generated fields
omi_siac_cts_output_cta_v2_11_b.fields.approximate_volume_participant_index = ProtoField.new("Approximate Volume Participant Index", "siac.cts.output.cta.v2.11.b.approximatevolumeparticipantindex", ftypes.UINT16)
omi_siac_cts_output_cta_v2_11_b.fields.message_index = ProtoField.new("Message Index", "siac.cts.output.cta.v2.11.b.messageindex", ftypes.UINT16)
omi_siac_cts_output_cta_v2_11_b.fields.participant_index = ProtoField.new("Participant Index", "siac.cts.output.cta.v2.11.b.participantindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Cts Output Cta 2.11.b Element Dissection Options
show.administrative = true
show.application_messages = true
show.approximate_volume_participant = true
show.block_header = true
show.control = true
show.index = true
show.market_status = true
show.message = true
show.packet = true
show.participant = true
show.prior_day = true
show.sale_condition_4 = true
show.sip_block_timestamp = true
show.summary = true
show.timestamp_1 = true
show.timestamp_2 = true
show.trade = true
show.message_index = true
show.approximate_volume_participant_index = true
show.participant_index = true

-- Register Siac Cts Output Cta 2.11.b Show Options
omi_siac_cts_output_cta_v2_11_b.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_approximate_volume_participant = Pref.bool("Show Approximate Volume Participant", show.approximate_volume_participant, "Parse and add Approximate Volume Participant to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_index = Pref.bool("Show Index", show.index, "Parse and add Index to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_market_status = Pref.bool("Show Market Status", show.market_status, "Parse and add Market Status to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_participant = Pref.bool("Show Participant", show.participant, "Parse and add Participant to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_prior_day = Pref.bool("Show Prior Day", show.prior_day, "Parse and add Prior Day to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_sale_condition_4 = Pref.bool("Show Sale Condition 4", show.sale_condition_4, "Parse and add Sale Condition 4 to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_sip_block_timestamp = Pref.bool("Show SIP Block Timestamp", show.sip_block_timestamp, "Parse and add SIP Block Timestamp to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_summary = Pref.bool("Show Summary", show.summary, "Parse and add Summary to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_timestamp_1 = Pref.bool("Show Timestamp 1", show.timestamp_1, "Parse and add Timestamp 1 to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_timestamp_2 = Pref.bool("Show Timestamp 2", show.timestamp_2, "Parse and add Timestamp 2 to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_approximate_volume_participant_index = Pref.bool("Show Approximate Volume Participant Index", show.approximate_volume_participant_index, "Show generated approximate volume participant index in protocol tree")
omi_siac_cts_output_cta_v2_11_b.prefs.show_participant_index = Pref.bool("Show Participant Index", show.participant_index, "Show generated participant index in protocol tree")

-- Handle changed preferences
function omi_siac_cts_output_cta_v2_11_b.prefs_changed()

  -- Check if show options have changed
  if show.administrative ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_administrative then
    show.administrative = omi_siac_cts_output_cta_v2_11_b.prefs.show_administrative
  end
  if show.application_messages ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_application_messages then
    show.application_messages = omi_siac_cts_output_cta_v2_11_b.prefs.show_application_messages
  end
  if show.approximate_volume_participant ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_approximate_volume_participant then
    show.approximate_volume_participant = omi_siac_cts_output_cta_v2_11_b.prefs.show_approximate_volume_participant
  end
  if show.block_header ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_block_header then
    show.block_header = omi_siac_cts_output_cta_v2_11_b.prefs.show_block_header
  end
  if show.control ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_control then
    show.control = omi_siac_cts_output_cta_v2_11_b.prefs.show_control
  end
  if show.index ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_index then
    show.index = omi_siac_cts_output_cta_v2_11_b.prefs.show_index
  end
  if show.market_status ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_market_status then
    show.market_status = omi_siac_cts_output_cta_v2_11_b.prefs.show_market_status
  end
  if show.message ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_message then
    show.message = omi_siac_cts_output_cta_v2_11_b.prefs.show_message
  end
  if show.packet ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_packet then
    show.packet = omi_siac_cts_output_cta_v2_11_b.prefs.show_packet
  end
  if show.participant ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_participant then
    show.participant = omi_siac_cts_output_cta_v2_11_b.prefs.show_participant
  end
  if show.prior_day ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_prior_day then
    show.prior_day = omi_siac_cts_output_cta_v2_11_b.prefs.show_prior_day
  end
  if show.sale_condition_4 ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_sale_condition_4 then
    show.sale_condition_4 = omi_siac_cts_output_cta_v2_11_b.prefs.show_sale_condition_4
  end
  if show.sip_block_timestamp ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = omi_siac_cts_output_cta_v2_11_b.prefs.show_sip_block_timestamp
  end
  if show.summary ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_summary then
    show.summary = omi_siac_cts_output_cta_v2_11_b.prefs.show_summary
  end
  if show.timestamp_1 ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_timestamp_1 then
    show.timestamp_1 = omi_siac_cts_output_cta_v2_11_b.prefs.show_timestamp_1
  end
  if show.timestamp_2 ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_timestamp_2 then
    show.timestamp_2 = omi_siac_cts_output_cta_v2_11_b.prefs.show_timestamp_2
  end
  if show.trade ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_trade then
    show.trade = omi_siac_cts_output_cta_v2_11_b.prefs.show_trade
  end
  if show.message_index ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_message_index then
    show.message_index = omi_siac_cts_output_cta_v2_11_b.prefs.show_message_index
  end
  if show.approximate_volume_participant_index ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_approximate_volume_participant_index then
    show.approximate_volume_participant_index = omi_siac_cts_output_cta_v2_11_b.prefs.show_approximate_volume_participant_index
  end
  if show.participant_index ~= omi_siac_cts_output_cta_v2_11_b.prefs.show_participant_index then
    show.participant_index = omi_siac_cts_output_cta_v2_11_b.prefs.show_participant_index
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
-- Siac Cts Output Cta 2.11.b Fields
-----------------------------------------------------------------------

-- Administrative Message Type
siac_cts_output_cta_v2_11_b.administrative_message_type = {}

-- Size: Administrative Message Type
siac_cts_output_cta_v2_11_b.administrative_message_type.size = 1

-- Display: Administrative Message Type
siac_cts_output_cta_v2_11_b.administrative_message_type.display = function(value)
  if value == "A" then
    return "Administrative Message Type: Start Of End Of Day Summary (A)"
  end
  if value == "B" then
    return "Administrative Message Type: End Of End Of Day Summary (B)"
  end
  if value == "C" then
    return "Administrative Message Type: Start Of Start Of Day Summary (C)"
  end
  if value == "D" then
    return "Administrative Message Type: End Of Start Of Day Summary (D)"
  end
  if value == "S" then
    return "Administrative Message Type: Symbol Reference Data (S)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
siac_cts_output_cta_v2_11_b.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price = {}

-- Size: Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.size = 8

-- Display: Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.display = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
siac_cts_output_cta_v2_11_b.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
siac_cts_output_cta_v2_11_b.auction_collar_reference_price.size = 8

-- Display: Auction Collar Reference Price
siac_cts_output_cta_v2_11_b.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
siac_cts_output_cta_v2_11_b.auction_collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cts_output_cta_v2_11_b.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.auction_collar_reference_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price = {}

-- Size: Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.size = 8

-- Display: Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.display = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Bid Index Value
siac_cts_output_cta_v2_11_b.bid_index_value = {}

-- Size: Bid Index Value
siac_cts_output_cta_v2_11_b.bid_index_value.size = 8

-- Display: Bid Index Value
siac_cts_output_cta_v2_11_b.bid_index_value.display = function(value)
  return "Bid Index Value: "..value
end

-- Dissect: Bid Index Value
siac_cts_output_cta_v2_11_b.bid_index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.bid_index_value.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.bid_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.bid_index_value, range, value, display)

  return offset + length, value
end

-- Block Checksum
siac_cts_output_cta_v2_11_b.block_checksum = {}

-- Size: Block Checksum
siac_cts_output_cta_v2_11_b.block_checksum.size = 2

-- Display: Block Checksum
siac_cts_output_cta_v2_11_b.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cts_output_cta_v2_11_b.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Block Pad Byte
siac_cts_output_cta_v2_11_b.block_pad_byte = {}

-- Size: Block Pad Byte
siac_cts_output_cta_v2_11_b.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_cts_output_cta_v2_11_b.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cts_output_cta_v2_11_b.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_cts_output_cta_v2_11_b.block_sequence_number = {}

-- Size: Block Sequence Number
siac_cts_output_cta_v2_11_b.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_cts_output_cta_v2_11_b.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cts_output_cta_v2_11_b.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_cts_output_cta_v2_11_b.block_size = {}

-- Size: Block Size
siac_cts_output_cta_v2_11_b.block_size.size = 2

-- Display: Block Size
siac_cts_output_cta_v2_11_b.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cts_output_cta_v2_11_b.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.block_size, range, value, display)

  return offset + length, value
end

-- Buy Volume
siac_cts_output_cta_v2_11_b.buy_volume = {}

-- Size: Buy Volume
siac_cts_output_cta_v2_11_b.buy_volume.size = 4

-- Display: Buy Volume
siac_cts_output_cta_v2_11_b.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
siac_cts_output_cta_v2_11_b.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.buy_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Cancel Error Action
siac_cts_output_cta_v2_11_b.cancel_error_action = {}

-- Size: Cancel Error Action
siac_cts_output_cta_v2_11_b.cancel_error_action.size = 1

-- Display: Cancel Error Action
siac_cts_output_cta_v2_11_b.cancel_error_action.display = function(value)
  if value == "1" then
    return "Cancel Error Action: Cancel (1)"
  end
  if value == "2" then
    return "Cancel Error Action: Error (2)"
  end

  return "Cancel Error Action: Unknown("..value..")"
end

-- Dissect: Cancel Error Action
siac_cts_output_cta_v2_11_b.cancel_error_action.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.cancel_error_action.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.cancel_error_action.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.cancel_error_action, range, value, display)

  return offset + length, value
end

-- Category 1
siac_cts_output_cta_v2_11_b.category_1 = {}

-- Size: Category 1
siac_cts_output_cta_v2_11_b.category_1.size = 1

-- Display: Category 1
siac_cts_output_cta_v2_11_b.category_1.display = function(value)
  if value == " " then
    return "Category 1: Regular Settlement (<whitespace>)"
  end
  if value == "C" then
    return "Category 1: Cash Trade Same Day Clearing (C)"
  end
  if value == "N" then
    return "Category 1: Reserved (N)"
  end
  if value == "R" then
    return "Category 1: Seller (R)"
  end

  return "Category 1: Unknown("..value..")"
end

-- Dissect: Category 1
siac_cts_output_cta_v2_11_b.category_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.category_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.category_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.category_1, range, value, display)

  return offset + length, value
end

-- Category 2
siac_cts_output_cta_v2_11_b.category_2 = {}

-- Size: Category 2
siac_cts_output_cta_v2_11_b.category_2.size = 1

-- Display: Category 2
siac_cts_output_cta_v2_11_b.category_2.display = function(value)
  if value == " " then
    return "Category 2: No Trade Through Exempt Reason (<whitespace>)"
  end
  if value == "F" then
    return "Category 2: Intermarket Sweep Order (F)"
  end
  if value == "4" then
    return "Category 2: Derivatively Priced (4)"
  end
  if value == "5" then
    return "Category 2: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Category 2: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Category 2: Qualified Contingent Trade (7)"
  end
  if value == "8" then
    return "Category 2: Reserved (8)"
  end
  if value == "9" then
    return "Category 2: Corrected Consolidated Close Price As Per Listing Market (9)"
  end

  return "Category 2: Unknown("..value..")"
end

-- Dissect: Category 2
siac_cts_output_cta_v2_11_b.category_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.category_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.category_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.category_2, range, value, display)

  return offset + length, value
end

-- Category 3
siac_cts_output_cta_v2_11_b.category_3 = {}

-- Size: Category 3
siac_cts_output_cta_v2_11_b.category_3.size = 1

-- Display: Category 3
siac_cts_output_cta_v2_11_b.category_3.display = function(value)
  if value == " " then
    return "Category 3: Not Extended Hours Or Sold Out Of Sequence (<whitespace>)"
  end
  if value == "L" then
    return "Category 3: Sold Last Late Reporting (L)"
  end
  if value == "O" then
    return "Category 3: Market Center Opening Trade (O)"
  end
  if value == "T" then
    return "Category 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Category 3: Extended Hours Sold Out Of Sequence (U)"
  end
  if value == "Z" then
    return "Category 3: Sold Out Of Sequence (Z)"
  end

  return "Category 3: Unknown("..value..")"
end

-- Dissect: Category 3
siac_cts_output_cta_v2_11_b.category_3.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.category_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.category_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.category_3, range, value, display)

  return offset + length, value
end

-- Category 4
siac_cts_output_cta_v2_11_b.category_4 = {}

-- Size: Category 4
siac_cts_output_cta_v2_11_b.category_4.size = 1

-- Display: Category 4
siac_cts_output_cta_v2_11_b.category_4.display = function(value)
  if value == " " then
    return "Category 4: No Sro Required Trade Detail (<whitespace>)"
  end
  if value == "B" then
    return "Category 4: Average Price Trade (B)"
  end
  if value == "E" then
    return "Category 4: Automatic Execution (E)"
  end
  if value == "H" then
    return "Category 4: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Category 4: Odd Lot Trade (I)"
  end
  if value == "K" then
    return "Category 4: Rule 127 Nyse Only Or Rule 155 Nyse American Only (K)"
  end
  if value == "M" then
    return "Category 4: Market Center Official Close (M)"
  end
  if value == "P" then
    return "Category 4: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Category 4: Market Center Official Open (Q)"
  end
  if value == "V" then
    return "Category 4: Contingent Trade (V)"
  end
  if value == "X" then
    return "Category 4: Cross Periodic Auction Trade (X)"
  end

  return "Category 4: Unknown("..value..")"
end

-- Dissect: Category 4
siac_cts_output_cta_v2_11_b.category_4.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.category_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.category_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.category_4, range, value, display)

  return offset + length, value
end

-- Consolidated Closing Price
siac_cts_output_cta_v2_11_b.consolidated_closing_price = {}

-- Size: Consolidated Closing Price
siac_cts_output_cta_v2_11_b.consolidated_closing_price.size = 8

-- Display: Consolidated Closing Price
siac_cts_output_cta_v2_11_b.consolidated_closing_price.display = function(value)
  return "Consolidated Closing Price: "..value
end

-- Translate: Consolidated Closing Price
siac_cts_output_cta_v2_11_b.consolidated_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Closing Price
siac_cts_output_cta_v2_11_b.consolidated_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.consolidated_closing_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.consolidated_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_closing_price, range, value, display)

  return offset + length, value
end

-- Consolidated Fractional Total Volume
siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume = {}

-- Size: Consolidated Fractional Total Volume
siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.size = 8

-- Display: Consolidated Fractional Total Volume
siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.display = function(value)
  return "Consolidated Fractional Total Volume: "..value
end

-- Dissect: Consolidated Fractional Total Volume
siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_fractional_total_volume, range, value, display)

  return offset + length, value
end

-- Consolidated High Low Last Indicator
siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator = {}

-- Size: Consolidated High Low Last Indicator
siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.size = 1

-- Display: Consolidated High Low Last Indicator
siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.display = function(value)
  if value == "A" then
    return "Consolidated High Low Last Indicator: None (A)"
  end
  if value == "B" then
    return "Consolidated High Low Last Indicator: High (B)"
  end
  if value == "C" then
    return "Consolidated High Low Last Indicator: Low (C)"
  end
  if value == "D" then
    return "Consolidated High Low Last Indicator: Last (D)"
  end
  if value == "E" then
    return "Consolidated High Low Last Indicator: High Last (E)"
  end
  if value == "F" then
    return "Consolidated High Low Last Indicator: Low Last (F)"
  end
  if value == "G" then
    return "Consolidated High Low Last Indicator: High Low Last (G)"
  end
  if value == "H" then
    return "Consolidated High Low Last Indicator: High Low (H)"
  end

  return "Consolidated High Low Last Indicator: Unknown("..value..")"
end

-- Dissect: Consolidated High Low Last Indicator
siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_high_low_last_indicator, range, value, display)

  return offset + length, value
end

-- Consolidated High Price
siac_cts_output_cta_v2_11_b.consolidated_high_price = {}

-- Size: Consolidated High Price
siac_cts_output_cta_v2_11_b.consolidated_high_price.size = 8

-- Display: Consolidated High Price
siac_cts_output_cta_v2_11_b.consolidated_high_price.display = function(value)
  return "Consolidated High Price: "..value
end

-- Translate: Consolidated High Price
siac_cts_output_cta_v2_11_b.consolidated_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated High Price
siac_cts_output_cta_v2_11_b.consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.consolidated_high_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Consolidated Last Participant Id
siac_cts_output_cta_v2_11_b.consolidated_last_participant_id = {}

-- Size: Consolidated Last Participant Id
siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.size = 1

-- Display: Consolidated Last Participant Id
siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.display = function(value)
  return "Consolidated Last Participant Id: "..value
end

-- Dissect: Consolidated Last Participant Id
siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_last_participant_id, range, value, display)

  return offset + length, value
end

-- Consolidated Last Price
siac_cts_output_cta_v2_11_b.consolidated_last_price = {}

-- Size: Consolidated Last Price
siac_cts_output_cta_v2_11_b.consolidated_last_price.size = 8

-- Display: Consolidated Last Price
siac_cts_output_cta_v2_11_b.consolidated_last_price.display = function(value)
  return "Consolidated Last Price: "..value
end

-- Translate: Consolidated Last Price
siac_cts_output_cta_v2_11_b.consolidated_last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Last Price
siac_cts_output_cta_v2_11_b.consolidated_last_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.consolidated_last_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.consolidated_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_last_price, range, value, display)

  return offset + length, value
end

-- Consolidated Low Price
siac_cts_output_cta_v2_11_b.consolidated_low_price = {}

-- Size: Consolidated Low Price
siac_cts_output_cta_v2_11_b.consolidated_low_price.size = 8

-- Display: Consolidated Low Price
siac_cts_output_cta_v2_11_b.consolidated_low_price.display = function(value)
  return "Consolidated Low Price: "..value
end

-- Translate: Consolidated Low Price
siac_cts_output_cta_v2_11_b.consolidated_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Low Price
siac_cts_output_cta_v2_11_b.consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.consolidated_low_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Consolidated Previous Close Price Date
siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date = {}

-- Size: Consolidated Previous Close Price Date
siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.size = 4

-- Display: Consolidated Previous Close Price Date
siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.display = function(value)
  return "Consolidated Previous Close Price Date: "..value
end

-- Dissect: Consolidated Previous Close Price Date
siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_previous_close_price_date, range, value, display)

  return offset + length, value
end

-- Consolidated Tick
siac_cts_output_cta_v2_11_b.consolidated_tick = {}

-- Size: Consolidated Tick
siac_cts_output_cta_v2_11_b.consolidated_tick.size = 1

-- Display: Consolidated Tick
siac_cts_output_cta_v2_11_b.consolidated_tick.display = function(value)
  return "Consolidated Tick: "..value
end

-- Dissect: Consolidated Tick
siac_cts_output_cta_v2_11_b.consolidated_tick.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.consolidated_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_tick, range, value, display)

  return offset + length, value
end

-- Consolidated Total Volume
siac_cts_output_cta_v2_11_b.consolidated_total_volume = {}

-- Size: Consolidated Total Volume
siac_cts_output_cta_v2_11_b.consolidated_total_volume.size = 4

-- Display: Consolidated Total Volume
siac_cts_output_cta_v2_11_b.consolidated_total_volume.display = function(value)
  return "Consolidated Total Volume: "..value
end

-- Dissect: Consolidated Total Volume
siac_cts_output_cta_v2_11_b.consolidated_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.consolidated_total_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.consolidated_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_total_volume, range, value, display)

  return offset + length, value
end

-- Control Message Type
siac_cts_output_cta_v2_11_b.control_message_type = {}

-- Size: Control Message Type
siac_cts_output_cta_v2_11_b.control_message_type.size = 1

-- Display: Control Message Type
siac_cts_output_cta_v2_11_b.control_message_type.display = function(value)
  if value == "A" then
    return "Control Message Type: Start Of Day (A)"
  end
  if value == "L" then
    return "Control Message Type: Reset Block Sequence Number (L)"
  end
  if value == "P" then
    return "Control Message Type: Disaster Recovery Data Center Activation (P)"
  end
  if value == "T" then
    return "Control Message Type: Line Integrity (T)"
  end
  if value == "Z" then
    return "Control Message Type: End Of Day (Z)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
siac_cts_output_cta_v2_11_b.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Corrected Fractional Trade Volume
siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume = {}

-- Size: Corrected Fractional Trade Volume
siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume.size = 8

-- Display: Corrected Fractional Trade Volume
siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume.display = function(value)
  return "Corrected Fractional Trade Volume: "..value
end

-- Dissect: Corrected Fractional Trade Volume
siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_fractional_trade_volume, range, value, display)

  return offset + length, value
end

-- Corrected Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time = {}

-- Size: Corrected Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time.size = 4

-- Display: Corrected Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time.display = function(value)
  return "Corrected Prior Day Trade Date And Time: "..value
end

-- Dissect: Corrected Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_prior_day_trade_date_and_time, range, value, display)

  return offset + length, value
end

-- Corrected Sale Condition
siac_cts_output_cta_v2_11_b.corrected_sale_condition = {}

-- Size: Corrected Sale Condition
siac_cts_output_cta_v2_11_b.corrected_sale_condition.size = 4

-- Display: Corrected Sale Condition
siac_cts_output_cta_v2_11_b.corrected_sale_condition.display = function(value)
  return "Corrected Sale Condition: "..value
end

-- Dissect: Corrected Sale Condition
siac_cts_output_cta_v2_11_b.corrected_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.corrected_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_sale_condition, range, value, display)

  return offset + length, value
end

-- Corrected Sellers Sale Days
siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days = {}

-- Size: Corrected Sellers Sale Days
siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.size = 1

-- Display: Corrected Sellers Sale Days
siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.display = function(value)
  return "Corrected Sellers Sale Days: "..value
end

-- Dissect: Corrected Sellers Sale Days
siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Corrected Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator = {}

-- Size: Corrected Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.size = 1

-- Display: Corrected Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.display = function(value)
  return "Corrected Short Sale Restriction Indicator: "..value
end

-- Dissect: Corrected Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Corrected Stop Stock Indicator
siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator = {}

-- Size: Corrected Stop Stock Indicator
siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.size = 1

-- Display: Corrected Stop Stock Indicator
siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.display = function(value)
  return "Corrected Stop Stock Indicator: "..value
end

-- Dissect: Corrected Stop Stock Indicator
siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Corrected Trade Price
siac_cts_output_cta_v2_11_b.corrected_trade_price = {}

-- Size: Corrected Trade Price
siac_cts_output_cta_v2_11_b.corrected_trade_price.size = 8

-- Display: Corrected Trade Price
siac_cts_output_cta_v2_11_b.corrected_trade_price.display = function(value)
  return "Corrected Trade Price: "..value
end

-- Translate: Corrected Trade Price
siac_cts_output_cta_v2_11_b.corrected_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Corrected Trade Price
siac_cts_output_cta_v2_11_b.corrected_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.corrected_trade_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.corrected_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_trade_price, range, value, display)

  return offset + length, value
end

-- Corrected Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator = {}

-- Size: Corrected Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.size = 1

-- Display: Corrected Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.display = function(value)
  return "Corrected Trade Through Exempt Indicator: "..value
end

-- Dissect: Corrected Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Corrected Trade Volume
siac_cts_output_cta_v2_11_b.corrected_trade_volume = {}

-- Size: Corrected Trade Volume
siac_cts_output_cta_v2_11_b.corrected_trade_volume.size = 4

-- Display: Corrected Trade Volume
siac_cts_output_cta_v2_11_b.corrected_trade_volume.display = function(value)
  return "Corrected Trade Volume: "..value
end

-- Dissect: Corrected Trade Volume
siac_cts_output_cta_v2_11_b.corrected_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.corrected_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.corrected_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.corrected_trade_volume, range, value, display)

  return offset + length, value
end

-- Crossing Session I Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume = {}

-- Size: Crossing Session I Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume.size = 8

-- Display: Crossing Session I Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume.display = function(value)
  return "Crossing Session I Total Trades Volume: "..value
end

-- Dissect: Crossing Session I Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_i_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Crossing Session Ii Dollar Value
siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value = {}

-- Size: Crossing Session Ii Dollar Value
siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value.size = 8

-- Display: Crossing Session Ii Dollar Value
siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value.display = function(value)
  return "Crossing Session Ii Dollar Value: "..value
end

-- Dissect: Crossing Session Ii Dollar Value
siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_ii_dollar_value, range, value, display)

  return offset + length, value
end

-- Crossing Session Ii Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume = {}

-- Size: Crossing Session Ii Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume.size = 8

-- Display: Crossing Session Ii Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume.display = function(value)
  return "Crossing Session Ii Total Trades Volume: "..value
end

-- Dissect: Crossing Session Ii Total Trades Volume
siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_ii_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Data Feed Indicator
siac_cts_output_cta_v2_11_b.data_feed_indicator = {}

-- Size: Data Feed Indicator
siac_cts_output_cta_v2_11_b.data_feed_indicator.size = 1

-- Display: Data Feed Indicator
siac_cts_output_cta_v2_11_b.data_feed_indicator.display = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
siac_cts_output_cta_v2_11_b.data_feed_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.data_feed_indicator.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = siac_cts_output_cta_v2_11_b.data_feed_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Dollar Value
siac_cts_output_cta_v2_11_b.dollar_value = {}

-- Size: Dollar Value
siac_cts_output_cta_v2_11_b.dollar_value.size = 8

-- Display: Dollar Value
siac_cts_output_cta_v2_11_b.dollar_value.display = function(value)
  return "Dollar Value: "..value
end

-- Dissect: Dollar Value
siac_cts_output_cta_v2_11_b.dollar_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.dollar_value.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.dollar_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.dollar_value, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
siac_cts_output_cta_v2_11_b.financial_status_indicator = {}

-- Size: Financial Status Indicator
siac_cts_output_cta_v2_11_b.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
siac_cts_output_cta_v2_11_b.financial_status_indicator.display = function(value)
  if value == "0" then
    return "Financial Status Indicator: Financial Status Not Applicable (0)"
  end
  if value == "1" then
    return "Financial Status Indicator: Bankrupt (1)"
  end
  if value == "2" then
    return "Financial Status Indicator: Below Continuing Listing Standards (2)"
  end
  if value == "3" then
    return "Financial Status Indicator: Bankrupt Below Continuing Listing Standards (3)"
  end
  if value == "4" then
    return "Financial Status Indicator: Late Filing (4)"
  end
  if value == "5" then
    return "Financial Status Indicator: Bankrupt Late Filing (5)"
  end
  if value == "6" then
    return "Financial Status Indicator: Below Continuing Listing Standards Late Filing (6)"
  end
  if value == "7" then
    return "Financial Status Indicator: Bankrupt Below Continuing Listing Standards Late Filing (7)"
  end
  if value == "8" then
    return "Financial Status Indicator: Creations Suspended For Exchange Traded Products (8)"
  end
  if value == "9" then
    return "Financial Status Indicator: Redemptions Suspended For Exchange Traded Products (9)"
  end
  if value == "A" then
    return "Financial Status Indicator: Liquidation For Exchange Traded Products (A)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Fractional Total Volume
siac_cts_output_cta_v2_11_b.fractional_total_volume = {}

-- Size: Fractional Total Volume
siac_cts_output_cta_v2_11_b.fractional_total_volume.size = 8

-- Display: Fractional Total Volume
siac_cts_output_cta_v2_11_b.fractional_total_volume.display = function(value)
  return "Fractional Total Volume: "..value
end

-- Dissect: Fractional Total Volume
siac_cts_output_cta_v2_11_b.fractional_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.fractional_total_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.fractional_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_total_volume, range, value, display)

  return offset + length, value
end

-- Fractional Trade Total Volume
siac_cts_output_cta_v2_11_b.fractional_trade_total_volume = {}

-- Size: Fractional Trade Total Volume
siac_cts_output_cta_v2_11_b.fractional_trade_total_volume.size = 8

-- Display: Fractional Trade Total Volume
siac_cts_output_cta_v2_11_b.fractional_trade_total_volume.display = function(value)
  return "Fractional Trade Total Volume: "..value
end

-- Dissect: Fractional Trade Total Volume
siac_cts_output_cta_v2_11_b.fractional_trade_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.fractional_trade_total_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.fractional_trade_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_total_volume, range, value, display)

  return offset + length, value
end

-- Fractional Trade Volume
siac_cts_output_cta_v2_11_b.fractional_trade_volume = {}

-- Size: Fractional Trade Volume
siac_cts_output_cta_v2_11_b.fractional_trade_volume.size = 8

-- Display: Fractional Trade Volume
siac_cts_output_cta_v2_11_b.fractional_trade_volume.display = function(value)
  return "Fractional Trade Volume: "..value
end

-- Dissect: Fractional Trade Volume
siac_cts_output_cta_v2_11_b.fractional_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.fractional_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.fractional_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_volume, range, value, display)

  return offset + length, value
end

-- Fractional Trade Volume 4
siac_cts_output_cta_v2_11_b.fractional_trade_volume_4 = {}

-- Size: Fractional Trade Volume 4
siac_cts_output_cta_v2_11_b.fractional_trade_volume_4.size = 4

-- Display: Fractional Trade Volume 4
siac_cts_output_cta_v2_11_b.fractional_trade_volume_4.display = function(value)
  return "Fractional Trade Volume 4: "..value
end

-- Dissect: Fractional Trade Volume 4
siac_cts_output_cta_v2_11_b.fractional_trade_volume_4.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.fractional_trade_volume_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.fractional_trade_volume_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_volume_4, range, value, display)

  return offset + length, value
end

-- Halt Reason
siac_cts_output_cta_v2_11_b.halt_reason = {}

-- Size: Halt Reason
siac_cts_output_cta_v2_11_b.halt_reason.size = 1

-- Display: Halt Reason
siac_cts_output_cta_v2_11_b.halt_reason.display = function(value)
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
siac_cts_output_cta_v2_11_b.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Held Trade Indicator
siac_cts_output_cta_v2_11_b.held_trade_indicator = {}

-- Size: Held Trade Indicator
siac_cts_output_cta_v2_11_b.held_trade_indicator.size = 1

-- Display: Held Trade Indicator
siac_cts_output_cta_v2_11_b.held_trade_indicator.display = function(value)
  if value == " " then
    return "Held Trade Indicator: Held Trade Indicator Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Held Trade Indicator: Held Trade Not A Last Sale For Participant Or Consolidated (A)"
  end
  if value == "B" then
    return "Held Trade Indicator: Held Trade Last Sale For Participant But Not Consolidated (B)"
  end
  if value == "C" then
    return "Held Trade Indicator: Held Trade Last Sale For Participant And Consolidated (C)"
  end

  return "Held Trade Indicator: Unknown("..value..")"
end

-- Dissect: Held Trade Indicator
siac_cts_output_cta_v2_11_b.held_trade_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.held_trade_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.held_trade_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.held_trade_indicator, range, value, display)

  return offset + length, value
end

-- High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band = {}

-- Size: High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.size = 8

-- Display: High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.display = function(value)
  return "High Indication Price Upper Limit Price Band: "..value
end

-- Translate: High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.high_indication_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- High Price
siac_cts_output_cta_v2_11_b.high_price = {}

-- Size: High Price
siac_cts_output_cta_v2_11_b.high_price.size = 8

-- Display: High Price
siac_cts_output_cta_v2_11_b.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
siac_cts_output_cta_v2_11_b.high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Price
siac_cts_output_cta_v2_11_b.high_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.high_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index Message Type
siac_cts_output_cta_v2_11_b.index_message_type = {}

-- Size: Index Message Type
siac_cts_output_cta_v2_11_b.index_message_type.size = 1

-- Display: Index Message Type
siac_cts_output_cta_v2_11_b.index_message_type.display = function(value)
  if value == "I" then
    return "Index Message Type: Index (I)"
  end
  if value == "Q" then
    return "Index Message Type: Bid And Offer Index (Q)"
  end

  return "Index Message Type: Unknown("..value..")"
end

-- Dissect: Index Message Type
siac_cts_output_cta_v2_11_b.index_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.index_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.index_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.index_message_type, range, value, display)

  return offset + length, value
end

-- Index Symbol
siac_cts_output_cta_v2_11_b.index_symbol = {}

-- Size: Index Symbol
siac_cts_output_cta_v2_11_b.index_symbol.size = 11

-- Display: Index Symbol
siac_cts_output_cta_v2_11_b.index_symbol.display = function(value)
  return "Index Symbol: "..value
end

-- Dissect: Index Symbol
siac_cts_output_cta_v2_11_b.index_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.index_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.index_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.index_symbol, range, value, display)

  return offset + length, value
end

-- Index Value
siac_cts_output_cta_v2_11_b.index_value = {}

-- Size: Index Value
siac_cts_output_cta_v2_11_b.index_value.size = 8

-- Display: Index Value
siac_cts_output_cta_v2_11_b.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
siac_cts_output_cta_v2_11_b.index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.index_value.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.index_value, range, value, display)

  return offset + length, value
end

-- Instrument Type
siac_cts_output_cta_v2_11_b.instrument_type = {}

-- Size: Instrument Type
siac_cts_output_cta_v2_11_b.instrument_type.size = 1

-- Display: Instrument Type
siac_cts_output_cta_v2_11_b.instrument_type.display = function(value)
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
siac_cts_output_cta_v2_11_b.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Ipo
siac_cts_output_cta_v2_11_b.ipo = {}

-- Size: Ipo
siac_cts_output_cta_v2_11_b.ipo.size = 1

-- Display: Ipo
siac_cts_output_cta_v2_11_b.ipo.display = function(value)
  if value == "0" then
    return "Ipo: Not An Ipo Symbol (0)"
  end
  if value == "1" then
    return "Ipo: Ipo Symbol (1)"
  end

  return "Ipo: Unknown("..value..")"
end

-- Dissect: Ipo
siac_cts_output_cta_v2_11_b.ipo.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.ipo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.ipo.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.ipo, range, value, display)

  return offset + length, value
end

-- Last Participant Id
siac_cts_output_cta_v2_11_b.last_participant_id = {}

-- Size: Last Participant Id
siac_cts_output_cta_v2_11_b.last_participant_id.size = 1

-- Display: Last Participant Id
siac_cts_output_cta_v2_11_b.last_participant_id.display = function(value)
  return "Last Participant Id: "..value
end

-- Dissect: Last Participant Id
siac_cts_output_cta_v2_11_b.last_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.last_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.last_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.last_participant_id, range, value, display)

  return offset + length, value
end

-- Last Price
siac_cts_output_cta_v2_11_b.last_price = {}

-- Size: Last Price
siac_cts_output_cta_v2_11_b.last_price.size = 8

-- Display: Last Price
siac_cts_output_cta_v2_11_b.last_price.display = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
siac_cts_output_cta_v2_11_b.last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
siac_cts_output_cta_v2_11_b.last_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.last_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.last_price, range, value, display)

  return offset + length, value
end

-- Limit Up Limit Down Luld Indicator
siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator = {}

-- Size: Limit Up Limit Down Luld Indicator
siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator.size = 1

-- Display: Limit Up Limit Down Luld Indicator
siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator.display = function(value)
  if value == " " then
    return "Limit Up Limit Down Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Limit Up Limit Down Luld Indicator: Limit Up Limit Down Price Band (A)"
  end
  if value == "B" then
    return "Limit Up Limit Down Luld Indicator: Republished Limit Up Limit Down Price Band (B)"
  end
  if value == "C" then
    return "Limit Up Limit Down Luld Indicator: National Best Bid Limit State Entered (C)"
  end
  if value == "D" then
    return "Limit Up Limit Down Luld Indicator: National Best Bid Limit State Exited (D)"
  end
  if value == "E" then
    return "Limit Up Limit Down Luld Indicator: National Best Offer Limit State Entered (E)"
  end
  if value == "F" then
    return "Limit Up Limit Down Luld Indicator: National Best Offer Limit State Exited (F)"
  end
  if value == "G" then
    return "Limit Up Limit Down Luld Indicator: National Best Bid And National Best Offer Limit State Entered (G)"
  end
  if value == "H" then
    return "Limit Up Limit Down Luld Indicator: National Best Bid And National Best Offer Limit State Exited (H)"
  end
  if value == "I" then
    return "Limit Up Limit Down Luld Indicator: National Best Bid Limit State Entered And National Best Offer Limit State Exited (I)"
  end
  if value == "J" then
    return "Limit Up Limit Down Luld Indicator: National Best Bid Limit State Exited And National Best Offer Limit State Entered (J)"
  end

  return "Limit Up Limit Down Luld Indicator: Unknown("..value..")"
end

-- Dissect: Limit Up Limit Down Luld Indicator
siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.limit_up_limit_down_luld_indicator, range, value, display)

  return offset + length, value
end

-- Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band = {}

-- Size: Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.size = 8

-- Display: Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.display = function(value)
  return "Low Indication Price Lower Limit Price Band: "..value
end

-- Translate: Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.low_indication_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Low Price
siac_cts_output_cta_v2_11_b.low_price = {}

-- Size: Low Price
siac_cts_output_cta_v2_11_b.low_price.size = 8

-- Display: Low Price
siac_cts_output_cta_v2_11_b.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
siac_cts_output_cta_v2_11_b.low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Price
siac_cts_output_cta_v2_11_b.low_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.low_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.low_price, range, value, display)

  return offset + length, value
end

-- Luld Leverage Ratio
siac_cts_output_cta_v2_11_b.luld_leverage_ratio = {}

-- Size: Luld Leverage Ratio
siac_cts_output_cta_v2_11_b.luld_leverage_ratio.size = 4

-- Display: Luld Leverage Ratio
siac_cts_output_cta_v2_11_b.luld_leverage_ratio.display = function(value)
  return "Luld Leverage Ratio: "..value
end

-- Dissect: Luld Leverage Ratio
siac_cts_output_cta_v2_11_b.luld_leverage_ratio.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.luld_leverage_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.luld_leverage_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.luld_leverage_ratio, range, value, display)

  return offset + length, value
end

-- Luld Tier
siac_cts_output_cta_v2_11_b.luld_tier = {}

-- Size: Luld Tier
siac_cts_output_cta_v2_11_b.luld_tier.size = 1

-- Display: Luld Tier
siac_cts_output_cta_v2_11_b.luld_tier.display = function(value)
  if value == "0" then
    return "Luld Tier: Luld Not Applicable (0)"
  end
  if value == "1" then
    return "Luld Tier: Luld Tier 1 Security (1)"
  end
  if value == "2" then
    return "Luld Tier: Luld Tier 2 Security (2)"
  end

  return "Luld Tier: Unknown("..value..")"
end

-- Dissect: Luld Tier
siac_cts_output_cta_v2_11_b.luld_tier.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.luld_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.luld_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Market Status Message Type
siac_cts_output_cta_v2_11_b.market_status_message_type = {}

-- Size: Market Status Message Type
siac_cts_output_cta_v2_11_b.market_status_message_type.size = 1

-- Display: Market Status Message Type
siac_cts_output_cta_v2_11_b.market_status_message_type.display = function(value)
  if value == "K" then
    return "Market Status Message Type: Market Wide Circuit Breaker Decline Level Status (K)"
  end
  if value == "L" then
    return "Market Status Message Type: Market Wide Circuit Breaker Status (L)"
  end
  if value == "N" then
    return "Market Status Message Type: Approximate Adjusted Volume Market Center (N)"
  end
  if value == "V" then
    return "Market Status Message Type: Fractional Approximate Adjusted Volume Market Center (V)"
  end
  if value == "O" then
    return "Market Status Message Type: Approximate Trades And Total Dollar Value (O)"
  end
  if value == "P" then
    return "Market Status Message Type: Crossing Session Summary (P)"
  end

  return "Market Status Message Type: Unknown("..value..")"
end

-- Dissect: Market Status Message Type
siac_cts_output_cta_v2_11_b.market_status_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.market_status_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.market_status_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.market_status_message_type, range, value, display)

  return offset + length, value
end

-- Market Wide Circuit Breaker Level Indicator
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator = {}

-- Size: Market Wide Circuit Breaker Level Indicator
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator.size = 1

-- Display: Market Wide Circuit Breaker Level Indicator
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator.display = function(value)
  if value == " " then
    return "Market Wide Circuit Breaker Level Indicator: Mwcb Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Market Wide Circuit Breaker Level Indicator: Level 1 Breached (1)"
  end
  if value == "2" then
    return "Market Wide Circuit Breaker Level Indicator: Level 2 Breached (2)"
  end
  if value == "3" then
    return "Market Wide Circuit Breaker Level Indicator: Level 3 Breached (3)"
  end

  return "Market Wide Circuit Breaker Level Indicator: Unknown("..value..")"
end

-- Dissect: Market Wide Circuit Breaker Level Indicator
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.market_wide_circuit_breaker_level_indicator, range, value, display)

  return offset + length, value
end

-- Message Category
siac_cts_output_cta_v2_11_b.message_category = {}

-- Size: Message Category
siac_cts_output_cta_v2_11_b.message_category.size = 1

-- Display: Message Category
siac_cts_output_cta_v2_11_b.message_category.display = function(value)
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
  if value == "S" then
    return "Message Category: Summary (S)"
  end
  if value == "T" then
    return "Message Category: Trade (T)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_cts_output_cta_v2_11_b.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Id
siac_cts_output_cta_v2_11_b.message_id = {}

-- Size: Message Id
siac_cts_output_cta_v2_11_b.message_id.size = 1

-- Display: Message Id
siac_cts_output_cta_v2_11_b.message_id.display = function(value)
  return "Message Id: "..value
end

-- Dissect: Message Id
siac_cts_output_cta_v2_11_b.message_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.message_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.message_id, range, value, display)

  return offset + length, value
end

-- Message Length
siac_cts_output_cta_v2_11_b.message_length = {}

-- Size: Message Length
siac_cts_output_cta_v2_11_b.message_length.size = 2

-- Display: Message Length
siac_cts_output_cta_v2_11_b.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cts_output_cta_v2_11_b.message_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.message_length, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_cts_output_cta_v2_11_b.messages_in_block = {}

-- Size: Messages In Block
siac_cts_output_cta_v2_11_b.messages_in_block.size = 1

-- Display: Messages In Block
siac_cts_output_cta_v2_11_b.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cts_output_cta_v2_11_b.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Minimum Price Increment Indicator
siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator = {}

-- Size: Minimum Price Increment Indicator
siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator.size = 1

-- Display: Minimum Price Increment Indicator
siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator.display = function(value)
  if value == "1" then
    return "Minimum Price Increment Indicator: Penny Mpi 001 (1)"
  end
  if value == "2" then
    return "Minimum Price Increment Indicator: Half Penny Mpi 0005 (2)"
  end

  return "Minimum Price Increment Indicator: Unknown("..value..")"
end

-- Dissect: Minimum Price Increment Indicator
siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.minimum_price_increment_indicator, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
siac_cts_output_cta_v2_11_b.mwcb_level_1 = {}

-- Size: Mwcb Level 1
siac_cts_output_cta_v2_11_b.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
siac_cts_output_cta_v2_11_b.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
siac_cts_output_cta_v2_11_b.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
siac_cts_output_cta_v2_11_b.mwcb_level_2 = {}

-- Size: Mwcb Level 2
siac_cts_output_cta_v2_11_b.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
siac_cts_output_cta_v2_11_b.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
siac_cts_output_cta_v2_11_b.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
siac_cts_output_cta_v2_11_b.mwcb_level_3 = {}

-- Size: Mwcb Level 3
siac_cts_output_cta_v2_11_b.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
siac_cts_output_cta_v2_11_b.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
siac_cts_output_cta_v2_11_b.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_cts_output_cta_v2_11_b.nanoseconds = {}

-- Size: Nanoseconds
siac_cts_output_cta_v2_11_b.nanoseconds.size = 4

-- Display: Nanoseconds
siac_cts_output_cta_v2_11_b.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cts_output_cta_v2_11_b.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Extensions
siac_cts_output_cta_v2_11_b.number_of_extensions = {}

-- Size: Number Of Extensions
siac_cts_output_cta_v2_11_b.number_of_extensions.size = 1

-- Display: Number Of Extensions
siac_cts_output_cta_v2_11_b.number_of_extensions.display = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cts_output_cta_v2_11_b.number_of_extensions.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.number_of_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.number_of_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Number Of Participants
siac_cts_output_cta_v2_11_b.number_of_participants = {}

-- Size: Number Of Participants
siac_cts_output_cta_v2_11_b.number_of_participants.size = 1

-- Display: Number Of Participants
siac_cts_output_cta_v2_11_b.number_of_participants.display = function(value)
  return "Number Of Participants: "..value
end

-- Dissect: Number Of Participants
siac_cts_output_cta_v2_11_b.number_of_participants.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.number_of_participants.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.number_of_participants.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.number_of_participants, range, value, display)

  return offset + length, value
end

-- Offer Index Value
siac_cts_output_cta_v2_11_b.offer_index_value = {}

-- Size: Offer Index Value
siac_cts_output_cta_v2_11_b.offer_index_value.size = 8

-- Display: Offer Index Value
siac_cts_output_cta_v2_11_b.offer_index_value.display = function(value)
  return "Offer Index Value: "..value
end

-- Dissect: Offer Index Value
siac_cts_output_cta_v2_11_b.offer_index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.offer_index_value.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.offer_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.offer_index_value, range, value, display)

  return offset + length, value
end

-- Open Price
siac_cts_output_cta_v2_11_b.open_price = {}

-- Size: Open Price
siac_cts_output_cta_v2_11_b.open_price.size = 8

-- Display: Open Price
siac_cts_output_cta_v2_11_b.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
siac_cts_output_cta_v2_11_b.open_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Open Price
siac_cts_output_cta_v2_11_b.open_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.open_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.open_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.open_price, range, value, display)

  return offset + length, value
end

-- Original Fractional Trade Volume
siac_cts_output_cta_v2_11_b.original_fractional_trade_volume = {}

-- Size: Original Fractional Trade Volume
siac_cts_output_cta_v2_11_b.original_fractional_trade_volume.size = 8

-- Display: Original Fractional Trade Volume
siac_cts_output_cta_v2_11_b.original_fractional_trade_volume.display = function(value)
  return "Original Fractional Trade Volume: "..value
end

-- Dissect: Original Fractional Trade Volume
siac_cts_output_cta_v2_11_b.original_fractional_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_fractional_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.original_fractional_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_fractional_trade_volume, range, value, display)

  return offset + length, value
end

-- Original Participant Reference Number
siac_cts_output_cta_v2_11_b.original_participant_reference_number = {}

-- Size: Original Participant Reference Number
siac_cts_output_cta_v2_11_b.original_participant_reference_number.size = 8

-- Display: Original Participant Reference Number
siac_cts_output_cta_v2_11_b.original_participant_reference_number.display = function(value)
  return "Original Participant Reference Number: "..value
end

-- Dissect: Original Participant Reference Number
siac_cts_output_cta_v2_11_b.original_participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.original_participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Original Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time = {}

-- Size: Original Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time.size = 4

-- Display: Original Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time.display = function(value)
  return "Original Prior Day Trade Date And Time: "..value
end

-- Dissect: Original Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_prior_day_trade_date_and_time, range, value, display)

  return offset + length, value
end

-- Original Sale Condition
siac_cts_output_cta_v2_11_b.original_sale_condition = {}

-- Size: Original Sale Condition
siac_cts_output_cta_v2_11_b.original_sale_condition.size = 4

-- Display: Original Sale Condition
siac_cts_output_cta_v2_11_b.original_sale_condition.display = function(value)
  return "Original Sale Condition: "..value
end

-- Dissect: Original Sale Condition
siac_cts_output_cta_v2_11_b.original_sale_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_sale_condition.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.original_sale_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_sale_condition, range, value, display)

  return offset + length, value
end

-- Original Sellers Sale Days
siac_cts_output_cta_v2_11_b.original_sellers_sale_days = {}

-- Size: Original Sellers Sale Days
siac_cts_output_cta_v2_11_b.original_sellers_sale_days.size = 1

-- Display: Original Sellers Sale Days
siac_cts_output_cta_v2_11_b.original_sellers_sale_days.display = function(value)
  return "Original Sellers Sale Days: "..value
end

-- Dissect: Original Sellers Sale Days
siac_cts_output_cta_v2_11_b.original_sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.original_sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Original Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator = {}

-- Size: Original Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.size = 1

-- Display: Original Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.display = function(value)
  return "Original Short Sale Restriction Indicator: "..value
end

-- Dissect: Original Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Original Stop Stock Indicator
siac_cts_output_cta_v2_11_b.original_stop_stock_indicator = {}

-- Size: Original Stop Stock Indicator
siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.size = 1

-- Display: Original Stop Stock Indicator
siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.display = function(value)
  return "Original Stop Stock Indicator: "..value
end

-- Dissect: Original Stop Stock Indicator
siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Original Trade Price
siac_cts_output_cta_v2_11_b.original_trade_price = {}

-- Size: Original Trade Price
siac_cts_output_cta_v2_11_b.original_trade_price.size = 8

-- Display: Original Trade Price
siac_cts_output_cta_v2_11_b.original_trade_price.display = function(value)
  return "Original Trade Price: "..value
end

-- Translate: Original Trade Price
siac_cts_output_cta_v2_11_b.original_trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Original Trade Price
siac_cts_output_cta_v2_11_b.original_trade_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.original_trade_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.original_trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_trade_price, range, value, display)

  return offset + length, value
end

-- Original Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator = {}

-- Size: Original Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.size = 1

-- Display: Original Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.display = function(value)
  return "Original Trade Through Exempt Indicator: "..value
end

-- Dissect: Original Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Original Trade Volume
siac_cts_output_cta_v2_11_b.original_trade_volume = {}

-- Size: Original Trade Volume
siac_cts_output_cta_v2_11_b.original_trade_volume.size = 4

-- Display: Original Trade Volume
siac_cts_output_cta_v2_11_b.original_trade_volume.display = function(value)
  return "Original Trade Volume: "..value
end

-- Dissect: Original Trade Volume
siac_cts_output_cta_v2_11_b.original_trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.original_trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.original_trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.original_trade_volume, range, value, display)

  return offset + length, value
end

-- Participant Fractional Total Volume
siac_cts_output_cta_v2_11_b.participant_fractional_total_volume = {}

-- Size: Participant Fractional Total Volume
siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.size = 8

-- Display: Participant Fractional Total Volume
siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.display = function(value)
  return "Participant Fractional Total Volume: "..value
end

-- Dissect: Participant Fractional Total Volume
siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_fractional_total_volume, range, value, display)

  return offset + length, value
end

-- Participant High Price
siac_cts_output_cta_v2_11_b.participant_high_price = {}

-- Size: Participant High Price
siac_cts_output_cta_v2_11_b.participant_high_price.size = 8

-- Display: Participant High Price
siac_cts_output_cta_v2_11_b.participant_high_price.display = function(value)
  return "Participant High Price: "..value
end

-- Translate: Participant High Price
siac_cts_output_cta_v2_11_b.participant_high_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Participant High Price
siac_cts_output_cta_v2_11_b.participant_high_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_high_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.participant_high_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.participant_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_high_price, range, value, display)

  return offset + length, value
end

-- Participant Id
siac_cts_output_cta_v2_11_b.participant_id = {}

-- Size: Participant Id
siac_cts_output_cta_v2_11_b.participant_id.size = 1

-- Display: Participant Id
siac_cts_output_cta_v2_11_b.participant_id.display = function(value)
  if value == "A" then
    return "Participant Id: Nyse American Llc Nyse American (A)"
  end
  if value == "B" then
    return "Participant Id: Nasdaq Omx Bx Inc Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Participant Id: Nyse National Inc Nyse National (C)"
  end
  if value == "D" then
    return "Participant Id: Finra Alternative Display Facility Adf (D)"
  end
  if value == "F" then
    return "Participant Id: Texas Stock Exchange Llc Txse (F)"
  end
  if value == "G" then
    return "Participant Id: 24 X National Exchange Llc 24 X (G)"
  end
  if value == "H" then
    return "Participant Id: Miax Pearl Exchange Llc Miax (H)"
  end
  if value == "I" then
    return "Participant Id: International Securities Exchange Llc Ise (I)"
  end
  if value == "J" then
    return "Participant Id: Cboe Edga Exchange Inc Cboe Edga (J)"
  end
  if value == "K" then
    return "Participant Id: Cboe Edgx Exchange Inc Cboe Edgx (K)"
  end
  if value == "L" then
    return "Participant Id: Long Term Stock Exchange Inc Ltse (L)"
  end
  if value == "M" then
    return "Participant Id: Nyse Texas Inc Nyse Texas (M)"
  end
  if value == "N" then
    return "Participant Id: New York Stock Exchange Llc Nyse (N)"
  end
  if value == "P" then
    return "Participant Id: Nyse Arca Inc Nyse Arca (P)"
  end
  if value == "S" then
    return "Participant Id: Consolidated Tape System Cts (S)"
  end
  if value == "T" then
    return "Participant Id: Nasdaq Stock Market Llc Nasdaq (T)"
  end
  if value == "U" then
    return "Participant Id: Members Exchange Llc Memx (U)"
  end
  if value == "V" then
    return "Participant Id: Investors Exchange Llc Iex (V)"
  end
  if value == "W" then
    return "Participant Id: Cboe Stock Exchange Inc Cbsx (W)"
  end
  if value == "X" then
    return "Participant Id: Nasdaq Omx Psx Inc Nasdaq Omx Psx (X)"
  end
  if value == "Y" then
    return "Participant Id: Cboe Byx Exchange Inc Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Participant Id: Cboe Bzx Exchange Inc Cboe Bzx (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
siac_cts_output_cta_v2_11_b.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Last Price
siac_cts_output_cta_v2_11_b.participant_last_price = {}

-- Size: Participant Last Price
siac_cts_output_cta_v2_11_b.participant_last_price.size = 8

-- Display: Participant Last Price
siac_cts_output_cta_v2_11_b.participant_last_price.display = function(value)
  return "Participant Last Price: "..value
end

-- Translate: Participant Last Price
siac_cts_output_cta_v2_11_b.participant_last_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Participant Last Price
siac_cts_output_cta_v2_11_b.participant_last_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_last_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.participant_last_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.participant_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_last_price, range, value, display)

  return offset + length, value
end

-- Participant Low Price
siac_cts_output_cta_v2_11_b.participant_low_price = {}

-- Size: Participant Low Price
siac_cts_output_cta_v2_11_b.participant_low_price.size = 8

-- Display: Participant Low Price
siac_cts_output_cta_v2_11_b.participant_low_price.display = function(value)
  return "Participant Low Price: "..value
end

-- Translate: Participant Low Price
siac_cts_output_cta_v2_11_b.participant_low_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Participant Low Price
siac_cts_output_cta_v2_11_b.participant_low_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_low_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.participant_low_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.participant_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_low_price, range, value, display)

  return offset + length, value
end

-- Participant Open High Low Last Indicator
siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator = {}

-- Size: Participant Open High Low Last Indicator
siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.size = 1

-- Display: Participant Open High Low Last Indicator
siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.display = function(value)
  if value == "A" then
    return "Participant Open High Low Last Indicator: None (A)"
  end
  if value == "B" then
    return "Participant Open High Low Last Indicator: High (B)"
  end
  if value == "C" then
    return "Participant Open High Low Last Indicator: Low (C)"
  end
  if value == "D" then
    return "Participant Open High Low Last Indicator: Last (D)"
  end
  if value == "E" then
    return "Participant Open High Low Last Indicator: High Last (E)"
  end
  if value == "F" then
    return "Participant Open High Low Last Indicator: Low Last (F)"
  end
  if value == "G" then
    return "Participant Open High Low Last Indicator: Unused (G)"
  end
  if value == "H" then
    return "Participant Open High Low Last Indicator: Open (H)"
  end
  if value == "I" then
    return "Participant Open High Low Last Indicator: Open High (I)"
  end
  if value == "J" then
    return "Participant Open High Low Last Indicator: Open Low (J)"
  end
  if value == "K" then
    return "Participant Open High Low Last Indicator: Open High Low Last (K)"
  end
  if value == "L" then
    return "Participant Open High Low Last Indicator: Open Last (L)"
  end
  if value == "M" then
    return "Participant Open High Low Last Indicator: Open High Low (M)"
  end
  if value == "N" then
    return "Participant Open High Low Last Indicator: Open High Last (N)"
  end
  if value == "O" then
    return "Participant Open High Low Last Indicator: Open Low Last (O)"
  end
  if value == "P" then
    return "Participant Open High Low Last Indicator: High Low (P)"
  end
  if value == "Q" then
    return "Participant Open High Low Last Indicator: High Low Last (Q)"
  end

  return "Participant Open High Low Last Indicator: Unknown("..value..")"
end

-- Dissect: Participant Open High Low Last Indicator
siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_open_high_low_last_indicator, range, value, display)

  return offset + length, value
end

-- Participant Open Price
siac_cts_output_cta_v2_11_b.participant_open_price = {}

-- Size: Participant Open Price
siac_cts_output_cta_v2_11_b.participant_open_price.size = 8

-- Display: Participant Open Price
siac_cts_output_cta_v2_11_b.participant_open_price.display = function(value)
  return "Participant Open Price: "..value
end

-- Translate: Participant Open Price
siac_cts_output_cta_v2_11_b.participant_open_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Participant Open Price
siac_cts_output_cta_v2_11_b.participant_open_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_open_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.participant_open_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.participant_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_open_price, range, value, display)

  return offset + length, value
end

-- Participant Previous Close Price Date
siac_cts_output_cta_v2_11_b.participant_previous_close_price_date = {}

-- Size: Participant Previous Close Price Date
siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.size = 4

-- Display: Participant Previous Close Price Date
siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.display = function(value)
  return "Participant Previous Close Price Date: "..value
end

-- Dissect: Participant Previous Close Price Date
siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_previous_close_price_date, range, value, display)

  return offset + length, value
end

-- Participant Reference Number
siac_cts_output_cta_v2_11_b.participant_reference_number = {}

-- Size: Participant Reference Number
siac_cts_output_cta_v2_11_b.participant_reference_number.size = 8

-- Display: Participant Reference Number
siac_cts_output_cta_v2_11_b.participant_reference_number.display = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_cts_output_cta_v2_11_b.participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_11_b.participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Participant Tick
siac_cts_output_cta_v2_11_b.participant_tick = {}

-- Size: Participant Tick
siac_cts_output_cta_v2_11_b.participant_tick.size = 1

-- Display: Participant Tick
siac_cts_output_cta_v2_11_b.participant_tick.display = function(value)
  return "Participant Tick: "..value
end

-- Dissect: Participant Tick
siac_cts_output_cta_v2_11_b.participant_tick.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.participant_tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_tick, range, value, display)

  return offset + length, value
end

-- Participant Total Volume
siac_cts_output_cta_v2_11_b.participant_total_volume = {}

-- Size: Participant Total Volume
siac_cts_output_cta_v2_11_b.participant_total_volume.size = 4

-- Display: Participant Total Volume
siac_cts_output_cta_v2_11_b.participant_total_volume.display = function(value)
  return "Participant Total Volume: "..value
end

-- Dissect: Participant Total Volume
siac_cts_output_cta_v2_11_b.participant_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.participant_total_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.participant_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_total_volume, range, value, display)

  return offset + length, value
end

-- Previous Close Price
siac_cts_output_cta_v2_11_b.previous_close_price = {}

-- Size: Previous Close Price
siac_cts_output_cta_v2_11_b.previous_close_price.size = 8

-- Display: Previous Close Price
siac_cts_output_cta_v2_11_b.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Translate: Previous Close Price
siac_cts_output_cta_v2_11_b.previous_close_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Previous Close Price
siac_cts_output_cta_v2_11_b.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.previous_close_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.previous_close_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Previous Close Price Date
siac_cts_output_cta_v2_11_b.previous_close_price_date = {}

-- Size: Previous Close Price Date
siac_cts_output_cta_v2_11_b.previous_close_price_date.size = 4

-- Display: Previous Close Price Date
siac_cts_output_cta_v2_11_b.previous_close_price_date.display = function(value)
  return "Previous Close Price Date: "..value
end

-- Dissect: Previous Close Price Date
siac_cts_output_cta_v2_11_b.previous_close_price_date.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.previous_close_price_date.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.previous_close_price_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.previous_close_price_date, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Participant Id
siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id = {}

-- Size: Primary Listing Market Participant Id
siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size = 1

-- Display: Primary Listing Market Participant Id
siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.display = function(value)
  if value == " " then
    return "Primary Listing Market Participant Id: Primary Listing Market Participant Id Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Primary Listing Market Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Primary Listing Market Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Primary Listing Market Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Primary Listing Market Participant Id: Finra Adf (D)"
  end
  if value == "F" then
    return "Primary Listing Market Participant Id: Texas Stock Exchange (F)"
  end
  if value == "G" then
    return "Primary Listing Market Participant Id: 24 X (G)"
  end
  if value == "H" then
    return "Primary Listing Market Participant Id: Miax Pearl (H)"
  end
  if value == "I" then
    return "Primary Listing Market Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Primary Listing Market Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Primary Listing Market Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Primary Listing Market Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Primary Listing Market Participant Id: Nyse Texas (M)"
  end
  if value == "N" then
    return "Primary Listing Market Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Primary Listing Market Participant Id: Nyse Arca (P)"
  end
  if value == "T" then
    return "Primary Listing Market Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "Primary Listing Market Participant Id: Members Exchange (U)"
  end
  if value == "V" then
    return "Primary Listing Market Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Primary Listing Market Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Primary Listing Market Participant Id: Nasdaq Omx Psx (X)"
  end
  if value == "Y" then
    return "Primary Listing Market Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Primary Listing Market Participant Id: Cboe Bzx (Z)"
  end

  return "Primary Listing Market Participant Id: Unknown("..value..")"
end

-- Dissect: Primary Listing Market Participant Id
siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Previous Closing Price
siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price = {}

-- Size: Primary Listing Market Previous Closing Price
siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.size = 8

-- Display: Primary Listing Market Previous Closing Price
siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.display = function(value)
  return "Primary Listing Market Previous Closing Price: "..value
end

-- Translate: Primary Listing Market Previous Closing Price
siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Primary Listing Market Previous Closing Price
siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.primary_listing_market_previous_closing_price, range, value, display)

  return offset + length, value
end

-- Prior Day Message Type
siac_cts_output_cta_v2_11_b.prior_day_message_type = {}

-- Size: Prior Day Message Type
siac_cts_output_cta_v2_11_b.prior_day_message_type.size = 1

-- Display: Prior Day Message Type
siac_cts_output_cta_v2_11_b.prior_day_message_type.display = function(value)
  if value == "C" then
    return "Prior Day Message Type: Prior Day Trade Correction (C)"
  end
  if value == "O" then
    return "Prior Day Message Type: Fractional Prior Day Trade Correction (O)"
  end
  if value == "T" then
    return "Prior Day Message Type: Prior Day Trade (T)"
  end
  if value == "R" then
    return "Prior Day Message Type: Fractional Prior Day Trade (R)"
  end
  if value == "X" then
    return "Prior Day Message Type: Prior Day Trade Cancel Error (X)"
  end
  if value == "E" then
    return "Prior Day Message Type: Fractional Prior Day Trade Cancel Error (E)"
  end

  return "Prior Day Message Type: Unknown("..value..")"
end

-- Dissect: Prior Day Message Type
siac_cts_output_cta_v2_11_b.prior_day_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.prior_day_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.prior_day_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.prior_day_message_type, range, value, display)

  return offset + length, value
end

-- Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time = {}

-- Size: Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.size = 4

-- Display: Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.display = function(value)
  return "Prior Day Trade Date And Time: "..value
end

-- Dissect: Prior Day Trade Date And Time
siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_date_and_time, range, value, display)

  return offset + length, value
end

-- Prior Security Symbol
siac_cts_output_cta_v2_11_b.prior_security_symbol = {}

-- Size: Prior Security Symbol
siac_cts_output_cta_v2_11_b.prior_security_symbol.size = 11

-- Display: Prior Security Symbol
siac_cts_output_cta_v2_11_b.prior_security_symbol.display = function(value)
  return "Prior Security Symbol: "..value
end

-- Dissect: Prior Security Symbol
siac_cts_output_cta_v2_11_b.prior_security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.prior_security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.prior_security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.prior_security_symbol, range, value, display)

  return offset + length, value
end

-- Reserved
siac_cts_output_cta_v2_11_b.reserved = {}

-- Size: Reserved
siac_cts_output_cta_v2_11_b.reserved.size = 1

-- Display: Reserved
siac_cts_output_cta_v2_11_b.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cts_output_cta_v2_11_b.reserved.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 128
siac_cts_output_cta_v2_11_b.reserved_128 = {}

-- Size: Reserved 128
siac_cts_output_cta_v2_11_b.reserved_128.size = 128

-- Display: Reserved 128
siac_cts_output_cta_v2_11_b.reserved_128.display = function(value)
  return "Reserved 128: "..value
end

-- Dissect: Reserved 128
siac_cts_output_cta_v2_11_b.reserved_128.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.reserved_128.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.reserved_128.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.reserved_128, range, value, display)

  return offset + length, value
end

-- Reserved 62
siac_cts_output_cta_v2_11_b.reserved_62 = {}

-- Size: Reserved 62
siac_cts_output_cta_v2_11_b.reserved_62.size = 62

-- Display: Reserved 62
siac_cts_output_cta_v2_11_b.reserved_62.display = function(value)
  return "Reserved 62: "..value
end

-- Dissect: Reserved 62
siac_cts_output_cta_v2_11_b.reserved_62.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.reserved_62.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.reserved_62.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.reserved_62, range, value, display)

  return offset + length, value
end

-- Retransmission Indicator
siac_cts_output_cta_v2_11_b.retransmission_indicator = {}

-- Size: Retransmission Indicator
siac_cts_output_cta_v2_11_b.retransmission_indicator.size = 1

-- Display: Retransmission Indicator
siac_cts_output_cta_v2_11_b.retransmission_indicator.display = function(value)
  return "Retransmission Indicator: "..value
end

-- Dissect: Retransmission Indicator
siac_cts_output_cta_v2_11_b.retransmission_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.retransmission_indicator.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = siac_cts_output_cta_v2_11_b.retransmission_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
siac_cts_output_cta_v2_11_b.round_lot_size = {}

-- Size: Round Lot Size
siac_cts_output_cta_v2_11_b.round_lot_size.size = 2

-- Display: Round Lot Size
siac_cts_output_cta_v2_11_b.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
siac_cts_output_cta_v2_11_b.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Sale Condition 1
siac_cts_output_cta_v2_11_b.sale_condition_1 = {}

-- Size: Sale Condition 1
siac_cts_output_cta_v2_11_b.sale_condition_1.size = 1

-- Display: Sale Condition 1
siac_cts_output_cta_v2_11_b.sale_condition_1.display = function(value)
  if value == " " then
    return "Sale Condition 1: Regular Sale (<whitespace>)"
  end
  if value == "B" then
    return "Sale Condition 1: Average Price Trade (B)"
  end
  if value == "C" then
    return "Sale Condition 1: Cash Trade Same Day Clearing (C)"
  end
  if value == "E" then
    return "Sale Condition 1: Automatic Execution (E)"
  end
  if value == "F" then
    return "Sale Condition 1: Intermarket Sweep Order (F)"
  end
  if value == "H" then
    return "Sale Condition 1: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Sale Condition 1: Odd Lot Trade (I)"
  end
  if value == "K" then
    return "Sale Condition 1: Rule 127 Nyse Only Or Rule 155 Nyse American Only (K)"
  end
  if value == "L" then
    return "Sale Condition 1: Sold Last Late Reporting (L)"
  end
  if value == "M" then
    return "Sale Condition 1: Market Center Official Close (M)"
  end
  if value == "N" then
    return "Sale Condition 1: Reserved (N)"
  end
  if value == "O" then
    return "Sale Condition 1: Market Center Opening Trade (O)"
  end
  if value == "P" then
    return "Sale Condition 1: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Sale Condition 1: Market Center Official Open (Q)"
  end
  if value == "R" then
    return "Sale Condition 1: Seller (R)"
  end
  if value == "T" then
    return "Sale Condition 1: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Sale Condition 1: Extended Hours Sold Out Of Sequence (U)"
  end
  if value == "V" then
    return "Sale Condition 1: Contingent Trade (V)"
  end
  if value == "X" then
    return "Sale Condition 1: Cross Periodic Auction Trade (X)"
  end
  if value == "Z" then
    return "Sale Condition 1: Sold Out Of Sequence (Z)"
  end
  if value == "4" then
    return "Sale Condition 1: Derivatively Priced (4)"
  end
  if value == "5" then
    return "Sale Condition 1: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Sale Condition 1: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Sale Condition 1: Qualified Contingent Trade (7)"
  end
  if value == "8" then
    return "Sale Condition 1: Reserved (8)"
  end
  if value == "9" then
    return "Sale Condition 1: Corrected Consolidated Close Price As Per Listing Market (9)"
  end

  return "Sale Condition 1: Unknown("..value..")"
end

-- Dissect: Sale Condition 1
siac_cts_output_cta_v2_11_b.sale_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.sale_condition_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.sale_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.sale_condition_1, range, value, display)

  return offset + length, value
end

-- Sale Condition Category
siac_cts_output_cta_v2_11_b.sale_condition_category = {}

-- Size: Sale Condition Category
siac_cts_output_cta_v2_11_b.sale_condition_category.size = 1

-- Display: Sale Condition Category
siac_cts_output_cta_v2_11_b.sale_condition_category.display = function(value)
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
siac_cts_output_cta_v2_11_b.sale_condition_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.sale_condition_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.sale_condition_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.sale_condition_category, range, value, display)

  return offset + length, value
end

-- Seconds
siac_cts_output_cta_v2_11_b.seconds = {}

-- Size: Seconds
siac_cts_output_cta_v2_11_b.seconds.size = 4

-- Display: Seconds
siac_cts_output_cta_v2_11_b.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cts_output_cta_v2_11_b.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
siac_cts_output_cta_v2_11_b.security_status = {}

-- Size: Security Status
siac_cts_output_cta_v2_11_b.security_status.size = 1

-- Display: Security Status
siac_cts_output_cta_v2_11_b.security_status.display = function(value)
  if value == " " then
    return "Security Status: Security Status Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Security Status: Reserved (1)"
  end
  if value == "2" then
    return "Security Status: Trading Halt (2)"
  end
  if value == "3" then
    return "Security Status: Resume (3)"
  end
  if value == "4" then
    return "Security Status: Reserved (4)"
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
  if value == "B" then
    return "Security Status: Reserved (B)"
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
    return "Security Status: Limit Up Limit Down (F)"
  end

  return "Security Status: Unknown("..value..")"
end

-- Dissect: Security Status
siac_cts_output_cta_v2_11_b.security_status.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_cts_output_cta_v2_11_b.security_symbol = {}

-- Size: Security Symbol
siac_cts_output_cta_v2_11_b.security_symbol.size = 11

-- Display: Security Symbol
siac_cts_output_cta_v2_11_b.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cts_output_cta_v2_11_b.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Security Symbol 5
siac_cts_output_cta_v2_11_b.security_symbol_5 = {}

-- Size: Security Symbol 5
siac_cts_output_cta_v2_11_b.security_symbol_5.size = 5

-- Display: Security Symbol 5
siac_cts_output_cta_v2_11_b.security_symbol_5.display = function(value)
  return "Security Symbol 5: "..value
end

-- Dissect: Security Symbol 5
siac_cts_output_cta_v2_11_b.security_symbol_5.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.security_symbol_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cts_output_cta_v2_11_b.security_symbol_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.security_symbol_5, range, value, display)

  return offset + length, value
end

-- Sell Volume
siac_cts_output_cta_v2_11_b.sell_volume = {}

-- Size: Sell Volume
siac_cts_output_cta_v2_11_b.sell_volume.size = 4

-- Display: Sell Volume
siac_cts_output_cta_v2_11_b.sell_volume.display = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
siac_cts_output_cta_v2_11_b.sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.sell_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Sellers Sale Days
siac_cts_output_cta_v2_11_b.sellers_sale_days = {}

-- Size: Sellers Sale Days
siac_cts_output_cta_v2_11_b.sellers_sale_days.size = 1

-- Display: Sellers Sale Days
siac_cts_output_cta_v2_11_b.sellers_sale_days.display = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.sellers_sale_days.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.sellers_sale_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator = {}

-- Size: Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size = 1

-- Display: Short Sale Restriction Indicator
siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.display = function(value)
  if value == " " then
    return "Short Sale Restriction Indicator: Short Sale Restriction Not In Effect (<whitespace>)"
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
siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Stop Stock Indicator
siac_cts_output_cta_v2_11_b.stop_stock_indicator = {}

-- Size: Stop Stock Indicator
siac_cts_output_cta_v2_11_b.stop_stock_indicator.size = 1

-- Display: Stop Stock Indicator
siac_cts_output_cta_v2_11_b.stop_stock_indicator.display = function(value)
  if value == "0" then
    return "Stop Stock Indicator: Stop Stock Not Applicable (0)"
  end
  if value == "1" then
    return "Stop Stock Indicator: Stop Stock (1)"
  end

  return "Stop Stock Indicator: Unknown("..value..")"
end

-- Dissect: Stop Stock Indicator
siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.stop_stock_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.stop_stock_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Summary Message Type
siac_cts_output_cta_v2_11_b.summary_message_type = {}

-- Size: Summary Message Type
siac_cts_output_cta_v2_11_b.summary_message_type.size = 1

-- Display: Summary Message Type
siac_cts_output_cta_v2_11_b.summary_message_type.display = function(value)
  if value == "A" then
    return "Summary Message Type: Consolidated Start Of Day Summary (A)"
  end
  if value == "B" then
    return "Summary Message Type: Participant Start Of Day Summary (B)"
  end
  if value == "C" then
    return "Summary Message Type: Consolidated End Of Day Summary (C)"
  end
  if value == "T" then
    return "Summary Message Type: Fractional Consolidated End Of Day Summary (T)"
  end
  if value == "D" then
    return "Summary Message Type: Participant End Of Day Summary (D)"
  end
  if value == "P" then
    return "Summary Message Type: Fractional Participant End Of Day Summary (P)"
  end

  return "Summary Message Type: Unknown("..value..")"
end

-- Dissect: Summary Message Type
siac_cts_output_cta_v2_11_b.summary_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.summary_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.summary_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.summary_message_type, range, value, display)

  return offset + length, value
end

-- Test
siac_cts_output_cta_v2_11_b.test = {}

-- Size: Test
siac_cts_output_cta_v2_11_b.test.size = 1

-- Display: Test
siac_cts_output_cta_v2_11_b.test.display = function(value)
  if value == "0" then
    return "Test: Not A Test Symbol (0)"
  end
  if value == "1" then
    return "Test: Test Symbol (1)"
  end

  return "Test: Unknown("..value..")"
end

-- Dissect: Test
siac_cts_output_cta_v2_11_b.test.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.test.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.test.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.test, range, value, display)

  return offset + length, value
end

-- Tick
siac_cts_output_cta_v2_11_b.tick = {}

-- Size: Tick
siac_cts_output_cta_v2_11_b.tick.size = 1

-- Display: Tick
siac_cts_output_cta_v2_11_b.tick.display = function(value)
  if value == " " then
    return "Tick: Tick Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Tick: Up Tick (1)"
  end
  if value == "2" then
    return "Tick: Down Tick (2)"
  end
  if value == "3" then
    return "Tick: Zero Up Tick (3)"
  end
  if value == "4" then
    return "Tick: Zero Down Tick (4)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
siac_cts_output_cta_v2_11_b.tick.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.tick.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.tick.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.tick, range, value, display)

  return offset + length, value
end

-- Total Trades
siac_cts_output_cta_v2_11_b.total_trades = {}

-- Size: Total Trades
siac_cts_output_cta_v2_11_b.total_trades.size = 4

-- Display: Total Trades
siac_cts_output_cta_v2_11_b.total_trades.display = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
siac_cts_output_cta_v2_11_b.total_trades.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.total_trades.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.total_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.total_trades, range, value, display)

  return offset + length, value
end

-- Total Volume
siac_cts_output_cta_v2_11_b.total_volume = {}

-- Size: Total Volume
siac_cts_output_cta_v2_11_b.total_volume.size = 8

-- Display: Total Volume
siac_cts_output_cta_v2_11_b.total_volume.display = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
siac_cts_output_cta_v2_11_b.total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.total_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Trade Message Type
siac_cts_output_cta_v2_11_b.trade_message_type = {}

-- Size: Trade Message Type
siac_cts_output_cta_v2_11_b.trade_message_type.size = 1

-- Display: Trade Message Type
siac_cts_output_cta_v2_11_b.trade_message_type.display = function(value)
  if value == "A" then
    return "Trade Message Type: Auction Status (A)"
  end
  if value == "C" then
    return "Trade Message Type: Trade Correction (C)"
  end
  if value == "O" then
    return "Trade Message Type: Fractional Trade Correction (O)"
  end
  if value == "L" then
    return "Trade Message Type: Long Trade (L)"
  end
  if value == "R" then
    return "Trade Message Type: Fractional Long Trade (R)"
  end
  if value == "S" then
    return "Trade Message Type: Trading Status (S)"
  end
  if value == "T" then
    return "Trade Message Type: Short Trade (T)"
  end
  if value == "H" then
    return "Trade Message Type: Fractional Short Trade (H)"
  end
  if value == "X" then
    return "Trade Message Type: Trade Cancel Error (X)"
  end
  if value == "E" then
    return "Trade Message Type: Fractional Trade Cancel Error (E)"
  end

  return "Trade Message Type: Unknown("..value..")"
end

-- Dissect: Trade Message Type
siac_cts_output_cta_v2_11_b.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Trade Price
siac_cts_output_cta_v2_11_b.trade_price = {}

-- Size: Trade Price
siac_cts_output_cta_v2_11_b.trade_price.size = 8

-- Display: Trade Price
siac_cts_output_cta_v2_11_b.trade_price.display = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
siac_cts_output_cta_v2_11_b.trade_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
siac_cts_output_cta_v2_11_b.trade_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cts_output_cta_v2_11_b.trade_price.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.trade_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Trade Price 2
siac_cts_output_cta_v2_11_b.trade_price_2 = {}

-- Size: Trade Price 2
siac_cts_output_cta_v2_11_b.trade_price_2.size = 2

-- Display: Trade Price 2
siac_cts_output_cta_v2_11_b.trade_price_2.display = function(value)
  return "Trade Price 2: "..value
end

-- Translate: Trade Price 2
siac_cts_output_cta_v2_11_b.trade_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Trade Price 2
siac_cts_output_cta_v2_11_b.trade_price_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_price_2.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cts_output_cta_v2_11_b.trade_price_2.translate(raw)
  local display = siac_cts_output_cta_v2_11_b.trade_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_price_2, range, value, display)

  return offset + length, value
end

-- Trade Reporting Facility Id
siac_cts_output_cta_v2_11_b.trade_reporting_facility_id = {}

-- Size: Trade Reporting Facility Id
siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size = 1

-- Display: Trade Reporting Facility Id
siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.display = function(value)
  if value == " " then
    return "Trade Reporting Facility Id: Trf Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Trade Reporting Facility Id: Not Currently Active (A)"
  end
  if value == "B" then
    return "Trade Reporting Facility Id: Finra Nasdaq Trf Chicago (B)"
  end
  if value == "C" then
    return "Trade Reporting Facility Id: Not Currently Active (C)"
  end
  if value == "D" then
    return "Trade Reporting Facility Id: Not Currently Active (D)"
  end
  if value == "I" then
    return "Trade Reporting Facility Id: Not Currently Active (I)"
  end
  if value == "J" then
    return "Trade Reporting Facility Id: Not Currently Active (J)"
  end
  if value == "K" then
    return "Trade Reporting Facility Id: Not Currently Active (K)"
  end
  if value == "M" then
    return "Trade Reporting Facility Id: Not Currently Active (M)"
  end
  if value == "N" then
    return "Trade Reporting Facility Id: Finra Nyse Trf (N)"
  end
  if value == "P" then
    return "Trade Reporting Facility Id: Not Currently Active (P)"
  end
  if value == "T" then
    return "Trade Reporting Facility Id: Finra Nasdaq Trf Carteret (T)"
  end
  if value == "V" then
    return "Trade Reporting Facility Id: Not Currently Active (V)"
  end
  if value == "W" then
    return "Trade Reporting Facility Id: Not Currently Active (W)"
  end
  if value == "X" then
    return "Trade Reporting Facility Id: Not Currently Active (X)"
  end
  if value == "Y" then
    return "Trade Reporting Facility Id: Not Currently Active (Y)"
  end
  if value == "Z" then
    return "Trade Reporting Facility Id: Not Currently Active (Z)"
  end

  return "Trade Reporting Facility Id: Unknown("..value..")"
end

-- Dissect: Trade Reporting Facility Id
siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_reporting_facility_id, range, value, display)

  return offset + length, value
end

-- Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator = {}

-- Size: Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size = 1

-- Display: Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.display = function(value)
  if value == "0" then
    return "Trade Through Exempt Indicator: Not A Trade Through Exemption (0)"
  end
  if value == "1" then
    return "Trade Through Exempt Indicator: Trade Through Exemption (1)"
  end

  return "Trade Through Exempt Indicator: Unknown("..value..")"
end

-- Dissect: Trade Through Exempt Indicator
siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Trade Total Volume
siac_cts_output_cta_v2_11_b.trade_total_volume = {}

-- Size: Trade Total Volume
siac_cts_output_cta_v2_11_b.trade_total_volume.size = 8

-- Display: Trade Total Volume
siac_cts_output_cta_v2_11_b.trade_total_volume.display = function(value)
  return "Trade Total Volume: "..value
end

-- Dissect: Trade Total Volume
siac_cts_output_cta_v2_11_b.trade_total_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_total_volume.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_11_b.trade_total_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_total_volume, range, value, display)

  return offset + length, value
end

-- Trade Volume
siac_cts_output_cta_v2_11_b.trade_volume = {}

-- Size: Trade Volume
siac_cts_output_cta_v2_11_b.trade_volume.size = 4

-- Display: Trade Volume
siac_cts_output_cta_v2_11_b.trade_volume.display = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
siac_cts_output_cta_v2_11_b.trade_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.trade_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Trade Volume 2
siac_cts_output_cta_v2_11_b.trade_volume_2 = {}

-- Size: Trade Volume 2
siac_cts_output_cta_v2_11_b.trade_volume_2.size = 2

-- Display: Trade Volume 2
siac_cts_output_cta_v2_11_b.trade_volume_2.display = function(value)
  return "Trade Volume 2: "..value
end

-- Dissect: Trade Volume 2
siac_cts_output_cta_v2_11_b.trade_volume_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.trade_volume_2.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.trade_volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_volume_2, range, value, display)

  return offset + length, value
end

-- Transaction Id
siac_cts_output_cta_v2_11_b.transaction_id = {}

-- Size: Transaction Id
siac_cts_output_cta_v2_11_b.transaction_id.size = 4

-- Display: Transaction Id
siac_cts_output_cta_v2_11_b.transaction_id.display = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
siac_cts_output_cta_v2_11_b.transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.transaction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Version
siac_cts_output_cta_v2_11_b.version = {}

-- Size: Version
siac_cts_output_cta_v2_11_b.version.size = 1

-- Display: Version
siac_cts_output_cta_v2_11_b.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cts_output_cta_v2_11_b.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_11_b.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_11_b.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_11_b.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Siac Cts Output Cta 2.11.b
-----------------------------------------------------------------------

-- Timestamp 2
siac_cts_output_cta_v2_11_b.timestamp_2 = {}

-- Size: Timestamp 2
siac_cts_output_cta_v2_11_b.timestamp_2.size =
  siac_cts_output_cta_v2_11_b.seconds.size + 
  siac_cts_output_cta_v2_11_b.nanoseconds.size

-- Display: Timestamp 2
siac_cts_output_cta_v2_11_b.timestamp_2.display = function(packet, parent, value)
  -- Check null value
  if value == nil or value == UInt64(0) then
    return "Not Applicable"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Timestamp 2
siac_cts_output_cta_v2_11_b.timestamp_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_cts_output_cta_v2_11_b.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_cts_output_cta_v2_11_b.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local timestamp_2 = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, timestamp_2
end

-- Dissect: Timestamp 2
siac_cts_output_cta_v2_11_b.timestamp_2.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_2 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.timestamp_2, buffer(offset, 0))
    local index, value = siac_cts_output_cta_v2_11_b.timestamp_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.timestamp_2.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.timestamp_2.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition 4
siac_cts_output_cta_v2_11_b.sale_condition_4 = {}

-- Size: Sale Condition 4
siac_cts_output_cta_v2_11_b.sale_condition_4.size =
  siac_cts_output_cta_v2_11_b.category_1.size + 
  siac_cts_output_cta_v2_11_b.category_2.size + 
  siac_cts_output_cta_v2_11_b.category_3.size + 
  siac_cts_output_cta_v2_11_b.category_4.size

-- Display: Sale Condition 4
siac_cts_output_cta_v2_11_b.sale_condition_4.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sale Condition 4
siac_cts_output_cta_v2_11_b.sale_condition_4.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Category 1: Char
  index, category_1 = siac_cts_output_cta_v2_11_b.category_1.dissect(buffer, index, packet, parent)

  -- Category 2: Char
  index, category_2 = siac_cts_output_cta_v2_11_b.category_2.dissect(buffer, index, packet, parent)

  -- Category 3: Char
  index, category_3 = siac_cts_output_cta_v2_11_b.category_3.dissect(buffer, index, packet, parent)

  -- Category 4: Char
  index, category_4 = siac_cts_output_cta_v2_11_b.category_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sale Condition 4
siac_cts_output_cta_v2_11_b.sale_condition_4.dissect = function(buffer, offset, packet, parent)
  if show.sale_condition_4 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.sale_condition_4, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.sale_condition_4.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.sale_condition_4.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.sale_condition_4.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp 1
siac_cts_output_cta_v2_11_b.timestamp_1 = {}

-- Size: Timestamp 1
siac_cts_output_cta_v2_11_b.timestamp_1.size =
  siac_cts_output_cta_v2_11_b.seconds.size + 
  siac_cts_output_cta_v2_11_b.nanoseconds.size

-- Display: Timestamp 1
siac_cts_output_cta_v2_11_b.timestamp_1.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Timestamp 1
siac_cts_output_cta_v2_11_b.timestamp_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_cts_output_cta_v2_11_b.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_cts_output_cta_v2_11_b.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local timestamp_1 = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, timestamp_1
end

-- Dissect: Timestamp 1
siac_cts_output_cta_v2_11_b.timestamp_1.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_1 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.timestamp_1, buffer(offset, 0))
    local index, value = siac_cts_output_cta_v2_11_b.timestamp_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.timestamp_1.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.timestamp_1.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message = {}

-- Size: Fractional Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.fractional_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.original_participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.timestamp_2.size + 
  siac_cts_output_cta_v2_11_b.cancel_error_action.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_low_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.size + 
  siac_cts_output_cta_v2_11_b.consolidated_tick.size + 
  siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.participant_last_price.size + 
  siac_cts_output_cta_v2_11_b.participant_high_price.size + 
  siac_cts_output_cta_v2_11_b.participant_low_price.size + 
  siac_cts_output_cta_v2_11_b.participant_open_price.size + 
  siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.size + 
  siac_cts_output_cta_v2_11_b.participant_tick.size

-- Display: Fractional Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_output_cta_v2_11_b.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Original Participant Reference Number: Signed Long
  index, original_participant_reference_number = siac_cts_output_cta_v2_11_b.original_participant_reference_number.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_11_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Cancel Error Action: Char
  index, cancel_error_action = siac_cts_output_cta_v2_11_b.cancel_error_action.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Previous Close Price Date: Integer
  index, consolidated_previous_close_price_date = siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Consolidated Last Participant Id: Char
  index, consolidated_last_participant_id = siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: Long
  index, consolidated_last_price = siac_cts_output_cta_v2_11_b.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Long
  index, consolidated_high_price = siac_cts_output_cta_v2_11_b.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Long
  index, consolidated_low_price = siac_cts_output_cta_v2_11_b.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Fractional Total Volume: Long
  index, consolidated_fractional_total_volume = siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Tick: Char
  index, consolidated_tick = siac_cts_output_cta_v2_11_b.consolidated_tick.dissect(buffer, index, packet, parent)

  -- Participant Previous Close Price Date: Integer
  index, participant_previous_close_price_date = siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Participant Last Price: Long
  index, participant_last_price = siac_cts_output_cta_v2_11_b.participant_last_price.dissect(buffer, index, packet, parent)

  -- Participant High Price: Long
  index, participant_high_price = siac_cts_output_cta_v2_11_b.participant_high_price.dissect(buffer, index, packet, parent)

  -- Participant Low Price: Long
  index, participant_low_price = siac_cts_output_cta_v2_11_b.participant_low_price.dissect(buffer, index, packet, parent)

  -- Participant Open Price: Long
  index, participant_open_price = siac_cts_output_cta_v2_11_b.participant_open_price.dissect(buffer, index, packet, parent)

  -- Participant Fractional Total Volume: Long
  index, participant_fractional_total_volume = siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.dissect(buffer, index, packet, parent)

  -- Participant Tick: Char
  index, participant_tick = siac_cts_output_cta_v2_11_b.participant_tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_cancel_error_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Short Trade Message
siac_cts_output_cta_v2_11_b.fractional_short_trade_message = {}

-- Size: Fractional Short Trade Message
siac_cts_output_cta_v2_11_b.fractional_short_trade_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol_5.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_1.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_category.size + 
  siac_cts_output_cta_v2_11_b.trade_price_2.size + 
  siac_cts_output_cta_v2_11_b.fractional_trade_volume_4.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.size + 
  siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.size

-- Display: Fractional Short Trade Message
siac_cts_output_cta_v2_11_b.fractional_short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Short Trade Message
siac_cts_output_cta_v2_11_b.fractional_short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol 5: Char[]
  index, security_symbol_5 = siac_cts_output_cta_v2_11_b.security_symbol_5.dissect(buffer, index, packet, parent)

  -- Sale Condition 1: Char
  index, sale_condition_1 = siac_cts_output_cta_v2_11_b.sale_condition_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Category: Char
  index, sale_condition_category = siac_cts_output_cta_v2_11_b.sale_condition_category.dissect(buffer, index, packet, parent)

  -- Trade Price 2: Short
  index, trade_price_2 = siac_cts_output_cta_v2_11_b.trade_price_2.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume 4: Integer
  index, fractional_trade_volume_4 = siac_cts_output_cta_v2_11_b.fractional_trade_volume_4.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: Char
  index, consolidated_high_low_last_indicator = siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.dissect(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: Char
  index, participant_open_high_low_last_indicator = siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Short Trade Message
siac_cts_output_cta_v2_11_b.fractional_short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_short_trade_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
siac_cts_output_cta_v2_11_b.trading_status_message = {}

-- Size: Trading Status Message
siac_cts_output_cta_v2_11_b.trading_status_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.last_price.size + 
  siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.size + 
  siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.size + 
  siac_cts_output_cta_v2_11_b.buy_volume.size + 
  siac_cts_output_cta_v2_11_b.sell_volume.size + 
  siac_cts_output_cta_v2_11_b.security_status.size + 
  siac_cts_output_cta_v2_11_b.halt_reason.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator.size

-- Display: Trading Status Message
siac_cts_output_cta_v2_11_b.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
siac_cts_output_cta_v2_11_b.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Last Price: Long
  index, last_price = siac_cts_output_cta_v2_11_b.last_price.dissect(buffer, index, packet, parent)

  -- High Indication Price Upper Limit Price Band: Long
  index, high_indication_price_upper_limit_price_band = siac_cts_output_cta_v2_11_b.high_indication_price_upper_limit_price_band.dissect(buffer, index, packet, parent)

  -- Low Indication Price Lower Limit Price Band: Long
  index, low_indication_price_lower_limit_price_band = siac_cts_output_cta_v2_11_b.low_indication_price_lower_limit_price_band.dissect(buffer, index, packet, parent)

  -- Buy Volume: Integer
  index, buy_volume = siac_cts_output_cta_v2_11_b.buy_volume.dissect(buffer, index, packet, parent)

  -- Sell Volume: Integer
  index, sell_volume = siac_cts_output_cta_v2_11_b.sell_volume.dissect(buffer, index, packet, parent)

  -- Security Status: Char
  index, security_status = siac_cts_output_cta_v2_11_b.security_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cts_output_cta_v2_11_b.halt_reason.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Limit Up Limit Down Luld Indicator: Char
  index, limit_up_limit_down_luld_indicator = siac_cts_output_cta_v2_11_b.limit_up_limit_down_luld_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
siac_cts_output_cta_v2_11_b.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trading_status_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Long Trade Message
siac_cts_output_cta_v2_11_b.fractional_long_trade_message = {}

-- Size: Fractional Long Trade Message
siac_cts_output_cta_v2_11_b.fractional_long_trade_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.fractional_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_2.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.held_trade_indicator.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.size + 
  siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.size

-- Display: Fractional Long Trade Message
siac_cts_output_cta_v2_11_b.fractional_long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Long Trade Message
siac_cts_output_cta_v2_11_b.fractional_long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_output_cta_v2_11_b.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_11_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Held Trade Indicator: Char
  index, held_trade_indicator = siac_cts_output_cta_v2_11_b.held_trade_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: Char
  index, consolidated_high_low_last_indicator = siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.dissect(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: Char
  index, participant_open_high_low_last_indicator = siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Long Trade Message
siac_cts_output_cta_v2_11_b.fractional_long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_long_trade_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_trade_correction_message = {}

-- Size: Fractional Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.corrected_sale_condition.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_price.size + 
  siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_2.size + 
  siac_cts_output_cta_v2_11_b.original_participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.original_sale_condition.size + 
  siac_cts_output_cta_v2_11_b.original_trade_price.size + 
  siac_cts_output_cta_v2_11_b.original_fractional_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.original_sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_low_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.size + 
  siac_cts_output_cta_v2_11_b.consolidated_tick.size + 
  siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.participant_last_price.size + 
  siac_cts_output_cta_v2_11_b.participant_high_price.size + 
  siac_cts_output_cta_v2_11_b.participant_low_price.size + 
  siac_cts_output_cta_v2_11_b.participant_open_price.size + 
  siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.size + 
  siac_cts_output_cta_v2_11_b.participant_tick.size

-- Display: Fractional Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Char[]
  index, corrected_sale_condition = siac_cts_output_cta_v2_11_b.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Long
  index, corrected_trade_price = siac_cts_output_cta_v2_11_b.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Fractional Trade Volume: Long
  index, corrected_fractional_trade_volume = siac_cts_output_cta_v2_11_b.corrected_fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: Byte
  index, corrected_sellers_sale_days = siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Stop Stock Indicator: Char
  index, corrected_stop_stock_indicator = siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Indicator: Char
  index, corrected_trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Short Sale Restriction Indicator: Char
  index, corrected_short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_11_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Original Participant Reference Number: Signed Long
  index, original_participant_reference_number = siac_cts_output_cta_v2_11_b.original_participant_reference_number.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: Char[]
  index, original_sale_condition = siac_cts_output_cta_v2_11_b.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Long
  index, original_trade_price = siac_cts_output_cta_v2_11_b.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Fractional Trade Volume: Long
  index, original_fractional_trade_volume = siac_cts_output_cta_v2_11_b.original_fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: Byte
  index, original_sellers_sale_days = siac_cts_output_cta_v2_11_b.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Original Stop Stock Indicator: Char
  index, original_stop_stock_indicator = siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Indicator: Char
  index, original_trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Original Short Sale Restriction Indicator: Char
  index, original_short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Previous Close Price Date: Integer
  index, consolidated_previous_close_price_date = siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Consolidated Last Participant Id: Char
  index, consolidated_last_participant_id = siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: Long
  index, consolidated_last_price = siac_cts_output_cta_v2_11_b.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Long
  index, consolidated_high_price = siac_cts_output_cta_v2_11_b.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Long
  index, consolidated_low_price = siac_cts_output_cta_v2_11_b.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Fractional Total Volume: Long
  index, consolidated_fractional_total_volume = siac_cts_output_cta_v2_11_b.consolidated_fractional_total_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Tick: Char
  index, consolidated_tick = siac_cts_output_cta_v2_11_b.consolidated_tick.dissect(buffer, index, packet, parent)

  -- Participant Previous Close Price Date: Integer
  index, participant_previous_close_price_date = siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Participant Last Price: Long
  index, participant_last_price = siac_cts_output_cta_v2_11_b.participant_last_price.dissect(buffer, index, packet, parent)

  -- Participant High Price: Long
  index, participant_high_price = siac_cts_output_cta_v2_11_b.participant_high_price.dissect(buffer, index, packet, parent)

  -- Participant Low Price: Long
  index, participant_low_price = siac_cts_output_cta_v2_11_b.participant_low_price.dissect(buffer, index, packet, parent)

  -- Participant Open Price: Long
  index, participant_open_price = siac_cts_output_cta_v2_11_b.participant_open_price.dissect(buffer, index, packet, parent)

  -- Participant Fractional Total Volume: Long
  index, participant_fractional_total_volume = siac_cts_output_cta_v2_11_b.participant_fractional_total_volume.dissect(buffer, index, packet, parent)

  -- Participant Tick: Char
  index, participant_tick = siac_cts_output_cta_v2_11_b.participant_tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_trade_correction_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.trade_cancel_error_message = {}

-- Size: Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.trade_cancel_error_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.original_participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.timestamp_2.size + 
  siac_cts_output_cta_v2_11_b.cancel_error_action.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_low_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_total_volume.size + 
  siac_cts_output_cta_v2_11_b.consolidated_tick.size + 
  siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.participant_last_price.size + 
  siac_cts_output_cta_v2_11_b.participant_high_price.size + 
  siac_cts_output_cta_v2_11_b.participant_low_price.size + 
  siac_cts_output_cta_v2_11_b.participant_open_price.size + 
  siac_cts_output_cta_v2_11_b.participant_total_volume.size + 
  siac_cts_output_cta_v2_11_b.participant_tick.size

-- Display: Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_output_cta_v2_11_b.trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Original Participant Reference Number: Signed Long
  index, original_participant_reference_number = siac_cts_output_cta_v2_11_b.original_participant_reference_number.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_11_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Cancel Error Action: Char
  index, cancel_error_action = siac_cts_output_cta_v2_11_b.cancel_error_action.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Previous Close Price Date: Integer
  index, consolidated_previous_close_price_date = siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Consolidated Last Participant Id: Char
  index, consolidated_last_participant_id = siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: Long
  index, consolidated_last_price = siac_cts_output_cta_v2_11_b.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Long
  index, consolidated_high_price = siac_cts_output_cta_v2_11_b.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Long
  index, consolidated_low_price = siac_cts_output_cta_v2_11_b.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Total Volume: Integer
  index, consolidated_total_volume = siac_cts_output_cta_v2_11_b.consolidated_total_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Tick: Char
  index, consolidated_tick = siac_cts_output_cta_v2_11_b.consolidated_tick.dissect(buffer, index, packet, parent)

  -- Participant Previous Close Price Date: Integer
  index, participant_previous_close_price_date = siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Participant Last Price: Long
  index, participant_last_price = siac_cts_output_cta_v2_11_b.participant_last_price.dissect(buffer, index, packet, parent)

  -- Participant High Price: Long
  index, participant_high_price = siac_cts_output_cta_v2_11_b.participant_high_price.dissect(buffer, index, packet, parent)

  -- Participant Low Price: Long
  index, participant_low_price = siac_cts_output_cta_v2_11_b.participant_low_price.dissect(buffer, index, packet, parent)

  -- Participant Open Price: Long
  index, participant_open_price = siac_cts_output_cta_v2_11_b.participant_open_price.dissect(buffer, index, packet, parent)

  -- Participant Total Volume: Integer
  index, participant_total_volume = siac_cts_output_cta_v2_11_b.participant_total_volume.dissect(buffer, index, packet, parent)

  -- Participant Tick: Char
  index, participant_tick = siac_cts_output_cta_v2_11_b.participant_tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_cancel_error_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Trade Message
siac_cts_output_cta_v2_11_b.short_trade_message = {}

-- Size: Short Trade Message
siac_cts_output_cta_v2_11_b.short_trade_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol_5.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_1.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_category.size + 
  siac_cts_output_cta_v2_11_b.trade_price_2.size + 
  siac_cts_output_cta_v2_11_b.trade_volume_2.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.size + 
  siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.size

-- Display: Short Trade Message
siac_cts_output_cta_v2_11_b.short_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
siac_cts_output_cta_v2_11_b.short_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol 5: Char[]
  index, security_symbol_5 = siac_cts_output_cta_v2_11_b.security_symbol_5.dissect(buffer, index, packet, parent)

  -- Sale Condition 1: Char
  index, sale_condition_1 = siac_cts_output_cta_v2_11_b.sale_condition_1.dissect(buffer, index, packet, parent)

  -- Sale Condition Category: Char
  index, sale_condition_category = siac_cts_output_cta_v2_11_b.sale_condition_category.dissect(buffer, index, packet, parent)

  -- Trade Price 2: Short
  index, trade_price_2 = siac_cts_output_cta_v2_11_b.trade_price_2.dissect(buffer, index, packet, parent)

  -- Trade Volume 2: Short
  index, trade_volume_2 = siac_cts_output_cta_v2_11_b.trade_volume_2.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: Char
  index, consolidated_high_low_last_indicator = siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.dissect(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: Char
  index, participant_open_high_low_last_indicator = siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
siac_cts_output_cta_v2_11_b.short_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.short_trade_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.short_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.short_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.short_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Trade Message
siac_cts_output_cta_v2_11_b.long_trade_message = {}

-- Size: Long Trade Message
siac_cts_output_cta_v2_11_b.long_trade_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_2.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.held_trade_indicator.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.size + 
  siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.size

-- Display: Long Trade Message
siac_cts_output_cta_v2_11_b.long_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
siac_cts_output_cta_v2_11_b.long_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_output_cta_v2_11_b.trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_11_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Held Trade Indicator: Char
  index, held_trade_indicator = siac_cts_output_cta_v2_11_b.held_trade_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: Char
  index, consolidated_high_low_last_indicator = siac_cts_output_cta_v2_11_b.consolidated_high_low_last_indicator.dissect(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: Char
  index, participant_open_high_low_last_indicator = siac_cts_output_cta_v2_11_b.participant_open_high_low_last_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
siac_cts_output_cta_v2_11_b.long_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.long_trade_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.long_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.long_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.long_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Correction Message
siac_cts_output_cta_v2_11_b.trade_correction_message = {}

-- Size: Trade Correction Message
siac_cts_output_cta_v2_11_b.trade_correction_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.corrected_sale_condition.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_price.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_2.size + 
  siac_cts_output_cta_v2_11_b.original_participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.original_sale_condition.size + 
  siac_cts_output_cta_v2_11_b.original_trade_price.size + 
  siac_cts_output_cta_v2_11_b.original_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.original_sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.size + 
  siac_cts_output_cta_v2_11_b.consolidated_last_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_high_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_low_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_total_volume.size + 
  siac_cts_output_cta_v2_11_b.consolidated_tick.size + 
  siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.participant_last_price.size + 
  siac_cts_output_cta_v2_11_b.participant_high_price.size + 
  siac_cts_output_cta_v2_11_b.participant_low_price.size + 
  siac_cts_output_cta_v2_11_b.participant_open_price.size + 
  siac_cts_output_cta_v2_11_b.participant_total_volume.size + 
  siac_cts_output_cta_v2_11_b.participant_tick.size

-- Display: Trade Correction Message
siac_cts_output_cta_v2_11_b.trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
siac_cts_output_cta_v2_11_b.trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Char[]
  index, corrected_sale_condition = siac_cts_output_cta_v2_11_b.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Long
  index, corrected_trade_price = siac_cts_output_cta_v2_11_b.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Volume: Integer
  index, corrected_trade_volume = siac_cts_output_cta_v2_11_b.corrected_trade_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: Byte
  index, corrected_sellers_sale_days = siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Stop Stock Indicator: Char
  index, corrected_stop_stock_indicator = siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Indicator: Char
  index, corrected_trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Short Sale Restriction Indicator: Char
  index, corrected_short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_11_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Original Participant Reference Number: Signed Long
  index, original_participant_reference_number = siac_cts_output_cta_v2_11_b.original_participant_reference_number.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: Char[]
  index, original_sale_condition = siac_cts_output_cta_v2_11_b.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Long
  index, original_trade_price = siac_cts_output_cta_v2_11_b.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Volume: Integer
  index, original_trade_volume = siac_cts_output_cta_v2_11_b.original_trade_volume.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: Byte
  index, original_sellers_sale_days = siac_cts_output_cta_v2_11_b.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Original Stop Stock Indicator: Char
  index, original_stop_stock_indicator = siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Indicator: Char
  index, original_trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Original Short Sale Restriction Indicator: Char
  index, original_short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Consolidated Previous Close Price Date: Integer
  index, consolidated_previous_close_price_date = siac_cts_output_cta_v2_11_b.consolidated_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Consolidated Last Participant Id: Char
  index, consolidated_last_participant_id = siac_cts_output_cta_v2_11_b.consolidated_last_participant_id.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: Long
  index, consolidated_last_price = siac_cts_output_cta_v2_11_b.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Long
  index, consolidated_high_price = siac_cts_output_cta_v2_11_b.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Long
  index, consolidated_low_price = siac_cts_output_cta_v2_11_b.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated Total Volume: Integer
  index, consolidated_total_volume = siac_cts_output_cta_v2_11_b.consolidated_total_volume.dissect(buffer, index, packet, parent)

  -- Consolidated Tick: Char
  index, consolidated_tick = siac_cts_output_cta_v2_11_b.consolidated_tick.dissect(buffer, index, packet, parent)

  -- Participant Previous Close Price Date: Integer
  index, participant_previous_close_price_date = siac_cts_output_cta_v2_11_b.participant_previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Participant Last Price: Long
  index, participant_last_price = siac_cts_output_cta_v2_11_b.participant_last_price.dissect(buffer, index, packet, parent)

  -- Participant High Price: Long
  index, participant_high_price = siac_cts_output_cta_v2_11_b.participant_high_price.dissect(buffer, index, packet, parent)

  -- Participant Low Price: Long
  index, participant_low_price = siac_cts_output_cta_v2_11_b.participant_low_price.dissect(buffer, index, packet, parent)

  -- Participant Open Price: Long
  index, participant_open_price = siac_cts_output_cta_v2_11_b.participant_open_price.dissect(buffer, index, packet, parent)

  -- Participant Total Volume: Integer
  index, participant_total_volume = siac_cts_output_cta_v2_11_b.participant_total_volume.dissect(buffer, index, packet, parent)

  -- Participant Tick: Char
  index, participant_tick = siac_cts_output_cta_v2_11_b.participant_tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
siac_cts_output_cta_v2_11_b.trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade_correction_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Status Message
siac_cts_output_cta_v2_11_b.auction_status_message = {}

-- Size: Auction Status Message
siac_cts_output_cta_v2_11_b.auction_status_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.auction_collar_reference_price.size + 
  siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.size + 
  siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.size + 
  siac_cts_output_cta_v2_11_b.number_of_extensions.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.reserved_62.size

-- Display: Auction Status Message
siac_cts_output_cta_v2_11_b.auction_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Status Message
siac_cts_output_cta_v2_11_b.auction_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Long
  index, auction_collar_reference_price = siac_cts_output_cta_v2_11_b.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: Long
  index, auction_collar_upper_threshold_price = siac_cts_output_cta_v2_11_b.auction_collar_upper_threshold_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: Long
  index, auction_collar_lower_threshold_price = siac_cts_output_cta_v2_11_b.auction_collar_lower_threshold_price.dissect(buffer, index, packet, parent)

  -- Number Of Extensions: Byte
  index, number_of_extensions = siac_cts_output_cta_v2_11_b.number_of_extensions.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 62: Char[]
  index, reserved_62 = siac_cts_output_cta_v2_11_b.reserved_62.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
siac_cts_output_cta_v2_11_b.auction_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.auction_status_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.auction_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.auction_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.auction_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Payload
siac_cts_output_cta_v2_11_b.trade_message_payload = {}

-- Dissect: Trade Message Payload
siac_cts_output_cta_v2_11_b.trade_message_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Auction Status Message
  if trade_message_type == "A" then
    return siac_cts_output_cta_v2_11_b.auction_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "C" then
    return siac_cts_output_cta_v2_11_b.trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Trade Message
  if trade_message_type == "L" then
    return siac_cts_output_cta_v2_11_b.long_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Trade Message
  if trade_message_type == "T" then
    return siac_cts_output_cta_v2_11_b.short_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "X" then
    return siac_cts_output_cta_v2_11_b.trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Trade Correction Message
  if trade_message_type == "O" then
    return siac_cts_output_cta_v2_11_b.fractional_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Long Trade Message
  if trade_message_type == "R" then
    return siac_cts_output_cta_v2_11_b.fractional_long_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if trade_message_type == "S" then
    return siac_cts_output_cta_v2_11_b.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Short Trade Message
  if trade_message_type == "H" then
    return siac_cts_output_cta_v2_11_b.fractional_short_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Trade Cancel Error Message
  if trade_message_type == "E" then
    return siac_cts_output_cta_v2_11_b.fractional_trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Trade
siac_cts_output_cta_v2_11_b.trade = {}

-- Calculate size of: Trade
siac_cts_output_cta_v2_11_b.trade.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.trade_message_type.size

  -- Calculate runtime size of Trade Message Payload field
  local trade_message_payload_offset = offset + index
  local trade_message_payload_type = buffer(trade_message_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.trade_message_payload.size(buffer, trade_message_payload_offset, trade_message_payload_type)

  return index
end

-- Display: Trade
siac_cts_output_cta_v2_11_b.trade.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
siac_cts_output_cta_v2_11_b.trade.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: Char
  index, trade_message_type = siac_cts_output_cta_v2_11_b.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Message Payload: Runtime Type with 10 branches
  index = siac_cts_output_cta_v2_11_b.trade_message_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade
siac_cts_output_cta_v2_11_b.trade.dissect = function(buffer, offset, packet, parent)
  if show.trade then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.trade, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.trade.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.trade.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.trade.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message = {}

-- Size: Fractional Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.last_price.size + 
  siac_cts_output_cta_v2_11_b.high_price.size + 
  siac_cts_output_cta_v2_11_b.low_price.size + 
  siac_cts_output_cta_v2_11_b.open_price.size + 
  siac_cts_output_cta_v2_11_b.fractional_total_volume.size + 
  siac_cts_output_cta_v2_11_b.tick.size

-- Display: Fractional Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Previous Close Price Date: Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_11_b.previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Last Price: Long
  index, last_price = siac_cts_output_cta_v2_11_b.last_price.dissect(buffer, index, packet, parent)

  -- High Price: Long
  index, high_price = siac_cts_output_cta_v2_11_b.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Long
  index, low_price = siac_cts_output_cta_v2_11_b.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: Long
  index, open_price = siac_cts_output_cta_v2_11_b.open_price.dissect(buffer, index, packet, parent)

  -- Fractional Total Volume: Long
  index, fractional_total_volume = siac_cts_output_cta_v2_11_b.fractional_total_volume.dissect(buffer, index, packet, parent)

  -- Tick: Char
  index, tick = siac_cts_output_cta_v2_11_b.tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_participant_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message = {}

-- Size: Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.last_price.size + 
  siac_cts_output_cta_v2_11_b.high_price.size + 
  siac_cts_output_cta_v2_11_b.low_price.size + 
  siac_cts_output_cta_v2_11_b.open_price.size + 
  siac_cts_output_cta_v2_11_b.total_volume.size + 
  siac_cts_output_cta_v2_11_b.tick.size

-- Display: Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Previous Close Price Date: Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_11_b.previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Last Price: Long
  index, last_price = siac_cts_output_cta_v2_11_b.last_price.dissect(buffer, index, packet, parent)

  -- High Price: Long
  index, high_price = siac_cts_output_cta_v2_11_b.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Long
  index, low_price = siac_cts_output_cta_v2_11_b.low_price.dissect(buffer, index, packet, parent)

  -- Open Price: Long
  index, open_price = siac_cts_output_cta_v2_11_b.open_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Long
  index, total_volume = siac_cts_output_cta_v2_11_b.total_volume.dissect(buffer, index, packet, parent)

  -- Tick: Char
  index, tick = siac_cts_output_cta_v2_11_b.tick.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant End Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message = {}

-- Size: Fractional Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.last_participant_id.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.last_price.size + 
  siac_cts_output_cta_v2_11_b.high_price.size + 
  siac_cts_output_cta_v2_11_b.low_price.size + 
  siac_cts_output_cta_v2_11_b.fractional_total_volume.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.number_of_participants.size

-- Display: Fractional Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Last Participant Id: Char
  index, last_participant_id = siac_cts_output_cta_v2_11_b.last_participant_id.dissect(buffer, index, packet, parent)

  -- Previous Close Price Date: Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_11_b.previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Last Price: Long
  index, last_price = siac_cts_output_cta_v2_11_b.last_price.dissect(buffer, index, packet, parent)

  -- High Price: Long
  index, high_price = siac_cts_output_cta_v2_11_b.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Long
  index, low_price = siac_cts_output_cta_v2_11_b.low_price.dissect(buffer, index, packet, parent)

  -- Fractional Total Volume: Long
  index, fractional_total_volume = siac_cts_output_cta_v2_11_b.fractional_total_volume.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Number Of Participants: Byte
  index, number_of_participants = siac_cts_output_cta_v2_11_b.number_of_participants.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_consolidated_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message = {}

-- Size: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.last_participant_id.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.last_price.size + 
  siac_cts_output_cta_v2_11_b.high_price.size + 
  siac_cts_output_cta_v2_11_b.low_price.size + 
  siac_cts_output_cta_v2_11_b.total_volume.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.number_of_participants.size

-- Display: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Last Participant Id: Char
  index, last_participant_id = siac_cts_output_cta_v2_11_b.last_participant_id.dissect(buffer, index, packet, parent)

  -- Previous Close Price Date: Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_11_b.previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Last Price: Long
  index, last_price = siac_cts_output_cta_v2_11_b.last_price.dissect(buffer, index, packet, parent)

  -- High Price: Long
  index, high_price = siac_cts_output_cta_v2_11_b.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: Long
  index, low_price = siac_cts_output_cta_v2_11_b.low_price.dissect(buffer, index, packet, parent)

  -- Total Volume: Long
  index, total_volume = siac_cts_output_cta_v2_11_b.total_volume.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Number Of Participants: Byte
  index, number_of_participants = siac_cts_output_cta_v2_11_b.number_of_participants.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message = {}

-- Size: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price.size

-- Display: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Previous Close Price Date: Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_11_b.previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Previous Close Price: Long
  index, previous_close_price = siac_cts_output_cta_v2_11_b.previous_close_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_start_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message = {}

-- Size: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price_date.size + 
  siac_cts_output_cta_v2_11_b.previous_close_price.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.number_of_participants.size

-- Display: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Previous Close Price Date: Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_11_b.previous_close_price_date.dissect(buffer, index, packet, parent)

  -- Previous Close Price: Long
  index, previous_close_price = siac_cts_output_cta_v2_11_b.previous_close_price.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Number Of Participants: Byte
  index, number_of_participants = siac_cts_output_cta_v2_11_b.number_of_participants.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.consolidated_start_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Summary Message Payload
siac_cts_output_cta_v2_11_b.summary_message_payload = {}

-- Dissect: Summary Message Payload
siac_cts_output_cta_v2_11_b.summary_message_payload.dissect = function(buffer, offset, packet, parent, summary_message_type)
  -- Dissect Consolidated Start Of Day Summary Message
  if summary_message_type == "A" then
    return siac_cts_output_cta_v2_11_b.consolidated_start_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Start Of Day Summary Message
  if summary_message_type == "B" then
    return siac_cts_output_cta_v2_11_b.participant_start_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated End Of Day Summary Message
  if summary_message_type == "C" then
    return siac_cts_output_cta_v2_11_b.consolidated_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Consolidated End Of Day Summary Message
  if summary_message_type == "T" then
    return siac_cts_output_cta_v2_11_b.fractional_consolidated_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant End Of Day Summary Message
  if summary_message_type == "D" then
    return siac_cts_output_cta_v2_11_b.participant_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Participant End Of Day Summary Message
  if summary_message_type == "P" then
    return siac_cts_output_cta_v2_11_b.fractional_participant_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Summary
siac_cts_output_cta_v2_11_b.summary = {}

-- Calculate size of: Summary
siac_cts_output_cta_v2_11_b.summary.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.summary_message_type.size

  -- Calculate runtime size of Summary Message Payload field
  local summary_message_payload_offset = offset + index
  local summary_message_payload_type = buffer(summary_message_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.summary_message_payload.size(buffer, summary_message_payload_offset, summary_message_payload_type)

  return index
end

-- Display: Summary
siac_cts_output_cta_v2_11_b.summary.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Summary
siac_cts_output_cta_v2_11_b.summary.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Summary Message Type: Char
  index, summary_message_type = siac_cts_output_cta_v2_11_b.summary_message_type.dissect(buffer, index, packet, parent)

  -- Summary Message Payload: Runtime Type with 6 branches
  index = siac_cts_output_cta_v2_11_b.summary_message_payload.dissect(buffer, index, packet, parent, summary_message_type)

  return index
end

-- Dissect: Summary
siac_cts_output_cta_v2_11_b.summary.dissect = function(buffer, offset, packet, parent)
  if show.summary then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.summary, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.summary.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.summary.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.summary.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message = {}

-- Size: Fractional Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.fractional_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.size + 
  siac_cts_output_cta_v2_11_b.cancel_error_action.size

-- Display: Fractional Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_output_cta_v2_11_b.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Integer
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  -- Cancel Error Action: Char
  index, cancel_error_action = siac_cts_output_cta_v2_11_b.cancel_error_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_prior_day_trade_cancel_error_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Prior Day Trade Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message = {}

-- Size: Fractional Prior Day Trade Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.fractional_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.size

-- Display: Fractional Prior Day Trade Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Prior Day Trade Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_output_cta_v2_11_b.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Integer
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Prior Day Trade Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_prior_day_trade_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Fractional Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message = {}

-- Size: Fractional Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.fractional_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.size

-- Display: Fractional Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Fractional Trade Volume: Long
  index, fractional_trade_volume = siac_cts_output_cta_v2_11_b.fractional_trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Integer
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Fractional Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_prior_day_trade_correction_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message = {}

-- Size: Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.size + 
  siac_cts_output_cta_v2_11_b.cancel_error_action.size

-- Display: Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_output_cta_v2_11_b.trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Integer
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  -- Cancel Error Action: Char
  index, cancel_error_action = siac_cts_output_cta_v2_11_b.cancel_error_action.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Cancel Error Message
siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_cancel_error_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Trade Message
siac_cts_output_cta_v2_11_b.prior_day_trade_message = {}

-- Size: Prior Day Trade Message
siac_cts_output_cta_v2_11_b.prior_day_trade_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.sale_condition_4.size + 
  siac_cts_output_cta_v2_11_b.trade_price.size + 
  siac_cts_output_cta_v2_11_b.trade_volume.size + 
  siac_cts_output_cta_v2_11_b.sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.size

-- Display: Prior Day Trade Message
siac_cts_output_cta_v2_11_b.prior_day_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Message
siac_cts_output_cta_v2_11_b.prior_day_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Sale Condition 4: Struct of 4 fields
  index, sale_condition_4 = siac_cts_output_cta_v2_11_b.sale_condition_4.dissect(buffer, index, packet, parent)

  -- Trade Price: Long
  index, trade_price = siac_cts_output_cta_v2_11_b.trade_price.dissect(buffer, index, packet, parent)

  -- Trade Volume: Integer
  index, trade_volume = siac_cts_output_cta_v2_11_b.trade_volume.dissect(buffer, index, packet, parent)

  -- Sellers Sale Days: Byte
  index, sellers_sale_days = siac_cts_output_cta_v2_11_b.sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Stop Stock Indicator: Char
  index, stop_stock_indicator = siac_cts_output_cta_v2_11_b.stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: Char
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Integer
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_11_b.prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Message
siac_cts_output_cta_v2_11_b.prior_day_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.prior_day_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.prior_day_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.prior_day_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message = {}

-- Size: Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.corrected_sale_condition.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_price.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time.size + 
  siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.size + 
  siac_cts_output_cta_v2_11_b.original_sale_condition.size + 
  siac_cts_output_cta_v2_11_b.original_trade_price.size + 
  siac_cts_output_cta_v2_11_b.original_trade_volume.size + 
  siac_cts_output_cta_v2_11_b.original_sellers_sale_days.size + 
  siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.size + 
  siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.size + 
  siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time.size

-- Display: Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Corrected Sale Condition: Char[]
  index, corrected_sale_condition = siac_cts_output_cta_v2_11_b.corrected_sale_condition.dissect(buffer, index, packet, parent)

  -- Corrected Trade Price: Long
  index, corrected_trade_price = siac_cts_output_cta_v2_11_b.corrected_trade_price.dissect(buffer, index, packet, parent)

  -- Corrected Trade Volume: Integer
  index, corrected_trade_volume = siac_cts_output_cta_v2_11_b.corrected_trade_volume.dissect(buffer, index, packet, parent)

  -- Corrected Sellers Sale Days: Byte
  index, corrected_sellers_sale_days = siac_cts_output_cta_v2_11_b.corrected_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Corrected Stop Stock Indicator: Char
  index, corrected_stop_stock_indicator = siac_cts_output_cta_v2_11_b.corrected_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Trade Through Exempt Indicator: Char
  index, corrected_trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.corrected_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Short Sale Restriction Indicator: Char
  index, corrected_short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.corrected_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Corrected Prior Day Trade Date And Time: Integer
  index, corrected_prior_day_trade_date_and_time = siac_cts_output_cta_v2_11_b.corrected_prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: Char
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_11_b.trade_reporting_facility_id.dissect(buffer, index, packet, parent)

  -- Original Sale Condition: Char[]
  index, original_sale_condition = siac_cts_output_cta_v2_11_b.original_sale_condition.dissect(buffer, index, packet, parent)

  -- Original Trade Price: Long
  index, original_trade_price = siac_cts_output_cta_v2_11_b.original_trade_price.dissect(buffer, index, packet, parent)

  -- Original Trade Volume: Integer
  index, original_trade_volume = siac_cts_output_cta_v2_11_b.original_trade_volume.dissect(buffer, index, packet, parent)

  -- Original Sellers Sale Days: Byte
  index, original_sellers_sale_days = siac_cts_output_cta_v2_11_b.original_sellers_sale_days.dissect(buffer, index, packet, parent)

  -- Original Stop Stock Indicator: Char
  index, original_stop_stock_indicator = siac_cts_output_cta_v2_11_b.original_stop_stock_indicator.dissect(buffer, index, packet, parent)

  -- Original Trade Through Exempt Indicator: Char
  index, original_trade_through_exempt_indicator = siac_cts_output_cta_v2_11_b.original_trade_through_exempt_indicator.dissect(buffer, index, packet, parent)

  -- Original Short Sale Restriction Indicator: Char
  index, original_short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.original_short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Original Prior Day Trade Date And Time: Integer
  index, original_prior_day_trade_date_and_time = siac_cts_output_cta_v2_11_b.original_prior_day_trade_date_and_time.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Correction Message
siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.prior_day_trade_correction_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Prior Day Message Payload
siac_cts_output_cta_v2_11_b.prior_day_message_payload = {}

-- Dissect: Prior Day Message Payload
siac_cts_output_cta_v2_11_b.prior_day_message_payload.dissect = function(buffer, offset, packet, parent, prior_day_message_type)
  -- Dissect Prior Day Trade Correction Message
  if prior_day_message_type == "C" then
    return siac_cts_output_cta_v2_11_b.prior_day_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Message
  if prior_day_message_type == "T" then
    return siac_cts_output_cta_v2_11_b.prior_day_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Cancel Error Message
  if prior_day_message_type == "X" then
    return siac_cts_output_cta_v2_11_b.prior_day_trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Prior Day Trade Correction Message
  if prior_day_message_type == "O" then
    return siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Prior Day Trade Message
  if prior_day_message_type == "R" then
    return siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Prior Day Trade Cancel Error Message
  if prior_day_message_type == "E" then
    return siac_cts_output_cta_v2_11_b.fractional_prior_day_trade_cancel_error_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Prior Day
siac_cts_output_cta_v2_11_b.prior_day = {}

-- Calculate size of: Prior Day
siac_cts_output_cta_v2_11_b.prior_day.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.prior_day_message_type.size

  -- Calculate runtime size of Prior Day Message Payload field
  local prior_day_message_payload_offset = offset + index
  local prior_day_message_payload_type = buffer(prior_day_message_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.prior_day_message_payload.size(buffer, prior_day_message_payload_offset, prior_day_message_payload_type)

  return index
end

-- Display: Prior Day
siac_cts_output_cta_v2_11_b.prior_day.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day
siac_cts_output_cta_v2_11_b.prior_day.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Prior Day Message Type: Char
  index, prior_day_message_type = siac_cts_output_cta_v2_11_b.prior_day_message_type.dissect(buffer, index, packet, parent)

  -- Prior Day Message Payload: Runtime Type with 6 branches
  index = siac_cts_output_cta_v2_11_b.prior_day_message_payload.dissect(buffer, index, packet, parent, prior_day_message_type)

  return index
end

-- Dissect: Prior Day
siac_cts_output_cta_v2_11_b.prior_day.dissect = function(buffer, offset, packet, parent)
  if show.prior_day then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.prior_day, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.prior_day.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.prior_day.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.prior_day.fields(buffer, offset, packet, parent)
  end
end

-- Crossing Session Summary Message
siac_cts_output_cta_v2_11_b.crossing_session_summary_message = {}

-- Size: Crossing Session Summary Message
siac_cts_output_cta_v2_11_b.crossing_session_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume.size + 
  siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value.size + 
  siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume.size

-- Display: Crossing Session Summary Message
siac_cts_output_cta_v2_11_b.crossing_session_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Crossing Session Summary Message
siac_cts_output_cta_v2_11_b.crossing_session_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Crossing Session I Total Trades Volume: Long
  index, crossing_session_i_total_trades_volume = siac_cts_output_cta_v2_11_b.crossing_session_i_total_trades_volume.dissect(buffer, index, packet, parent)

  -- Crossing Session Ii Dollar Value: Long
  index, crossing_session_ii_dollar_value = siac_cts_output_cta_v2_11_b.crossing_session_ii_dollar_value.dissect(buffer, index, packet, parent)

  -- Crossing Session Ii Total Trades Volume: Long
  index, crossing_session_ii_total_trades_volume = siac_cts_output_cta_v2_11_b.crossing_session_ii_total_trades_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Crossing Session Summary Message
siac_cts_output_cta_v2_11_b.crossing_session_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.crossing_session_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.crossing_session_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.crossing_session_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.crossing_session_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message = {}

-- Size: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.total_trades.size + 
  siac_cts_output_cta_v2_11_b.dollar_value.size

-- Display: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Total Trades: Integer
  index, total_trades = siac_cts_output_cta_v2_11_b.total_trades.dissect(buffer, index, packet, parent)

  -- Dollar Value: Long
  index, dollar_value = siac_cts_output_cta_v2_11_b.dollar_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.approximate_trades_and_total_dollar_value_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant
siac_cts_output_cta_v2_11_b.participant = {}

-- Size: Participant
siac_cts_output_cta_v2_11_b.participant.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.fractional_trade_total_volume.size

-- Display: Participant
siac_cts_output_cta_v2_11_b.participant.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant
siac_cts_output_cta_v2_11_b.participant.fields = function(buffer, offset, packet, parent, participant_index)
  local index = offset

  -- Implicit Participant Index
  if participant_index ~= nil and show.participant_index then
    local iteration = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant_index, participant_index)
    iteration:set_generated()
  end

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Fractional Trade Total Volume: Long
  index, fractional_trade_total_volume = siac_cts_output_cta_v2_11_b.fractional_trade_total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant
siac_cts_output_cta_v2_11_b.participant.dissect = function(buffer, offset, packet, parent, participant_index)
  if show.participant then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.participant, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.participant.fields(buffer, offset, packet, parent, participant_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.participant.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.participant.fields(buffer, offset, packet, parent, participant_index)
  end
end

-- Fractional Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message = {}

-- Calculate size of: Fractional Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.participant_id.size

  index = index + siac_cts_output_cta_v2_11_b.timestamp_1.size

  index = index + siac_cts_output_cta_v2_11_b.message_id.size

  index = index + siac_cts_output_cta_v2_11_b.transaction_id.size

  index = index + siac_cts_output_cta_v2_11_b.participant_reference_number.size

  index = index + siac_cts_output_cta_v2_11_b.number_of_participants.size

  -- Calculate field size from count
  local participant_count = buffer(offset + index - 1, 1):uint()
  index = index + participant_count * 9

  return index
end

-- Display: Fractional Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Fractional Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Number Of Participants: Byte
  index, number_of_participants = siac_cts_output_cta_v2_11_b.number_of_participants.dissect(buffer, index, packet, parent)

  -- Repeating: Participant
  for participant_index = 1, number_of_participants do
    index, participant = siac_cts_output_cta_v2_11_b.participant.dissect(buffer, index, packet, parent, participant_index)
  end

  return index
end

-- Dissect: Fractional Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.fractional_approximate_adjusted_volume_market_center_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.fields(buffer, offset, packet, parent)
  end
end

-- Approximate Volume Participant
siac_cts_output_cta_v2_11_b.approximate_volume_participant = {}

-- Size: Approximate Volume Participant
siac_cts_output_cta_v2_11_b.approximate_volume_participant.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.trade_total_volume.size

-- Display: Approximate Volume Participant
siac_cts_output_cta_v2_11_b.approximate_volume_participant.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Approximate Volume Participant
siac_cts_output_cta_v2_11_b.approximate_volume_participant.fields = function(buffer, offset, packet, parent, approximate_volume_participant_index)
  local index = offset

  -- Implicit Approximate Volume Participant Index
  if approximate_volume_participant_index ~= nil and show.approximate_volume_participant_index then
    local iteration = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.approximate_volume_participant_index, approximate_volume_participant_index)
    iteration:set_generated()
  end

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Trade Total Volume: Long
  index, trade_total_volume = siac_cts_output_cta_v2_11_b.trade_total_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Approximate Volume Participant
siac_cts_output_cta_v2_11_b.approximate_volume_participant.dissect = function(buffer, offset, packet, parent, approximate_volume_participant_index)
  if show.approximate_volume_participant then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.approximate_volume_participant, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.approximate_volume_participant.fields(buffer, offset, packet, parent, approximate_volume_participant_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.approximate_volume_participant.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.approximate_volume_participant.fields(buffer, offset, packet, parent, approximate_volume_participant_index)
  end
end

-- Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message = {}

-- Calculate size of: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.participant_id.size

  index = index + siac_cts_output_cta_v2_11_b.timestamp_1.size

  index = index + siac_cts_output_cta_v2_11_b.message_id.size

  index = index + siac_cts_output_cta_v2_11_b.transaction_id.size

  index = index + siac_cts_output_cta_v2_11_b.participant_reference_number.size

  index = index + siac_cts_output_cta_v2_11_b.number_of_participants.size

  -- Calculate field size from count
  local approximate_volume_participant_count = buffer(offset + index - 1, 1):uint()
  index = index + approximate_volume_participant_count * 9

  return index
end

-- Display: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Number Of Participants: Byte
  index, number_of_participants = siac_cts_output_cta_v2_11_b.number_of_participants.dissect(buffer, index, packet, parent)

  -- Repeating: Approximate Volume Participant
  for approximate_volume_participant_index = 1, number_of_participants do
    index, approximate_volume_participant = siac_cts_output_cta_v2_11_b.approximate_volume_participant.dissect(buffer, index, packet, parent, approximate_volume_participant_index)
  end

  return index
end

-- Dissect: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.approximate_adjusted_volume_market_center_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message = {}

-- Size: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator.size + 
  siac_cts_output_cta_v2_11_b.reserved.size

-- Display: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Market Wide Circuit Breaker Level Indicator: Char
  index, market_wide_circuit_breaker_level_indicator = siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_level_indicator.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cts_output_cta_v2_11_b.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.market_wide_circuit_breaker_status_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.mwcb_level_1.size + 
  siac_cts_output_cta_v2_11_b.mwcb_level_2.size + 
  siac_cts_output_cta_v2_11_b.mwcb_level_3.size + 
  siac_cts_output_cta_v2_11_b.reserved.size

-- Display: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: Signed Long
  index, mwcb_level_1 = siac_cts_output_cta_v2_11_b.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: Signed Long
  index, mwcb_level_2 = siac_cts_output_cta_v2_11_b.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: Signed Long
  index, mwcb_level_3 = siac_cts_output_cta_v2_11_b.mwcb_level_3.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cts_output_cta_v2_11_b.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.market_wide_circuit_breaker_decline_level_status_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message Payload
siac_cts_output_cta_v2_11_b.market_status_message_payload = {}

-- Dissect: Market Status Message Payload
siac_cts_output_cta_v2_11_b.market_status_message_payload.dissect = function(buffer, offset, packet, parent, market_status_message_type)
  -- Dissect Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "K" then
    return siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_decline_level_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return siac_cts_output_cta_v2_11_b.market_wide_circuit_breaker_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Approximate Adjusted Volume Market Center Message
  if market_status_message_type == "N" then
    return siac_cts_output_cta_v2_11_b.approximate_adjusted_volume_market_center_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Fractional Approximate Adjusted Volume Market Center Message
  if market_status_message_type == "V" then
    return siac_cts_output_cta_v2_11_b.fractional_approximate_adjusted_volume_market_center_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Approximate Trades And Total Dollar Value Message
  if market_status_message_type == "O" then
    return siac_cts_output_cta_v2_11_b.approximate_trades_and_total_dollar_value_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Crossing Session Summary Message
  if market_status_message_type == "P" then
    return siac_cts_output_cta_v2_11_b.crossing_session_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Market Status
siac_cts_output_cta_v2_11_b.market_status = {}

-- Calculate size of: Market Status
siac_cts_output_cta_v2_11_b.market_status.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.market_status_message_type.size

  -- Calculate runtime size of Market Status Message Payload field
  local market_status_message_payload_offset = offset + index
  local market_status_message_payload_type = buffer(market_status_message_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.market_status_message_payload.size(buffer, market_status_message_payload_offset, market_status_message_payload_type)

  return index
end

-- Display: Market Status
siac_cts_output_cta_v2_11_b.market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status
siac_cts_output_cta_v2_11_b.market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Status Message Type: Char
  index, market_status_message_type = siac_cts_output_cta_v2_11_b.market_status_message_type.dissect(buffer, index, packet, parent)

  -- Market Status Message Payload: Runtime Type with 6 branches
  index = siac_cts_output_cta_v2_11_b.market_status_message_payload.dissect(buffer, index, packet, parent, market_status_message_type)

  return index
end

-- Dissect: Market Status
siac_cts_output_cta_v2_11_b.market_status.dissect = function(buffer, offset, packet, parent)
  if show.market_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.market_status, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.market_status.fields(buffer, offset, packet, parent)
  end
end

-- Bid And Offer Index Message
siac_cts_output_cta_v2_11_b.bid_and_offer_index_message = {}

-- Size: Bid And Offer Index Message
siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.index_symbol.size + 
  siac_cts_output_cta_v2_11_b.bid_index_value.size + 
  siac_cts_output_cta_v2_11_b.offer_index_value.size

-- Display: Bid And Offer Index Message
siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid And Offer Index Message
siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Index Symbol: Char[]
  index, index_symbol = siac_cts_output_cta_v2_11_b.index_symbol.dissect(buffer, index, packet, parent)

  -- Bid Index Value: Signed Long
  index, bid_index_value = siac_cts_output_cta_v2_11_b.bid_index_value.dissect(buffer, index, packet, parent)

  -- Offer Index Value: Signed Long
  index, offer_index_value = siac_cts_output_cta_v2_11_b.offer_index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid And Offer Index Message
siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.bid_and_offer_index_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Message
siac_cts_output_cta_v2_11_b.index_message = {}

-- Size: Index Message
siac_cts_output_cta_v2_11_b.index_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.index_symbol.size + 
  siac_cts_output_cta_v2_11_b.index_value.size

-- Display: Index Message
siac_cts_output_cta_v2_11_b.index_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Message
siac_cts_output_cta_v2_11_b.index_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Index Symbol: Char[]
  index, index_symbol = siac_cts_output_cta_v2_11_b.index_symbol.dissect(buffer, index, packet, parent)

  -- Index Value: Signed Long
  index, index_value = siac_cts_output_cta_v2_11_b.index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Message
siac_cts_output_cta_v2_11_b.index_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.index_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.index_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.index_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.index_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Message Payload
siac_cts_output_cta_v2_11_b.index_message_payload = {}

-- Dissect: Index Message Payload
siac_cts_output_cta_v2_11_b.index_message_payload.dissect = function(buffer, offset, packet, parent, index_message_type)
  -- Dissect Index Message
  if index_message_type == "I" then
    return siac_cts_output_cta_v2_11_b.index_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Bid And Offer Index Message
  if index_message_type == "Q" then
    return siac_cts_output_cta_v2_11_b.bid_and_offer_index_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Index
siac_cts_output_cta_v2_11_b.index = {}

-- Calculate size of: Index
siac_cts_output_cta_v2_11_b.index.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.index_message_type.size

  -- Calculate runtime size of Index Message Payload field
  local index_message_payload_offset = offset + index
  local index_message_payload_type = buffer(index_message_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.index_message_payload.size(buffer, index_message_payload_offset, index_message_payload_type)

  return index
end

-- Display: Index
siac_cts_output_cta_v2_11_b.index.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index
siac_cts_output_cta_v2_11_b.index.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Message Type: Char
  index, index_message_type = siac_cts_output_cta_v2_11_b.index_message_type.dissect(buffer, index, packet, parent)

  -- Index Message Payload: Runtime Type with 2 branches
  index = siac_cts_output_cta_v2_11_b.index_message_payload.dissect(buffer, index, packet, parent, index_message_type)

  return index
end

-- Dissect: Index
siac_cts_output_cta_v2_11_b.index.dissect = function(buffer, offset, packet, parent)
  if show.index then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.index, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.index.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.index.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.index.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
siac_cts_output_cta_v2_11_b.end_of_day_message = {}

-- Size: End Of Day Message
siac_cts_output_cta_v2_11_b.end_of_day_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: End Of Day Message
siac_cts_output_cta_v2_11_b.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
siac_cts_output_cta_v2_11_b.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
siac_cts_output_cta_v2_11_b.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.end_of_day_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Integrity Message
siac_cts_output_cta_v2_11_b.line_integrity_message = {}

-- Size: Line Integrity Message
siac_cts_output_cta_v2_11_b.line_integrity_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: Line Integrity Message
siac_cts_output_cta_v2_11_b.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
siac_cts_output_cta_v2_11_b.line_integrity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
siac_cts_output_cta_v2_11_b.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.line_integrity_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.line_integrity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.line_integrity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.line_integrity_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message = {}

-- Size: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.disaster_recovery_data_center_activation_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset Block Sequence Number Message
siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message = {}

-- Size: Reset Block Sequence Number Message
siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: Reset Block Sequence Number Message
siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Block Sequence Number Message
siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Block Sequence Number Message
siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.reset_block_sequence_number_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
siac_cts_output_cta_v2_11_b.start_of_day_message = {}

-- Size: Start Of Day Message
siac_cts_output_cta_v2_11_b.start_of_day_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: Start Of Day Message
siac_cts_output_cta_v2_11_b.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
siac_cts_output_cta_v2_11_b.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
siac_cts_output_cta_v2_11_b.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.start_of_day_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
siac_cts_output_cta_v2_11_b.control_message_payload = {}

-- Dissect: Control Message Payload
siac_cts_output_cta_v2_11_b.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "A" then
    return siac_cts_output_cta_v2_11_b.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Block Sequence Number Message
  if control_message_type == "L" then
    return siac_cts_output_cta_v2_11_b.reset_block_sequence_number_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return siac_cts_output_cta_v2_11_b.disaster_recovery_data_center_activation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return siac_cts_output_cta_v2_11_b.line_integrity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "Z" then
    return siac_cts_output_cta_v2_11_b.end_of_day_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control
siac_cts_output_cta_v2_11_b.control = {}

-- Calculate size of: Control
siac_cts_output_cta_v2_11_b.control.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control
siac_cts_output_cta_v2_11_b.control.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
siac_cts_output_cta_v2_11_b.control.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: Char
  index, control_message_type = siac_cts_output_cta_v2_11_b.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 5 branches
  index = siac_cts_output_cta_v2_11_b.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
siac_cts_output_cta_v2_11_b.control.dissect = function(buffer, offset, packet, parent)
  if show.control then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.control, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.control.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.control.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.control.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Reference Data Message
siac_cts_output_cta_v2_11_b.symbol_reference_data_message = {}

-- Size: Symbol Reference Data Message
siac_cts_output_cta_v2_11_b.symbol_reference_data_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size + 
  siac_cts_output_cta_v2_11_b.security_symbol.size + 
  siac_cts_output_cta_v2_11_b.prior_security_symbol.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.size + 
  siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.size + 
  siac_cts_output_cta_v2_11_b.consolidated_closing_price.size + 
  siac_cts_output_cta_v2_11_b.round_lot_size.size + 
  siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator.size + 
  siac_cts_output_cta_v2_11_b.luld_tier.size + 
  siac_cts_output_cta_v2_11_b.luld_leverage_ratio.size + 
  siac_cts_output_cta_v2_11_b.test.size + 
  siac_cts_output_cta_v2_11_b.ipo.size + 
  siac_cts_output_cta_v2_11_b.financial_status_indicator.size + 
  siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.size + 
  siac_cts_output_cta_v2_11_b.halt_reason.size + 
  siac_cts_output_cta_v2_11_b.instrument_type.size + 
  siac_cts_output_cta_v2_11_b.reserved.size + 
  siac_cts_output_cta_v2_11_b.reserved.size + 
  siac_cts_output_cta_v2_11_b.reserved_128.size

-- Display: Symbol Reference Data Message
siac_cts_output_cta_v2_11_b.symbol_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Reference Data Message
siac_cts_output_cta_v2_11_b.symbol_reference_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cts_output_cta_v2_11_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Prior Security Symbol: Char[]
  index, prior_security_symbol = siac_cts_output_cta_v2_11_b.prior_security_symbol.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_11_b.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Previous Closing Price: Long
  index, primary_listing_market_previous_closing_price = siac_cts_output_cta_v2_11_b.primary_listing_market_previous_closing_price.dissect(buffer, index, packet, parent)

  -- Consolidated Closing Price: Long
  index, consolidated_closing_price = siac_cts_output_cta_v2_11_b.consolidated_closing_price.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Short
  index, round_lot_size = siac_cts_output_cta_v2_11_b.round_lot_size.dissect(buffer, index, packet, parent)

  -- Minimum Price Increment Indicator: Char
  index, minimum_price_increment_indicator = siac_cts_output_cta_v2_11_b.minimum_price_increment_indicator.dissect(buffer, index, packet, parent)

  -- Luld Tier: Char
  index, luld_tier = siac_cts_output_cta_v2_11_b.luld_tier.dissect(buffer, index, packet, parent)

  -- Luld Leverage Ratio: Integer
  index, luld_leverage_ratio = siac_cts_output_cta_v2_11_b.luld_leverage_ratio.dissect(buffer, index, packet, parent)

  -- Test: Char
  index, test = siac_cts_output_cta_v2_11_b.test.dissect(buffer, index, packet, parent)

  -- Ipo: Char
  index, ipo = siac_cts_output_cta_v2_11_b.ipo.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cts_output_cta_v2_11_b.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_11_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cts_output_cta_v2_11_b.halt_reason.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cts_output_cta_v2_11_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cts_output_cta_v2_11_b.reserved.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cts_output_cta_v2_11_b.reserved.dissect(buffer, index, packet, parent)

  -- Reserved 128: Char[]
  index, reserved_128 = siac_cts_output_cta_v2_11_b.reserved_128.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Reference Data Message
siac_cts_output_cta_v2_11_b.symbol_reference_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.symbol_reference_data_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.symbol_reference_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.symbol_reference_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.symbol_reference_data_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message = {}

-- Size: End Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: End Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.end_of_start_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message = {}

-- Size: Start Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: Start Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Start Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.start_of_start_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- End Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message = {}

-- Size: End Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: End Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.end_of_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message = {}

-- Size: Start Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.size =
  siac_cts_output_cta_v2_11_b.participant_id.size + 
  siac_cts_output_cta_v2_11_b.timestamp_1.size + 
  siac_cts_output_cta_v2_11_b.message_id.size + 
  siac_cts_output_cta_v2_11_b.transaction_id.size + 
  siac_cts_output_cta_v2_11_b.participant_reference_number.size

-- Display: Start Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cts_output_cta_v2_11_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_11_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cts_output_cta_v2_11_b.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cts_output_cta_v2_11_b.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cts_output_cta_v2_11_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of End Of Day Summary Message
siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.start_of_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
siac_cts_output_cta_v2_11_b.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
siac_cts_output_cta_v2_11_b.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Start Of End Of Day Summary Message
  if administrative_message_type == "A" then
    return siac_cts_output_cta_v2_11_b.start_of_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of End Of Day Summary Message
  if administrative_message_type == "B" then
    return siac_cts_output_cta_v2_11_b.end_of_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Start Of Day Summary Message
  if administrative_message_type == "C" then
    return siac_cts_output_cta_v2_11_b.start_of_start_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Start Of Day Summary Message
  if administrative_message_type == "D" then
    return siac_cts_output_cta_v2_11_b.end_of_start_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Reference Data Message
  if administrative_message_type == "S" then
    return siac_cts_output_cta_v2_11_b.symbol_reference_data_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative
siac_cts_output_cta_v2_11_b.administrative = {}

-- Calculate size of: Administrative
siac_cts_output_cta_v2_11_b.administrative.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative
siac_cts_output_cta_v2_11_b.administrative.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
siac_cts_output_cta_v2_11_b.administrative.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: Char
  index, administrative_message_type = siac_cts_output_cta_v2_11_b.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 5 branches
  index = siac_cts_output_cta_v2_11_b.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
siac_cts_output_cta_v2_11_b.administrative.dissect = function(buffer, offset, packet, parent)
  if show.administrative then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.administrative, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.administrative.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.administrative.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.administrative.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
siac_cts_output_cta_v2_11_b.category_payload = {}

-- Dissect: Category Payload
siac_cts_output_cta_v2_11_b.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative
  if message_category == "A" then
    return siac_cts_output_cta_v2_11_b.administrative.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return siac_cts_output_cta_v2_11_b.control.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Index
  if message_category == "I" then
    return siac_cts_output_cta_v2_11_b.index.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status
  if message_category == "M" then
    return siac_cts_output_cta_v2_11_b.market_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day
  if message_category == "P" then
    return siac_cts_output_cta_v2_11_b.prior_day.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Summary
  if message_category == "S" then
    return siac_cts_output_cta_v2_11_b.summary.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if message_category == "T" then
    return siac_cts_output_cta_v2_11_b.trade.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
siac_cts_output_cta_v2_11_b.message = {}

-- Calculate size of: Message
siac_cts_output_cta_v2_11_b.message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_11_b.message_length.size

  index = index + siac_cts_output_cta_v2_11_b.message_category.size

  -- Calculate runtime size of Category Payload field
  local category_payload_offset = offset + index
  local category_payload_type = buffer(category_payload_offset - 1, 1):string()
  index = index + siac_cts_output_cta_v2_11_b.category_payload.size(buffer, category_payload_offset, category_payload_type)

  return index
end

-- Display: Message
siac_cts_output_cta_v2_11_b.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cts_output_cta_v2_11_b.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: Short
  index, message_length = siac_cts_output_cta_v2_11_b.message_length.dissect(buffer, index, packet, parent)

  -- Message Category: Char
  index, message_category = siac_cts_output_cta_v2_11_b.message_category.dissect(buffer, index, packet, parent)

  -- Category Payload: Runtime Type with 7 branches
  index = siac_cts_output_cta_v2_11_b.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cts_output_cta_v2_11_b.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.message, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- SIP Block Timestamp
siac_cts_output_cta_v2_11_b.sip_block_timestamp = {}

-- Size: SIP Block Timestamp
siac_cts_output_cta_v2_11_b.sip_block_timestamp.size =
  siac_cts_output_cta_v2_11_b.seconds.size + 
  siac_cts_output_cta_v2_11_b.nanoseconds.size

-- Display: SIP Block Timestamp
siac_cts_output_cta_v2_11_b.sip_block_timestamp.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: SIP Block Timestamp
siac_cts_output_cta_v2_11_b.sip_block_timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_cts_output_cta_v2_11_b.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_cts_output_cta_v2_11_b.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local sip_block_timestamp = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, sip_block_timestamp
end

-- Dissect: SIP Block Timestamp
siac_cts_output_cta_v2_11_b.sip_block_timestamp.dissect = function(buffer, offset, packet, parent)
  if show.sip_block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.sip_block_timestamp, buffer(offset, 0))
    local index, value = siac_cts_output_cta_v2_11_b.sip_block_timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.sip_block_timestamp.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.sip_block_timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Block Header
siac_cts_output_cta_v2_11_b.block_header = {}

-- Size: Block Header
siac_cts_output_cta_v2_11_b.block_header.size =
  siac_cts_output_cta_v2_11_b.version.size + 
  siac_cts_output_cta_v2_11_b.block_size.size + 
  siac_cts_output_cta_v2_11_b.data_feed_indicator.size + 
  siac_cts_output_cta_v2_11_b.retransmission_indicator.size + 
  siac_cts_output_cta_v2_11_b.block_sequence_number.size + 
  siac_cts_output_cta_v2_11_b.messages_in_block.size + 
  siac_cts_output_cta_v2_11_b.sip_block_timestamp.size + 
  siac_cts_output_cta_v2_11_b.block_checksum.size

-- Display: Block Header
siac_cts_output_cta_v2_11_b.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cts_output_cta_v2_11_b.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: unsigned integer
  index, version = siac_cts_output_cta_v2_11_b.version.dissect(buffer, index, packet, parent)

  -- Block Size: unsigned integer
  index, block_size = siac_cts_output_cta_v2_11_b.block_size.dissect(buffer, index, packet, parent)

  -- Data Feed Indicator: char
  index, data_feed_indicator = siac_cts_output_cta_v2_11_b.data_feed_indicator.dissect(buffer, index, packet, parent)

  -- Retransmission Indicator: char
  index, retransmission_indicator = siac_cts_output_cta_v2_11_b.retransmission_indicator.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: unsigned integer
  index, block_sequence_number = siac_cts_output_cta_v2_11_b.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: unsigned integer
  index, messages_in_block = siac_cts_output_cta_v2_11_b.messages_in_block.dissect(buffer, index, packet, parent)

  -- SIP Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = siac_cts_output_cta_v2_11_b.sip_block_timestamp.dissect(buffer, index, packet, parent)

  -- Block Checksum: unsigned integer
  index, block_checksum = siac_cts_output_cta_v2_11_b.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cts_output_cta_v2_11_b.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_11_b.fields.block_header, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_11_b.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_11_b.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_11_b.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_cts_output_cta_v2_11_b.packet = {}

-- Verify required size of Udp packet
siac_cts_output_cta_v2_11_b.packet.requiredsize = function(buffer)
  return buffer:len() >= siac_cts_output_cta_v2_11_b.block_header.size
end

-- Dissect Packet
siac_cts_output_cta_v2_11_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 8 fields
  index, block_header = siac_cts_output_cta_v2_11_b.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do
    index, message = siac_cts_output_cta_v2_11_b.message.dissect(buffer, index, packet, parent, message_index)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_cts_output_cta_v2_11_b.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_cts_output_cta_v2_11_b.init()
end

-- Dissector for Siac Cts Output Cta 2.11.b
function omi_siac_cts_output_cta_v2_11_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_cts_output_cta_v2_11_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_cts_output_cta_v2_11_b, buffer(), omi_siac_cts_output_cta_v2_11_b.description, "("..buffer:len().." Bytes)")
  return siac_cts_output_cta_v2_11_b.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Siac Cts Output Cta 2.11.b (Udp)
local function omi_siac_cts_output_cta_v2_11_b_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_cts_output_cta_v2_11_b.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_cts_output_cta_v2_11_b
  omi_siac_cts_output_cta_v2_11_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cts Output Cta 2.11.b
omi_siac_cts_output_cta_v2_11_b:register_heuristic("udp", omi_siac_cts_output_cta_v2_11_b_udp_heuristic)

-- Register Siac Cts Output Cta 2.11.b on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_cts_output_cta_v2_11_b)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: The Securities Industry Automation Corporation
--   Version: 2.11.b
--   Date: Thursday, January 29, 2026
--   Specification: CTS_Pillar_Output_Specification.pdf
-- 
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
-- 
-- This dissector script was generated by The Open Markets Initiative (Omi).
-- 
-- For full Omi information:
-- https://github.com/Open-Markets-Initiative/Directory
-----------------------------------------------------------------------
