-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cts Output Cta 1.91 Protocol
local siac_cts_output_cta_v1_91 = Proto("Siac.Cts.Output.Cta.v1.91.Lua", "Siac Cts Output Cta 1.91")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cts Output Cta 1.91 Fields
siac_cts_output_cta_v1_91.fields.administrative = ProtoField.new("Administrative", "siac.cts.output.cta.v1.91.administrative", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.cts.output.cta.v1.91.administrativemessagetype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.administrative_payload = ProtoField.new("Administrative Payload", "siac.cts.output.cta.v1.91.administrativepayload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.administrative_unformatted_message = ProtoField.new("Administrative Unformatted Message", "siac.cts.output.cta.v1.91.administrativeunformattedmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.approximate_adjusted_volume_market_center_message = ProtoField.new("Approximate Adjusted Volume Market Center Message", "siac.cts.output.cta.v1.91.approximateadjustedvolumemarketcentermessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.approximate_trades_and_total_dollar_value_message = ProtoField.new("Approximate Trades And Total Dollar Value Message", "siac.cts.output.cta.v1.91.approximatetradesandtotaldollarvaluemessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cts.output.cta.v1.91.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cts.output.cta.v1.91.auctioncollarreferenceprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.auction_status_message = ProtoField.new("Auction Status Message", "siac.cts.output.cta.v1.91.auctionstatusmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.bid_and_offer_index_message = ProtoField.new("Bid And Offer Index Message", "siac.cts.output.cta.v1.91.bidandofferindexmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.bid_index_value = ProtoField.new("Bid Index Value", "siac.cts.output.cta.v1.91.bidindexvalue", ftypes.INT64)
siac_cts_output_cta_v1_91.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cts.output.cta.v1.91.blockchecksum", ftypes.UINT16)
siac_cts_output_cta_v1_91.fields.block_header = ProtoField.new("Block Header", "siac.cts.output.cta.v1.91.blockheader", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cts.output.cta.v1.91.blockpadbyte", ftypes.UINT8)
siac_cts_output_cta_v1_91.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cts.output.cta.v1.91.blocksequencenumber", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.block_size = ProtoField.new("Block Size", "siac.cts.output.cta.v1.91.blocksize", ftypes.UINT16)
siac_cts_output_cta_v1_91.fields.buy_volume = ProtoField.new("Buy Volume", "siac.cts.output.cta.v1.91.buyvolume", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.cancel_error_action = ProtoField.new("Cancel Error Action", "siac.cts.output.cta.v1.91.cancelerroraction", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.category_1 = ProtoField.new("Category 1", "siac.cts.output.cta.v1.91.category1", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.category_2 = ProtoField.new("Category 2", "siac.cts.output.cta.v1.91.category2", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.category_3 = ProtoField.new("Category 3", "siac.cts.output.cta.v1.91.category3", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.category_4 = ProtoField.new("Category 4", "siac.cts.output.cta.v1.91.category4", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.consolidated_data = ProtoField.new("Consolidated Data", "siac.cts.output.cta.v1.91.consolidateddata", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.consolidated_end_of_day_summary_message = ProtoField.new("Consolidated End Of Day Summary Message", "siac.cts.output.cta.v1.91.consolidatedendofdaysummarymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.consolidated_high_low_last_indicator = ProtoField.new("Consolidated High Low Last Indicator", "siac.cts.output.cta.v1.91.consolidatedhighlowlastindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.consolidated_start_of_day_summary_message = ProtoField.new("Consolidated Start Of Day Summary Message", "siac.cts.output.cta.v1.91.consolidatedstartofdaysummarymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.control = ProtoField.new("Control", "siac.cts.output.cta.v1.91.control", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cts.output.cta.v1.91.controlmessagetype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.control_payload = ProtoField.new("Control Payload", "siac.cts.output.cta.v1.91.controlpayload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.corrected_trade = ProtoField.new("Corrected Trade", "siac.cts.output.cta.v1.91.correctedtrade", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.crossing_session_1_total_trades_volume = ProtoField.new("Crossing Session 1 Total Trades Volume", "siac.cts.output.cta.v1.91.crossingsession1totaltradesvolume", ftypes.UINT64)
siac_cts_output_cta_v1_91.fields.crossing_session_2_dollar_value = ProtoField.new("Crossing Session 2 Dollar Value", "siac.cts.output.cta.v1.91.crossingsession2dollarvalue", ftypes.UINT64)
siac_cts_output_cta_v1_91.fields.crossing_session_2_total_trades_volume = ProtoField.new("Crossing Session 2 Total Trades Volume", "siac.cts.output.cta.v1.91.crossingsession2totaltradesvolume", ftypes.UINT64)
siac_cts_output_cta_v1_91.fields.crossing_session_summary_message = ProtoField.new("Crossing Session Summary Message", "siac.cts.output.cta.v1.91.crossingsessionsummarymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.cts.output.cta.v1.91.datafeedindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.disaster_recovery_data_center_activation_message = ProtoField.new("Disaster Recovery Data Center Activation Message", "siac.cts.output.cta.v1.91.disasterrecoverydatacenteractivationmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.dollar_value = ProtoField.new("Dollar Value", "siac.cts.output.cta.v1.91.dollarvalue", ftypes.UINT64)
siac_cts_output_cta_v1_91.fields.end_of_day_message = ProtoField.new("End Of Day Message", "siac.cts.output.cta.v1.91.endofdaymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.end_of_end_of_day_message = ProtoField.new("End Of End Of Day Message", "siac.cts.output.cta.v1.91.endofendofdaymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.end_of_start_of_day_message = ProtoField.new("End Of Start Of Day Message", "siac.cts.output.cta.v1.91.endofstartofdaymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.end_of_test_cycle_message = ProtoField.new("End Of Test Cycle Message", "siac.cts.output.cta.v1.91.endoftestcyclemessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cts.output.cta.v1.91.financialstatusindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.future_use = ProtoField.new("Future Use", "siac.cts.output.cta.v1.91.futureuse", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cts.output.cta.v1.91.haltreason", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.held_trade_indicator = ProtoField.new("Held Trade Indicator", "siac.cts.output.cta.v1.91.heldtradeindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.high_indication_price_upper_limit_price_band = ProtoField.new("High Indication Price Upper Limit Price Band", "siac.cts.output.cta.v1.91.highindicationpriceupperlimitpriceband", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.high_price = ProtoField.new("High Price", "siac.cts.output.cta.v1.91.highprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.index = ProtoField.new("Index", "siac.cts.output.cta.v1.91.index", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.index_message = ProtoField.new("Index Message", "siac.cts.output.cta.v1.91.indexmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.index_message_type = ProtoField.new("Index Message Type", "siac.cts.output.cta.v1.91.indexmessagetype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.index_payload = ProtoField.new("Index Payload", "siac.cts.output.cta.v1.91.indexpayload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.index_symbol = ProtoField.new("Index Symbol", "siac.cts.output.cta.v1.91.indexsymbol", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.index_value = ProtoField.new("Index Value", "siac.cts.output.cta.v1.91.indexvalue", ftypes.INT64)
siac_cts_output_cta_v1_91.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cts.output.cta.v1.91.instrumenttype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.last_participant_id = ProtoField.new("Last Participant Id", "siac.cts.output.cta.v1.91.lastparticipantid", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.last_price = ProtoField.new("Last Price", "siac.cts.output.cta.v1.91.lastprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.limit_up_limit_down_indicator = ProtoField.new("Limit Up Limit Down Indicator", "siac.cts.output.cta.v1.91.limituplimitdownindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cts.output.cta.v1.91.lineintegritymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.long_trade_message = ProtoField.new("Long Trade Message", "siac.cts.output.cta.v1.91.longtrademessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.low_indication_price_lower_limit_price_band = ProtoField.new("Low Indication Price Lower Limit Price Band", "siac.cts.output.cta.v1.91.lowindicationpricelowerlimitpriceband", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.low_price = ProtoField.new("Low Price", "siac.cts.output.cta.v1.91.lowprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.market_status = ProtoField.new("Market Status", "siac.cts.output.cta.v1.91.marketstatus", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.market_status_message_type = ProtoField.new("Market Status Message Type", "siac.cts.output.cta.v1.91.marketstatusmessagetype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.market_status_payload = ProtoField.new("Market Status Payload", "siac.cts.output.cta.v1.91.marketstatuspayload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.market_wide_circuit_breaker_decline_level_status_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Message", "siac.cts.output.cta.v1.91.marketwidecircuitbreakerdeclinelevelstatusmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "siac.cts.output.cta.v1.91.marketwidecircuitbreakerstatusmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.message = ProtoField.new("Message", "siac.cts.output.cta.v1.91.message", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.message_category = ProtoField.new("Message Category", "siac.cts.output.cta.v1.91.messagecategory", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.message_header = ProtoField.new("Message Header", "siac.cts.output.cta.v1.91.messageheader", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.message_id = ProtoField.new("Message Id", "siac.cts.output.cta.v1.91.messageid", ftypes.UINT8)
siac_cts_output_cta_v1_91.fields.message_length = ProtoField.new("Message Length", "siac.cts.output.cta.v1.91.messagelength", ftypes.UINT16)
siac_cts_output_cta_v1_91.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cts.output.cta.v1.91.messagesinblock", ftypes.UINT8)
siac_cts_output_cta_v1_91.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cts.output.cta.v1.91.mwcblevel2", ftypes.INT64)
siac_cts_output_cta_v1_91.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cts.output.cta.v1.91.mwcblevel3", ftypes.INT64)
siac_cts_output_cta_v1_91.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cts.output.cta.v1.91.nanoseconds", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cts.output.cta.v1.91.numberofextensions", ftypes.UINT8)
siac_cts_output_cta_v1_91.fields.number_of_participants = ProtoField.new("Number Of Participants", "siac.cts.output.cta.v1.91.numberofparticipants", ftypes.UINT8)
siac_cts_output_cta_v1_91.fields.offer_index_value = ProtoField.new("Offer Index Value", "siac.cts.output.cta.v1.91.offerindexvalue", ftypes.INT64)
siac_cts_output_cta_v1_91.fields.open_price = ProtoField.new("Open Price", "siac.cts.output.cta.v1.91.openprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.original_participant_reference_number = ProtoField.new("Original Participant Reference Number", "siac.cts.output.cta.v1.91.originalparticipantreferencenumber", ftypes.INT64)
siac_cts_output_cta_v1_91.fields.original_trade = ProtoField.new("Original Trade", "siac.cts.output.cta.v1.91.originaltrade", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.packet = ProtoField.new("Packet", "siac.cts.output.cta.v1.91.packet", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.participant_data = ProtoField.new("Participant Data", "siac.cts.output.cta.v1.91.participantdata", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.participant_end_of_day_summary_message = ProtoField.new("Participant End Of Day Summary Message", "siac.cts.output.cta.v1.91.participantendofdaysummarymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.participant_id = ProtoField.new("Participant Id", "siac.cts.output.cta.v1.91.participantid", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.participant_open_high_low_last_indicator = ProtoField.new("Participant Open High Low Last Indicator", "siac.cts.output.cta.v1.91.participantopenhighlowlastindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cts.output.cta.v1.91.participantreferencenumber", ftypes.INT64)
siac_cts_output_cta_v1_91.fields.participant_start_of_day_summary_message = ProtoField.new("Participant Start Of Day Summary Message", "siac.cts.output.cta.v1.91.participantstartofdaysummarymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.participants = ProtoField.new("Participants", "siac.cts.output.cta.v1.91.participants", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.payload = ProtoField.new("Payload", "siac.cts.output.cta.v1.91.payload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.previous_close_price = ProtoField.new("Previous Close Price", "siac.cts.output.cta.v1.91.previouscloseprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.previous_close_price_date = ProtoField.new("Previous Close Price Date", "siac.cts.output.cta.v1.91.previousclosepricedate", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cts.output.cta.v1.91.primarylistingmarketparticipantid", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.prior_day = ProtoField.new("Prior Day", "siac.cts.output.cta.v1.91.priorday", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.prior_day_message_type = ProtoField.new("Prior Day Message Type", "siac.cts.output.cta.v1.91.priordaymessagetype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.prior_day_payload = ProtoField.new("Prior Day Payload", "siac.cts.output.cta.v1.91.priordaypayload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.prior_day_trade_correction_message = ProtoField.new("Prior Day Trade Correction Message", "siac.cts.output.cta.v1.91.priordaytradecorrectionmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.prior_day_trade_date_and_time = ProtoField.new("Prior Day Trade Date And Time", "siac.cts.output.cta.v1.91.priordaytradedateandtime", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.prior_day_trade_message = ProtoField.new("Prior Day Trade Message", "siac.cts.output.cta.v1.91.priordaytrademessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.reserved = ProtoField.new("Reserved", "siac.cts.output.cta.v1.91.reserved", ftypes.UINT8)
siac_cts_output_cta_v1_91.fields.reset_block_sequence_number_message = ProtoField.new("Reset Block Sequence Number Message", "siac.cts.output.cta.v1.91.resetblocksequencenumbermessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.cts.output.cta.v1.91.retransmissionindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.sale_condition = ProtoField.new("Sale Condition", "siac.cts.output.cta.v1.91.salecondition", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.sale_condition_category = ProtoField.new("Sale Condition Category", "siac.cts.output.cta.v1.91.saleconditioncategory", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.sale_conditions = ProtoField.new("Sale Conditions", "siac.cts.output.cta.v1.91.saleconditions", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.seconds = ProtoField.new("Seconds", "siac.cts.output.cta.v1.91.seconds", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.security_status = ProtoField.new("Security Status", "siac.cts.output.cta.v1.91.securitystatus", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cts.output.cta.v1.91.securitysymbol", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "siac.cts.output.cta.v1.91.securitysymbolshort", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.sell_volume = ProtoField.new("Sell Volume", "siac.cts.output.cta.v1.91.sellvolume", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "siac.cts.output.cta.v1.91.sellerssaledays", ftypes.UINT8)
siac_cts_output_cta_v1_91.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cts.output.cta.v1.91.shortsalerestrictionindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.short_trade_message = ProtoField.new("Short Trade Message", "siac.cts.output.cta.v1.91.shorttrademessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.sip_block_timestamp = ProtoField.new("Sip Block Timestamp", "siac.cts.output.cta.v1.91.sipblocktimestamp", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cts.output.cta.v1.91.startofdaymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.start_of_end_of_day_message = ProtoField.new("Start Of End Of Day Message", "siac.cts.output.cta.v1.91.startofendofdaymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.start_of_start_of_day_message = ProtoField.new("Start Of Start Of Day Message", "siac.cts.output.cta.v1.91.startofstartofdaymessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.start_of_test_cycle_message = ProtoField.new("Start Of Test Cycle Message", "siac.cts.output.cta.v1.91.startoftestcyclemessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.stop_stock_indicator = ProtoField.new("Stop Stock Indicator", "siac.cts.output.cta.v1.91.stopstockindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.summary = ProtoField.new("Summary", "siac.cts.output.cta.v1.91.summary", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.summary_message_type = ProtoField.new("Summary Message Type", "siac.cts.output.cta.v1.91.summarymessagetype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.summary_payload = ProtoField.new("Summary Payload", "siac.cts.output.cta.v1.91.summarypayload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.tick = ProtoField.new("Tick", "siac.cts.output.cta.v1.91.tick", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.timestamp_1 = ProtoField.new("Timestamp 1", "siac.cts.output.cta.v1.91.timestamp1", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.timestamp_2 = ProtoField.new("Timestamp 2", "siac.cts.output.cta.v1.91.timestamp2", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.total_trades = ProtoField.new("Total Trades", "siac.cts.output.cta.v1.91.totaltrades", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.total_volume = ProtoField.new("Total Volume", "siac.cts.output.cta.v1.91.totalvolume", ftypes.UINT64)
siac_cts_output_cta_v1_91.fields.trade = ProtoField.new("Trade", "siac.cts.output.cta.v1.91.trade", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "siac.cts.output.cta.v1.91.tradecancelerrormessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "siac.cts.output.cta.v1.91.tradecorrectionmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.trade_message_type = ProtoField.new("Trade Message Type", "siac.cts.output.cta.v1.91.trademessagetype", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.trade_payload = ProtoField.new("Trade Payload", "siac.cts.output.cta.v1.91.tradepayload", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.trade_price = ProtoField.new("Trade Price", "siac.cts.output.cta.v1.91.tradeprice", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.trade_price_short = ProtoField.new("Trade Price Short", "siac.cts.output.cta.v1.91.tradepriceshort", ftypes.DOUBLE)
siac_cts_output_cta_v1_91.fields.trade_reporting_facility_id = ProtoField.new("Trade Reporting Facility Id", "siac.cts.output.cta.v1.91.tradereportingfacilityid", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.trade_through_exempt_indicator = ProtoField.new("Trade Through Exempt Indicator", "siac.cts.output.cta.v1.91.tradethroughexemptindicator", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.trade_total_volume = ProtoField.new("Trade Total Volume", "siac.cts.output.cta.v1.91.tradetotalvolume", ftypes.UINT64)
siac_cts_output_cta_v1_91.fields.trade_volume = ProtoField.new("Trade Volume", "siac.cts.output.cta.v1.91.tradevolume", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.trade_volume_short = ProtoField.new("Trade Volume Short", "siac.cts.output.cta.v1.91.tradevolumeshort", ftypes.UINT16)
siac_cts_output_cta_v1_91.fields.trading_status_message = ProtoField.new("Trading Status Message", "siac.cts.output.cta.v1.91.tradingstatusmessage", ftypes.STRING)
siac_cts_output_cta_v1_91.fields.transaction_id = ProtoField.new("Transaction Id", "siac.cts.output.cta.v1.91.transactionid", ftypes.UINT32)
siac_cts_output_cta_v1_91.fields.version = ProtoField.new("Version", "siac.cts.output.cta.v1.91.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Siac Cts Output Cta 1.91 Element Dissection Options
show.administrative = true
show.administrative_unformatted_message = true
show.approximate_adjusted_volume_market_center_message = true
show.approximate_trades_and_total_dollar_value_message = true
show.auction_status_message = true
show.bid_and_offer_index_message = true
show.block_header = true
show.consolidated_data = true
show.consolidated_end_of_day_summary_message = true
show.consolidated_start_of_day_summary_message = true
show.control = true
show.corrected_trade = true
show.crossing_session_summary_message = true
show.disaster_recovery_data_center_activation_message = true
show.end_of_day_message = true
show.end_of_end_of_day_message = true
show.end_of_start_of_day_message = true
show.end_of_test_cycle_message = true
show.index = true
show.index_message = true
show.line_integrity_message = true
show.long_trade_message = true
show.market_status = true
show.market_wide_circuit_breaker_decline_level_status_message = true
show.market_wide_circuit_breaker_status_message = true
show.message = true
show.message_header = true
show.original_trade = true
show.packet = true
show.participant_data = true
show.participant_end_of_day_summary_message = true
show.participant_start_of_day_summary_message = true
show.participants = true
show.prior_day = true
show.prior_day_trade_correction_message = true
show.prior_day_trade_date_and_time = true
show.prior_day_trade_message = true
show.reset_block_sequence_number_message = true
show.sale_conditions = true
show.short_trade_message = true
show.sip_block_timestamp = true
show.start_of_day_message = true
show.start_of_end_of_day_message = true
show.start_of_start_of_day_message = true
show.start_of_test_cycle_message = true
show.summary = true
show.timestamp_1 = true
show.timestamp_2 = true
show.trade = true
show.trade_cancel_error_message = true
show.trade_correction_message = true
show.trading_status_message = true
show.administrative_payload = false
show.control_payload = false
show.index_payload = false
show.market_status_payload = false
show.payload = false
show.prior_day_payload = false
show.summary_payload = false
show.trade_payload = false

-- Register Siac Cts Output Cta 1.91 Show Options
siac_cts_output_cta_v1_91.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_administrative_unformatted_message = Pref.bool("Show Administrative Unformatted Message", show.administrative_unformatted_message, "Parse and add Administrative Unformatted Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_approximate_adjusted_volume_market_center_message = Pref.bool("Show Approximate Adjusted Volume Market Center Message", show.approximate_adjusted_volume_market_center_message, "Parse and add Approximate Adjusted Volume Market Center Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_approximate_trades_and_total_dollar_value_message = Pref.bool("Show Approximate Trades And Total Dollar Value Message", show.approximate_trades_and_total_dollar_value_message, "Parse and add Approximate Trades And Total Dollar Value Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_auction_status_message = Pref.bool("Show Auction Status Message", show.auction_status_message, "Parse and add Auction Status Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_bid_and_offer_index_message = Pref.bool("Show Bid And Offer Index Message", show.bid_and_offer_index_message, "Parse and add Bid And Offer Index Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_consolidated_data = Pref.bool("Show Consolidated Data", show.consolidated_data, "Parse and add Consolidated Data to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_consolidated_end_of_day_summary_message = Pref.bool("Show Consolidated End Of Day Summary Message", show.consolidated_end_of_day_summary_message, "Parse and add Consolidated End Of Day Summary Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_consolidated_start_of_day_summary_message = Pref.bool("Show Consolidated Start Of Day Summary Message", show.consolidated_start_of_day_summary_message, "Parse and add Consolidated Start Of Day Summary Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_corrected_trade = Pref.bool("Show Corrected Trade", show.corrected_trade, "Parse and add Corrected Trade to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_crossing_session_summary_message = Pref.bool("Show Crossing Session Summary Message", show.crossing_session_summary_message, "Parse and add Crossing Session Summary Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_disaster_recovery_data_center_activation_message = Pref.bool("Show Disaster Recovery Data Center Activation Message", show.disaster_recovery_data_center_activation_message, "Parse and add Disaster Recovery Data Center Activation Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_end_of_end_of_day_message = Pref.bool("Show End Of End Of Day Message", show.end_of_end_of_day_message, "Parse and add End Of End Of Day Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_end_of_start_of_day_message = Pref.bool("Show End Of Start Of Day Message", show.end_of_start_of_day_message, "Parse and add End Of Start Of Day Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_end_of_test_cycle_message = Pref.bool("Show End Of Test Cycle Message", show.end_of_test_cycle_message, "Parse and add End Of Test Cycle Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_index = Pref.bool("Show Index", show.index, "Parse and add Index to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_index_message = Pref.bool("Show Index Message", show.index_message, "Parse and add Index Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_long_trade_message = Pref.bool("Show Long Trade Message", show.long_trade_message, "Parse and add Long Trade Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_market_status = Pref.bool("Show Market Status", show.market_status, "Parse and add Market Status to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_decline_level_status_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Status Message", show.market_wide_circuit_breaker_decline_level_status_message, "Parse and add Market Wide Circuit Breaker Decline Level Status Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_status_message = Pref.bool("Show Market Wide Circuit Breaker Status Message", show.market_wide_circuit_breaker_status_message, "Parse and add Market Wide Circuit Breaker Status Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_original_trade = Pref.bool("Show Original Trade", show.original_trade, "Parse and add Original Trade to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_participant_data = Pref.bool("Show Participant Data", show.participant_data, "Parse and add Participant Data to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_participant_end_of_day_summary_message = Pref.bool("Show Participant End Of Day Summary Message", show.participant_end_of_day_summary_message, "Parse and add Participant End Of Day Summary Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_participant_start_of_day_summary_message = Pref.bool("Show Participant Start Of Day Summary Message", show.participant_start_of_day_summary_message, "Parse and add Participant Start Of Day Summary Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_participants = Pref.bool("Show Participants", show.participants, "Parse and add Participants to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_prior_day = Pref.bool("Show Prior Day", show.prior_day, "Parse and add Prior Day to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_correction_message = Pref.bool("Show Prior Day Trade Correction Message", show.prior_day_trade_correction_message, "Parse and add Prior Day Trade Correction Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_date_and_time = Pref.bool("Show Prior Day Trade Date And Time", show.prior_day_trade_date_and_time, "Parse and add Prior Day Trade Date And Time to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_message = Pref.bool("Show Prior Day Trade Message", show.prior_day_trade_message, "Parse and add Prior Day Trade Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_reset_block_sequence_number_message = Pref.bool("Show Reset Block Sequence Number Message", show.reset_block_sequence_number_message, "Parse and add Reset Block Sequence Number Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_sale_conditions = Pref.bool("Show Sale Conditions", show.sale_conditions, "Parse and add Sale Conditions to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_short_trade_message = Pref.bool("Show Short Trade Message", show.short_trade_message, "Parse and add Short Trade Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_sip_block_timestamp = Pref.bool("Show Sip Block Timestamp", show.sip_block_timestamp, "Parse and add Sip Block Timestamp to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_start_of_end_of_day_message = Pref.bool("Show Start Of End Of Day Message", show.start_of_end_of_day_message, "Parse and add Start Of End Of Day Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_start_of_start_of_day_message = Pref.bool("Show Start Of Start Of Day Message", show.start_of_start_of_day_message, "Parse and add Start Of Start Of Day Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_start_of_test_cycle_message = Pref.bool("Show Start Of Test Cycle Message", show.start_of_test_cycle_message, "Parse and add Start Of Test Cycle Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_summary = Pref.bool("Show Summary", show.summary, "Parse and add Summary to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_timestamp_1 = Pref.bool("Show Timestamp 1", show.timestamp_1, "Parse and add Timestamp 1 to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_timestamp_2 = Pref.bool("Show Timestamp 2", show.timestamp_2, "Parse and add Timestamp 2 to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_trade_cancel_error_message = Pref.bool("Show Trade Cancel Error Message", show.trade_cancel_error_message, "Parse and add Trade Cancel Error Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_index_payload = Pref.bool("Show Index Payload", show.index_payload, "Parse and add Index Payload to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_market_status_payload = Pref.bool("Show Market Status Payload", show.market_status_payload, "Parse and add Market Status Payload to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_prior_day_payload = Pref.bool("Show Prior Day Payload", show.prior_day_payload, "Parse and add Prior Day Payload to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_summary_payload = Pref.bool("Show Summary Payload", show.summary_payload, "Parse and add Summary Payload to protocol tree")
siac_cts_output_cta_v1_91.prefs.show_trade_payload = Pref.bool("Show Trade Payload", show.trade_payload, "Parse and add Trade Payload to protocol tree")

-- Handle changed preferences
function siac_cts_output_cta_v1_91.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.administrative ~= siac_cts_output_cta_v1_91.prefs.show_administrative then
    show.administrative = siac_cts_output_cta_v1_91.prefs.show_administrative
    changed = true
  end
  if show.administrative_unformatted_message ~= siac_cts_output_cta_v1_91.prefs.show_administrative_unformatted_message then
    show.administrative_unformatted_message = siac_cts_output_cta_v1_91.prefs.show_administrative_unformatted_message
    changed = true
  end
  if show.approximate_adjusted_volume_market_center_message ~= siac_cts_output_cta_v1_91.prefs.show_approximate_adjusted_volume_market_center_message then
    show.approximate_adjusted_volume_market_center_message = siac_cts_output_cta_v1_91.prefs.show_approximate_adjusted_volume_market_center_message
    changed = true
  end
  if show.approximate_trades_and_total_dollar_value_message ~= siac_cts_output_cta_v1_91.prefs.show_approximate_trades_and_total_dollar_value_message then
    show.approximate_trades_and_total_dollar_value_message = siac_cts_output_cta_v1_91.prefs.show_approximate_trades_and_total_dollar_value_message
    changed = true
  end
  if show.auction_status_message ~= siac_cts_output_cta_v1_91.prefs.show_auction_status_message then
    show.auction_status_message = siac_cts_output_cta_v1_91.prefs.show_auction_status_message
    changed = true
  end
  if show.bid_and_offer_index_message ~= siac_cts_output_cta_v1_91.prefs.show_bid_and_offer_index_message then
    show.bid_and_offer_index_message = siac_cts_output_cta_v1_91.prefs.show_bid_and_offer_index_message
    changed = true
  end
  if show.block_header ~= siac_cts_output_cta_v1_91.prefs.show_block_header then
    show.block_header = siac_cts_output_cta_v1_91.prefs.show_block_header
    changed = true
  end
  if show.consolidated_data ~= siac_cts_output_cta_v1_91.prefs.show_consolidated_data then
    show.consolidated_data = siac_cts_output_cta_v1_91.prefs.show_consolidated_data
    changed = true
  end
  if show.consolidated_end_of_day_summary_message ~= siac_cts_output_cta_v1_91.prefs.show_consolidated_end_of_day_summary_message then
    show.consolidated_end_of_day_summary_message = siac_cts_output_cta_v1_91.prefs.show_consolidated_end_of_day_summary_message
    changed = true
  end
  if show.consolidated_start_of_day_summary_message ~= siac_cts_output_cta_v1_91.prefs.show_consolidated_start_of_day_summary_message then
    show.consolidated_start_of_day_summary_message = siac_cts_output_cta_v1_91.prefs.show_consolidated_start_of_day_summary_message
    changed = true
  end
  if show.control ~= siac_cts_output_cta_v1_91.prefs.show_control then
    show.control = siac_cts_output_cta_v1_91.prefs.show_control
    changed = true
  end
  if show.corrected_trade ~= siac_cts_output_cta_v1_91.prefs.show_corrected_trade then
    show.corrected_trade = siac_cts_output_cta_v1_91.prefs.show_corrected_trade
    changed = true
  end
  if show.crossing_session_summary_message ~= siac_cts_output_cta_v1_91.prefs.show_crossing_session_summary_message then
    show.crossing_session_summary_message = siac_cts_output_cta_v1_91.prefs.show_crossing_session_summary_message
    changed = true
  end
  if show.disaster_recovery_data_center_activation_message ~= siac_cts_output_cta_v1_91.prefs.show_disaster_recovery_data_center_activation_message then
    show.disaster_recovery_data_center_activation_message = siac_cts_output_cta_v1_91.prefs.show_disaster_recovery_data_center_activation_message
    changed = true
  end
  if show.end_of_day_message ~= siac_cts_output_cta_v1_91.prefs.show_end_of_day_message then
    show.end_of_day_message = siac_cts_output_cta_v1_91.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_end_of_day_message ~= siac_cts_output_cta_v1_91.prefs.show_end_of_end_of_day_message then
    show.end_of_end_of_day_message = siac_cts_output_cta_v1_91.prefs.show_end_of_end_of_day_message
    changed = true
  end
  if show.end_of_start_of_day_message ~= siac_cts_output_cta_v1_91.prefs.show_end_of_start_of_day_message then
    show.end_of_start_of_day_message = siac_cts_output_cta_v1_91.prefs.show_end_of_start_of_day_message
    changed = true
  end
  if show.end_of_test_cycle_message ~= siac_cts_output_cta_v1_91.prefs.show_end_of_test_cycle_message then
    show.end_of_test_cycle_message = siac_cts_output_cta_v1_91.prefs.show_end_of_test_cycle_message
    changed = true
  end
  if show.index ~= siac_cts_output_cta_v1_91.prefs.show_index then
    show.index = siac_cts_output_cta_v1_91.prefs.show_index
    changed = true
  end
  if show.index_message ~= siac_cts_output_cta_v1_91.prefs.show_index_message then
    show.index_message = siac_cts_output_cta_v1_91.prefs.show_index_message
    changed = true
  end
  if show.line_integrity_message ~= siac_cts_output_cta_v1_91.prefs.show_line_integrity_message then
    show.line_integrity_message = siac_cts_output_cta_v1_91.prefs.show_line_integrity_message
    changed = true
  end
  if show.long_trade_message ~= siac_cts_output_cta_v1_91.prefs.show_long_trade_message then
    show.long_trade_message = siac_cts_output_cta_v1_91.prefs.show_long_trade_message
    changed = true
  end
  if show.market_status ~= siac_cts_output_cta_v1_91.prefs.show_market_status then
    show.market_status = siac_cts_output_cta_v1_91.prefs.show_market_status
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_status_message ~= siac_cts_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_decline_level_status_message then
    show.market_wide_circuit_breaker_decline_level_status_message = siac_cts_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_decline_level_status_message
    changed = true
  end
  if show.market_wide_circuit_breaker_status_message ~= siac_cts_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_status_message then
    show.market_wide_circuit_breaker_status_message = siac_cts_output_cta_v1_91.prefs.show_market_wide_circuit_breaker_status_message
    changed = true
  end
  if show.message ~= siac_cts_output_cta_v1_91.prefs.show_message then
    show.message = siac_cts_output_cta_v1_91.prefs.show_message
    changed = true
  end
  if show.message_header ~= siac_cts_output_cta_v1_91.prefs.show_message_header then
    show.message_header = siac_cts_output_cta_v1_91.prefs.show_message_header
    changed = true
  end
  if show.original_trade ~= siac_cts_output_cta_v1_91.prefs.show_original_trade then
    show.original_trade = siac_cts_output_cta_v1_91.prefs.show_original_trade
    changed = true
  end
  if show.packet ~= siac_cts_output_cta_v1_91.prefs.show_packet then
    show.packet = siac_cts_output_cta_v1_91.prefs.show_packet
    changed = true
  end
  if show.participant_data ~= siac_cts_output_cta_v1_91.prefs.show_participant_data then
    show.participant_data = siac_cts_output_cta_v1_91.prefs.show_participant_data
    changed = true
  end
  if show.participant_end_of_day_summary_message ~= siac_cts_output_cta_v1_91.prefs.show_participant_end_of_day_summary_message then
    show.participant_end_of_day_summary_message = siac_cts_output_cta_v1_91.prefs.show_participant_end_of_day_summary_message
    changed = true
  end
  if show.participant_start_of_day_summary_message ~= siac_cts_output_cta_v1_91.prefs.show_participant_start_of_day_summary_message then
    show.participant_start_of_day_summary_message = siac_cts_output_cta_v1_91.prefs.show_participant_start_of_day_summary_message
    changed = true
  end
  if show.participants ~= siac_cts_output_cta_v1_91.prefs.show_participants then
    show.participants = siac_cts_output_cta_v1_91.prefs.show_participants
    changed = true
  end
  if show.prior_day ~= siac_cts_output_cta_v1_91.prefs.show_prior_day then
    show.prior_day = siac_cts_output_cta_v1_91.prefs.show_prior_day
    changed = true
  end
  if show.prior_day_trade_correction_message ~= siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_correction_message then
    show.prior_day_trade_correction_message = siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_correction_message
    changed = true
  end
  if show.prior_day_trade_date_and_time ~= siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_date_and_time then
    show.prior_day_trade_date_and_time = siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_date_and_time
    changed = true
  end
  if show.prior_day_trade_message ~= siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_message then
    show.prior_day_trade_message = siac_cts_output_cta_v1_91.prefs.show_prior_day_trade_message
    changed = true
  end
  if show.reset_block_sequence_number_message ~= siac_cts_output_cta_v1_91.prefs.show_reset_block_sequence_number_message then
    show.reset_block_sequence_number_message = siac_cts_output_cta_v1_91.prefs.show_reset_block_sequence_number_message
    changed = true
  end
  if show.sale_conditions ~= siac_cts_output_cta_v1_91.prefs.show_sale_conditions then
    show.sale_conditions = siac_cts_output_cta_v1_91.prefs.show_sale_conditions
    changed = true
  end
  if show.short_trade_message ~= siac_cts_output_cta_v1_91.prefs.show_short_trade_message then
    show.short_trade_message = siac_cts_output_cta_v1_91.prefs.show_short_trade_message
    changed = true
  end
  if show.sip_block_timestamp ~= siac_cts_output_cta_v1_91.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = siac_cts_output_cta_v1_91.prefs.show_sip_block_timestamp
    changed = true
  end
  if show.start_of_day_message ~= siac_cts_output_cta_v1_91.prefs.show_start_of_day_message then
    show.start_of_day_message = siac_cts_output_cta_v1_91.prefs.show_start_of_day_message
    changed = true
  end
  if show.start_of_end_of_day_message ~= siac_cts_output_cta_v1_91.prefs.show_start_of_end_of_day_message then
    show.start_of_end_of_day_message = siac_cts_output_cta_v1_91.prefs.show_start_of_end_of_day_message
    changed = true
  end
  if show.start_of_start_of_day_message ~= siac_cts_output_cta_v1_91.prefs.show_start_of_start_of_day_message then
    show.start_of_start_of_day_message = siac_cts_output_cta_v1_91.prefs.show_start_of_start_of_day_message
    changed = true
  end
  if show.start_of_test_cycle_message ~= siac_cts_output_cta_v1_91.prefs.show_start_of_test_cycle_message then
    show.start_of_test_cycle_message = siac_cts_output_cta_v1_91.prefs.show_start_of_test_cycle_message
    changed = true
  end
  if show.summary ~= siac_cts_output_cta_v1_91.prefs.show_summary then
    show.summary = siac_cts_output_cta_v1_91.prefs.show_summary
    changed = true
  end
  if show.timestamp_1 ~= siac_cts_output_cta_v1_91.prefs.show_timestamp_1 then
    show.timestamp_1 = siac_cts_output_cta_v1_91.prefs.show_timestamp_1
    changed = true
  end
  if show.timestamp_2 ~= siac_cts_output_cta_v1_91.prefs.show_timestamp_2 then
    show.timestamp_2 = siac_cts_output_cta_v1_91.prefs.show_timestamp_2
    changed = true
  end
  if show.trade ~= siac_cts_output_cta_v1_91.prefs.show_trade then
    show.trade = siac_cts_output_cta_v1_91.prefs.show_trade
    changed = true
  end
  if show.trade_cancel_error_message ~= siac_cts_output_cta_v1_91.prefs.show_trade_cancel_error_message then
    show.trade_cancel_error_message = siac_cts_output_cta_v1_91.prefs.show_trade_cancel_error_message
    changed = true
  end
  if show.trade_correction_message ~= siac_cts_output_cta_v1_91.prefs.show_trade_correction_message then
    show.trade_correction_message = siac_cts_output_cta_v1_91.prefs.show_trade_correction_message
    changed = true
  end
  if show.trading_status_message ~= siac_cts_output_cta_v1_91.prefs.show_trading_status_message then
    show.trading_status_message = siac_cts_output_cta_v1_91.prefs.show_trading_status_message
    changed = true
  end
  if show.administrative_payload ~= siac_cts_output_cta_v1_91.prefs.show_administrative_payload then
    show.administrative_payload = siac_cts_output_cta_v1_91.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= siac_cts_output_cta_v1_91.prefs.show_control_payload then
    show.control_payload = siac_cts_output_cta_v1_91.prefs.show_control_payload
    changed = true
  end
  if show.index_payload ~= siac_cts_output_cta_v1_91.prefs.show_index_payload then
    show.index_payload = siac_cts_output_cta_v1_91.prefs.show_index_payload
    changed = true
  end
  if show.market_status_payload ~= siac_cts_output_cta_v1_91.prefs.show_market_status_payload then
    show.market_status_payload = siac_cts_output_cta_v1_91.prefs.show_market_status_payload
    changed = true
  end
  if show.payload ~= siac_cts_output_cta_v1_91.prefs.show_payload then
    show.payload = siac_cts_output_cta_v1_91.prefs.show_payload
    changed = true
  end
  if show.prior_day_payload ~= siac_cts_output_cta_v1_91.prefs.show_prior_day_payload then
    show.prior_day_payload = siac_cts_output_cta_v1_91.prefs.show_prior_day_payload
    changed = true
  end
  if show.summary_payload ~= siac_cts_output_cta_v1_91.prefs.show_summary_payload then
    show.summary_payload = siac_cts_output_cta_v1_91.prefs.show_summary_payload
    changed = true
  end
  if show.trade_payload ~= siac_cts_output_cta_v1_91.prefs.show_trade_payload then
    show.trade_payload = siac_cts_output_cta_v1_91.prefs.show_trade_payload
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

-- Is value not even?
uneven = function(value)
  return (value % 2 == 1)
end


-----------------------------------------------------------------------
-- Dissect Siac Cts Output Cta 1.91
-----------------------------------------------------------------------

-- Size: Block Pad Byte
size_of.block_pad_byte = 1

-- Display: Block Pad Byte
display.block_pad_byte = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
dissect.block_pad_byte = function(buffer, offset, packet, parent)
  local length = size_of.block_pad_byte
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_pad_byte(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Size: Tick
size_of.tick = 1

-- Display: Tick
display.tick = function(value)
  if value == " " then
    return "Tick: Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Tick: Upward (1)"
  end
  if value == "2" then
    return "Tick: Downward (2)"
  end
  if value == "3" then
    return "Tick: Unchanged Upward (3)"
  end
  if value == "4" then
    return "Tick: Unchanged Downward (4)"
  end

  return "Tick: Unknown("..value..")"
end

-- Dissect: Tick
dissect.tick = function(buffer, offset, packet, parent)
  local length = size_of.tick
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.tick(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.tick, range, value, display)

  return offset + length, value
end

-- Size: Total Volume
size_of.total_volume = 8

-- Display: Total Volume
display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
dissect.total_volume = function(buffer, offset, packet, parent)
  local length = size_of.total_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.total_volume(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Low Price
size_of.low_price = 8

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
translate.low_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local length = size_of.low_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.low_price(raw)
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
size_of.high_price = 8

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Translate: High Price
translate.high_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local length = size_of.high_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.high_price(raw)
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Last Price
size_of.last_price = 8

-- Display: Last Price
display.last_price = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
translate.last_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
dissect.last_price = function(buffer, offset, packet, parent)
  local length = size_of.last_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.last_price(raw)
  local display = display.last_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Last Participant Id
size_of.last_participant_id = 1

-- Display: Last Participant Id
display.last_participant_id = function(value)
  if value == "A" then
    return "Last Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Last Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Last Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Last Participant Id: Finra Adf (D)"
  end
  if value == "I" then
    return "Last Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Last Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Last Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Last Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Last Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Last Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Last Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "Last Participant Id: Cts (S)"
  end
  if value == "T" then
    return "Last Participant Id: Nasdaq (T)"
  end
  if value == "V" then
    return "Last Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Last Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Last Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Last Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Last Participant Id: Cboe Bzx (Z)"
  end

  return "Last Participant Id: Unknown("..value..")"
end

-- Dissect: Last Participant Id
dissect.last_participant_id = function(buffer, offset, packet, parent)
  local length = size_of.last_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.last_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.last_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Previous Close Price Date
size_of.previous_close_price_date = 4

-- Display: Previous Close Price Date
display.previous_close_price_date = function(value)
  return "Previous Close Price Date: "..value
end

-- Dissect: Previous Close Price Date
dissect.previous_close_price_date = function(buffer, offset, packet, parent)
  local length = size_of.previous_close_price_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.previous_close_price_date(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.previous_close_price_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Participant Data
size_of.participant_data = function(buffer, offset)
  local index = 0

  index = index + size_of.previous_close_price_date

  index = index + size_of.last_participant_id

  index = index + size_of.last_price

  index = index + size_of.high_price

  index = index + size_of.low_price

  index = index + size_of.total_volume

  index = index + size_of.tick

  return index
end

-- Display: Participant Data
display.participant_data = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Participant Data
dissect.participant_data_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Participant Id: 1 Byte Ascii String Enum with 18 values
  index, last_participant_id = dissect.last_participant_id(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_volume = dissect.total_volume(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 5 values
  index, tick = dissect.tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Data
dissect.participant_data = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.participant_data then
    local length = size_of.participant_data(buffer, offset)
    local range = buffer(offset, length)
    local display = display.participant_data(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.participant_data, range, display)
  end

  return dissect.participant_data_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Consolidated Data
size_of.consolidated_data = function(buffer, offset)
  local index = 0

  index = index + size_of.previous_close_price_date

  index = index + size_of.last_participant_id

  index = index + size_of.last_price

  index = index + size_of.high_price

  index = index + size_of.low_price

  index = index + size_of.total_volume

  index = index + size_of.tick

  return index
end

-- Display: Consolidated Data
display.consolidated_data = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Data
dissect.consolidated_data_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Participant Id: 1 Byte Ascii String Enum with 18 values
  index, last_participant_id = dissect.last_participant_id(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_volume = dissect.total_volume(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 5 values
  index, tick = dissect.tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Data
dissect.consolidated_data = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.consolidated_data then
    local length = size_of.consolidated_data(buffer, offset)
    local range = buffer(offset, length)
    local display = display.consolidated_data(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.consolidated_data, range, display)
  end

  return dissect.consolidated_data_fields(buffer, offset, packet, parent)
end

-- Size: Financial Status Indicator
size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
display.financial_status_indicator = function(value)
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
    return "Financial Status Indicator: Bankrupt And Below Continuing Listing Standards (3)"
  end
  if value == "4" then
    return "Financial Status Indicator: Late Filing (4)"
  end
  if value == "5" then
    return "Financial Status Indicator: Bankrupt And Late Filing (5)"
  end
  if value == "6" then
    return "Financial Status Indicator: Below Continuing Listing Standards And Late Filing (6)"
  end
  if value == "7" then
    return "Financial Status Indicator: Bankrupt Below Continuing Listing Standards And Late Filing (7)"
  end
  if value == "8" then
    return "Financial Status Indicator: Creations Suspended (8)"
  end
  if value == "9" then
    return "Financial Status Indicator: Redemptions Suspended (9)"
  end
  if value == "A" then
    return "Financial Status Indicator: Liquidation (A)"
  end

  return "Financial Status Indicator: Unknown("..value..")"
end

-- Dissect: Financial Status Indicator
dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Primary Listing Market Participant Id
size_of.primary_listing_market_participant_id = 1

-- Display: Primary Listing Market Participant Id
display.primary_listing_market_participant_id = function(value)
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
  if value == "I" then
    return "Primary Listing Market Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Primary Listing Market Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Primary Listing Market Participant Id: Cboe Edgx (K)"
  end
  if value == "M" then
    return "Primary Listing Market Participant Id: Nyse Chicago (M)"
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
  if value == "V" then
    return "Primary Listing Market Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Primary Listing Market Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Primary Listing Market Participant Id: Nasdaq Psx (X)"
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
dissect.primary_listing_market_participant_id = function(buffer, offset, packet, parent)
  local length = size_of.primary_listing_market_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.primary_listing_market_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Restriction Indicator
size_of.short_sale_restriction_indicator = 1

-- Display: Short Sale Restriction Indicator
display.short_sale_restriction_indicator = function(value)
  if value == " " then
    return "Short Sale Restriction Indicator: Not In Effect (<whitespace>)"
  end
  if value == "A" then
    return "Short Sale Restriction Indicator: Activated (A)"
  end
  if value == "C" then
    return "Short Sale Restriction Indicator: Continued (C)"
  end
  if value == "D" then
    return "Short Sale Restriction Indicator: Deactivated (D)"
  end
  if value == "E" then
    return "Short Sale Restriction Indicator: Restriction In Effect (E)"
  end

  return "Short Sale Restriction Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction Indicator
dissect.short_sale_restriction_indicator = function(buffer, offset, packet, parent)
  local length = size_of.short_sale_restriction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.short_sale_restriction_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Cancel Error Action
size_of.cancel_error_action = 1

-- Display: Cancel Error Action
display.cancel_error_action = function(value)
  if value == "1" then
    return "Cancel Error Action: Cancel (1)"
  end
  if value == "2" then
    return "Cancel Error Action: Error (2)"
  end

  return "Cancel Error Action: Unknown("..value..")"
end

-- Dissect: Cancel Error Action
dissect.cancel_error_action = function(buffer, offset, packet, parent)
  local length = size_of.cancel_error_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.cancel_error_action(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.cancel_error_action, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
size_of.nanoseconds = 4

-- Display: Nanoseconds
display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Seconds
size_of.seconds = 4

-- Display: Seconds
display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
dissect.seconds = function(buffer, offset, packet, parent)
  local length = size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.seconds(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp 2
size_of.timestamp_2 = function(buffer, offset)
  local index = 0

  index = index + size_of.seconds

  index = index + size_of.nanoseconds

  return index
end

-- Display: Timestamp 2
display.timestamp_2 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timestamp 2
dissect.timestamp_2_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 2
dissect.timestamp_2 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.timestamp_2 then
    local length = size_of.timestamp_2(buffer, offset)
    local range = buffer(offset, length)
    local display = display.timestamp_2(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.timestamp_2, range, display)
  end

  return dissect.timestamp_2_fields(buffer, offset, packet, parent)
end

-- Size: Trade Reporting Facility Id
size_of.trade_reporting_facility_id = 1

-- Display: Trade Reporting Facility Id
display.trade_reporting_facility_id = function(value)
  if value == " " then
    return "Trade Reporting Facility Id: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Trade Reporting Facility Id: Inactive Value A (A)"
  end
  if value == "B" then
    return "Trade Reporting Facility Id: Finra Nasdaq Chicago (B)"
  end
  if value == "C" then
    return "Trade Reporting Facility Id: Inactive Value C (C)"
  end
  if value == "D" then
    return "Trade Reporting Facility Id: Inactive Value D (D)"
  end
  if value == "I" then
    return "Trade Reporting Facility Id: Inactive Value I (I)"
  end
  if value == "J" then
    return "Trade Reporting Facility Id: Inactive Value J (J)"
  end
  if value == "K" then
    return "Trade Reporting Facility Id: Inactive Value K (K)"
  end
  if value == "M" then
    return "Trade Reporting Facility Id: Inactive Value M (M)"
  end
  if value == "N" then
    return "Trade Reporting Facility Id: Finra Nyse (N)"
  end
  if value == "P" then
    return "Trade Reporting Facility Id: Inactive Value P (P)"
  end
  if value == "B" then
    return "Trade Reporting Facility Id: Finra Nasdaq Carteret (B)"
  end
  if value == "V" then
    return "Trade Reporting Facility Id: Inactive Value V (V)"
  end
  if value == "W" then
    return "Trade Reporting Facility Id: Inactive Value W (W)"
  end
  if value == "X" then
    return "Trade Reporting Facility Id: Inactive Value X (X)"
  end
  if value == "Y" then
    return "Trade Reporting Facility Id: Inactive Value Y (Y)"
  end
  if value == "Z" then
    return "Trade Reporting Facility Id: Inactive Value Z (Z)"
  end

  return "Trade Reporting Facility Id: Unknown("..value..")"
end

-- Dissect: Trade Reporting Facility Id
dissect.trade_reporting_facility_id = function(buffer, offset, packet, parent)
  local length = size_of.trade_reporting_facility_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_reporting_facility_id(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_reporting_facility_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Through Exempt Indicator
size_of.trade_through_exempt_indicator = 1

-- Display: Trade Through Exempt Indicator
display.trade_through_exempt_indicator = function(value)
  if value == "0" then
    return "Trade Through Exempt Indicator: Not A Trade Through Exemption (0)"
  end
  if value == "1" then
    return "Trade Through Exempt Indicator: Trade Through Exemption (1)"
  end

  return "Trade Through Exempt Indicator: Unknown("..value..")"
end

-- Dissect: Trade Through Exempt Indicator
dissect.trade_through_exempt_indicator = function(buffer, offset, packet, parent)
  local length = size_of.trade_through_exempt_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_through_exempt_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Size: Stop Stock Indicator
size_of.stop_stock_indicator = 1

-- Display: Stop Stock Indicator
display.stop_stock_indicator = function(value)
  if value == "0" then
    return "Stop Stock Indicator: Not Applicable (0)"
  end
  if value == "1" then
    return "Stop Stock Indicator: Stop Stock (1)"
  end

  return "Stop Stock Indicator: Unknown("..value..")"
end

-- Dissect: Stop Stock Indicator
dissect.stop_stock_indicator = function(buffer, offset, packet, parent)
  local length = size_of.stop_stock_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.stop_stock_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Size: Sellers Sale Days
size_of.sellers_sale_days = 1

-- Display: Sellers Sale Days
display.sellers_sale_days = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
dissect.sellers_sale_days = function(buffer, offset, packet, parent)
  local length = size_of.sellers_sale_days
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.sellers_sale_days(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
size_of.trade_volume = 4

-- Display: Trade Volume
display.trade_volume = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = size_of.trade_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
size_of.trade_price = 8

-- Display: Trade Price
display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
translate.trade_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
dissect.trade_price = function(buffer, offset, packet, parent)
  local length = size_of.trade_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.trade_price(raw)
  local display = display.trade_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Category 4
size_of.category_4 = 1

-- Display: Category 4
display.category_4 = function(value)
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
    return "Category 4: Rule 127 Or 155 (K)"
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
    return "Category 4: Cross Trade (X)"
  end

  return "Category 4: Unknown("..value..")"
end

-- Dissect: Category 4
dissect.category_4 = function(buffer, offset, packet, parent)
  local length = size_of.category_4
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.category_4(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.category_4, range, value, display)

  return offset + length, value
end

-- Size: Category 3
size_of.category_3 = 1

-- Display: Category 3
display.category_3 = function(value)
  if value == " " then
    return "Category 3: Not Extended Hours Or Sold Out Of Sequence (<whitespace>)"
  end
  if value == "L" then
    return "Category 3: Sold Last (L)"
  end
  if value == "T" then
    return "Category 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Category 3: Extended Hours Sold (U)"
  end
  if value == "Z" then
    return "Category 3: Sold Out Of Sequence (Z)"
  end

  return "Category 3: Unknown("..value..")"
end

-- Dissect: Category 3
dissect.category_3 = function(buffer, offset, packet, parent)
  local length = size_of.category_3
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.category_3(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.category_3, range, value, display)

  return offset + length, value
end

-- Size: Category 2
size_of.category_2 = 1

-- Display: Category 2
display.category_2 = function(value)
  if value == " " then
    return "Category 2: No Reason (<whitespace>)"
  end
  if value == "F" then
    return "Category 2: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Category 2: Market Center Opening Trade (O)"
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
dissect.category_2 = function(buffer, offset, packet, parent)
  local length = size_of.category_2
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.category_2(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.category_2, range, value, display)

  return offset + length, value
end

-- Size: Category 1
size_of.category_1 = 1

-- Display: Category 1
display.category_1 = function(value)
  return "Category 1: "..value
end

-- Dissect: Category 1
dissect.category_1 = function(buffer, offset, packet, parent)
  local length = size_of.category_1
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.category_1(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.category_1, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sale Conditions
size_of.sale_conditions = function(buffer, offset)
  local index = 0

  index = index + size_of.category_1

  index = index + size_of.category_2

  index = index + size_of.category_3

  index = index + size_of.category_4

  return index
end

-- Display: Sale Conditions
display.sale_conditions = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sale Conditions
dissect.sale_conditions_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Category 1: 1 Byte Ascii String
  index, category_1 = dissect.category_1(buffer, index, packet, parent)

  -- Category 2: 1 Byte Ascii String Enum with 9 values
  index, category_2 = dissect.category_2(buffer, index, packet, parent)

  -- Category 3: 1 Byte Ascii String Enum with 5 values
  index, category_3 = dissect.category_3(buffer, index, packet, parent)

  -- Category 4: 1 Byte Ascii String Enum with 11 values
  index, category_4 = dissect.category_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Sale Conditions
dissect.sale_conditions = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sale_conditions then
    local length = size_of.sale_conditions(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sale_conditions(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.sale_conditions, range, display)
  end

  return dissect.sale_conditions_fields(buffer, offset, packet, parent)
end

-- Size: Instrument Type
size_of.instrument_type = 1

-- Display: Instrument Type
display.instrument_type = function(value)
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
dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = size_of.instrument_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
size_of.security_symbol = 11

-- Display: Security Symbol
display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Participant Reference Number
size_of.participant_reference_number = 8

-- Display: Participant Reference Number
display.participant_reference_number = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
dissect.participant_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.participant_reference_number
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.participant_reference_number(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Transaction Id
size_of.transaction_id = 4

-- Display: Transaction Id
display.transaction_id = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
dissect.transaction_id = function(buffer, offset, packet, parent)
  local length = size_of.transaction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.transaction_id(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Message Id
size_of.message_id = 1

-- Display: Message Id
display.message_id = function(value)
  return "Message Id: "..value
end

-- Dissect: Message Id
dissect.message_id = function(buffer, offset, packet, parent)
  local length = size_of.message_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_id(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.message_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp 1
size_of.timestamp_1 = function(buffer, offset)
  local index = 0

  index = index + size_of.seconds

  index = index + size_of.nanoseconds

  return index
end

-- Display: Timestamp 1
display.timestamp_1 = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Timestamp 1
dissect.timestamp_1_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 1
dissect.timestamp_1 = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.timestamp_1 then
    local length = size_of.timestamp_1(buffer, offset)
    local range = buffer(offset, length)
    local display = display.timestamp_1(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.timestamp_1, range, display)
  end

  return dissect.timestamp_1_fields(buffer, offset, packet, parent)
end

-- Size: Participant Id
size_of.participant_id = 1

-- Display: Participant Id
display.participant_id = function(value)
  if value == "A" then
    return "Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Participant Id: Finra Adf (D)"
  end
  if value == "I" then
    return "Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "Participant Id: Cts (S)"
  end
  if value == "T" then
    return "Participant Id: Nasdaq (T)"
  end
  if value == "V" then
    return "Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Participant Id: Cboe Bzx (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local length = size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Display: Trade Cancel Error Message
display.trade_cancel_error_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
dissect.trade_cancel_error_message_fields = function(buffer, offset, packet, parent, size_of_trade_cancel_error_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 17 values
  index, trade_reporting_facility_id = dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Original Participant Reference Number Of Original Transaction Being Cancelled Or Errored
  index, original_participant_reference_number_of_original_transaction_being_cancelled_or_errored = dissect.original_participant_reference_number_of_original_transaction_being_cancelled_or_errored(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = dissect.timestamp_2(buffer, index, packet, parent)

  -- Cancel Error Action: 1 Byte Ascii String Enum with 2 values
  index, cancel_error_action = dissect.cancel_error_action(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Consolidated Data: Struct of 7 fields
  index, consolidated_data = dissect.consolidated_data(buffer, index, packet, parent)

  -- Participant Data: Struct of 7 fields
  index, participant_data = dissect.participant_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
dissect.trade_cancel_error_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_trade_cancel_error_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.trade_cancel_error_message then
    local range = buffer(offset, size_of_trade_cancel_error_message)
    local display = display.trade_cancel_error_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.trade_cancel_error_message, range, display)
  end

  dissect.trade_cancel_error_message_fields(buffer, offset, packet, parent, size_of_trade_cancel_error_message)

  return offset + size_of_trade_cancel_error_message
end

-- Size: Participant Open High Low Last Indicator
size_of.participant_open_high_low_last_indicator = 1

-- Display: Participant Open High Low Last Indicator
display.participant_open_high_low_last_indicator = function(value)
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
dissect.participant_open_high_low_last_indicator = function(buffer, offset, packet, parent)
  local length = size_of.participant_open_high_low_last_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_open_high_low_last_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.participant_open_high_low_last_indicator, range, value, display)

  return offset + length, value
end

-- Size: Consolidated High Low Last Indicator
size_of.consolidated_high_low_last_indicator = 1

-- Display: Consolidated High Low Last Indicator
display.consolidated_high_low_last_indicator = function(value)
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
dissect.consolidated_high_low_last_indicator = function(buffer, offset, packet, parent)
  local length = size_of.consolidated_high_low_last_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.consolidated_high_low_last_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.consolidated_high_low_last_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume Short
size_of.trade_volume_short = 2

-- Display: Trade Volume Short
display.trade_volume_short = function(value)
  return "Trade Volume Short: "..value
end

-- Dissect: Trade Volume Short
dissect.trade_volume_short = function(buffer, offset, packet, parent)
  local length = size_of.trade_volume_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.trade_volume_short(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_volume_short, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Short
size_of.trade_price_short = 2

-- Display: Trade Price Short
display.trade_price_short = function(value)
  return "Trade Price Short: "..value
end

-- Translate: Trade Price Short
translate.trade_price_short = function(raw)
  return raw/100
end

-- Dissect: Trade Price Short
dissect.trade_price_short = function(buffer, offset, packet, parent)
  local length = size_of.trade_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.trade_price_short(raw)
  local display = display.trade_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_price_short, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Category
size_of.sale_condition_category = 1

-- Display: Sale Condition Category
display.sale_condition_category = function(value)
  if value == " " then
    return "Sale Condition Category: Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Sale Condition Category: Category 1 (1)"
  end
  if value == "2" then
    return "Sale Condition Category: Category 2 (2)"
  end
  if value == "3" then
    return "Sale Condition Category: Category 3 (3)"
  end
  if value == "4" then
    return "Sale Condition Category: Category 4 (4)"
  end

  return "Sale Condition Category: Unknown("..value..")"
end

-- Dissect: Sale Condition Category
dissect.sale_condition_category = function(buffer, offset, packet, parent)
  local length = size_of.sale_condition_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.sale_condition_category(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.sale_condition_category, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition
size_of.sale_condition = 1

-- Display: Sale Condition
display.sale_condition = function(value)
  if value == " " then
    return "Sale Condition: Regular Sale (<whitespace>)"
  end
  if value == "B" then
    return "Sale Condition: Average Price Trade (B)"
  end
  if value == "C" then
    return "Sale Condition: Cash Trade (C)"
  end
  if value == "E" then
    return "Sale Condition: Automatic Execution (E)"
  end
  if value == "F" then
    return "Sale Condition: Intermarket Sweep Order (F)"
  end
  if value == "H" then
    return "Sale Condition: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Sale Condition: Odd Lot Trade (I)"
  end
  if value == "K" then
    return "Sale Condition: Rule 127 Or 155 (K)"
  end
  if value == "L" then
    return "Sale Condition: Sold Last (L)"
  end
  if value == "M" then
    return "Sale Condition: Market Center Official Close (M)"
  end
  if value == "N" then
    return "Sale Condition: Next Day Trade (N)"
  end
  if value == "O" then
    return "Sale Condition: Market Center Opening Trade (O)"
  end
  if value == "P" then
    return "Sale Condition: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Sale Condition: Market Center Official Open (Q)"
  end
  if value == "R" then
    return "Sale Condition: Seller (R)"
  end
  if value == "T" then
    return "Sale Condition: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Sale Condition: Extended Hours Sold (U)"
  end
  if value == "V" then
    return "Sale Condition: Contingent Trade (V)"
  end
  if value == "X" then
    return "Sale Condition: Cross Trade (X)"
  end
  if value == "Z" then
    return "Sale Condition: Sold (Z)"
  end
  if value == "4" then
    return "Sale Condition: Derivatively Priced (4)"
  end
  if value == "5" then
    return "Sale Condition: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Sale Condition: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Sale Condition: Qualified Contingent Trade (7)"
  end
  if value == "8" then
    return "Sale Condition: Reserved (8)"
  end
  if value == "9" then
    return "Sale Condition: Corrected Consolidated Close Price As Per Listing Market (9)"
  end

  return "Sale Condition: Unknown("..value..")"
end

-- Dissect: Sale Condition
dissect.sale_condition = function(buffer, offset, packet, parent)
  local length = size_of.sale_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.sale_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.sale_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol Short
size_of.security_symbol_short = 5

-- Display: Security Symbol Short
display.security_symbol_short = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
dissect.security_symbol_short = function(buffer, offset, packet, parent)
  local length = size_of.security_symbol_short
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_symbol_short(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Display: Short Trade Message
display.short_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Trade Message
dissect.short_trade_message_fields = function(buffer, offset, packet, parent, size_of_short_trade_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Short: 5 Byte Ascii String
  index, security_symbol_short = dissect.security_symbol_short(buffer, index, packet, parent)

  -- Sale Condition: 1 Byte Ascii String Enum with 26 values
  index, sale_condition = dissect.sale_condition(buffer, index, packet, parent)

  -- Sale Condition Category: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_category = dissect.sale_condition_category(buffer, index, packet, parent)

  -- Trade Price Short: 2 Byte Unsigned Fixed Width Integer
  index, trade_price_short = dissect.trade_price_short(buffer, index, packet, parent)

  -- Trade Volume Short: 2 Byte Unsigned Fixed Width Integer
  index, trade_volume_short = dissect.trade_volume_short(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_high_low_last_indicator = dissect.consolidated_high_low_last_indicator(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: 1 Byte Ascii String Enum with 17 values
  index, participant_open_high_low_last_indicator = dissect.participant_open_high_low_last_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
dissect.short_trade_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_short_trade_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.short_trade_message then
    local range = buffer(offset, size_of_short_trade_message)
    local display = display.short_trade_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.short_trade_message, range, display)
  end

  dissect.short_trade_message_fields(buffer, offset, packet, parent, size_of_short_trade_message)

  return offset + size_of_short_trade_message
end

-- Size: Limit Up Limit Down Indicator
size_of.limit_up_limit_down_indicator = 1

-- Display: Limit Up Limit Down Indicator
display.limit_up_limit_down_indicator = function(value)
  if value == " " then
    return "Limit Up Limit Down Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Limit Up Limit Down Indicator: Limit Up Limit Down Price Band (A)"
  end
  if value == "B" then
    return "Limit Up Limit Down Indicator: Republished Limit Up Limit Down Price Band (B)"
  end
  if value == "C" then
    return "Limit Up Limit Down Indicator: National Best Bid Limit State Entered (C)"
  end
  if value == "D" then
    return "Limit Up Limit Down Indicator: National Best Bid Limit State Exited (D)"
  end
  if value == "E" then
    return "Limit Up Limit Down Indicator: National Best Offer Limit State Entered (E)"
  end
  if value == "F" then
    return "Limit Up Limit Down Indicator: National Best Offer Limit State Exited (F)"
  end
  if value == "G" then
    return "Limit Up Limit Down Indicator: National Best Bid And National Best Offer Limit State Entered (G)"
  end
  if value == "H" then
    return "Limit Up Limit Down Indicator: National Best Bid And National Best Offer Limit State Exited (H)"
  end
  if value == "I" then
    return "Limit Up Limit Down Indicator: National Best Bid Limit State Entered And National Best Offer Limit State Exited (I)"
  end
  if value == "J" then
    return "Limit Up Limit Down Indicator: National Best Bid Limit State Exited And National Best Offer Limit State Entered (J)"
  end

  return "Limit Up Limit Down Indicator: Unknown("..value..")"
end

-- Dissect: Limit Up Limit Down Indicator
dissect.limit_up_limit_down_indicator = function(buffer, offset, packet, parent)
  local length = size_of.limit_up_limit_down_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.limit_up_limit_down_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.limit_up_limit_down_indicator, range, value, display)

  return offset + length, value
end

-- Size: Halt Reason
size_of.halt_reason = 1

-- Display: Halt Reason
display.halt_reason = function(value)
  if value == " " then
    return "Halt Reason: Not Applicable (<whitespace>)"
  end
  if value == "D" then
    return "Halt Reason: News Dissemination (D)"
  end
  if value == "I" then
    return "Halt Reason: Order Imbalance (I)"
  end
  if value == "M" then
    return "Halt Reason: Limit Up Limit Down Trading Pause (M)"
  end
  if value == "P" then
    return "Halt Reason: News Pending (P)"
  end
  if value == "X" then
    return "Halt Reason: Operational (X)"
  end
  if value == "Y" then
    return "Halt Reason: Subpenny Trading (Y)"
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
dissect.halt_reason = function(buffer, offset, packet, parent)
  local length = size_of.halt_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.halt_reason(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Size: Security Status
size_of.security_status = 1

-- Display: Security Status
display.security_status = function(value)
  if value == " " then
    return "Security Status: Not Applicable (<whitespace>)"
  end
  if value == "1" then
    return "Security Status: Opening Delay (1)"
  end
  if value == "2" then
    return "Security Status: Trading Halt (2)"
  end
  if value == "3" then
    return "Security Status: Resume (3)"
  end
  if value == "4" then
    return "Security Status: No Open No Resume (4)"
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
    return "Security Status: Market On Close Imbalance Buy (9)"
  end
  if value == "A" then
    return "Security Status: Market On Close Imbalance Sell (A)"
  end
  if value == "B" then
    return "Security Status: Reserved (B)"
  end
  if value == "C" then
    return "Security Status: No Market Imbalance (C)"
  end
  if value == "D" then
    return "Security Status: No Market On Close Imbalance (D)"
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
dissect.security_status = function(buffer, offset, packet, parent)
  local length = size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.security_status(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: Sell Volume
size_of.sell_volume = 4

-- Display: Sell Volume
display.sell_volume = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
dissect.sell_volume = function(buffer, offset, packet, parent)
  local length = size_of.sell_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.sell_volume(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Size: Buy Volume
size_of.buy_volume = 4

-- Display: Buy Volume
display.buy_volume = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
dissect.buy_volume = function(buffer, offset, packet, parent)
  local length = size_of.buy_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.buy_volume(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Size: Low Indication Price Lower Limit Price Band
size_of.low_indication_price_lower_limit_price_band = 8

-- Display: Low Indication Price Lower Limit Price Band
display.low_indication_price_lower_limit_price_band = function(value)
  return "Low Indication Price Lower Limit Price Band: "..value
end

-- Translate: Low Indication Price Lower Limit Price Band
translate.low_indication_price_lower_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price Lower Limit Price Band
dissect.low_indication_price_lower_limit_price_band = function(buffer, offset, packet, parent)
  local length = size_of.low_indication_price_lower_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.low_indication_price_lower_limit_price_band(raw)
  local display = display.low_indication_price_lower_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.low_indication_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Size: High Indication Price Upper Limit Price Band
size_of.high_indication_price_upper_limit_price_band = 8

-- Display: High Indication Price Upper Limit Price Band
display.high_indication_price_upper_limit_price_band = function(value)
  return "High Indication Price Upper Limit Price Band: "..value
end

-- Translate: High Indication Price Upper Limit Price Band
translate.high_indication_price_upper_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price Upper Limit Price Band
dissect.high_indication_price_upper_limit_price_band = function(buffer, offset, packet, parent)
  local length = size_of.high_indication_price_upper_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.high_indication_price_upper_limit_price_band(raw)
  local display = display.high_indication_price_upper_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.high_indication_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Display: Trading Status Message
display.trading_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trading Status Message
dissect.trading_status_message_fields = function(buffer, offset, packet, parent, size_of_trading_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- High Indication Price Upper Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, high_indication_price_upper_limit_price_band = dissect.high_indication_price_upper_limit_price_band(buffer, index, packet, parent)

  -- Low Indication Price Lower Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, low_indication_price_lower_limit_price_band = dissect.low_indication_price_lower_limit_price_band(buffer, index, packet, parent)

  -- Buy Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_volume = dissect.buy_volume(buffer, index, packet, parent)

  -- Sell Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_volume = dissect.sell_volume(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 16 values
  index, security_status = dissect.security_status(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 10 values
  index, halt_reason = dissect.halt_reason(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Limit Up Limit Down Indicator: 1 Byte Ascii String Enum with 11 values
  index, limit_up_limit_down_indicator = dissect.limit_up_limit_down_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
dissect.trading_status_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_trading_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local range = buffer(offset, size_of_trading_status_message)
    local display = display.trading_status_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.trading_status_message, range, display)
  end

  dissect.trading_status_message_fields(buffer, offset, packet, parent, size_of_trading_status_message)

  return offset + size_of_trading_status_message
end

-- Size: Held Trade Indicator
size_of.held_trade_indicator = 1

-- Display: Held Trade Indicator
display.held_trade_indicator = function(value)
  if value == " " then
    return "Held Trade Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Held Trade Indicator: Cannot Be Used As A Last Sale For Both Participant And Consolidated Basis (A)"
  end
  if value == "B" then
    return "Held Trade Indicator: Can Be Used As A Last Sale For Participant But Not Consolidated Basis (B)"
  end
  if value == "C" then
    return "Held Trade Indicator: Can Be Used As A Last Sale For Participant And Consolidated Basis (C)"
  end

  return "Held Trade Indicator: Unknown("..value..")"
end

-- Dissect: Held Trade Indicator
dissect.held_trade_indicator = function(buffer, offset, packet, parent)
  local length = size_of.held_trade_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.held_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.held_trade_indicator, range, value, display)

  return offset + length, value
end

-- Display: Long Trade Message
display.long_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Trade Message
dissect.long_trade_message_fields = function(buffer, offset, packet, parent, size_of_long_trade_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 17 values
  index, trade_reporting_facility_id = dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = dissect.timestamp_2(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Held Trade Indicator: 1 Byte Ascii String Enum with 4 values
  index, held_trade_indicator = dissect.held_trade_indicator(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_high_low_last_indicator = dissect.consolidated_high_low_last_indicator(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: 1 Byte Ascii String Enum with 17 values
  index, participant_open_high_low_last_indicator = dissect.participant_open_high_low_last_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
dissect.long_trade_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_long_trade_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.long_trade_message then
    local range = buffer(offset, size_of_long_trade_message)
    local display = display.long_trade_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.long_trade_message, range, display)
  end

  dissect.long_trade_message_fields(buffer, offset, packet, parent, size_of_long_trade_message)

  return offset + size_of_long_trade_message
end

-- Calculate size of: Prior Day Trade Date And Time
size_of.prior_day_trade_date_and_time = function(buffer, offset)
  local index = 0

  index = index + size_of.seconds

  index = index + size_of.nanoseconds

  return index
end

-- Display: Prior Day Trade Date And Time
display.prior_day_trade_date_and_time = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Prior Day Trade Date And Time
dissect.prior_day_trade_date_and_time_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Date And Time
dissect.prior_day_trade_date_and_time = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.prior_day_trade_date_and_time then
    local length = size_of.prior_day_trade_date_and_time(buffer, offset)
    local range = buffer(offset, length)
    local display = display.prior_day_trade_date_and_time(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.prior_day_trade_date_and_time, range, display)
  end

  return dissect.prior_day_trade_date_and_time_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Original Trade
size_of.original_trade = function(buffer, offset)
  local index = 0

  index = index + size_of.sale_conditions(buffer, offset + index)

  index = index + size_of.trade_price_long

  index = index + size_of.trade_volume_long

  index = index + size_of.sellers_sale_days

  index = index + size_of.stop_stock_indicator

  index = index + size_of.trade_through_exempt_indicator

  index = index + size_of.short_sale_restriction_indicator

  index = index + size_of.prior_day_trade_date_and_time(buffer, offset + index)

  return index
end

-- Display: Original Trade
display.original_trade = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Original Trade
dissect.original_trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price Long
  index, trade_price_long = dissect.trade_price_long(buffer, index, packet, parent)

  -- Trade Volume Long
  index, trade_volume_long = dissect.trade_volume_long(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = dissect.prior_day_trade_date_and_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Trade
dissect.original_trade = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.original_trade then
    local length = size_of.original_trade(buffer, offset)
    local range = buffer(offset, length)
    local display = display.original_trade(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.original_trade, range, display)
  end

  return dissect.original_trade_fields(buffer, offset, packet, parent)
end

-- Size: Original Participant Reference Number
size_of.original_participant_reference_number = 8

-- Display: Original Participant Reference Number
display.original_participant_reference_number = function(value)
  return "Original Participant Reference Number: "..value
end

-- Dissect: Original Participant Reference Number
dissect.original_participant_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.original_participant_reference_number
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.original_participant_reference_number(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.original_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Calculate size of: Corrected Trade
size_of.corrected_trade = function(buffer, offset)
  local index = 0

  index = index + size_of.sale_conditions(buffer, offset + index)

  index = index + size_of.trade_price_long

  index = index + size_of.trade_volume_long

  index = index + size_of.sellers_sale_days

  index = index + size_of.stop_stock_indicator

  index = index + size_of.trade_through_exempt_indicator

  index = index + size_of.short_sale_restriction_indicator

  index = index + size_of.prior_day_trade_date_and_time(buffer, offset + index)

  return index
end

-- Display: Corrected Trade
display.corrected_trade = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Corrected Trade
dissect.corrected_trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price Long
  index, trade_price_long = dissect.trade_price_long(buffer, index, packet, parent)

  -- Trade Volume Long
  index, trade_volume_long = dissect.trade_volume_long(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = dissect.prior_day_trade_date_and_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade
dissect.corrected_trade = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.corrected_trade then
    local length = size_of.corrected_trade(buffer, offset)
    local range = buffer(offset, length)
    local display = display.corrected_trade(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.corrected_trade, range, display)
  end

  return dissect.corrected_trade_fields(buffer, offset, packet, parent)
end

-- Display: Trade Correction Message
display.trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade Correction Message
dissect.trade_correction_message_fields = function(buffer, offset, packet, parent, size_of_trade_correction_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Corrected Trade: Struct of 8 fields
  index, corrected_trade = dissect.corrected_trade(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 17 values
  index, trade_reporting_facility_id = dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = dissect.timestamp_2(buffer, index, packet, parent)

  -- Original Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, original_participant_reference_number = dissect.original_participant_reference_number(buffer, index, packet, parent)

  -- Original Trade: Struct of 8 fields
  index, original_trade = dissect.original_trade(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Consolidated Data: Struct of 7 fields
  index, consolidated_data = dissect.consolidated_data(buffer, index, packet, parent)

  -- Participant Data: Struct of 7 fields
  index, participant_data = dissect.participant_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
dissect.trade_correction_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_trade_correction_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.trade_correction_message then
    local range = buffer(offset, size_of_trade_correction_message)
    local display = display.trade_correction_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.trade_correction_message, range, display)
  end

  dissect.trade_correction_message_fields(buffer, offset, packet, parent, size_of_trade_correction_message)

  return offset + size_of_trade_correction_message
end

-- Size: Future Use
size_of.future_use = 62

-- Display: Future Use
display.future_use = function(value)
  return "Future Use: "..value
end

-- Dissect: Future Use
dissect.future_use = function(buffer, offset, packet, parent)
  local length = size_of.future_use
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.future_use(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.future_use, range, value, display)

  return offset + length, value
end

-- Size: Number Of Extensions
size_of.number_of_extensions = 1

-- Display: Number Of Extensions
display.number_of_extensions = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
dissect.number_of_extensions = function(buffer, offset, packet, parent)
  local length = size_of.number_of_extensions
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_extensions(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Lower Threshold Price
size_of.auction_collar_lower_threshold_price = 8

-- Display: Auction Collar Lower Threshold Price
display.auction_collar_lower_threshold_price = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
translate.auction_collar_lower_threshold_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
dissect.auction_collar_lower_threshold_price = function(buffer, offset, packet, parent)
  local length = size_of.auction_collar_lower_threshold_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_lower_threshold_price(raw)
  local display = display.auction_collar_lower_threshold_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Reference Price
size_of.auction_collar_reference_price = 8

-- Display: Auction Collar Reference Price
display.auction_collar_reference_price = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
translate.auction_collar_reference_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
dissect.auction_collar_reference_price = function(buffer, offset, packet, parent)
  local length = size_of.auction_collar_reference_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_reference_price(raw)
  local display = display.auction_collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Display: Auction Status Message
display.auction_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Status Message
dissect.auction_status_message_fields = function(buffer, offset, packet, parent, size_of_auction_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = dissect.auction_collar_reference_price(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price
  index, auction_collar_upper_threshold_price = dissect.auction_collar_upper_threshold_price(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_lower_threshold_price = dissect.auction_collar_lower_threshold_price(buffer, index, packet, parent)

  -- Number Of Extensions: 1 Byte Unsigned Fixed Width Integer
  index, number_of_extensions = dissect.number_of_extensions(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Future Use: 62 Byte Ascii String
  index, future_use = dissect.future_use(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
dissect.auction_status_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_auction_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.auction_status_message then
    local range = buffer(offset, size_of_auction_status_message)
    local display = display.auction_status_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.auction_status_message, range, display)
  end

  dissect.auction_status_message_fields(buffer, offset, packet, parent, size_of_auction_status_message)

  return offset + size_of_auction_status_message
end

-- Calculate runtime size of: Trade Payload
size_of.trade_payload = function(buffer, offset, trade_message_type)
  -- Size of Auction Status Message
  if trade_message_type == "A" then
    return size_of.auction_status_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if trade_message_type == "C" then
    return size_of.trade_correction_message(buffer, offset)
  end
  -- Size of Long Trade Message
  if trade_message_type == "L" then
    return size_of.long_trade_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if trade_message_type == "S" then
    return size_of.trading_status_message(buffer, offset)
  end
  -- Size of Short Trade Message
  if trade_message_type == "T" then
    return size_of.short_trade_message(buffer, offset)
  end
  -- Size of Trade Cancel Error Message
  if trade_message_type == "X" then
    return size_of.trade_cancel_error_message(buffer, offset)
  end

  return 0
end

-- Display: Trade Payload
display.trade_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Trade Payload
dissect.trade_payload_branches = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Auction Status Message
  if trade_message_type == "A" then
    return dissect.auction_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "C" then
    return dissect.trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Trade Message
  if trade_message_type == "L" then
    return dissect.long_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if trade_message_type == "S" then
    return dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Trade Message
  if trade_message_type == "T" then
    return dissect.short_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "X" then
    return dissect.trade_cancel_error_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Trade Payload
dissect.trade_payload = function(buffer, offset, packet, parent, trade_message_type)
  if not show.trade_payload then
    return dissect.trade_payload_branches(buffer, offset, packet, parent, trade_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.trade_payload(buffer, offset, trade_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.trade_payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.trade_payload, range, display)

  return dissect.trade_payload_branches(buffer, offset, packet, parent, trade_message_type)
end

-- Size: Trade Message Type
size_of.trade_message_type = 1

-- Display: Trade Message Type
display.trade_message_type = function(value)
  if value == "A" then
    return "Trade Message Type: Auction Status Message (A)"
  end
  if value == "C" then
    return "Trade Message Type: Trade Correction Message (C)"
  end
  if value == "L" then
    return "Trade Message Type: Long Trade Message (L)"
  end
  if value == "S" then
    return "Trade Message Type: Trading Status Message (S)"
  end
  if value == "T" then
    return "Trade Message Type: Short Trade Message (T)"
  end
  if value == "X" then
    return "Trade Message Type: Trade Cancel Error Message (X)"
  end

  return "Trade Message Type: Unknown("..value..")"
end

-- Dissect: Trade Message Type
dissect.trade_message_type = function(buffer, offset, packet, parent)
  local length = size_of.trade_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Display: Trade
display.trade = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Trade
dissect.trade_fields = function(buffer, offset, packet, parent, size_of_trade)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 6 values
  index, trade_message_type = dissect.trade_message_type(buffer, index, packet, parent)

  -- Trade Payload: Runtime Type with 6 branches
  index = dissect.trade_payload(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade
dissect.trade = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_trade = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.trade then
    local range = buffer(offset, size_of_trade)
    local display = display.trade(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.trade, range, display)
  end

  dissect.trade_fields(buffer, offset, packet, parent, size_of_trade)

  return offset + size_of_trade
end

-- Size: Open Price
size_of.open_price = 8

-- Display: Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
translate.open_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Open Price
dissect.open_price = function(buffer, offset, packet, parent)
  local length = size_of.open_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.open_price(raw)
  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.open_price, range, value, display)

  return offset + length, value
end

-- Display: Participant End Of Day Summary Message
display.participant_end_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Participant End Of Day Summary Message
dissect.participant_end_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_participant_end_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Open Price: 8 Byte Unsigned Fixed Width Integer
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_volume = dissect.total_volume(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 5 values
  index, tick = dissect.tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant End Of Day Summary Message
dissect.participant_end_of_day_summary_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_participant_end_of_day_summary_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.participant_end_of_day_summary_message then
    local range = buffer(offset, size_of_participant_end_of_day_summary_message)
    local display = display.participant_end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.participant_end_of_day_summary_message, range, display)
  end

  dissect.participant_end_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_participant_end_of_day_summary_message)

  return offset + size_of_participant_end_of_day_summary_message
end

-- Size: Number Of Participants
size_of.number_of_participants = 1

-- Display: Number Of Participants
display.number_of_participants = function(value)
  return "Number Of Participants: "..value
end

-- Dissect: Number Of Participants
dissect.number_of_participants = function(buffer, offset, packet, parent)
  local length = size_of.number_of_participants
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.number_of_participants(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.number_of_participants, range, value, display)

  return offset + length, value
end

-- Display: Consolidated End Of Day Summary Message
display.consolidated_end_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated End Of Day Summary Message
dissect.consolidated_end_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_consolidated_end_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Last Participant Id: 1 Byte Ascii String Enum with 18 values
  index, last_participant_id = dissect.last_participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_volume = dissect.total_volume(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Number Of Participants: 1 Byte Unsigned Fixed Width Integer
  index, number_of_participants = dissect.number_of_participants(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated End Of Day Summary Message
dissect.consolidated_end_of_day_summary_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_consolidated_end_of_day_summary_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.consolidated_end_of_day_summary_message then
    local range = buffer(offset, size_of_consolidated_end_of_day_summary_message)
    local display = display.consolidated_end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.consolidated_end_of_day_summary_message, range, display)
  end

  dissect.consolidated_end_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_consolidated_end_of_day_summary_message)

  return offset + size_of_consolidated_end_of_day_summary_message
end

-- Size: Previous Close Price
size_of.previous_close_price = 8

-- Display: Previous Close Price
display.previous_close_price = function(value)
  return "Previous Close Price: "..value
end

-- Translate: Previous Close Price
translate.previous_close_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Previous Close Price
dissect.previous_close_price = function(buffer, offset, packet, parent)
  local length = size_of.previous_close_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.previous_close_price(raw)
  local display = display.previous_close_price(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Display: Participant Start Of Day Summary Message
display.participant_start_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Participant Start Of Day Summary Message
dissect.participant_start_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_participant_start_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Previous Close Price: 8 Byte Unsigned Fixed Width Integer
  index, previous_close_price = dissect.previous_close_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Start Of Day Summary Message
dissect.participant_start_of_day_summary_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_participant_start_of_day_summary_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.participant_start_of_day_summary_message then
    local range = buffer(offset, size_of_participant_start_of_day_summary_message)
    local display = display.participant_start_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.participant_start_of_day_summary_message, range, display)
  end

  dissect.participant_start_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_participant_start_of_day_summary_message)

  return offset + size_of_participant_start_of_day_summary_message
end

-- Display: Consolidated Start Of Day Summary Message
display.consolidated_start_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Consolidated Start Of Day Summary Message
dissect.consolidated_start_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_consolidated_start_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Previous Close Price: 8 Byte Unsigned Fixed Width Integer
  index, previous_close_price = dissect.previous_close_price(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Number Of Participants: 1 Byte Unsigned Fixed Width Integer
  index, number_of_participants = dissect.number_of_participants(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Start Of Day Summary Message
dissect.consolidated_start_of_day_summary_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_consolidated_start_of_day_summary_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.consolidated_start_of_day_summary_message then
    local range = buffer(offset, size_of_consolidated_start_of_day_summary_message)
    local display = display.consolidated_start_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.consolidated_start_of_day_summary_message, range, display)
  end

  dissect.consolidated_start_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_consolidated_start_of_day_summary_message)

  return offset + size_of_consolidated_start_of_day_summary_message
end

-- Calculate runtime size of: Summary Payload
size_of.summary_payload = function(buffer, offset, summary_message_type)
  -- Size of Consolidated Start Of Day Summary Message
  if summary_message_type == "A" then
    return size_of.consolidated_start_of_day_summary_message(buffer, offset)
  end
  -- Size of Participant Start Of Day Summary Message
  if summary_message_type == "B" then
    return size_of.participant_start_of_day_summary_message(buffer, offset)
  end
  -- Size of Consolidated End Of Day Summary Message
  if summary_message_type == "C" then
    return size_of.consolidated_end_of_day_summary_message(buffer, offset)
  end
  -- Size of Participant End Of Day Summary Message
  if summary_message_type == "D" then
    return size_of.participant_end_of_day_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Summary Payload
display.summary_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Summary Payload
dissect.summary_payload_branches = function(buffer, offset, packet, parent, summary_message_type)
  -- Dissect Consolidated Start Of Day Summary Message
  if summary_message_type == "A" then
    return dissect.consolidated_start_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Participant Start Of Day Summary Message
  if summary_message_type == "B" then
    return dissect.participant_start_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated End Of Day Summary Message
  if summary_message_type == "C" then
    return dissect.consolidated_end_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Participant End Of Day Summary Message
  if summary_message_type == "D" then
    return dissect.participant_end_of_day_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Summary Payload
dissect.summary_payload = function(buffer, offset, packet, parent, summary_message_type)
  if not show.summary_payload then
    return dissect.summary_payload_branches(buffer, offset, packet, parent, summary_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.summary_payload(buffer, offset, summary_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.summary_payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.summary_payload, range, display)

  return dissect.summary_payload_branches(buffer, offset, packet, parent, summary_message_type)
end

-- Size: Summary Message Type
size_of.summary_message_type = 1

-- Display: Summary Message Type
display.summary_message_type = function(value)
  if value == "A" then
    return "Summary Message Type: Consolidated Start Of Day Summary Message (A)"
  end
  if value == "B" then
    return "Summary Message Type: Participant Start Of Day Summary Message (B)"
  end
  if value == "C" then
    return "Summary Message Type: Consolidated End Of Day Summary Message (C)"
  end
  if value == "D" then
    return "Summary Message Type: Participant End Of Day Summary Message (D)"
  end

  return "Summary Message Type: Unknown("..value..")"
end

-- Dissect: Summary Message Type
dissect.summary_message_type = function(buffer, offset, packet, parent)
  local length = size_of.summary_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.summary_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.summary_message_type, range, value, display)

  return offset + length, value
end

-- Display: Summary
display.summary = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Summary
dissect.summary_fields = function(buffer, offset, packet, parent, size_of_summary)
  local index = offset

  -- Summary Message Type: 1 Byte Ascii String Enum with 4 values
  index, summary_message_type = dissect.summary_message_type(buffer, index, packet, parent)

  -- Summary Payload: Runtime Type with 4 branches
  index = dissect.summary_payload(buffer, index, packet, parent, summary_message_type)

  return index
end

-- Dissect: Summary
dissect.summary = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_summary = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.summary then
    local range = buffer(offset, size_of_summary)
    local display = display.summary(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.summary, range, display)
  end

  dissect.summary_fields(buffer, offset, packet, parent, size_of_summary)

  return offset + size_of_summary
end

-- Display: Prior Day Trade Message
display.prior_day_trade_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Prior Day Trade Message
dissect.prior_day_trade_message_fields = function(buffer, offset, packet, parent, size_of_prior_day_trade_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 17 values
  index, trade_reporting_facility_id = dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = dissect.prior_day_trade_date_and_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Message
dissect.prior_day_trade_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_prior_day_trade_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.prior_day_trade_message then
    local range = buffer(offset, size_of_prior_day_trade_message)
    local display = display.prior_day_trade_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.prior_day_trade_message, range, display)
  end

  dissect.prior_day_trade_message_fields(buffer, offset, packet, parent, size_of_prior_day_trade_message)

  return offset + size_of_prior_day_trade_message
end

-- Display: Prior Day Trade Correction Message
display.prior_day_trade_correction_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Prior Day Trade Correction Message
dissect.prior_day_trade_correction_message_fields = function(buffer, offset, packet, parent, size_of_prior_day_trade_correction_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = dissect.instrument_type(buffer, index, packet, parent)

  -- Corrected Trade: Struct of 8 fields
  index, corrected_trade = dissect.corrected_trade(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 17 values
  index, trade_reporting_facility_id = dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Original Trade: Struct of 8 fields
  index, original_trade = dissect.original_trade(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Correction Message
dissect.prior_day_trade_correction_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_prior_day_trade_correction_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.prior_day_trade_correction_message then
    local range = buffer(offset, size_of_prior_day_trade_correction_message)
    local display = display.prior_day_trade_correction_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.prior_day_trade_correction_message, range, display)
  end

  dissect.prior_day_trade_correction_message_fields(buffer, offset, packet, parent, size_of_prior_day_trade_correction_message)

  return offset + size_of_prior_day_trade_correction_message
end

-- Calculate runtime size of: Prior Day Payload
size_of.prior_day_payload = function(buffer, offset, prior_day_message_type)
  -- Size of Prior Day Trade Correction Message
  if prior_day_message_type == "C" then
    return size_of.prior_day_trade_correction_message(buffer, offset)
  end
  -- Size of Prior Day Trade Message
  if prior_day_message_type == "L" then
    return size_of.prior_day_trade_message(buffer, offset)
  end
  -- Size of Prior Day Trade Message
  if prior_day_message_type == "X" then
    return size_of.prior_day_trade_message(buffer, offset)
  end

  return 0
end

-- Display: Prior Day Payload
display.prior_day_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Prior Day Payload
dissect.prior_day_payload_branches = function(buffer, offset, packet, parent, prior_day_message_type)
  -- Dissect Prior Day Trade Correction Message
  if prior_day_message_type == "C" then
    return dissect.prior_day_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Message
  if prior_day_message_type == "L" then
    return dissect.prior_day_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Message
  if prior_day_message_type == "X" then
    return dissect.prior_day_trade_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Prior Day Payload
dissect.prior_day_payload = function(buffer, offset, packet, parent, prior_day_message_type)
  if not show.prior_day_payload then
    return dissect.prior_day_payload_branches(buffer, offset, packet, parent, prior_day_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.prior_day_payload(buffer, offset, prior_day_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.prior_day_payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.prior_day_payload, range, display)

  return dissect.prior_day_payload_branches(buffer, offset, packet, parent, prior_day_message_type)
end

-- Size: Prior Day Message Type
size_of.prior_day_message_type = 1

-- Display: Prior Day Message Type
display.prior_day_message_type = function(value)
  if value == "C" then
    return "Prior Day Message Type: Prior Day Trade Correction Message (C)"
  end
  if value == "L" then
    return "Prior Day Message Type: Prior Day Trade Message (L)"
  end
  if value == "X" then
    return "Prior Day Message Type: Prior Day Trade Message (X)"
  end

  return "Prior Day Message Type: Unknown("..value..")"
end

-- Dissect: Prior Day Message Type
dissect.prior_day_message_type = function(buffer, offset, packet, parent)
  local length = size_of.prior_day_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.prior_day_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.prior_day_message_type, range, value, display)

  return offset + length, value
end

-- Display: Prior Day
display.prior_day = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Prior Day
dissect.prior_day_fields = function(buffer, offset, packet, parent, size_of_prior_day)
  local index = offset

  -- Prior Day Message Type: 1 Byte Ascii String Enum with 3 values
  index, prior_day_message_type = dissect.prior_day_message_type(buffer, index, packet, parent)

  -- Prior Day Payload: Runtime Type with 3 branches
  index = dissect.prior_day_payload(buffer, index, packet, parent, prior_day_message_type)

  return index
end

-- Dissect: Prior Day
dissect.prior_day = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_prior_day = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.prior_day then
    local range = buffer(offset, size_of_prior_day)
    local display = display.prior_day(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.prior_day, range, display)
  end

  dissect.prior_day_fields(buffer, offset, packet, parent, size_of_prior_day)

  return offset + size_of_prior_day
end

-- Size: Crossing Session 2 Total Trades Volume
size_of.crossing_session_2_total_trades_volume = 8

-- Display: Crossing Session 2 Total Trades Volume
display.crossing_session_2_total_trades_volume = function(value)
  return "Crossing Session 2 Total Trades Volume: "..value
end

-- Dissect: Crossing Session 2 Total Trades Volume
dissect.crossing_session_2_total_trades_volume = function(buffer, offset, packet, parent)
  local length = size_of.crossing_session_2_total_trades_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.crossing_session_2_total_trades_volume(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.crossing_session_2_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Size: Crossing Session 2 Dollar Value
size_of.crossing_session_2_dollar_value = 8

-- Display: Crossing Session 2 Dollar Value
display.crossing_session_2_dollar_value = function(value)
  return "Crossing Session 2 Dollar Value: "..value
end

-- Dissect: Crossing Session 2 Dollar Value
dissect.crossing_session_2_dollar_value = function(buffer, offset, packet, parent)
  local length = size_of.crossing_session_2_dollar_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.crossing_session_2_dollar_value(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.crossing_session_2_dollar_value, range, value, display)

  return offset + length, value
end

-- Size: Crossing Session 1 Total Trades Volume
size_of.crossing_session_1_total_trades_volume = 8

-- Display: Crossing Session 1 Total Trades Volume
display.crossing_session_1_total_trades_volume = function(value)
  return "Crossing Session 1 Total Trades Volume: "..value
end

-- Dissect: Crossing Session 1 Total Trades Volume
dissect.crossing_session_1_total_trades_volume = function(buffer, offset, packet, parent)
  local length = size_of.crossing_session_1_total_trades_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.crossing_session_1_total_trades_volume(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.crossing_session_1_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Display: Crossing Session Summary Message
display.crossing_session_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Crossing Session Summary Message
dissect.crossing_session_summary_message_fields = function(buffer, offset, packet, parent, size_of_crossing_session_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Crossing Session 1 Total Trades Volume: 8 Byte Unsigned Fixed Width Integer
  index, crossing_session_1_total_trades_volume = dissect.crossing_session_1_total_trades_volume(buffer, index, packet, parent)

  -- Crossing Session 2 Dollar Value: 8 Byte Unsigned Fixed Width Integer
  index, crossing_session_2_dollar_value = dissect.crossing_session_2_dollar_value(buffer, index, packet, parent)

  -- Crossing Session 2 Total Trades Volume: 8 Byte Unsigned Fixed Width Integer
  index, crossing_session_2_total_trades_volume = dissect.crossing_session_2_total_trades_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Crossing Session Summary Message
dissect.crossing_session_summary_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_crossing_session_summary_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.crossing_session_summary_message then
    local range = buffer(offset, size_of_crossing_session_summary_message)
    local display = display.crossing_session_summary_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.crossing_session_summary_message, range, display)
  end

  dissect.crossing_session_summary_message_fields(buffer, offset, packet, parent, size_of_crossing_session_summary_message)

  return offset + size_of_crossing_session_summary_message
end

-- Size: Dollar Value
size_of.dollar_value = 8

-- Display: Dollar Value
display.dollar_value = function(value)
  return "Dollar Value: "..value
end

-- Dissect: Dollar Value
dissect.dollar_value = function(buffer, offset, packet, parent)
  local length = size_of.dollar_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.dollar_value(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.dollar_value, range, value, display)

  return offset + length, value
end

-- Size: Total Trades
size_of.total_trades = 4

-- Display: Total Trades
display.total_trades = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
dissect.total_trades = function(buffer, offset, packet, parent)
  local length = size_of.total_trades
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.total_trades(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.total_trades, range, value, display)

  return offset + length, value
end

-- Display: Approximate Trades And Total Dollar Value Message
display.approximate_trades_and_total_dollar_value_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Approximate Trades And Total Dollar Value Message
dissect.approximate_trades_and_total_dollar_value_message_fields = function(buffer, offset, packet, parent, size_of_approximate_trades_and_total_dollar_value_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Total Trades: 4 Byte Unsigned Fixed Width Integer
  index, total_trades = dissect.total_trades(buffer, index, packet, parent)

  -- Dollar Value: 8 Byte Unsigned Fixed Width Integer
  index, dollar_value = dissect.dollar_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Approximate Trades And Total Dollar Value Message
dissect.approximate_trades_and_total_dollar_value_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_approximate_trades_and_total_dollar_value_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.approximate_trades_and_total_dollar_value_message then
    local range = buffer(offset, size_of_approximate_trades_and_total_dollar_value_message)
    local display = display.approximate_trades_and_total_dollar_value_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.approximate_trades_and_total_dollar_value_message, range, display)
  end

  dissect.approximate_trades_and_total_dollar_value_message_fields(buffer, offset, packet, parent, size_of_approximate_trades_and_total_dollar_value_message)

  return offset + size_of_approximate_trades_and_total_dollar_value_message
end

-- Size: Trade Total Volume
size_of.trade_total_volume = 8

-- Display: Trade Total Volume
display.trade_total_volume = function(value)
  return "Trade Total Volume: "..value
end

-- Dissect: Trade Total Volume
dissect.trade_total_volume = function(buffer, offset, packet, parent)
  local length = size_of.trade_total_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = display.trade_total_volume(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.trade_total_volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Participants
size_of.participants = function(buffer, offset)
  local index = 0

  index = index + size_of.participant_id

  index = index + size_of.trade_total_volume

  return index
end

-- Display: Participants
display.participants = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Participants
dissect.participants_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Trade Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, trade_total_volume = dissect.trade_total_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Participants
dissect.participants = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.participants then
    local length = size_of.participants(buffer, offset)
    local range = buffer(offset, length)
    local display = display.participants(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.participants, range, display)
  end

  return dissect.participants_fields(buffer, offset, packet, parent)
end

-- Display: Approximate Adjusted Volume Market Center Message
display.approximate_adjusted_volume_market_center_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Approximate Adjusted Volume Market Center Message
dissect.approximate_adjusted_volume_market_center_message_fields = function(buffer, offset, packet, parent, size_of_approximate_adjusted_volume_market_center_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Number Of Participants: 1 Byte Unsigned Fixed Width Integer
  index, number_of_participants = dissect.number_of_participants(buffer, index, packet, parent)

  -- Participants: Struct of 2 fields
  for i = 1, number_of_participants do
    index = dissect.participants(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Approximate Adjusted Volume Market Center Message
dissect.approximate_adjusted_volume_market_center_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_approximate_adjusted_volume_market_center_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.approximate_adjusted_volume_market_center_message then
    local range = buffer(offset, size_of_approximate_adjusted_volume_market_center_message)
    local display = display.approximate_adjusted_volume_market_center_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.approximate_adjusted_volume_market_center_message, range, display)
  end

  dissect.approximate_adjusted_volume_market_center_message_fields(buffer, offset, packet, parent, size_of_approximate_adjusted_volume_market_center_message)

  return offset + size_of_approximate_adjusted_volume_market_center_message
end

-- Size: Reserved
size_of.reserved = 1

-- Display: Reserved
display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
dissect.reserved = function(buffer, offset, packet, parent)
  local length = size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.reserved(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.reserved, range, value, display)

  return offset + length, value
end

-- Display: Market Wide Circuit Breaker Status Message
display.market_wide_circuit_breaker_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
dissect.market_wide_circuit_breaker_status_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Market Wide Circuit Breaker Level Indicator
  index, market_wide_circuit_breaker_level_indicator = dissect.market_wide_circuit_breaker_level_indicator(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
dissect.market_wide_circuit_breaker_status_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_market_wide_circuit_breaker_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_status_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_status_message)
    local display = display.market_wide_circuit_breaker_status_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.market_wide_circuit_breaker_status_message, range, display)
  end

  dissect.market_wide_circuit_breaker_status_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_status_message)

  return offset + size_of_market_wide_circuit_breaker_status_message
end

-- Size: Mwcb Level 3
size_of.mwcb_level_3 = 8

-- Display: Mwcb Level 3
display.mwcb_level_3 = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
dissect.mwcb_level_3 = function(buffer, offset, packet, parent)
  local length = size_of.mwcb_level_3
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.mwcb_level_3(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 2
size_of.mwcb_level_2 = 8

-- Display: Mwcb Level 2
display.mwcb_level_2 = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
dissect.mwcb_level_2 = function(buffer, offset, packet, parent)
  local length = size_of.mwcb_level_2
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.mwcb_level_2(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Display: Market Wide Circuit Breaker Decline Level Status Message
display.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Message
dissect.market_wide_circuit_breaker_decline_level_status_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Mwcb Level 1
  index, mwcb_level_1 = dissect.mwcb_level_1(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_2 = dissect.mwcb_level_2(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_3 = dissect.mwcb_level_3(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Message
dissect.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_market_wide_circuit_breaker_decline_level_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_status_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_status_message)
    local display = display.market_wide_circuit_breaker_decline_level_status_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.market_wide_circuit_breaker_decline_level_status_message, range, display)
  end

  dissect.market_wide_circuit_breaker_decline_level_status_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_status_message
end

-- Calculate runtime size of: Market Status Payload
size_of.market_status_payload = function(buffer, offset, market_status_message_type)
  -- Size of Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return size_of.market_wide_circuit_breaker_decline_level_status_message(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return size_of.market_wide_circuit_breaker_status_message(buffer, offset)
  end
  -- Size of Approximate Adjusted Volume Market Center Message
  if market_status_message_type == "N" then
    return size_of.approximate_adjusted_volume_market_center_message(buffer, offset)
  end
  -- Size of Approximate Trades And Total Dollar Value Message
  if market_status_message_type == "O" then
    return size_of.approximate_trades_and_total_dollar_value_message(buffer, offset)
  end
  -- Size of Crossing Session Summary Message
  if market_status_message_type == "P" then
    return size_of.crossing_session_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Market Status Payload
display.market_status_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Market Status Payload
dissect.market_status_payload_branches = function(buffer, offset, packet, parent, market_status_message_type)
  -- Dissect Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return dissect.market_wide_circuit_breaker_decline_level_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return dissect.market_wide_circuit_breaker_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Approximate Adjusted Volume Market Center Message
  if market_status_message_type == "N" then
    return dissect.approximate_adjusted_volume_market_center_message(buffer, offset, packet, parent)
  end
  -- Dissect Approximate Trades And Total Dollar Value Message
  if market_status_message_type == "O" then
    return dissect.approximate_trades_and_total_dollar_value_message(buffer, offset, packet, parent)
  end
  -- Dissect Crossing Session Summary Message
  if market_status_message_type == "P" then
    return dissect.crossing_session_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Market Status Payload
dissect.market_status_payload = function(buffer, offset, packet, parent, market_status_message_type)
  if not show.market_status_payload then
    return dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.market_status_payload(buffer, offset, market_status_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.market_status_payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.market_status_payload, range, display)

  return dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
end

-- Size: Market Status Message Type
size_of.market_status_message_type = 1

-- Display: Market Status Message Type
display.market_status_message_type = function(value)
  if value == "M" then
    return "Market Status Message Type: Market Wide Circuit Breaker Decline Level Status Message (M)"
  end
  if value == "L" then
    return "Market Status Message Type: Market Wide Circuit Breaker Status Message (L)"
  end
  if value == "N" then
    return "Market Status Message Type: Approximate Adjusted Volume Market Center Message (N)"
  end
  if value == "O" then
    return "Market Status Message Type: Approximate Trades And Total Dollar Value Message (O)"
  end
  if value == "P" then
    return "Market Status Message Type: Crossing Session Summary Message (P)"
  end

  return "Market Status Message Type: Unknown("..value..")"
end

-- Dissect: Market Status Message Type
dissect.market_status_message_type = function(buffer, offset, packet, parent)
  local length = size_of.market_status_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.market_status_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.market_status_message_type, range, value, display)

  return offset + length, value
end

-- Display: Market Status
display.market_status = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Status
dissect.market_status_fields = function(buffer, offset, packet, parent, size_of_market_status)
  local index = offset

  -- Market Status Message Type: 1 Byte Ascii String Enum with 5 values
  index, market_status_message_type = dissect.market_status_message_type(buffer, index, packet, parent)

  -- Market Status Payload: Runtime Type with 5 branches
  index = dissect.market_status_payload(buffer, index, packet, parent, market_status_message_type)

  return index
end

-- Dissect: Market Status
dissect.market_status = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_market_status = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.market_status then
    local range = buffer(offset, size_of_market_status)
    local display = display.market_status(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.market_status, range, display)
  end

  dissect.market_status_fields(buffer, offset, packet, parent, size_of_market_status)

  return offset + size_of_market_status
end

-- Size: Offer Index Value
size_of.offer_index_value = 8

-- Display: Offer Index Value
display.offer_index_value = function(value)
  return "Offer Index Value: "..value
end

-- Dissect: Offer Index Value
dissect.offer_index_value = function(buffer, offset, packet, parent)
  local length = size_of.offer_index_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.offer_index_value(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.offer_index_value, range, value, display)

  return offset + length, value
end

-- Size: Bid Index Value
size_of.bid_index_value = 8

-- Display: Bid Index Value
display.bid_index_value = function(value)
  return "Bid Index Value: "..value
end

-- Dissect: Bid Index Value
dissect.bid_index_value = function(buffer, offset, packet, parent)
  local length = size_of.bid_index_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.bid_index_value(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.bid_index_value, range, value, display)

  return offset + length, value
end

-- Size: Index Symbol
size_of.index_symbol = 11

-- Display: Index Symbol
display.index_symbol = function(value)
  return "Index Symbol: "..value
end

-- Dissect: Index Symbol
dissect.index_symbol = function(buffer, offset, packet, parent)
  local length = size_of.index_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.index_symbol(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.index_symbol, range, value, display)

  return offset + length, value
end

-- Display: Bid And Offer Index Message
display.bid_and_offer_index_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Bid And Offer Index Message
dissect.bid_and_offer_index_message_fields = function(buffer, offset, packet, parent, size_of_bid_and_offer_index_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Index Symbol: 11 Byte Ascii String
  index, index_symbol = dissect.index_symbol(buffer, index, packet, parent)

  -- Bid Index Value: 8 Byte Signed Fixed Width Integer
  index, bid_index_value = dissect.bid_index_value(buffer, index, packet, parent)

  -- Offer Index Value: 8 Byte Signed Fixed Width Integer
  index, offer_index_value = dissect.offer_index_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid And Offer Index Message
dissect.bid_and_offer_index_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_bid_and_offer_index_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.bid_and_offer_index_message then
    local range = buffer(offset, size_of_bid_and_offer_index_message)
    local display = display.bid_and_offer_index_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.bid_and_offer_index_message, range, display)
  end

  dissect.bid_and_offer_index_message_fields(buffer, offset, packet, parent, size_of_bid_and_offer_index_message)

  return offset + size_of_bid_and_offer_index_message
end

-- Size: Index Value
size_of.index_value = 8

-- Display: Index Value
display.index_value = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
dissect.index_value = function(buffer, offset, packet, parent)
  local length = size_of.index_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.index_value(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.index_value, range, value, display)

  return offset + length, value
end

-- Display: Index Message
display.index_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Index Message
dissect.index_message_fields = function(buffer, offset, packet, parent, size_of_index_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Index Symbol: 11 Byte Ascii String
  index, index_symbol = dissect.index_symbol(buffer, index, packet, parent)

  -- Index Value: 8 Byte Signed Fixed Width Integer
  index, index_value = dissect.index_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Message
dissect.index_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_index_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.index_message then
    local range = buffer(offset, size_of_index_message)
    local display = display.index_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.index_message, range, display)
  end

  dissect.index_message_fields(buffer, offset, packet, parent, size_of_index_message)

  return offset + size_of_index_message
end

-- Calculate runtime size of: Index Payload
size_of.index_payload = function(buffer, offset, index_message_type)
  -- Size of Index Message
  if index_message_type == "I" then
    return size_of.index_message(buffer, offset)
  end
  -- Size of Bid And Offer Index Message
  if index_message_type == "Q" then
    return size_of.bid_and_offer_index_message(buffer, offset)
  end

  return 0
end

-- Display: Index Payload
display.index_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Index Payload
dissect.index_payload_branches = function(buffer, offset, packet, parent, index_message_type)
  -- Dissect Index Message
  if index_message_type == "I" then
    return dissect.index_message(buffer, offset, packet, parent)
  end
  -- Dissect Bid And Offer Index Message
  if index_message_type == "Q" then
    return dissect.bid_and_offer_index_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Index Payload
dissect.index_payload = function(buffer, offset, packet, parent, index_message_type)
  if not show.index_payload then
    return dissect.index_payload_branches(buffer, offset, packet, parent, index_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.index_payload(buffer, offset, index_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.index_payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.index_payload, range, display)

  return dissect.index_payload_branches(buffer, offset, packet, parent, index_message_type)
end

-- Size: Index Message Type
size_of.index_message_type = 1

-- Display: Index Message Type
display.index_message_type = function(value)
  if value == "I" then
    return "Index Message Type: Index Message (I)"
  end
  if value == "Q" then
    return "Index Message Type: Bid And Offer Index Message (Q)"
  end

  return "Index Message Type: Unknown("..value..")"
end

-- Dissect: Index Message Type
dissect.index_message_type = function(buffer, offset, packet, parent)
  local length = size_of.index_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.index_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.index_message_type, range, value, display)

  return offset + length, value
end

-- Display: Index
display.index = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Index
dissect.index_fields = function(buffer, offset, packet, parent, size_of_index)
  local index = offset

  -- Index Message Type: 1 Byte Ascii String Enum with 2 values
  index, index_message_type = dissect.index_message_type(buffer, index, packet, parent)

  -- Index Payload: Runtime Type with 2 branches
  index = dissect.index_payload(buffer, index, packet, parent, index_message_type)

  return index
end

-- Dissect: Index
dissect.index = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_index = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.index then
    local range = buffer(offset, size_of_index)
    local display = display.index(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.index, range, display)
  end

  dissect.index_fields(buffer, offset, packet, parent, size_of_index)

  return offset + size_of_index
end

-- Display: End Of Day Message
display.end_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Day Message
dissect.end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
dissect.end_of_day_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_end_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.end_of_day_message then
    local range = buffer(offset, size_of_end_of_day_message)
    local display = display.end_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.end_of_day_message, range, display)
  end

  dissect.end_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_day_message)

  return offset + size_of_end_of_day_message
end

-- Display: Line Integrity Message
display.line_integrity_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Line Integrity Message
dissect.line_integrity_message_fields = function(buffer, offset, packet, parent, size_of_line_integrity_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
dissect.line_integrity_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_line_integrity_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.line_integrity_message then
    local range = buffer(offset, size_of_line_integrity_message)
    local display = display.line_integrity_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.line_integrity_message, range, display)
  end

  dissect.line_integrity_message_fields(buffer, offset, packet, parent, size_of_line_integrity_message)

  return offset + size_of_line_integrity_message
end

-- Display: Disaster Recovery Data Center Activation Message
display.disaster_recovery_data_center_activation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Disaster Recovery Data Center Activation Message
dissect.disaster_recovery_data_center_activation_message_fields = function(buffer, offset, packet, parent, size_of_disaster_recovery_data_center_activation_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Data Center Activation Message
dissect.disaster_recovery_data_center_activation_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_disaster_recovery_data_center_activation_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.disaster_recovery_data_center_activation_message then
    local range = buffer(offset, size_of_disaster_recovery_data_center_activation_message)
    local display = display.disaster_recovery_data_center_activation_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.disaster_recovery_data_center_activation_message, range, display)
  end

  dissect.disaster_recovery_data_center_activation_message_fields(buffer, offset, packet, parent, size_of_disaster_recovery_data_center_activation_message)

  return offset + size_of_disaster_recovery_data_center_activation_message
end

-- Display: End Of Test Cycle Message
display.end_of_test_cycle_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Test Cycle Message
dissect.end_of_test_cycle_message_fields = function(buffer, offset, packet, parent, size_of_end_of_test_cycle_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Test Cycle Message
dissect.end_of_test_cycle_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_end_of_test_cycle_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.end_of_test_cycle_message then
    local range = buffer(offset, size_of_end_of_test_cycle_message)
    local display = display.end_of_test_cycle_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.end_of_test_cycle_message, range, display)
  end

  dissect.end_of_test_cycle_message_fields(buffer, offset, packet, parent, size_of_end_of_test_cycle_message)

  return offset + size_of_end_of_test_cycle_message
end

-- Display: Start Of Test Cycle Message
display.start_of_test_cycle_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Test Cycle Message
dissect.start_of_test_cycle_message_fields = function(buffer, offset, packet, parent, size_of_start_of_test_cycle_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Test Cycle Message
dissect.start_of_test_cycle_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_start_of_test_cycle_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.start_of_test_cycle_message then
    local range = buffer(offset, size_of_start_of_test_cycle_message)
    local display = display.start_of_test_cycle_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.start_of_test_cycle_message, range, display)
  end

  dissect.start_of_test_cycle_message_fields(buffer, offset, packet, parent, size_of_start_of_test_cycle_message)

  return offset + size_of_start_of_test_cycle_message
end

-- Display: Reset Block Sequence Number Message
display.reset_block_sequence_number_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reset Block Sequence Number Message
dissect.reset_block_sequence_number_message_fields = function(buffer, offset, packet, parent, size_of_reset_block_sequence_number_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Block Sequence Number Message
dissect.reset_block_sequence_number_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_reset_block_sequence_number_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.reset_block_sequence_number_message then
    local range = buffer(offset, size_of_reset_block_sequence_number_message)
    local display = display.reset_block_sequence_number_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.reset_block_sequence_number_message, range, display)
  end

  dissect.reset_block_sequence_number_message_fields(buffer, offset, packet, parent, size_of_reset_block_sequence_number_message)

  return offset + size_of_reset_block_sequence_number_message
end

-- Display: Start Of Day Message
display.start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Day Message
dissect.start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
dissect.start_of_day_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_start_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local range = buffer(offset, size_of_start_of_day_message)
    local display = display.start_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.start_of_day_message, range, display)
  end

  dissect.start_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_day_message)

  return offset + size_of_start_of_day_message
end

-- Calculate runtime size of: Control Payload
size_of.control_payload = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "A" then
    return size_of.start_of_day_message(buffer, offset)
  end
  -- Size of Reset Block Sequence Number Message
  if control_message_type == "L" then
    return size_of.reset_block_sequence_number_message(buffer, offset)
  end
  -- Size of Start Of Test Cycle Message
  if control_message_type == "M" then
    return size_of.start_of_test_cycle_message(buffer, offset)
  end
  -- Size of End Of Test Cycle Message
  if control_message_type == "N" then
    return size_of.end_of_test_cycle_message(buffer, offset)
  end
  -- Size of Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return size_of.disaster_recovery_data_center_activation_message(buffer, offset)
  end
  -- Size of Line Integrity Message
  if control_message_type == "T" then
    return size_of.line_integrity_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "Z" then
    return size_of.end_of_day_message(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
display.control_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
dissect.control_payload_branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "A" then
    return dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Reset Block Sequence Number Message
  if control_message_type == "L" then
    return dissect.reset_block_sequence_number_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Test Cycle Message
  if control_message_type == "M" then
    return dissect.start_of_test_cycle_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Test Cycle Message
  if control_message_type == "N" then
    return dissect.end_of_test_cycle_message(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return dissect.disaster_recovery_data_center_activation_message(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return dissect.line_integrity_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "Z" then
    return dissect.end_of_day_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
dissect.control_payload = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.control_payload(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.control_payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.control_payload, range, display)

  return dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
end

-- Size: Control Message Type
size_of.control_message_type = 1

-- Display: Control Message Type
display.control_message_type = function(value)
  if value == "A" then
    return "Control Message Type: Start Of Day Message (A)"
  end
  if value == "L" then
    return "Control Message Type: Reset Block Sequence Number Message (L)"
  end
  if value == "M" then
    return "Control Message Type: Start Of Test Cycle Message (M)"
  end
  if value == "N" then
    return "Control Message Type: End Of Test Cycle Message (N)"
  end
  if value == "P" then
    return "Control Message Type: Disaster Recovery Data Center Activation Message (P)"
  end
  if value == "T" then
    return "Control Message Type: Line Integrity Message (T)"
  end
  if value == "Z" then
    return "Control Message Type: End Of Day Message (Z)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Display: Control
display.control = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control
dissect.control_fields = function(buffer, offset, packet, parent, size_of_control)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 7 values
  index, control_message_type = dissect.control_message_type(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 7 branches
  index = dissect.control_payload(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
dissect.control = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_control = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.control then
    local range = buffer(offset, size_of_control)
    local display = display.control(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.control, range, display)
  end

  dissect.control_fields(buffer, offset, packet, parent, size_of_control)

  return offset + size_of_control
end

-- Display: Administrative Unformatted Message
display.administrative_unformatted_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative Unformatted Message
dissect.administrative_unformatted_message_fields = function(buffer, offset, packet, parent, size_of_administrative_unformatted_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Text
  index, text = dissect.text(buffer, index, packet, parent)

  return index
end

-- Dissect: Administrative Unformatted Message
dissect.administrative_unformatted_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_administrative_unformatted_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.administrative_unformatted_message then
    local range = buffer(offset, size_of_administrative_unformatted_message)
    local display = display.administrative_unformatted_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.administrative_unformatted_message, range, display)
  end

  dissect.administrative_unformatted_message_fields(buffer, offset, packet, parent, size_of_administrative_unformatted_message)

  return offset + size_of_administrative_unformatted_message
end

-- Display: End Of Start Of Day Message
display.end_of_start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Start Of Day Message
dissect.end_of_start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Start Of Day Message
dissect.end_of_start_of_day_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_end_of_start_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.end_of_start_of_day_message then
    local range = buffer(offset, size_of_end_of_start_of_day_message)
    local display = display.end_of_start_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.end_of_start_of_day_message, range, display)
  end

  dissect.end_of_start_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_start_of_day_message)

  return offset + size_of_end_of_start_of_day_message
end

-- Display: Start Of Start Of Day Message
display.start_of_start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Start Of Day Message
dissect.start_of_start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Start Of Day Message
dissect.start_of_start_of_day_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_start_of_start_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.start_of_start_of_day_message then
    local range = buffer(offset, size_of_start_of_start_of_day_message)
    local display = display.start_of_start_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.start_of_start_of_day_message, range, display)
  end

  dissect.start_of_start_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_start_of_day_message)

  return offset + size_of_start_of_start_of_day_message
end

-- Display: End Of End Of Day Message
display.end_of_end_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of End Of Day Message
dissect.end_of_end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_end_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of End Of Day Message
dissect.end_of_end_of_day_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_end_of_end_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.end_of_end_of_day_message then
    local range = buffer(offset, size_of_end_of_end_of_day_message)
    local display = display.end_of_end_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.end_of_end_of_day_message, range, display)
  end

  dissect.end_of_end_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_end_of_day_message)

  return offset + size_of_end_of_end_of_day_message
end

-- Display: Start Of End Of Day Message
display.start_of_end_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of End Of Day Message
dissect.start_of_end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_end_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 18 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of End Of Day Message
dissect.start_of_end_of_day_message = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_start_of_end_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.start_of_end_of_day_message then
    local range = buffer(offset, size_of_start_of_end_of_day_message)
    local display = display.start_of_end_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.start_of_end_of_day_message, range, display)
  end

  dissect.start_of_end_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_end_of_day_message)

  return offset + size_of_start_of_end_of_day_message
end

-- Calculate runtime size of: Administrative Payload
size_of.administrative_payload = function(buffer, offset, administrative_message_type)
  -- Size of Start Of End Of Day Message
  if administrative_message_type == "A" then
    return size_of.start_of_end_of_day_message(buffer, offset)
  end
  -- Size of End Of End Of Day Message
  if administrative_message_type == "B" then
    return size_of.end_of_end_of_day_message(buffer, offset)
  end
  -- Size of Start Of Start Of Day Message
  if administrative_message_type == "C" then
    return size_of.start_of_start_of_day_message(buffer, offset)
  end
  -- Size of End Of Start Of Day Message
  if administrative_message_type == "D" then
    return size_of.end_of_start_of_day_message(buffer, offset)
  end
  -- Size of Administrative Unformatted Message
  if administrative_message_type == "H" then
    return size_of.administrative_unformatted_message(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
display.administrative_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
dissect.administrative_payload_branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Start Of End Of Day Message
  if administrative_message_type == "A" then
    return dissect.start_of_end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of End Of Day Message
  if administrative_message_type == "B" then
    return dissect.end_of_end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Start Of Day Message
  if administrative_message_type == "C" then
    return dissect.start_of_start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Start Of Day Message
  if administrative_message_type == "D" then
    return dissect.end_of_start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Administrative Unformatted Message
  if administrative_message_type == "H" then
    return dissect.administrative_unformatted_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
dissect.administrative_payload = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.administrative_payload(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.administrative_payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.administrative_payload, range, display)

  return dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Size: Administrative Message Type
size_of.administrative_message_type = 1

-- Display: Administrative Message Type
display.administrative_message_type = function(value)
  if value == "A" then
    return "Administrative Message Type: Start Of End Of Day Message (A)"
  end
  if value == "B" then
    return "Administrative Message Type: End Of End Of Day Message (B)"
  end
  if value == "C" then
    return "Administrative Message Type: Start Of Start Of Day Message (C)"
  end
  if value == "D" then
    return "Administrative Message Type: End Of Start Of Day Message (D)"
  end
  if value == "H" then
    return "Administrative Message Type: Administrative Unformatted Message (H)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
dissect.administrative_message_type = function(buffer, offset, packet, parent)
  local length = size_of.administrative_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.administrative_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Display: Administrative
display.administrative = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative
dissect.administrative_fields = function(buffer, offset, packet, parent, size_of_administrative)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 5 values
  index, administrative_message_type = dissect.administrative_message_type(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 5 branches
  index = dissect.administrative_payload(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
dissect.administrative = function(buffer, offset, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_administrative = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.administrative then
    local range = buffer(offset, size_of_administrative)
    local display = display.administrative(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.administrative, range, display)
  end

  dissect.administrative_fields(buffer, offset, packet, parent, size_of_administrative)

  return offset + size_of_administrative
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_category)
  -- Size of Administrative
  if message_category == "A" then
    return size_of.administrative(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return size_of.control(buffer, offset)
  end
  -- Size of Index
  if message_category == "I" then
    return size_of.index(buffer, offset)
  end
  -- Size of Market Status
  if message_category == "M" then
    return size_of.market_status(buffer, offset)
  end
  -- Size of Prior Day
  if message_category == "P" then
    return size_of.prior_day(buffer, offset)
  end
  -- Size of Summary
  if message_category == "S" then
    return size_of.summary(buffer, offset)
  end
  -- Size of Trade
  if message_category == "T" then
    return size_of.trade(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative
  if message_category == "A" then
    return dissect.administrative(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return dissect.control(buffer, offset, packet, parent)
  end
  -- Dissect Index
  if message_category == "I" then
    return dissect.index(buffer, offset, packet, parent)
  end
  -- Dissect Market Status
  if message_category == "M" then
    return dissect.market_status(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day
  if message_category == "P" then
    return dissect.prior_day(buffer, offset, packet, parent)
  end
  -- Dissect Summary
  if message_category == "S" then
    return dissect.summary(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if message_category == "T" then
    return dissect.trade(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.payload(buffer, packet, parent)
  local element = parent:add(siac_cts_output_cta_v1_91.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
size_of.message_category = 1

-- Display: Message Category
display.message_category = function(value)
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
dissect.message_category = function(buffer, offset, packet, parent)
  local length = size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_category(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Message Length
size_of.message_length = 2

-- Display: Message Length
display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
dissect.message_length = function(buffer, offset, packet, parent)
  local length = size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_length(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + size_of.message_length

  index = index + size_of.message_category

  return index
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = dissect.message_length(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 7 values
  index, message_category = dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 7 branches
  index = dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.message, range, display)
  end

  dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Block Checksum
size_of.block_checksum = 2

-- Display: Block Checksum
display.block_checksum = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
dissect.block_checksum = function(buffer, offset, packet, parent)
  local length = size_of.block_checksum
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_checksum(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sip Block Timestamp
size_of.sip_block_timestamp = function(buffer, offset)
  local index = 0

  index = index + size_of.seconds

  index = index + size_of.nanoseconds

  return index
end

-- Display: Sip Block Timestamp
display.sip_block_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sip Block Timestamp
dissect.sip_block_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Sip Block Timestamp
dissect.sip_block_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sip_block_timestamp then
    local length = size_of.sip_block_timestamp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.sip_block_timestamp(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.sip_block_timestamp, range, display)
  end

  return dissect.sip_block_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Messages In Block
size_of.messages_in_block = 1

-- Display: Messages In Block
display.messages_in_block = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
dissect.messages_in_block = function(buffer, offset, packet, parent)
  local length = size_of.messages_in_block
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.messages_in_block(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Size: Block Sequence Number
size_of.block_sequence_number = 4

-- Display: Block Sequence Number
display.block_sequence_number = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
dissect.block_sequence_number = function(buffer, offset, packet, parent)
  local length = size_of.block_sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_sequence_number(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Indicator
size_of.retransmission_indicator = 1

-- Display: Retransmission Indicator
display.retransmission_indicator = function(value)
  if value == "O" then
    return "Retransmission Indicator: Original (O)"
  end
  if value == "V" then
    return "Retransmission Indicator: Retransmitted (V)"
  end

  return "Retransmission Indicator: Unknown("..value..")"
end

-- Dissect: Retransmission Indicator
dissect.retransmission_indicator = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.retransmission_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Size: Data Feed Indicator
size_of.data_feed_indicator = 1

-- Display: Data Feed Indicator
display.data_feed_indicator = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
dissect.data_feed_indicator = function(buffer, offset, packet, parent)
  local length = size_of.data_feed_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.data_feed_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Size
size_of.block_size = 2

-- Display: Block Size
display.block_size = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
dissect.block_size = function(buffer, offset, packet, parent)
  local length = size_of.block_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.block_size(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.block_size, range, value, display)

  return offset + length, value
end

-- Size: Version
size_of.version = 1

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local length = size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(siac_cts_output_cta_v1_91.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Header
size_of.block_header = function(buffer, offset)
  local index = 0

  index = index + size_of.version

  index = index + size_of.block_size

  index = index + size_of.data_feed_indicator

  index = index + size_of.retransmission_indicator

  index = index + size_of.block_sequence_number

  index = index + size_of.messages_in_block

  index = index + size_of.sip_block_timestamp(buffer, offset + index)

  index = index + size_of.block_checksum

  return index
end

-- Display: Block Header
display.block_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Header
dissect.block_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = dissect.version(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = dissect.block_size(buffer, index, packet, parent)

  -- Data Feed Indicator: 1 Byte Ascii String
  index, data_feed_indicator = dissect.data_feed_indicator(buffer, index, packet, parent)

  -- Retransmission Indicator: 1 Byte Ascii String Enum with 2 values
  index, retransmission_indicator = dissect.retransmission_indicator(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = dissect.block_sequence_number(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = dissect.messages_in_block(buffer, index, packet, parent)

  -- Sip Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = dissect.sip_block_timestamp(buffer, index, packet, parent)

  -- Block Checksum: 2 Byte Unsigned Fixed Width Integer
  index, block_checksum = dissect.block_checksum(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
dissect.block_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.block_header then
    local length = size_of.block_header(buffer, offset)
    local range = buffer(offset, length)
    local display = display.block_header(buffer, packet, parent)
    parent = parent:add(siac_cts_output_cta_v1_91.fields.block_header, range, display)
  end

  return dissect.block_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 8 fields
  index, block_header = dissect.block_header(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Message: Struct of 2 fields
  for i = 1, messages_in_block do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Message: Struct of 2 fields
    index = dissect.message(buffer, index, packet, parent, message_length)
  end

  -- Runtime optional field exists: Block Pad Byte
  local block_pad_byte_exists = uneven( index )

  -- Runtime optional field: Block Pad Byte
  if block_pad_byte_exists then
    index = dissect.block_pad_byte(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function siac_cts_output_cta_v1_91.init()
end

-- Dissector for Siac Cts Output Cta 1.91
function siac_cts_output_cta_v1_91.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = siac_cts_output_cta_v1_91.name

  -- Dissect protocol
  local protocol = parent:add(siac_cts_output_cta_v1_91, buffer(), siac_cts_output_cta_v1_91.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, siac_cts_output_cta_v1_91)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.siac_cts_output_cta_v1_91_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Siac Cts Output Cta 1.91
local function siac_cts_output_cta_v1_91_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.siac_cts_output_cta_v1_91_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = siac_cts_output_cta_v1_91
  siac_cts_output_cta_v1_91.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cts Output Cta 1.91
siac_cts_output_cta_v1_91:register_heuristic("udp", siac_cts_output_cta_v1_91_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 1.91
--   Date: Thursday, January 2, 2020
--   Specification: CTS_BINARY_OUTPUT_SPECIFICATION.pdf
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
