-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cts Output Cta 2.9 Protocol
local omi_siac_cts_output_cta_v2_9 = Proto("Siac.Cts.Output.Cta.v2.9.Lua", "Siac Cts Output Cta 2.9")

-- Component Tables
local show = {}
local format = {}
local siac_cts_output_cta_v2_9_display = {}
local siac_cts_output_cta_v2_9_dissect = {}
local siac_cts_output_cta_v2_9_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cts Output Cta 2.9 Fields
omi_siac_cts_output_cta_v2_9.fields.administrative = ProtoField.new("Administrative", "siac.cts.output.cta.v2.9.administrative", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.cts.output.cta.v2.9.administrativemessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.administrative_payload = ProtoField.new("Administrative Payload", "siac.cts.output.cta.v2.9.administrativepayload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cts.output.cta.v2.9.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cts.output.cta.v2.9.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cts.output.cta.v2.9.auctioncollarupperthresholdprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.bid_index_value = ProtoField.new("Bid Index Value", "siac.cts.output.cta.v2.9.bidindexvalue", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cts.output.cta.v2.9.blockchecksum", ftypes.UINT16)
omi_siac_cts_output_cta_v2_9.fields.block_header = ProtoField.new("Block Header", "siac.cts.output.cta.v2.9.blockheader", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cts.output.cta.v2.9.blockpadbyte", ftypes.UINT8)
omi_siac_cts_output_cta_v2_9.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cts.output.cta.v2.9.blocksequencenumber", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.block_size = ProtoField.new("Block Size", "siac.cts.output.cta.v2.9.blocksize", ftypes.UINT16)
omi_siac_cts_output_cta_v2_9.fields.buy_volume = ProtoField.new("Buy Volume", "siac.cts.output.cta.v2.9.buyvolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.cancel_error_action = ProtoField.new("Cancel Error Action", "siac.cts.output.cta.v2.9.cancelerroraction", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.consolidated_data = ProtoField.new("Consolidated Data", "siac.cts.output.cta.v2.9.consolidateddata", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.consolidated_high_low_last_indicator = ProtoField.new("Consolidated High Low Last Indicator", "siac.cts.output.cta.v2.9.consolidatedhighlowlastindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.control = ProtoField.new("Control", "siac.cts.output.cta.v2.9.control", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cts.output.cta.v2.9.controlmessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.control_payload = ProtoField.new("Control Payload", "siac.cts.output.cta.v2.9.controlpayload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.corrected_trade = ProtoField.new("Corrected Trade", "siac.cts.output.cta.v2.9.correctedtrade", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.crossing_session_1_total_trades_volume = ProtoField.new("Crossing Session 1 Total Trades Volume", "siac.cts.output.cta.v2.9.crossingsession1totaltradesvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_9.fields.crossing_session_2_dollar_value = ProtoField.new("Crossing Session 2 Dollar Value", "siac.cts.output.cta.v2.9.crossingsession2dollarvalue", ftypes.UINT64)
omi_siac_cts_output_cta_v2_9.fields.crossing_session_2_total_trades_volume = ProtoField.new("Crossing Session 2 Total Trades Volume", "siac.cts.output.cta.v2.9.crossingsession2totaltradesvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_9.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.cts.output.cta.v2.9.datafeedindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.dollar_value = ProtoField.new("Dollar Value", "siac.cts.output.cta.v2.9.dollarvalue", ftypes.UINT64)
omi_siac_cts_output_cta_v2_9.fields.extended_hours_or_sequence_type = ProtoField.new("Extended Hours Or Sequence Type", "siac.cts.output.cta.v2.9.extendedhoursorsequencetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cts.output.cta.v2.9.financialstatusindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.future_use = ProtoField.new("Future Use", "siac.cts.output.cta.v2.9.futureuse", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cts.output.cta.v2.9.haltreason", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.held_trade_indicator = ProtoField.new("Held Trade Indicator", "siac.cts.output.cta.v2.9.heldtradeindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.high_indication_price_upper_limit_price_band = ProtoField.new("High Indication Price Upper Limit Price Band", "siac.cts.output.cta.v2.9.highindicationpriceupperlimitpriceband", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.high_price = ProtoField.new("High Price", "siac.cts.output.cta.v2.9.highprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.index = ProtoField.new("Index", "siac.cts.output.cta.v2.9.index", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.index_message_type = ProtoField.new("Index Message Type", "siac.cts.output.cta.v2.9.indexmessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.index_payload = ProtoField.new("Index Payload", "siac.cts.output.cta.v2.9.indexpayload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.index_symbol = ProtoField.new("Index Symbol", "siac.cts.output.cta.v2.9.indexsymbol", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.index_value = ProtoField.new("Index Value", "siac.cts.output.cta.v2.9.indexvalue", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.initiating_participant_id = ProtoField.new("Initiating Participant Id", "siac.cts.output.cta.v2.9.initiatingparticipantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cts.output.cta.v2.9.instrumenttype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.last_participant_id = ProtoField.new("Last Participant Id", "siac.cts.output.cta.v2.9.lastparticipantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.last_price = ProtoField.new("Last Price", "siac.cts.output.cta.v2.9.lastprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.limit_up_limit_down_indicator = ProtoField.new("Limit Up Limit Down Indicator", "siac.cts.output.cta.v2.9.limituplimitdownindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.low_indication_price_lower_limit_price_band = ProtoField.new("Low Indication Price Lower Limit Price Band", "siac.cts.output.cta.v2.9.lowindicationpricelowerlimitpriceband", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.low_price = ProtoField.new("Low Price", "siac.cts.output.cta.v2.9.lowprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.market_status = ProtoField.new("Market Status", "siac.cts.output.cta.v2.9.marketstatus", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.market_status_message_type = ProtoField.new("Market Status Message Type", "siac.cts.output.cta.v2.9.marketstatusmessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.market_status_payload = ProtoField.new("Market Status Payload", "siac.cts.output.cta.v2.9.marketstatuspayload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.market_wide_circuit_breaker_level_indicator = ProtoField.new("Market Wide Circuit Breaker Level Indicator", "siac.cts.output.cta.v2.9.marketwidecircuitbreakerlevelindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.message = ProtoField.new("Message", "siac.cts.output.cta.v2.9.message", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.message_category = ProtoField.new("Message Category", "siac.cts.output.cta.v2.9.messagecategory", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.message_header = ProtoField.new("Message Header", "siac.cts.output.cta.v2.9.messageheader", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.message_id = ProtoField.new("Message Id", "siac.cts.output.cta.v2.9.messageid", ftypes.UINT8)
omi_siac_cts_output_cta_v2_9.fields.message_length = ProtoField.new("Message Length", "siac.cts.output.cta.v2.9.messagelength", ftypes.UINT16)
omi_siac_cts_output_cta_v2_9.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cts.output.cta.v2.9.messagesinblock", ftypes.UINT8)
omi_siac_cts_output_cta_v2_9.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "siac.cts.output.cta.v2.9.mwcblevel1", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cts.output.cta.v2.9.mwcblevel2", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cts.output.cta.v2.9.mwcblevel3", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cts.output.cta.v2.9.nanoseconds", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cts.output.cta.v2.9.numberofextensions", ftypes.UINT8)
omi_siac_cts_output_cta_v2_9.fields.number_of_participants = ProtoField.new("Number Of Participants", "siac.cts.output.cta.v2.9.numberofparticipants", ftypes.UINT8)
omi_siac_cts_output_cta_v2_9.fields.offer_index_value = ProtoField.new("Offer Index Value", "siac.cts.output.cta.v2.9.offerindexvalue", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.open_price = ProtoField.new("Open Price", "siac.cts.output.cta.v2.9.openprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.original_participant_reference_number = ProtoField.new("Original Participant Reference Number", "siac.cts.output.cta.v2.9.originalparticipantreferencenumber", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.original_trade = ProtoField.new("Original Trade", "siac.cts.output.cta.v2.9.originaltrade", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.packet = ProtoField.new("Packet", "siac.cts.output.cta.v2.9.packet", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.participant_data = ProtoField.new("Participant Data", "siac.cts.output.cta.v2.9.participantdata", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.participant_id = ProtoField.new("Participant Id", "siac.cts.output.cta.v2.9.participantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.participant_open_high_low_last_indicator = ProtoField.new("Participant Open High Low Last Indicator", "siac.cts.output.cta.v2.9.participantopenhighlowlastindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cts.output.cta.v2.9.participantreferencenumber", ftypes.INT64)
omi_siac_cts_output_cta_v2_9.fields.participants = ProtoField.new("Participants", "siac.cts.output.cta.v2.9.participants", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.payload = ProtoField.new("Payload", "siac.cts.output.cta.v2.9.payload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.previous_close_price = ProtoField.new("Previous Close Price", "siac.cts.output.cta.v2.9.previouscloseprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.previous_close_price_date = ProtoField.new("Previous Close Price Date", "siac.cts.output.cta.v2.9.previousclosepricedate", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cts.output.cta.v2.9.primarylistingmarketparticipantid", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.prior_day = ProtoField.new("Prior Day", "siac.cts.output.cta.v2.9.priorday", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.prior_day_message_type = ProtoField.new("Prior Day Message Type", "siac.cts.output.cta.v2.9.priordaymessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.prior_day_payload = ProtoField.new("Prior Day Payload", "siac.cts.output.cta.v2.9.priordaypayload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.prior_day_trade_date_and_time = ProtoField.new("Prior Day Trade Date And Time", "siac.cts.output.cta.v2.9.priordaytradedateandtime", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.reserved = ProtoField.new("Reserved", "siac.cts.output.cta.v2.9.reserved", ftypes.UINT8)
omi_siac_cts_output_cta_v2_9.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.cts.output.cta.v2.9.retransmissionindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.sale_condition = ProtoField.new("Sale Condition", "siac.cts.output.cta.v2.9.salecondition", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.sale_condition_category = ProtoField.new("Sale Condition Category", "siac.cts.output.cta.v2.9.saleconditioncategory", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.sale_conditions = ProtoField.new("Sale Conditions", "siac.cts.output.cta.v2.9.saleconditions", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.seconds = ProtoField.new("Seconds", "siac.cts.output.cta.v2.9.seconds", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.security_status = ProtoField.new("Security Status", "siac.cts.output.cta.v2.9.securitystatus", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cts.output.cta.v2.9.securitysymbol", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "siac.cts.output.cta.v2.9.securitysymbolshort", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.sell_volume = ProtoField.new("Sell Volume", "siac.cts.output.cta.v2.9.sellvolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.sellers_sale_days = ProtoField.new("Sellers Sale Days", "siac.cts.output.cta.v2.9.sellerssaledays", ftypes.UINT8)
omi_siac_cts_output_cta_v2_9.fields.settlement_type = ProtoField.new("Settlement Type", "siac.cts.output.cta.v2.9.settlementtype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cts.output.cta.v2.9.shortsalerestrictionindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.sip_block_timestamp = ProtoField.new("Sip Block Timestamp", "siac.cts.output.cta.v2.9.sipblocktimestamp", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.sro_trade_detail = ProtoField.new("Sro Trade Detail", "siac.cts.output.cta.v2.9.srotradedetail", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.stop_stock_indicator = ProtoField.new("Stop Stock Indicator", "siac.cts.output.cta.v2.9.stopstockindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.summary = ProtoField.new("Summary", "siac.cts.output.cta.v2.9.summary", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.summary_message_type = ProtoField.new("Summary Message Type", "siac.cts.output.cta.v2.9.summarymessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.summary_payload = ProtoField.new("Summary Payload", "siac.cts.output.cta.v2.9.summarypayload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.tick = ProtoField.new("Tick", "siac.cts.output.cta.v2.9.tick", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.timestamp_1 = ProtoField.new("Timestamp 1", "siac.cts.output.cta.v2.9.timestamp1", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.timestamp_2 = ProtoField.new("Timestamp 2", "siac.cts.output.cta.v2.9.timestamp2", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.total_trades = ProtoField.new("Total Trades", "siac.cts.output.cta.v2.9.totaltrades", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.total_volume = ProtoField.new("Total Volume", "siac.cts.output.cta.v2.9.totalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_9.fields.total_volume_short = ProtoField.new("Total Volume Short", "siac.cts.output.cta.v2.9.totalvolumeshort", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.trade = ProtoField.new("Trade", "siac.cts.output.cta.v2.9.trade", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_message_type = ProtoField.new("Trade Message Type", "siac.cts.output.cta.v2.9.trademessagetype", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_payload = ProtoField.new("Trade Payload", "siac.cts.output.cta.v2.9.tradepayload", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_price = ProtoField.new("Trade Price", "siac.cts.output.cta.v2.9.tradeprice", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.trade_price_short = ProtoField.new("Trade Price Short", "siac.cts.output.cta.v2.9.tradepriceshort", ftypes.DOUBLE)
omi_siac_cts_output_cta_v2_9.fields.trade_reporting_facility_id = ProtoField.new("Trade Reporting Facility Id", "siac.cts.output.cta.v2.9.tradereportingfacilityid", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_through_exempt_indicator = ProtoField.new("Trade Through Exempt Indicator", "siac.cts.output.cta.v2.9.tradethroughexemptindicator", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_through_exempt_reason = ProtoField.new("Trade Through Exempt Reason", "siac.cts.output.cta.v2.9.tradethroughexemptreason", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_total_volume = ProtoField.new("Trade Total Volume", "siac.cts.output.cta.v2.9.tradetotalvolume", ftypes.UINT64)
omi_siac_cts_output_cta_v2_9.fields.trade_volume = ProtoField.new("Trade Volume", "siac.cts.output.cta.v2.9.tradevolume", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.trade_volume_short = ProtoField.new("Trade Volume Short", "siac.cts.output.cta.v2.9.tradevolumeshort", ftypes.UINT16)
omi_siac_cts_output_cta_v2_9.fields.transaction_id = ProtoField.new("Transaction Id", "siac.cts.output.cta.v2.9.transactionid", ftypes.UINT32)
omi_siac_cts_output_cta_v2_9.fields.version = ProtoField.new("Version", "siac.cts.output.cta.v2.9.version", ftypes.UINT8)

-- Siac Cts Output Cta 2.9 messages
omi_siac_cts_output_cta_v2_9.fields.approximate_adjusted_volume_market_center_message = ProtoField.new("Approximate Adjusted Volume Market Center Message", "siac.cts.output.cta.v2.9.approximateadjustedvolumemarketcentermessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.approximate_trades_and_total_dollar_value_message = ProtoField.new("Approximate Trades And Total Dollar Value Message", "siac.cts.output.cta.v2.9.approximatetradesandtotaldollarvaluemessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.auction_status_message = ProtoField.new("Auction Status Message", "siac.cts.output.cta.v2.9.auctionstatusmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.bid_and_offer_index_message = ProtoField.new("Bid And Offer Index Message", "siac.cts.output.cta.v2.9.bidandofferindexmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.consolidated_end_of_day_summary_message = ProtoField.new("Consolidated End Of Day Summary Message", "siac.cts.output.cta.v2.9.consolidatedendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.consolidated_start_of_day_summary_message = ProtoField.new("Consolidated Start Of Day Summary Message", "siac.cts.output.cta.v2.9.consolidatedstartofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.crossing_session_summary_message = ProtoField.new("Crossing Session Summary Message", "siac.cts.output.cta.v2.9.crossingsessionsummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.disaster_recovery_data_center_activation_message = ProtoField.new("Disaster Recovery Data Center Activation Message", "siac.cts.output.cta.v2.9.disasterrecoverydatacenteractivationmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.end_of_day_message = ProtoField.new("End Of Day Message", "siac.cts.output.cta.v2.9.endofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.end_of_end_of_day_message = ProtoField.new("End Of End Of Day Message", "siac.cts.output.cta.v2.9.endofendofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.end_of_start_of_day_message = ProtoField.new("End Of Start Of Day Message", "siac.cts.output.cta.v2.9.endofstartofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.index_message = ProtoField.new("Index Message", "siac.cts.output.cta.v2.9.indexmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cts.output.cta.v2.9.lineintegritymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.long_trade_message = ProtoField.new("Long Trade Message", "siac.cts.output.cta.v2.9.longtrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.market_wide_circuit_breaker_decline_level_status_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Message", "siac.cts.output.cta.v2.9.marketwidecircuitbreakerdeclinelevelstatusmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "siac.cts.output.cta.v2.9.marketwidecircuitbreakerstatusmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.participant_end_of_day_summary_message = ProtoField.new("Participant End Of Day Summary Message", "siac.cts.output.cta.v2.9.participantendofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.participant_start_of_day_summary_message = ProtoField.new("Participant Start Of Day Summary Message", "siac.cts.output.cta.v2.9.participantstartofdaysummarymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.prior_day_trade_correction_message = ProtoField.new("Prior Day Trade Correction Message", "siac.cts.output.cta.v2.9.priordaytradecorrectionmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.prior_day_trade_message = ProtoField.new("Prior Day Trade Message", "siac.cts.output.cta.v2.9.priordaytrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.reset_block_sequence_number_message = ProtoField.new("Reset Block Sequence Number Message", "siac.cts.output.cta.v2.9.resetblocksequencenumbermessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.short_trade_message = ProtoField.new("Short Trade Message", "siac.cts.output.cta.v2.9.shorttrademessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cts.output.cta.v2.9.startofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.start_of_end_of_day_message = ProtoField.new("Start Of End Of Day Message", "siac.cts.output.cta.v2.9.startofendofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.start_of_start_of_day_message = ProtoField.new("Start Of Start Of Day Message", "siac.cts.output.cta.v2.9.startofstartofdaymessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_cancel_error_message = ProtoField.new("Trade Cancel Error Message", "siac.cts.output.cta.v2.9.tradecancelerrormessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trade_correction_message = ProtoField.new("Trade Correction Message", "siac.cts.output.cta.v2.9.tradecorrectionmessage", ftypes.STRING)
omi_siac_cts_output_cta_v2_9.fields.trading_status_message = ProtoField.new("Trading Status Message", "siac.cts.output.cta.v2.9.tradingstatusmessage", ftypes.STRING)

-- Siac Cts Output Cta 2.9 generated fields
omi_siac_cts_output_cta_v2_9.fields.message_index = ProtoField.new("Message Index", "siac.cts.output.cta.v2.9.messageindex", ftypes.UINT16)
omi_siac_cts_output_cta_v2_9.fields.participants_index = ProtoField.new("Participants Index", "siac.cts.output.cta.v2.9.participantsindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Siac Cts Output Cta 2.9 Element Dissection Options
show.administrative = true
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

-- Register Siac Cts Output Cta 2.9 Show Options
omi_siac_cts_output_cta_v2_9.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_approximate_adjusted_volume_market_center_message = Pref.bool("Show Approximate Adjusted Volume Market Center Message", show.approximate_adjusted_volume_market_center_message, "Parse and add Approximate Adjusted Volume Market Center Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_approximate_trades_and_total_dollar_value_message = Pref.bool("Show Approximate Trades And Total Dollar Value Message", show.approximate_trades_and_total_dollar_value_message, "Parse and add Approximate Trades And Total Dollar Value Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_auction_status_message = Pref.bool("Show Auction Status Message", show.auction_status_message, "Parse and add Auction Status Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_bid_and_offer_index_message = Pref.bool("Show Bid And Offer Index Message", show.bid_and_offer_index_message, "Parse and add Bid And Offer Index Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_data = Pref.bool("Show Consolidated Data", show.consolidated_data, "Parse and add Consolidated Data to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_end_of_day_summary_message = Pref.bool("Show Consolidated End Of Day Summary Message", show.consolidated_end_of_day_summary_message, "Parse and add Consolidated End Of Day Summary Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_start_of_day_summary_message = Pref.bool("Show Consolidated Start Of Day Summary Message", show.consolidated_start_of_day_summary_message, "Parse and add Consolidated Start Of Day Summary Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_corrected_trade = Pref.bool("Show Corrected Trade", show.corrected_trade, "Parse and add Corrected Trade to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_crossing_session_summary_message = Pref.bool("Show Crossing Session Summary Message", show.crossing_session_summary_message, "Parse and add Crossing Session Summary Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_disaster_recovery_data_center_activation_message = Pref.bool("Show Disaster Recovery Data Center Activation Message", show.disaster_recovery_data_center_activation_message, "Parse and add Disaster Recovery Data Center Activation Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_end_of_end_of_day_message = Pref.bool("Show End Of End Of Day Message", show.end_of_end_of_day_message, "Parse and add End Of End Of Day Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_end_of_start_of_day_message = Pref.bool("Show End Of Start Of Day Message", show.end_of_start_of_day_message, "Parse and add End Of Start Of Day Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_index = Pref.bool("Show Index", show.index, "Parse and add Index to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_index_message = Pref.bool("Show Index Message", show.index_message, "Parse and add Index Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_long_trade_message = Pref.bool("Show Long Trade Message", show.long_trade_message, "Parse and add Long Trade Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_market_status = Pref.bool("Show Market Status", show.market_status, "Parse and add Market Status to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_decline_level_status_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Status Message", show.market_wide_circuit_breaker_decline_level_status_message, "Parse and add Market Wide Circuit Breaker Decline Level Status Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_status_message = Pref.bool("Show Market Wide Circuit Breaker Status Message", show.market_wide_circuit_breaker_status_message, "Parse and add Market Wide Circuit Breaker Status Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_original_trade = Pref.bool("Show Original Trade", show.original_trade, "Parse and add Original Trade to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_participant_data = Pref.bool("Show Participant Data", show.participant_data, "Parse and add Participant Data to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_participant_end_of_day_summary_message = Pref.bool("Show Participant End Of Day Summary Message", show.participant_end_of_day_summary_message, "Parse and add Participant End Of Day Summary Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_participant_start_of_day_summary_message = Pref.bool("Show Participant Start Of Day Summary Message", show.participant_start_of_day_summary_message, "Parse and add Participant Start Of Day Summary Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_participants = Pref.bool("Show Participants", show.participants, "Parse and add Participants to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_prior_day = Pref.bool("Show Prior Day", show.prior_day, "Parse and add Prior Day to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_correction_message = Pref.bool("Show Prior Day Trade Correction Message", show.prior_day_trade_correction_message, "Parse and add Prior Day Trade Correction Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_date_and_time = Pref.bool("Show Prior Day Trade Date And Time", show.prior_day_trade_date_and_time, "Parse and add Prior Day Trade Date And Time to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_message = Pref.bool("Show Prior Day Trade Message", show.prior_day_trade_message, "Parse and add Prior Day Trade Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_reset_block_sequence_number_message = Pref.bool("Show Reset Block Sequence Number Message", show.reset_block_sequence_number_message, "Parse and add Reset Block Sequence Number Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_sale_conditions = Pref.bool("Show Sale Conditions", show.sale_conditions, "Parse and add Sale Conditions to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_short_trade_message = Pref.bool("Show Short Trade Message", show.short_trade_message, "Parse and add Short Trade Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_sip_block_timestamp = Pref.bool("Show Sip Block Timestamp", show.sip_block_timestamp, "Parse and add Sip Block Timestamp to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_start_of_end_of_day_message = Pref.bool("Show Start Of End Of Day Message", show.start_of_end_of_day_message, "Parse and add Start Of End Of Day Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_start_of_start_of_day_message = Pref.bool("Show Start Of Start Of Day Message", show.start_of_start_of_day_message, "Parse and add Start Of Start Of Day Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_summary = Pref.bool("Show Summary", show.summary, "Parse and add Summary to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_timestamp_1 = Pref.bool("Show Timestamp 1", show.timestamp_1, "Parse and add Timestamp 1 to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_timestamp_2 = Pref.bool("Show Timestamp 2", show.timestamp_2, "Parse and add Timestamp 2 to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_trade = Pref.bool("Show Trade", show.trade, "Parse and add Trade to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_trade_cancel_error_message = Pref.bool("Show Trade Cancel Error Message", show.trade_cancel_error_message, "Parse and add Trade Cancel Error Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_trade_correction_message = Pref.bool("Show Trade Correction Message", show.trade_correction_message, "Parse and add Trade Correction Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_trading_status_message = Pref.bool("Show Trading Status Message", show.trading_status_message, "Parse and add Trading Status Message to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_administrative_payload = Pref.bool("Show Administrative Payload", show.administrative_payload, "Parse and add Administrative Payload to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_index_payload = Pref.bool("Show Index Payload", show.index_payload, "Parse and add Index Payload to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_market_status_payload = Pref.bool("Show Market Status Payload", show.market_status_payload, "Parse and add Market Status Payload to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_payload = Pref.bool("Show Prior Day Payload", show.prior_day_payload, "Parse and add Prior Day Payload to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_summary_payload = Pref.bool("Show Summary Payload", show.summary_payload, "Parse and add Summary Payload to protocol tree")
omi_siac_cts_output_cta_v2_9.prefs.show_trade_payload = Pref.bool("Show Trade Payload", show.trade_payload, "Parse and add Trade Payload to protocol tree")

-- Handle changed preferences
function omi_siac_cts_output_cta_v2_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.administrative ~= omi_siac_cts_output_cta_v2_9.prefs.show_administrative then
    show.administrative = omi_siac_cts_output_cta_v2_9.prefs.show_administrative
    changed = true
  end
  if show.approximate_adjusted_volume_market_center_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_approximate_adjusted_volume_market_center_message then
    show.approximate_adjusted_volume_market_center_message = omi_siac_cts_output_cta_v2_9.prefs.show_approximate_adjusted_volume_market_center_message
    changed = true
  end
  if show.approximate_trades_and_total_dollar_value_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_approximate_trades_and_total_dollar_value_message then
    show.approximate_trades_and_total_dollar_value_message = omi_siac_cts_output_cta_v2_9.prefs.show_approximate_trades_and_total_dollar_value_message
    changed = true
  end
  if show.auction_status_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_auction_status_message then
    show.auction_status_message = omi_siac_cts_output_cta_v2_9.prefs.show_auction_status_message
    changed = true
  end
  if show.bid_and_offer_index_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_bid_and_offer_index_message then
    show.bid_and_offer_index_message = omi_siac_cts_output_cta_v2_9.prefs.show_bid_and_offer_index_message
    changed = true
  end
  if show.block_header ~= omi_siac_cts_output_cta_v2_9.prefs.show_block_header then
    show.block_header = omi_siac_cts_output_cta_v2_9.prefs.show_block_header
    changed = true
  end
  if show.consolidated_data ~= omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_data then
    show.consolidated_data = omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_data
    changed = true
  end
  if show.consolidated_end_of_day_summary_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_end_of_day_summary_message then
    show.consolidated_end_of_day_summary_message = omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_end_of_day_summary_message
    changed = true
  end
  if show.consolidated_start_of_day_summary_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_start_of_day_summary_message then
    show.consolidated_start_of_day_summary_message = omi_siac_cts_output_cta_v2_9.prefs.show_consolidated_start_of_day_summary_message
    changed = true
  end
  if show.control ~= omi_siac_cts_output_cta_v2_9.prefs.show_control then
    show.control = omi_siac_cts_output_cta_v2_9.prefs.show_control
    changed = true
  end
  if show.corrected_trade ~= omi_siac_cts_output_cta_v2_9.prefs.show_corrected_trade then
    show.corrected_trade = omi_siac_cts_output_cta_v2_9.prefs.show_corrected_trade
    changed = true
  end
  if show.crossing_session_summary_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_crossing_session_summary_message then
    show.crossing_session_summary_message = omi_siac_cts_output_cta_v2_9.prefs.show_crossing_session_summary_message
    changed = true
  end
  if show.disaster_recovery_data_center_activation_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_disaster_recovery_data_center_activation_message then
    show.disaster_recovery_data_center_activation_message = omi_siac_cts_output_cta_v2_9.prefs.show_disaster_recovery_data_center_activation_message
    changed = true
  end
  if show.end_of_day_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_end_of_day_message then
    show.end_of_day_message = omi_siac_cts_output_cta_v2_9.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_end_of_day_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_end_of_end_of_day_message then
    show.end_of_end_of_day_message = omi_siac_cts_output_cta_v2_9.prefs.show_end_of_end_of_day_message
    changed = true
  end
  if show.end_of_start_of_day_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_end_of_start_of_day_message then
    show.end_of_start_of_day_message = omi_siac_cts_output_cta_v2_9.prefs.show_end_of_start_of_day_message
    changed = true
  end
  if show.index ~= omi_siac_cts_output_cta_v2_9.prefs.show_index then
    show.index = omi_siac_cts_output_cta_v2_9.prefs.show_index
    changed = true
  end
  if show.index_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_index_message then
    show.index_message = omi_siac_cts_output_cta_v2_9.prefs.show_index_message
    changed = true
  end
  if show.line_integrity_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_line_integrity_message then
    show.line_integrity_message = omi_siac_cts_output_cta_v2_9.prefs.show_line_integrity_message
    changed = true
  end
  if show.long_trade_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_long_trade_message then
    show.long_trade_message = omi_siac_cts_output_cta_v2_9.prefs.show_long_trade_message
    changed = true
  end
  if show.market_status ~= omi_siac_cts_output_cta_v2_9.prefs.show_market_status then
    show.market_status = omi_siac_cts_output_cta_v2_9.prefs.show_market_status
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_status_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_decline_level_status_message then
    show.market_wide_circuit_breaker_decline_level_status_message = omi_siac_cts_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_decline_level_status_message
    changed = true
  end
  if show.market_wide_circuit_breaker_status_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_status_message then
    show.market_wide_circuit_breaker_status_message = omi_siac_cts_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_status_message
    changed = true
  end
  if show.message ~= omi_siac_cts_output_cta_v2_9.prefs.show_message then
    show.message = omi_siac_cts_output_cta_v2_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_siac_cts_output_cta_v2_9.prefs.show_message_header then
    show.message_header = omi_siac_cts_output_cta_v2_9.prefs.show_message_header
    changed = true
  end
  if show.original_trade ~= omi_siac_cts_output_cta_v2_9.prefs.show_original_trade then
    show.original_trade = omi_siac_cts_output_cta_v2_9.prefs.show_original_trade
    changed = true
  end
  if show.packet ~= omi_siac_cts_output_cta_v2_9.prefs.show_packet then
    show.packet = omi_siac_cts_output_cta_v2_9.prefs.show_packet
    changed = true
  end
  if show.participant_data ~= omi_siac_cts_output_cta_v2_9.prefs.show_participant_data then
    show.participant_data = omi_siac_cts_output_cta_v2_9.prefs.show_participant_data
    changed = true
  end
  if show.participant_end_of_day_summary_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_participant_end_of_day_summary_message then
    show.participant_end_of_day_summary_message = omi_siac_cts_output_cta_v2_9.prefs.show_participant_end_of_day_summary_message
    changed = true
  end
  if show.participant_start_of_day_summary_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_participant_start_of_day_summary_message then
    show.participant_start_of_day_summary_message = omi_siac_cts_output_cta_v2_9.prefs.show_participant_start_of_day_summary_message
    changed = true
  end
  if show.participants ~= omi_siac_cts_output_cta_v2_9.prefs.show_participants then
    show.participants = omi_siac_cts_output_cta_v2_9.prefs.show_participants
    changed = true
  end
  if show.prior_day ~= omi_siac_cts_output_cta_v2_9.prefs.show_prior_day then
    show.prior_day = omi_siac_cts_output_cta_v2_9.prefs.show_prior_day
    changed = true
  end
  if show.prior_day_trade_correction_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_correction_message then
    show.prior_day_trade_correction_message = omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_correction_message
    changed = true
  end
  if show.prior_day_trade_date_and_time ~= omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_date_and_time then
    show.prior_day_trade_date_and_time = omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_date_and_time
    changed = true
  end
  if show.prior_day_trade_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_message then
    show.prior_day_trade_message = omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_trade_message
    changed = true
  end
  if show.reset_block_sequence_number_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_reset_block_sequence_number_message then
    show.reset_block_sequence_number_message = omi_siac_cts_output_cta_v2_9.prefs.show_reset_block_sequence_number_message
    changed = true
  end
  if show.sale_conditions ~= omi_siac_cts_output_cta_v2_9.prefs.show_sale_conditions then
    show.sale_conditions = omi_siac_cts_output_cta_v2_9.prefs.show_sale_conditions
    changed = true
  end
  if show.short_trade_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_short_trade_message then
    show.short_trade_message = omi_siac_cts_output_cta_v2_9.prefs.show_short_trade_message
    changed = true
  end
  if show.sip_block_timestamp ~= omi_siac_cts_output_cta_v2_9.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = omi_siac_cts_output_cta_v2_9.prefs.show_sip_block_timestamp
    changed = true
  end
  if show.start_of_day_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_start_of_day_message then
    show.start_of_day_message = omi_siac_cts_output_cta_v2_9.prefs.show_start_of_day_message
    changed = true
  end
  if show.start_of_end_of_day_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_start_of_end_of_day_message then
    show.start_of_end_of_day_message = omi_siac_cts_output_cta_v2_9.prefs.show_start_of_end_of_day_message
    changed = true
  end
  if show.start_of_start_of_day_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_start_of_start_of_day_message then
    show.start_of_start_of_day_message = omi_siac_cts_output_cta_v2_9.prefs.show_start_of_start_of_day_message
    changed = true
  end
  if show.summary ~= omi_siac_cts_output_cta_v2_9.prefs.show_summary then
    show.summary = omi_siac_cts_output_cta_v2_9.prefs.show_summary
    changed = true
  end
  if show.timestamp_1 ~= omi_siac_cts_output_cta_v2_9.prefs.show_timestamp_1 then
    show.timestamp_1 = omi_siac_cts_output_cta_v2_9.prefs.show_timestamp_1
    changed = true
  end
  if show.timestamp_2 ~= omi_siac_cts_output_cta_v2_9.prefs.show_timestamp_2 then
    show.timestamp_2 = omi_siac_cts_output_cta_v2_9.prefs.show_timestamp_2
    changed = true
  end
  if show.trade ~= omi_siac_cts_output_cta_v2_9.prefs.show_trade then
    show.trade = omi_siac_cts_output_cta_v2_9.prefs.show_trade
    changed = true
  end
  if show.trade_cancel_error_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_trade_cancel_error_message then
    show.trade_cancel_error_message = omi_siac_cts_output_cta_v2_9.prefs.show_trade_cancel_error_message
    changed = true
  end
  if show.trade_correction_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_trade_correction_message then
    show.trade_correction_message = omi_siac_cts_output_cta_v2_9.prefs.show_trade_correction_message
    changed = true
  end
  if show.trading_status_message ~= omi_siac_cts_output_cta_v2_9.prefs.show_trading_status_message then
    show.trading_status_message = omi_siac_cts_output_cta_v2_9.prefs.show_trading_status_message
    changed = true
  end
  if show.administrative_payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_administrative_payload then
    show.administrative_payload = omi_siac_cts_output_cta_v2_9.prefs.show_administrative_payload
    changed = true
  end
  if show.control_payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_control_payload then
    show.control_payload = omi_siac_cts_output_cta_v2_9.prefs.show_control_payload
    changed = true
  end
  if show.index_payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_index_payload then
    show.index_payload = omi_siac_cts_output_cta_v2_9.prefs.show_index_payload
    changed = true
  end
  if show.market_status_payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_market_status_payload then
    show.market_status_payload = omi_siac_cts_output_cta_v2_9.prefs.show_market_status_payload
    changed = true
  end
  if show.payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_payload then
    show.payload = omi_siac_cts_output_cta_v2_9.prefs.show_payload
    changed = true
  end
  if show.prior_day_payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_payload then
    show.prior_day_payload = omi_siac_cts_output_cta_v2_9.prefs.show_prior_day_payload
    changed = true
  end
  if show.summary_payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_summary_payload then
    show.summary_payload = omi_siac_cts_output_cta_v2_9.prefs.show_summary_payload
    changed = true
  end
  if show.trade_payload ~= omi_siac_cts_output_cta_v2_9.prefs.show_trade_payload then
    show.trade_payload = omi_siac_cts_output_cta_v2_9.prefs.show_trade_payload
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
-- Dissect Siac Cts Output Cta 2.9
-----------------------------------------------------------------------

-- Size: Block Pad Byte
siac_cts_output_cta_v2_9_size_of.block_pad_byte = 1

-- Display: Block Pad Byte
siac_cts_output_cta_v2_9_display.block_pad_byte = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cts_output_cta_v2_9_dissect.block_pad_byte = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.block_pad_byte
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.block_pad_byte(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Size: Tick
siac_cts_output_cta_v2_9_size_of.tick = 1

-- Display: Tick
siac_cts_output_cta_v2_9_display.tick = function(value)
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
siac_cts_output_cta_v2_9_dissect.tick = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.tick
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.tick(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.tick, range, value, display)

  return offset + length, value
end

-- Size: Total Volume Short
siac_cts_output_cta_v2_9_size_of.total_volume_short = 4

-- Display: Total Volume Short
siac_cts_output_cta_v2_9_display.total_volume_short = function(value)
  return "Total Volume Short: "..value
end

-- Dissect: Total Volume Short
siac_cts_output_cta_v2_9_dissect.total_volume_short = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.total_volume_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.total_volume_short(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.total_volume_short, range, value, display)

  return offset + length, value
end

-- Size: Open Price
siac_cts_output_cta_v2_9_size_of.open_price = 8

-- Display: Open Price
siac_cts_output_cta_v2_9_display.open_price = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
translate.open_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Open Price
siac_cts_output_cta_v2_9_dissect.open_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.open_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.open_price(raw)
  local display = siac_cts_output_cta_v2_9_display.open_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price
siac_cts_output_cta_v2_9_size_of.low_price = 8

-- Display: Low Price
siac_cts_output_cta_v2_9_display.low_price = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
translate.low_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Price
siac_cts_output_cta_v2_9_dissect.low_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.low_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.low_price(raw)
  local display = siac_cts_output_cta_v2_9_display.low_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
siac_cts_output_cta_v2_9_size_of.high_price = 8

-- Display: High Price
siac_cts_output_cta_v2_9_display.high_price = function(value)
  return "High Price: "..value
end

-- Translate: High Price
translate.high_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Price
siac_cts_output_cta_v2_9_dissect.high_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.high_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.high_price(raw)
  local display = siac_cts_output_cta_v2_9_display.high_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Last Price
siac_cts_output_cta_v2_9_size_of.last_price = 8

-- Display: Last Price
siac_cts_output_cta_v2_9_display.last_price = function(value)
  return "Last Price: "..value
end

-- Translate: Last Price
translate.last_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price
siac_cts_output_cta_v2_9_dissect.last_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.last_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.last_price(raw)
  local display = siac_cts_output_cta_v2_9_display.last_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Previous Close Price Date
siac_cts_output_cta_v2_9_size_of.previous_close_price_date = 4

-- Display: Previous Close Price Date
siac_cts_output_cta_v2_9_display.previous_close_price_date = function(value)
  return "Previous Close Price Date: "..value
end

-- Dissect: Previous Close Price Date
siac_cts_output_cta_v2_9_dissect.previous_close_price_date = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.previous_close_price_date
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.previous_close_price_date(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.previous_close_price_date, range, value, display)

  return offset + length, value
end

-- Calculate size of: Participant Data
siac_cts_output_cta_v2_9_size_of.participant_data = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.previous_close_price_date

  index = index + siac_cts_output_cta_v2_9_size_of.last_price

  index = index + siac_cts_output_cta_v2_9_size_of.high_price

  index = index + siac_cts_output_cta_v2_9_size_of.low_price

  index = index + siac_cts_output_cta_v2_9_size_of.open_price

  index = index + siac_cts_output_cta_v2_9_size_of.total_volume_short

  index = index + siac_cts_output_cta_v2_9_size_of.tick

  return index
end

-- Display: Participant Data
siac_cts_output_cta_v2_9_display.participant_data = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Data
siac_cts_output_cta_v2_9_dissect.participant_data_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_9_dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = siac_cts_output_cta_v2_9_dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = siac_cts_output_cta_v2_9_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = siac_cts_output_cta_v2_9_dissect.low_price(buffer, index, packet, parent)

  -- Open Price: 8 Byte Unsigned Fixed Width Integer
  index, open_price = siac_cts_output_cta_v2_9_dissect.open_price(buffer, index, packet, parent)

  -- Total Volume Short: 4 Byte Unsigned Fixed Width Integer
  index, total_volume_short = siac_cts_output_cta_v2_9_dissect.total_volume_short(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 5 values
  index, tick = siac_cts_output_cta_v2_9_dissect.tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Data
siac_cts_output_cta_v2_9_dissect.participant_data = function(buffer, offset, packet, parent)
  if show.participant_data then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.participant_data, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.participant_data_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.participant_data(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.participant_data_fields(buffer, offset, packet, parent)
  end
end

-- Size: Last Participant Id
siac_cts_output_cta_v2_9_size_of.last_participant_id = 1

-- Display: Last Participant Id
siac_cts_output_cta_v2_9_display.last_participant_id = function(value)
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
siac_cts_output_cta_v2_9_dissect.last_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.last_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.last_participant_id(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.last_participant_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Consolidated Data
siac_cts_output_cta_v2_9_size_of.consolidated_data = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.previous_close_price_date

  index = index + siac_cts_output_cta_v2_9_size_of.last_participant_id

  index = index + siac_cts_output_cta_v2_9_size_of.last_price

  index = index + siac_cts_output_cta_v2_9_size_of.high_price

  index = index + siac_cts_output_cta_v2_9_size_of.low_price

  index = index + siac_cts_output_cta_v2_9_size_of.total_volume_short

  index = index + siac_cts_output_cta_v2_9_size_of.tick

  return index
end

-- Display: Consolidated Data
siac_cts_output_cta_v2_9_display.consolidated_data = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Data
siac_cts_output_cta_v2_9_dissect.consolidated_data_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_9_dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Participant Id: 1 Byte Ascii String Enum with 18 values
  index, last_participant_id = siac_cts_output_cta_v2_9_dissect.last_participant_id(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = siac_cts_output_cta_v2_9_dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = siac_cts_output_cta_v2_9_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = siac_cts_output_cta_v2_9_dissect.low_price(buffer, index, packet, parent)

  -- Total Volume Short: 4 Byte Unsigned Fixed Width Integer
  index, total_volume_short = siac_cts_output_cta_v2_9_dissect.total_volume_short(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 5 values
  index, tick = siac_cts_output_cta_v2_9_dissect.tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Data
siac_cts_output_cta_v2_9_dissect.consolidated_data = function(buffer, offset, packet, parent)
  if show.consolidated_data then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.consolidated_data, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.consolidated_data_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.consolidated_data(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.consolidated_data_fields(buffer, offset, packet, parent)
  end
end

-- Size: Financial Status Indicator
siac_cts_output_cta_v2_9_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
siac_cts_output_cta_v2_9_display.financial_status_indicator = function(value)
  if value == "0" then
    return "Financial Status Indicator: Not Applicable (0)"
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
siac_cts_output_cta_v2_9_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Primary Listing Market Participant Id
siac_cts_output_cta_v2_9_size_of.primary_listing_market_participant_id = 1

-- Display: Primary Listing Market Participant Id
siac_cts_output_cta_v2_9_display.primary_listing_market_participant_id = function(value)
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
siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.primary_listing_market_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.primary_listing_market_participant_id(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Restriction Indicator
siac_cts_output_cta_v2_9_size_of.short_sale_restriction_indicator = 1

-- Display: Short Sale Restriction Indicator
siac_cts_output_cta_v2_9_display.short_sale_restriction_indicator = function(value)
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
siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.short_sale_restriction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.short_sale_restriction_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Cancel Error Action
siac_cts_output_cta_v2_9_size_of.cancel_error_action = 1

-- Display: Cancel Error Action
siac_cts_output_cta_v2_9_display.cancel_error_action = function(value)
  if value == "1" then
    return "Cancel Error Action: Cancel (1)"
  end
  if value == "2" then
    return "Cancel Error Action: Error (2)"
  end

  return "Cancel Error Action: Unknown("..value..")"
end

-- Dissect: Cancel Error Action
siac_cts_output_cta_v2_9_dissect.cancel_error_action = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.cancel_error_action
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.cancel_error_action(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.cancel_error_action, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
siac_cts_output_cta_v2_9_size_of.nanoseconds = 4

-- Display: Nanoseconds
siac_cts_output_cta_v2_9_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cts_output_cta_v2_9_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Seconds
siac_cts_output_cta_v2_9_size_of.seconds = 4

-- Display: Seconds
siac_cts_output_cta_v2_9_display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cts_output_cta_v2_9_dissect.seconds = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.seconds(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp 2
siac_cts_output_cta_v2_9_size_of.timestamp_2 = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.seconds

  index = index + siac_cts_output_cta_v2_9_size_of.nanoseconds

  return index
end

-- Display: Timestamp 2
siac_cts_output_cta_v2_9_display.timestamp_2 = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp 2
siac_cts_output_cta_v2_9_dissect.timestamp_2_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cts_output_cta_v2_9_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cts_output_cta_v2_9_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 2
siac_cts_output_cta_v2_9_dissect.timestamp_2 = function(buffer, offset, packet, parent)
  if show.timestamp_2 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.timestamp_2, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.timestamp_2_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.timestamp_2(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.timestamp_2_fields(buffer, offset, packet, parent)
  end
end

-- Size: Original Participant Reference Number
siac_cts_output_cta_v2_9_size_of.original_participant_reference_number = 8

-- Display: Original Participant Reference Number
siac_cts_output_cta_v2_9_display.original_participant_reference_number = function(value)
  return "Original Participant Reference Number: "..value
end

-- Dissect: Original Participant Reference Number
siac_cts_output_cta_v2_9_dissect.original_participant_reference_number = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.original_participant_reference_number
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.original_participant_reference_number(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.original_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Trade Reporting Facility Id
siac_cts_output_cta_v2_9_size_of.trade_reporting_facility_id = 1

-- Display: Trade Reporting Facility Id
siac_cts_output_cta_v2_9_display.trade_reporting_facility_id = function(value)
  if value == " " then
    return "Trade Reporting Facility Id: Not Applicable (<whitespace>)"
  end
  if value == "B" then
    return "Trade Reporting Facility Id: Finra Nasdaq Chicago (B)"
  end
  if value == "N" then
    return "Trade Reporting Facility Id: Finra Nyse (N)"
  end
  if value == "B" then
    return "Trade Reporting Facility Id: Finra Nasdaq Carteret (B)"
  end

  return "Trade Reporting Facility Id: Unknown("..value..")"
end

-- Dissect: Trade Reporting Facility Id
siac_cts_output_cta_v2_9_dissect.trade_reporting_facility_id = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_reporting_facility_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.trade_reporting_facility_id(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_reporting_facility_id, range, value, display)

  return offset + length, value
end

-- Size: Trade Through Exempt Indicator
siac_cts_output_cta_v2_9_size_of.trade_through_exempt_indicator = 1

-- Display: Trade Through Exempt Indicator
siac_cts_output_cta_v2_9_display.trade_through_exempt_indicator = function(value)
  if value == "0" then
    return "Trade Through Exempt Indicator: Not A Trade Through Exemption (0)"
  end
  if value == "1" then
    return "Trade Through Exempt Indicator: Trade Through Exemption (1)"
  end

  return "Trade Through Exempt Indicator: Unknown("..value..")"
end

-- Dissect: Trade Through Exempt Indicator
siac_cts_output_cta_v2_9_dissect.trade_through_exempt_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_through_exempt_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.trade_through_exempt_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_through_exempt_indicator, range, value, display)

  return offset + length, value
end

-- Size: Stop Stock Indicator
siac_cts_output_cta_v2_9_size_of.stop_stock_indicator = 1

-- Display: Stop Stock Indicator
siac_cts_output_cta_v2_9_display.stop_stock_indicator = function(value)
  if value == "0" then
    return "Stop Stock Indicator: Not Applicable (0)"
  end
  if value == "1" then
    return "Stop Stock Indicator: Stop Stock (1)"
  end

  return "Stop Stock Indicator: Unknown("..value..")"
end

-- Dissect: Stop Stock Indicator
siac_cts_output_cta_v2_9_dissect.stop_stock_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.stop_stock_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.stop_stock_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.stop_stock_indicator, range, value, display)

  return offset + length, value
end

-- Size: Sellers Sale Days
siac_cts_output_cta_v2_9_size_of.sellers_sale_days = 1

-- Display: Sellers Sale Days
siac_cts_output_cta_v2_9_display.sellers_sale_days = function(value)
  return "Sellers Sale Days: "..value
end

-- Dissect: Sellers Sale Days
siac_cts_output_cta_v2_9_dissect.sellers_sale_days = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.sellers_sale_days
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.sellers_sale_days(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.sellers_sale_days, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume
siac_cts_output_cta_v2_9_size_of.trade_volume = 4

-- Display: Trade Volume
siac_cts_output_cta_v2_9_display.trade_volume = function(value)
  return "Trade Volume: "..value
end

-- Dissect: Trade Volume
siac_cts_output_cta_v2_9_dissect.trade_volume = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.trade_volume(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_volume, range, value, display)

  return offset + length, value
end

-- Size: Trade Price
siac_cts_output_cta_v2_9_size_of.trade_price = 8

-- Display: Trade Price
siac_cts_output_cta_v2_9_display.trade_price = function(value)
  return "Trade Price: "..value
end

-- Translate: Trade Price
translate.trade_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Trade Price
siac_cts_output_cta_v2_9_dissect.trade_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.trade_price(raw)
  local display = siac_cts_output_cta_v2_9_display.trade_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_price, range, value, display)

  return offset + length, value
end

-- Size: Sro Trade Detail
siac_cts_output_cta_v2_9_size_of.sro_trade_detail = 1

-- Display: Sro Trade Detail
siac_cts_output_cta_v2_9_display.sro_trade_detail = function(value)
  if value == " " then
    return "Sro Trade Detail: No Sro Required Trade Detail (<whitespace>)"
  end
  if value == "B" then
    return "Sro Trade Detail: Average Price Trade (B)"
  end
  if value == "E" then
    return "Sro Trade Detail: Automatic Execution (E)"
  end
  if value == "H" then
    return "Sro Trade Detail: Price Variation Trade (H)"
  end
  if value == "I" then
    return "Sro Trade Detail: Odd Lot Trade (I)"
  end
  if value == "K" then
    return "Sro Trade Detail: Rule 127 Or 155 (K)"
  end
  if value == "M" then
    return "Sro Trade Detail: Market Center Official Close (M)"
  end
  if value == "P" then
    return "Sro Trade Detail: Prior Reference Price (P)"
  end
  if value == "Q" then
    return "Sro Trade Detail: Market Center Official Open (Q)"
  end
  if value == "V" then
    return "Sro Trade Detail: Contingent Trade (V)"
  end
  if value == "X" then
    return "Sro Trade Detail: Cross Trade (X)"
  end

  return "Sro Trade Detail: Unknown("..value..")"
end

-- Dissect: Sro Trade Detail
siac_cts_output_cta_v2_9_dissect.sro_trade_detail = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.sro_trade_detail
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.sro_trade_detail(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.sro_trade_detail, range, value, display)

  return offset + length, value
end

-- Size: Extended Hours Or Sequence Type
siac_cts_output_cta_v2_9_size_of.extended_hours_or_sequence_type = 1

-- Display: Extended Hours Or Sequence Type
siac_cts_output_cta_v2_9_display.extended_hours_or_sequence_type = function(value)
  if value == " " then
    return "Extended Hours Or Sequence Type: Not Extended Hours Or Sold Out Of Sequence (<whitespace>)"
  end
  if value == "L" then
    return "Extended Hours Or Sequence Type: Sold Last (L)"
  end
  if value == "T" then
    return "Extended Hours Or Sequence Type: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Extended Hours Or Sequence Type: Extended Hours Sold (U)"
  end
  if value == "Z" then
    return "Extended Hours Or Sequence Type: Sold Out Of Sequence (Z)"
  end

  return "Extended Hours Or Sequence Type: Unknown("..value..")"
end

-- Dissect: Extended Hours Or Sequence Type
siac_cts_output_cta_v2_9_dissect.extended_hours_or_sequence_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.extended_hours_or_sequence_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.extended_hours_or_sequence_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.extended_hours_or_sequence_type, range, value, display)

  return offset + length, value
end

-- Size: Trade Through Exempt Reason
siac_cts_output_cta_v2_9_size_of.trade_through_exempt_reason = 1

-- Display: Trade Through Exempt Reason
siac_cts_output_cta_v2_9_display.trade_through_exempt_reason = function(value)
  if value == " " then
    return "Trade Through Exempt Reason: No Reason (<whitespace>)"
  end
  if value == "F" then
    return "Trade Through Exempt Reason: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Trade Through Exempt Reason: Market Center Opening Trade (O)"
  end
  if value == "4" then
    return "Trade Through Exempt Reason: Derivatively Priced (4)"
  end
  if value == "5" then
    return "Trade Through Exempt Reason: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Through Exempt Reason: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Trade Through Exempt Reason: Qualified Contingent Trade (7)"
  end
  if value == "8" then
    return "Trade Through Exempt Reason: Reserved (8)"
  end
  if value == "9" then
    return "Trade Through Exempt Reason: Corrected Consolidated Close Price As Per Listing Market (9)"
  end

  return "Trade Through Exempt Reason: Unknown("..value..")"
end

-- Dissect: Trade Through Exempt Reason
siac_cts_output_cta_v2_9_dissect.trade_through_exempt_reason = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_through_exempt_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.trade_through_exempt_reason(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_through_exempt_reason, range, value, display)

  return offset + length, value
end

-- Size: Settlement Type
siac_cts_output_cta_v2_9_size_of.settlement_type = 1

-- Display: Settlement Type
siac_cts_output_cta_v2_9_display.settlement_type = function(value)
  if value == " " then
    return "Settlement Type: Regular Settlement (<whitespace>)"
  end
  if value == "C" then
    return "Settlement Type: Cash Trade (C)"
  end
  if value == "N" then
    return "Settlement Type: Next Day Trade (N)"
  end
  if value == "R" then
    return "Settlement Type: Seller (R)"
  end

  return "Settlement Type: Unknown("..value..")"
end

-- Dissect: Settlement Type
siac_cts_output_cta_v2_9_dissect.settlement_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.settlement_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.settlement_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.settlement_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sale Conditions
siac_cts_output_cta_v2_9_size_of.sale_conditions = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.settlement_type

  index = index + siac_cts_output_cta_v2_9_size_of.trade_through_exempt_reason

  index = index + siac_cts_output_cta_v2_9_size_of.extended_hours_or_sequence_type

  index = index + siac_cts_output_cta_v2_9_size_of.sro_trade_detail

  return index
end

-- Display: Sale Conditions
siac_cts_output_cta_v2_9_display.sale_conditions = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sale Conditions
siac_cts_output_cta_v2_9_dissect.sale_conditions_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Settlement Type: 1 Byte Ascii String Enum with 4 values
  index, settlement_type = siac_cts_output_cta_v2_9_dissect.settlement_type(buffer, index, packet, parent)

  -- Trade Through Exempt Reason: 1 Byte Ascii String Enum with 9 values
  index, trade_through_exempt_reason = siac_cts_output_cta_v2_9_dissect.trade_through_exempt_reason(buffer, index, packet, parent)

  -- Extended Hours Or Sequence Type: 1 Byte Ascii String Enum with 5 values
  index, extended_hours_or_sequence_type = siac_cts_output_cta_v2_9_dissect.extended_hours_or_sequence_type(buffer, index, packet, parent)

  -- Sro Trade Detail: 1 Byte Ascii String Enum with 11 values
  index, sro_trade_detail = siac_cts_output_cta_v2_9_dissect.sro_trade_detail(buffer, index, packet, parent)

  return index
end

-- Dissect: Sale Conditions
siac_cts_output_cta_v2_9_dissect.sale_conditions = function(buffer, offset, packet, parent)
  if show.sale_conditions then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.sale_conditions, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.sale_conditions_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.sale_conditions(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.sale_conditions_fields(buffer, offset, packet, parent)
  end
end

-- Size: Instrument Type
siac_cts_output_cta_v2_9_size_of.instrument_type = 1

-- Display: Instrument Type
siac_cts_output_cta_v2_9_display.instrument_type = function(value)
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
siac_cts_output_cta_v2_9_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.instrument_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
siac_cts_output_cta_v2_9_size_of.security_symbol = 11

-- Display: Security Symbol
siac_cts_output_cta_v2_9_display.security_symbol = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cts_output_cta_v2_9_dissect.security_symbol = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.security_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.security_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Participant Reference Number
siac_cts_output_cta_v2_9_size_of.participant_reference_number = 8

-- Display: Participant Reference Number
siac_cts_output_cta_v2_9_display.participant_reference_number = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_cts_output_cta_v2_9_dissect.participant_reference_number = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.participant_reference_number
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.participant_reference_number(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Transaction Id
siac_cts_output_cta_v2_9_size_of.transaction_id = 4

-- Display: Transaction Id
siac_cts_output_cta_v2_9_display.transaction_id = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
siac_cts_output_cta_v2_9_dissect.transaction_id = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.transaction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.transaction_id(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Message Id
siac_cts_output_cta_v2_9_size_of.message_id = 1

-- Display: Message Id
siac_cts_output_cta_v2_9_display.message_id = function(value)
  return "Message Id: "..value
end

-- Dissect: Message Id
siac_cts_output_cta_v2_9_dissect.message_id = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.message_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.message_id(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.message_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Timestamp 1
siac_cts_output_cta_v2_9_size_of.timestamp_1 = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.seconds

  index = index + siac_cts_output_cta_v2_9_size_of.nanoseconds

  return index
end

-- Display: Timestamp 1
siac_cts_output_cta_v2_9_display.timestamp_1 = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp 1
siac_cts_output_cta_v2_9_dissect.timestamp_1_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cts_output_cta_v2_9_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cts_output_cta_v2_9_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 1
siac_cts_output_cta_v2_9_dissect.timestamp_1 = function(buffer, offset, packet, parent)
  if show.timestamp_1 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.timestamp_1, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.timestamp_1_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.timestamp_1(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.timestamp_1_fields(buffer, offset, packet, parent)
  end
end

-- Size: Participant Id
siac_cts_output_cta_v2_9_size_of.participant_id = 1

-- Display: Participant Id
siac_cts_output_cta_v2_9_display.participant_id = function(value)
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
    return "Participant Id: Adf (D)"
  end
  if value == "H" then
    return "Participant Id: Miax (H)"
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
  if value == "U" then
    return "Participant Id: Members Exchange (U)"
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
siac_cts_output_cta_v2_9_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Trade Cancel Error Message
siac_cts_output_cta_v2_9_size_of.trade_cancel_error_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Trade Cancel Error Message
siac_cts_output_cta_v2_9_display.trade_cancel_error_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Error Message
siac_cts_output_cta_v2_9_dissect.trade_cancel_error_message_fields = function(buffer, offset, packet, parent, size_of_trade_cancel_error_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = siac_cts_output_cta_v2_9_dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = siac_cts_output_cta_v2_9_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = siac_cts_output_cta_v2_9_dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = siac_cts_output_cta_v2_9_dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = siac_cts_output_cta_v2_9_dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_9_dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 4 values
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_9_dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Original Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, original_participant_reference_number = siac_cts_output_cta_v2_9_dissect.original_participant_reference_number(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_9_dissect.timestamp_2(buffer, index, packet, parent)

  -- Cancel Error Action: 1 Byte Ascii String Enum with 2 values
  index, cancel_error_action = siac_cts_output_cta_v2_9_dissect.cancel_error_action(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cts_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Consolidated Data: Struct of 7 fields
  index, consolidated_data = siac_cts_output_cta_v2_9_dissect.consolidated_data(buffer, index, packet, parent)

  -- Participant Data: Struct of 7 fields
  index, participant_data = siac_cts_output_cta_v2_9_dissect.participant_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Cancel Error Message
siac_cts_output_cta_v2_9_dissect.trade_cancel_error_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_cancel_error_message = siac_cts_output_cta_v2_9_size_of.trade_cancel_error_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_cancel_error_message then
    local range = buffer(offset, size_of_trade_cancel_error_message)
    local display = siac_cts_output_cta_v2_9_display.trade_cancel_error_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_cancel_error_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.trade_cancel_error_message_fields(buffer, offset, packet, parent, size_of_trade_cancel_error_message)

  return offset + size_of_trade_cancel_error_message
end

-- Size: Participant Open High Low Last Indicator
siac_cts_output_cta_v2_9_size_of.participant_open_high_low_last_indicator = 1

-- Display: Participant Open High Low Last Indicator
siac_cts_output_cta_v2_9_display.participant_open_high_low_last_indicator = function(value)
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
siac_cts_output_cta_v2_9_dissect.participant_open_high_low_last_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.participant_open_high_low_last_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.participant_open_high_low_last_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.participant_open_high_low_last_indicator, range, value, display)

  return offset + length, value
end

-- Size: Consolidated High Low Last Indicator
siac_cts_output_cta_v2_9_size_of.consolidated_high_low_last_indicator = 1

-- Display: Consolidated High Low Last Indicator
siac_cts_output_cta_v2_9_display.consolidated_high_low_last_indicator = function(value)
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
siac_cts_output_cta_v2_9_dissect.consolidated_high_low_last_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.consolidated_high_low_last_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.consolidated_high_low_last_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.consolidated_high_low_last_indicator, range, value, display)

  return offset + length, value
end

-- Size: Trade Volume Short
siac_cts_output_cta_v2_9_size_of.trade_volume_short = 2

-- Display: Trade Volume Short
siac_cts_output_cta_v2_9_display.trade_volume_short = function(value)
  return "Trade Volume Short: "..value
end

-- Dissect: Trade Volume Short
siac_cts_output_cta_v2_9_dissect.trade_volume_short = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_volume_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.trade_volume_short(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_volume_short, range, value, display)

  return offset + length, value
end

-- Size: Trade Price Short
siac_cts_output_cta_v2_9_size_of.trade_price_short = 2

-- Display: Trade Price Short
siac_cts_output_cta_v2_9_display.trade_price_short = function(value)
  return "Trade Price Short: "..value
end

-- Translate: Trade Price Short
translate.trade_price_short = function(raw)
  return raw/100
end

-- Dissect: Trade Price Short
siac_cts_output_cta_v2_9_dissect.trade_price_short = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.trade_price_short(raw)
  local display = siac_cts_output_cta_v2_9_display.trade_price_short(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_price_short, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition Category
siac_cts_output_cta_v2_9_size_of.sale_condition_category = 1

-- Display: Sale Condition Category
siac_cts_output_cta_v2_9_display.sale_condition_category = function(value)
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
siac_cts_output_cta_v2_9_dissect.sale_condition_category = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.sale_condition_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.sale_condition_category(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.sale_condition_category, range, value, display)

  return offset + length, value
end

-- Size: Sale Condition
siac_cts_output_cta_v2_9_size_of.sale_condition = 1

-- Display: Sale Condition
siac_cts_output_cta_v2_9_display.sale_condition = function(value)
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
siac_cts_output_cta_v2_9_dissect.sale_condition = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.sale_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.sale_condition(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.sale_condition, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol Short
siac_cts_output_cta_v2_9_size_of.security_symbol_short = 5

-- Display: Security Symbol Short
siac_cts_output_cta_v2_9_display.security_symbol_short = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
siac_cts_output_cta_v2_9_dissect.security_symbol_short = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.security_symbol_short
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.security_symbol_short(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Short Trade Message
siac_cts_output_cta_v2_9_size_of.short_trade_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Short Trade Message
siac_cts_output_cta_v2_9_display.short_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Trade Message
siac_cts_output_cta_v2_9_dissect.short_trade_message_fields = function(buffer, offset, packet, parent, size_of_short_trade_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Short: 5 Byte Ascii String
  index, security_symbol_short = siac_cts_output_cta_v2_9_dissect.security_symbol_short(buffer, index, packet, parent)

  -- Sale Condition: 1 Byte Ascii String Enum with 26 values
  index, sale_condition = siac_cts_output_cta_v2_9_dissect.sale_condition(buffer, index, packet, parent)

  -- Sale Condition Category: 1 Byte Ascii String Enum with 5 values
  index, sale_condition_category = siac_cts_output_cta_v2_9_dissect.sale_condition_category(buffer, index, packet, parent)

  -- Trade Price Short: 2 Byte Unsigned Fixed Width Integer
  index, trade_price_short = siac_cts_output_cta_v2_9_dissect.trade_price_short(buffer, index, packet, parent)

  -- Trade Volume Short: 2 Byte Unsigned Fixed Width Integer
  index, trade_volume_short = siac_cts_output_cta_v2_9_dissect.trade_volume_short(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_high_low_last_indicator = siac_cts_output_cta_v2_9_dissect.consolidated_high_low_last_indicator(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: 1 Byte Ascii String Enum with 17 values
  index, participant_open_high_low_last_indicator = siac_cts_output_cta_v2_9_dissect.participant_open_high_low_last_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Trade Message
siac_cts_output_cta_v2_9_dissect.short_trade_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_short_trade_message = siac_cts_output_cta_v2_9_size_of.short_trade_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.short_trade_message then
    local range = buffer(offset, size_of_short_trade_message)
    local display = siac_cts_output_cta_v2_9_display.short_trade_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.short_trade_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.short_trade_message_fields(buffer, offset, packet, parent, size_of_short_trade_message)

  return offset + size_of_short_trade_message
end

-- Size: Limit Up Limit Down Indicator
siac_cts_output_cta_v2_9_size_of.limit_up_limit_down_indicator = 1

-- Display: Limit Up Limit Down Indicator
siac_cts_output_cta_v2_9_display.limit_up_limit_down_indicator = function(value)
  if value == " " then
    return "Limit Up Limit Down Indicator: Not Applicable (<whitespace>)"
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
siac_cts_output_cta_v2_9_dissect.limit_up_limit_down_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.limit_up_limit_down_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.limit_up_limit_down_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.limit_up_limit_down_indicator, range, value, display)

  return offset + length, value
end

-- Size: Halt Reason
siac_cts_output_cta_v2_9_size_of.halt_reason = 1

-- Display: Halt Reason
siac_cts_output_cta_v2_9_display.halt_reason = function(value)
  if value == " " then
    return "Halt Reason: Not Applicable (<whitespace>)"
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
    return "Halt Reason: Limit Up Limit Down Trading Pause (M)"
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
siac_cts_output_cta_v2_9_dissect.halt_reason = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.halt_reason
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.halt_reason(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Size: Security Status
siac_cts_output_cta_v2_9_size_of.security_status = 1

-- Display: Security Status
siac_cts_output_cta_v2_9_display.security_status = function(value)
  if value == " " then
    return "Security Status: Not Applicable (<whitespace>)"
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
    return "Security Status: Market On Close Imbalance Buy (9)"
  end
  if value == "A" then
    return "Security Status: Market On Close Imbalance Sell (A)"
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
siac_cts_output_cta_v2_9_dissect.security_status = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.security_status
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.security_status(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.security_status, range, value, display)

  return offset + length, value
end

-- Size: Sell Volume
siac_cts_output_cta_v2_9_size_of.sell_volume = 4

-- Display: Sell Volume
siac_cts_output_cta_v2_9_display.sell_volume = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
siac_cts_output_cta_v2_9_dissect.sell_volume = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.sell_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.sell_volume(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Size: Buy Volume
siac_cts_output_cta_v2_9_size_of.buy_volume = 4

-- Display: Buy Volume
siac_cts_output_cta_v2_9_display.buy_volume = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
siac_cts_output_cta_v2_9_dissect.buy_volume = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.buy_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.buy_volume(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Size: Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_9_size_of.low_indication_price_lower_limit_price_band = 8

-- Display: Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_9_display.low_indication_price_lower_limit_price_band = function(value)
  return "Low Indication Price Lower Limit Price Band: "..value
end

-- Translate: Low Indication Price Lower Limit Price Band
translate.low_indication_price_lower_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price Lower Limit Price Band
siac_cts_output_cta_v2_9_dissect.low_indication_price_lower_limit_price_band = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.low_indication_price_lower_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.low_indication_price_lower_limit_price_band(raw)
  local display = siac_cts_output_cta_v2_9_display.low_indication_price_lower_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.low_indication_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Size: High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_9_size_of.high_indication_price_upper_limit_price_band = 8

-- Display: High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_9_display.high_indication_price_upper_limit_price_band = function(value)
  return "High Indication Price Upper Limit Price Band: "..value
end

-- Translate: High Indication Price Upper Limit Price Band
translate.high_indication_price_upper_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price Upper Limit Price Band
siac_cts_output_cta_v2_9_dissect.high_indication_price_upper_limit_price_band = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.high_indication_price_upper_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.high_indication_price_upper_limit_price_band(raw)
  local display = siac_cts_output_cta_v2_9_display.high_indication_price_upper_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.high_indication_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Trading Status Message
siac_cts_output_cta_v2_9_size_of.trading_status_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Trading Status Message
siac_cts_output_cta_v2_9_display.trading_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
siac_cts_output_cta_v2_9_dissect.trading_status_message_fields = function(buffer, offset, packet, parent, size_of_trading_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = siac_cts_output_cta_v2_9_dissect.last_price(buffer, index, packet, parent)

  -- High Indication Price Upper Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, high_indication_price_upper_limit_price_band = siac_cts_output_cta_v2_9_dissect.high_indication_price_upper_limit_price_band(buffer, index, packet, parent)

  -- Low Indication Price Lower Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, low_indication_price_lower_limit_price_band = siac_cts_output_cta_v2_9_dissect.low_indication_price_lower_limit_price_band(buffer, index, packet, parent)

  -- Buy Volume: 4 Byte Unsigned Fixed Width Integer
  index, buy_volume = siac_cts_output_cta_v2_9_dissect.buy_volume(buffer, index, packet, parent)

  -- Sell Volume: 4 Byte Unsigned Fixed Width Integer
  index, sell_volume = siac_cts_output_cta_v2_9_dissect.sell_volume(buffer, index, packet, parent)

  -- Security Status: 1 Byte Ascii String Enum with 13 values
  index, security_status = siac_cts_output_cta_v2_9_dissect.security_status(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 17 values
  index, halt_reason = siac_cts_output_cta_v2_9_dissect.halt_reason(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cts_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Limit Up Limit Down Indicator: 1 Byte Ascii String Enum with 11 values
  index, limit_up_limit_down_indicator = siac_cts_output_cta_v2_9_dissect.limit_up_limit_down_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
siac_cts_output_cta_v2_9_dissect.trading_status_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trading_status_message = siac_cts_output_cta_v2_9_size_of.trading_status_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trading_status_message then
    local range = buffer(offset, size_of_trading_status_message)
    local display = siac_cts_output_cta_v2_9_display.trading_status_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.trading_status_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.trading_status_message_fields(buffer, offset, packet, parent, size_of_trading_status_message)

  return offset + size_of_trading_status_message
end

-- Size: Held Trade Indicator
siac_cts_output_cta_v2_9_size_of.held_trade_indicator = 1

-- Display: Held Trade Indicator
siac_cts_output_cta_v2_9_display.held_trade_indicator = function(value)
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
siac_cts_output_cta_v2_9_dissect.held_trade_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.held_trade_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.held_trade_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.held_trade_indicator, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Long Trade Message
siac_cts_output_cta_v2_9_size_of.long_trade_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Long Trade Message
siac_cts_output_cta_v2_9_display.long_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Trade Message
siac_cts_output_cta_v2_9_dissect.long_trade_message_fields = function(buffer, offset, packet, parent, size_of_long_trade_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = siac_cts_output_cta_v2_9_dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = siac_cts_output_cta_v2_9_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = siac_cts_output_cta_v2_9_dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = siac_cts_output_cta_v2_9_dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = siac_cts_output_cta_v2_9_dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_9_dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 4 values
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_9_dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_9_dissect.timestamp_2(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cts_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Held Trade Indicator: 1 Byte Ascii String Enum with 4 values
  index, held_trade_indicator = siac_cts_output_cta_v2_9_dissect.held_trade_indicator(buffer, index, packet, parent)

  -- Consolidated High Low Last Indicator: 1 Byte Ascii String Enum with 8 values
  index, consolidated_high_low_last_indicator = siac_cts_output_cta_v2_9_dissect.consolidated_high_low_last_indicator(buffer, index, packet, parent)

  -- Participant Open High Low Last Indicator: 1 Byte Ascii String Enum with 17 values
  index, participant_open_high_low_last_indicator = siac_cts_output_cta_v2_9_dissect.participant_open_high_low_last_indicator(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Trade Message
siac_cts_output_cta_v2_9_dissect.long_trade_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_long_trade_message = siac_cts_output_cta_v2_9_size_of.long_trade_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.long_trade_message then
    local range = buffer(offset, size_of_long_trade_message)
    local display = siac_cts_output_cta_v2_9_display.long_trade_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.long_trade_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.long_trade_message_fields(buffer, offset, packet, parent, size_of_long_trade_message)

  return offset + size_of_long_trade_message
end

-- Calculate size of: Prior Day Trade Date And Time
siac_cts_output_cta_v2_9_size_of.prior_day_trade_date_and_time = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.seconds

  index = index + siac_cts_output_cta_v2_9_size_of.nanoseconds

  return index
end

-- Display: Prior Day Trade Date And Time
siac_cts_output_cta_v2_9_display.prior_day_trade_date_and_time = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Date And Time
siac_cts_output_cta_v2_9_dissect.prior_day_trade_date_and_time_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cts_output_cta_v2_9_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cts_output_cta_v2_9_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Date And Time
siac_cts_output_cta_v2_9_dissect.prior_day_trade_date_and_time = function(buffer, offset, packet, parent)
  if show.prior_day_trade_date_and_time then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.prior_day_trade_date_and_time, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.prior_day_trade_date_and_time_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.prior_day_trade_date_and_time(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.prior_day_trade_date_and_time_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Original Trade
siac_cts_output_cta_v2_9_size_of.original_trade = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.sale_conditions(buffer, offset + index)

  index = index + siac_cts_output_cta_v2_9_size_of.trade_price

  index = index + siac_cts_output_cta_v2_9_size_of.trade_volume

  index = index + siac_cts_output_cta_v2_9_size_of.sellers_sale_days

  index = index + siac_cts_output_cta_v2_9_size_of.stop_stock_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.trade_through_exempt_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.short_sale_restriction_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.prior_day_trade_date_and_time(buffer, offset + index)

  return index
end

-- Display: Original Trade
siac_cts_output_cta_v2_9_display.original_trade = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Original Trade
siac_cts_output_cta_v2_9_dissect.original_trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = siac_cts_output_cta_v2_9_dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = siac_cts_output_cta_v2_9_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = siac_cts_output_cta_v2_9_dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = siac_cts_output_cta_v2_9_dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = siac_cts_output_cta_v2_9_dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_9_dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_9_dissect.prior_day_trade_date_and_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Original Trade
siac_cts_output_cta_v2_9_dissect.original_trade = function(buffer, offset, packet, parent)
  if show.original_trade then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.original_trade, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.original_trade_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.original_trade(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.original_trade_fields(buffer, offset, packet, parent)
  end
end

-- Calculate size of: Corrected Trade
siac_cts_output_cta_v2_9_size_of.corrected_trade = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.sale_conditions(buffer, offset + index)

  index = index + siac_cts_output_cta_v2_9_size_of.trade_price

  index = index + siac_cts_output_cta_v2_9_size_of.trade_volume

  index = index + siac_cts_output_cta_v2_9_size_of.sellers_sale_days

  index = index + siac_cts_output_cta_v2_9_size_of.stop_stock_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.trade_through_exempt_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.short_sale_restriction_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.prior_day_trade_date_and_time(buffer, offset + index)

  return index
end

-- Display: Corrected Trade
siac_cts_output_cta_v2_9_display.corrected_trade = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Corrected Trade
siac_cts_output_cta_v2_9_dissect.corrected_trade_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = siac_cts_output_cta_v2_9_dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = siac_cts_output_cta_v2_9_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = siac_cts_output_cta_v2_9_dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = siac_cts_output_cta_v2_9_dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = siac_cts_output_cta_v2_9_dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_9_dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_9_dissect.prior_day_trade_date_and_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Corrected Trade
siac_cts_output_cta_v2_9_dissect.corrected_trade = function(buffer, offset, packet, parent)
  if show.corrected_trade then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.corrected_trade, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.corrected_trade_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.corrected_trade(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.corrected_trade_fields(buffer, offset, packet, parent)
  end
end

-- Read runtime size of: Trade Correction Message
siac_cts_output_cta_v2_9_size_of.trade_correction_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Trade Correction Message
siac_cts_output_cta_v2_9_display.trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Correction Message
siac_cts_output_cta_v2_9_dissect.trade_correction_message_fields = function(buffer, offset, packet, parent, size_of_trade_correction_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Corrected Trade: Struct of 8 fields
  index, corrected_trade = siac_cts_output_cta_v2_9_dissect.corrected_trade(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 4 values
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_9_dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cts_output_cta_v2_9_dissect.timestamp_2(buffer, index, packet, parent)

  -- Original Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, original_participant_reference_number = siac_cts_output_cta_v2_9_dissect.original_participant_reference_number(buffer, index, packet, parent)

  -- Original Trade: Struct of 8 fields
  index, original_trade = siac_cts_output_cta_v2_9_dissect.original_trade(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cts_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Consolidated Data: Struct of 7 fields
  index, consolidated_data = siac_cts_output_cta_v2_9_dissect.consolidated_data(buffer, index, packet, parent)

  -- Participant Data: Struct of 7 fields
  index, participant_data = siac_cts_output_cta_v2_9_dissect.participant_data(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Correction Message
siac_cts_output_cta_v2_9_dissect.trade_correction_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade_correction_message = siac_cts_output_cta_v2_9_size_of.trade_correction_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade_correction_message then
    local range = buffer(offset, size_of_trade_correction_message)
    local display = siac_cts_output_cta_v2_9_display.trade_correction_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_correction_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.trade_correction_message_fields(buffer, offset, packet, parent, size_of_trade_correction_message)

  return offset + size_of_trade_correction_message
end

-- Size: Future Use
siac_cts_output_cta_v2_9_size_of.future_use = 62

-- Display: Future Use
siac_cts_output_cta_v2_9_display.future_use = function(value)
  return "Future Use: "..value
end

-- Dissect: Future Use
siac_cts_output_cta_v2_9_dissect.future_use = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.future_use
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.future_use(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.future_use, range, value, display)

  return offset + length, value
end

-- Size: Number Of Extensions
siac_cts_output_cta_v2_9_size_of.number_of_extensions = 1

-- Display: Number Of Extensions
siac_cts_output_cta_v2_9_display.number_of_extensions = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cts_output_cta_v2_9_dissect.number_of_extensions = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.number_of_extensions
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.number_of_extensions(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_9_size_of.auction_collar_lower_threshold_price = 8

-- Display: Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_9_display.auction_collar_lower_threshold_price = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
translate.auction_collar_lower_threshold_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cts_output_cta_v2_9_dissect.auction_collar_lower_threshold_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.auction_collar_lower_threshold_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_lower_threshold_price(raw)
  local display = siac_cts_output_cta_v2_9_display.auction_collar_lower_threshold_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_9_size_of.auction_collar_upper_threshold_price = 8

-- Display: Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_9_display.auction_collar_upper_threshold_price = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
translate.auction_collar_upper_threshold_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cts_output_cta_v2_9_dissect.auction_collar_upper_threshold_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.auction_collar_upper_threshold_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_upper_threshold_price(raw)
  local display = siac_cts_output_cta_v2_9_display.auction_collar_upper_threshold_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Reference Price
siac_cts_output_cta_v2_9_size_of.auction_collar_reference_price = 8

-- Display: Auction Collar Reference Price
siac_cts_output_cta_v2_9_display.auction_collar_reference_price = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
translate.auction_collar_reference_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cts_output_cta_v2_9_dissect.auction_collar_reference_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.auction_collar_reference_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_reference_price(raw)
  local display = siac_cts_output_cta_v2_9_display.auction_collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Auction Status Message
siac_cts_output_cta_v2_9_size_of.auction_status_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Auction Status Message
siac_cts_output_cta_v2_9_display.auction_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Status Message
siac_cts_output_cta_v2_9_dissect.auction_status_message_fields = function(buffer, offset, packet, parent, size_of_auction_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = siac_cts_output_cta_v2_9_dissect.auction_collar_reference_price(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_upper_threshold_price = siac_cts_output_cta_v2_9_dissect.auction_collar_upper_threshold_price(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_lower_threshold_price = siac_cts_output_cta_v2_9_dissect.auction_collar_lower_threshold_price(buffer, index, packet, parent)

  -- Number Of Extensions: 1 Byte Unsigned Fixed Width Integer
  index, number_of_extensions = siac_cts_output_cta_v2_9_dissect.number_of_extensions(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cts_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Future Use: 62 Byte Ascii String
  index, future_use = siac_cts_output_cta_v2_9_dissect.future_use(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
siac_cts_output_cta_v2_9_dissect.auction_status_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_auction_status_message = siac_cts_output_cta_v2_9_size_of.auction_status_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.auction_status_message then
    local range = buffer(offset, size_of_auction_status_message)
    local display = siac_cts_output_cta_v2_9_display.auction_status_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.auction_status_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.auction_status_message_fields(buffer, offset, packet, parent, size_of_auction_status_message)

  return offset + size_of_auction_status_message
end

-- Calculate runtime size of: Trade Payload
siac_cts_output_cta_v2_9_size_of.trade_payload = function(buffer, offset, trade_message_type)
  -- Size of Auction Status Message
  if trade_message_type == "A" then
    return siac_cts_output_cta_v2_9_size_of.auction_status_message(buffer, offset)
  end
  -- Size of Trade Correction Message
  if trade_message_type == "C" then
    return siac_cts_output_cta_v2_9_size_of.trade_correction_message(buffer, offset)
  end
  -- Size of Long Trade Message
  if trade_message_type == "L" then
    return siac_cts_output_cta_v2_9_size_of.long_trade_message(buffer, offset)
  end
  -- Size of Trading Status Message
  if trade_message_type == "S" then
    return siac_cts_output_cta_v2_9_size_of.trading_status_message(buffer, offset)
  end
  -- Size of Short Trade Message
  if trade_message_type == "T" then
    return siac_cts_output_cta_v2_9_size_of.short_trade_message(buffer, offset)
  end
  -- Size of Trade Cancel Error Message
  if trade_message_type == "X" then
    return siac_cts_output_cta_v2_9_size_of.trade_cancel_error_message(buffer, offset)
  end

  return 0
end

-- Display: Trade Payload
siac_cts_output_cta_v2_9_display.trade_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Trade Payload
siac_cts_output_cta_v2_9_dissect.trade_payload_branches = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Auction Status Message
  if trade_message_type == "A" then
    return siac_cts_output_cta_v2_9_dissect.auction_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Correction Message
  if trade_message_type == "C" then
    return siac_cts_output_cta_v2_9_dissect.trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Trade Message
  if trade_message_type == "L" then
    return siac_cts_output_cta_v2_9_dissect.long_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if trade_message_type == "S" then
    return siac_cts_output_cta_v2_9_dissect.trading_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Trade Message
  if trade_message_type == "T" then
    return siac_cts_output_cta_v2_9_dissect.short_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Error Message
  if trade_message_type == "X" then
    return siac_cts_output_cta_v2_9_dissect.trade_cancel_error_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Trade Payload
siac_cts_output_cta_v2_9_dissect.trade_payload = function(buffer, offset, packet, parent, trade_message_type)
  if not show.trade_payload then
    return siac_cts_output_cta_v2_9_dissect.trade_payload_branches(buffer, offset, packet, parent, trade_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.trade_payload(buffer, offset, trade_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.trade_payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.trade_payload_branches(buffer, offset, packet, parent, trade_message_type)
end

-- Size: Trade Message Type
siac_cts_output_cta_v2_9_size_of.trade_message_type = 1

-- Display: Trade Message Type
siac_cts_output_cta_v2_9_display.trade_message_type = function(value)
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
siac_cts_output_cta_v2_9_dissect.trade_message_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.trade_message_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Trade
siac_cts_output_cta_v2_9_size_of.trade = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Trade
siac_cts_output_cta_v2_9_display.trade = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade
siac_cts_output_cta_v2_9_dissect.trade_fields = function(buffer, offset, packet, parent, size_of_trade)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 6 values
  index, trade_message_type = siac_cts_output_cta_v2_9_dissect.trade_message_type(buffer, index, packet, parent)

  -- Trade Payload: Runtime Type with 6 branches
  index = siac_cts_output_cta_v2_9_dissect.trade_payload(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade
siac_cts_output_cta_v2_9_dissect.trade = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_trade = siac_cts_output_cta_v2_9_size_of.trade(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.trade then
    local range = buffer(offset, size_of_trade)
    local display = siac_cts_output_cta_v2_9_display.trade(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.trade, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.trade_fields(buffer, offset, packet, parent, size_of_trade)

  return offset + size_of_trade
end

-- Size: Total Volume
siac_cts_output_cta_v2_9_size_of.total_volume = 8

-- Display: Total Volume
siac_cts_output_cta_v2_9_display.total_volume = function(value)
  return "Total Volume: "..value
end

-- Dissect: Total Volume
siac_cts_output_cta_v2_9_dissect.total_volume = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.total_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_9_display.total_volume(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.total_volume, range, value, display)

  return offset + length, value
end

-- Size: Initiating Participant Id
siac_cts_output_cta_v2_9_size_of.initiating_participant_id = 1

-- Display: Initiating Participant Id
siac_cts_output_cta_v2_9_display.initiating_participant_id = function(value)
  if value == "A" then
    return "Initiating Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Initiating Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Initiating Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Initiating Participant Id: Adf (D)"
  end
  if value == "H" then
    return "Initiating Participant Id: Miax (H)"
  end
  if value == "I" then
    return "Initiating Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Initiating Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Initiating Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Initiating Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Initiating Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Initiating Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Initiating Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "Initiating Participant Id: Cts (S)"
  end
  if value == "T" then
    return "Initiating Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "Initiating Participant Id: Members Exchange (U)"
  end
  if value == "V" then
    return "Initiating Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Initiating Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Initiating Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Initiating Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Initiating Participant Id: Cboe Bzx (Z)"
  end

  return "Initiating Participant Id: Unknown("..value..")"
end

-- Dissect: Initiating Participant Id
siac_cts_output_cta_v2_9_dissect.initiating_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.initiating_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.initiating_participant_id(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.initiating_participant_id, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Participant End Of Day Summary Message
siac_cts_output_cta_v2_9_size_of.participant_end_of_day_summary_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Participant End Of Day Summary Message
siac_cts_output_cta_v2_9_display.participant_end_of_day_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant End Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.participant_end_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_participant_end_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Initiating Participant Id: 1 Byte Ascii String Enum with 20 values
  index, initiating_participant_id = siac_cts_output_cta_v2_9_dissect.initiating_participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_9_dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = siac_cts_output_cta_v2_9_dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = siac_cts_output_cta_v2_9_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = siac_cts_output_cta_v2_9_dissect.low_price(buffer, index, packet, parent)

  -- Open Price: 8 Byte Unsigned Fixed Width Integer
  index, open_price = siac_cts_output_cta_v2_9_dissect.open_price(buffer, index, packet, parent)

  -- Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_volume = siac_cts_output_cta_v2_9_dissect.total_volume(buffer, index, packet, parent)

  -- Tick: 1 Byte Ascii String Enum with 5 values
  index, tick = siac_cts_output_cta_v2_9_dissect.tick(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant End Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.participant_end_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_participant_end_of_day_summary_message = siac_cts_output_cta_v2_9_size_of.participant_end_of_day_summary_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.participant_end_of_day_summary_message then
    local range = buffer(offset, size_of_participant_end_of_day_summary_message)
    local display = siac_cts_output_cta_v2_9_display.participant_end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.participant_end_of_day_summary_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.participant_end_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_participant_end_of_day_summary_message)

  return offset + size_of_participant_end_of_day_summary_message
end

-- Size: Number Of Participants
siac_cts_output_cta_v2_9_size_of.number_of_participants = 1

-- Display: Number Of Participants
siac_cts_output_cta_v2_9_display.number_of_participants = function(value)
  return "Number Of Participants: "..value
end

-- Dissect: Number Of Participants
siac_cts_output_cta_v2_9_dissect.number_of_participants = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.number_of_participants
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.number_of_participants(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.number_of_participants, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_9_size_of.consolidated_end_of_day_summary_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_9_display.consolidated_end_of_day_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.consolidated_end_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_consolidated_end_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Last Participant Id: 1 Byte Ascii String Enum with 18 values
  index, last_participant_id = siac_cts_output_cta_v2_9_dissect.last_participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_9_dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Last Price: 8 Byte Unsigned Fixed Width Integer
  index, last_price = siac_cts_output_cta_v2_9_dissect.last_price(buffer, index, packet, parent)

  -- High Price: 8 Byte Unsigned Fixed Width Integer
  index, high_price = siac_cts_output_cta_v2_9_dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 8 Byte Unsigned Fixed Width Integer
  index, low_price = siac_cts_output_cta_v2_9_dissect.low_price(buffer, index, packet, parent)

  -- Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, total_volume = siac_cts_output_cta_v2_9_dissect.total_volume(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cts_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Number Of Participants: 1 Byte Unsigned Fixed Width Integer
  index, number_of_participants = siac_cts_output_cta_v2_9_dissect.number_of_participants(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated End Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.consolidated_end_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_consolidated_end_of_day_summary_message = siac_cts_output_cta_v2_9_size_of.consolidated_end_of_day_summary_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.consolidated_end_of_day_summary_message then
    local range = buffer(offset, size_of_consolidated_end_of_day_summary_message)
    local display = siac_cts_output_cta_v2_9_display.consolidated_end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.consolidated_end_of_day_summary_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.consolidated_end_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_consolidated_end_of_day_summary_message)

  return offset + size_of_consolidated_end_of_day_summary_message
end

-- Size: Previous Close Price
siac_cts_output_cta_v2_9_size_of.previous_close_price = 8

-- Display: Previous Close Price
siac_cts_output_cta_v2_9_display.previous_close_price = function(value)
  return "Previous Close Price: "..value
end

-- Translate: Previous Close Price
translate.previous_close_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Previous Close Price
siac_cts_output_cta_v2_9_dissect.previous_close_price = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.previous_close_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.previous_close_price(raw)
  local display = siac_cts_output_cta_v2_9_display.previous_close_price(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_9_size_of.participant_start_of_day_summary_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_9_display.participant_start_of_day_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.participant_start_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_participant_start_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_9_dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Previous Close Price: 8 Byte Unsigned Fixed Width Integer
  index, previous_close_price = siac_cts_output_cta_v2_9_dissect.previous_close_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Start Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.participant_start_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_participant_start_of_day_summary_message = siac_cts_output_cta_v2_9_size_of.participant_start_of_day_summary_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.participant_start_of_day_summary_message then
    local range = buffer(offset, size_of_participant_start_of_day_summary_message)
    local display = siac_cts_output_cta_v2_9_display.participant_start_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.participant_start_of_day_summary_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.participant_start_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_participant_start_of_day_summary_message)

  return offset + size_of_participant_start_of_day_summary_message
end

-- Read runtime size of: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_9_size_of.consolidated_start_of_day_summary_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_9_display.consolidated_start_of_day_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.consolidated_start_of_day_summary_message_fields = function(buffer, offset, packet, parent, size_of_consolidated_start_of_day_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Previous Close Price Date: 4 Byte Unsigned Fixed Width Integer
  index, previous_close_price_date = siac_cts_output_cta_v2_9_dissect.previous_close_price_date(buffer, index, packet, parent)

  -- Previous Close Price: 8 Byte Unsigned Fixed Width Integer
  index, previous_close_price = siac_cts_output_cta_v2_9_dissect.previous_close_price(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 16 values
  index, primary_listing_market_participant_id = siac_cts_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cts_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Number Of Participants: 1 Byte Unsigned Fixed Width Integer
  index, number_of_participants = siac_cts_output_cta_v2_9_dissect.number_of_participants(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Start Of Day Summary Message
siac_cts_output_cta_v2_9_dissect.consolidated_start_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_consolidated_start_of_day_summary_message = siac_cts_output_cta_v2_9_size_of.consolidated_start_of_day_summary_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.consolidated_start_of_day_summary_message then
    local range = buffer(offset, size_of_consolidated_start_of_day_summary_message)
    local display = siac_cts_output_cta_v2_9_display.consolidated_start_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.consolidated_start_of_day_summary_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.consolidated_start_of_day_summary_message_fields(buffer, offset, packet, parent, size_of_consolidated_start_of_day_summary_message)

  return offset + size_of_consolidated_start_of_day_summary_message
end

-- Calculate runtime size of: Summary Payload
siac_cts_output_cta_v2_9_size_of.summary_payload = function(buffer, offset, summary_message_type)
  -- Size of Consolidated Start Of Day Summary Message
  if summary_message_type == "A" then
    return siac_cts_output_cta_v2_9_size_of.consolidated_start_of_day_summary_message(buffer, offset)
  end
  -- Size of Participant Start Of Day Summary Message
  if summary_message_type == "B" then
    return siac_cts_output_cta_v2_9_size_of.participant_start_of_day_summary_message(buffer, offset)
  end
  -- Size of Consolidated End Of Day Summary Message
  if summary_message_type == "C" then
    return siac_cts_output_cta_v2_9_size_of.consolidated_end_of_day_summary_message(buffer, offset)
  end
  -- Size of Participant End Of Day Summary Message
  if summary_message_type == "D" then
    return siac_cts_output_cta_v2_9_size_of.participant_end_of_day_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Summary Payload
siac_cts_output_cta_v2_9_display.summary_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Summary Payload
siac_cts_output_cta_v2_9_dissect.summary_payload_branches = function(buffer, offset, packet, parent, summary_message_type)
  -- Dissect Consolidated Start Of Day Summary Message
  if summary_message_type == "A" then
    return siac_cts_output_cta_v2_9_dissect.consolidated_start_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Participant Start Of Day Summary Message
  if summary_message_type == "B" then
    return siac_cts_output_cta_v2_9_dissect.participant_start_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated End Of Day Summary Message
  if summary_message_type == "C" then
    return siac_cts_output_cta_v2_9_dissect.consolidated_end_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Participant End Of Day Summary Message
  if summary_message_type == "D" then
    return siac_cts_output_cta_v2_9_dissect.participant_end_of_day_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Summary Payload
siac_cts_output_cta_v2_9_dissect.summary_payload = function(buffer, offset, packet, parent, summary_message_type)
  if not show.summary_payload then
    return siac_cts_output_cta_v2_9_dissect.summary_payload_branches(buffer, offset, packet, parent, summary_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.summary_payload(buffer, offset, summary_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.summary_payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.summary_payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.summary_payload_branches(buffer, offset, packet, parent, summary_message_type)
end

-- Size: Summary Message Type
siac_cts_output_cta_v2_9_size_of.summary_message_type = 1

-- Display: Summary Message Type
siac_cts_output_cta_v2_9_display.summary_message_type = function(value)
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
siac_cts_output_cta_v2_9_dissect.summary_message_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.summary_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.summary_message_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.summary_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Summary
siac_cts_output_cta_v2_9_size_of.summary = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Summary
siac_cts_output_cta_v2_9_display.summary = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Summary
siac_cts_output_cta_v2_9_dissect.summary_fields = function(buffer, offset, packet, parent, size_of_summary)
  local index = offset

  -- Summary Message Type: 1 Byte Ascii String Enum with 4 values
  index, summary_message_type = siac_cts_output_cta_v2_9_dissect.summary_message_type(buffer, index, packet, parent)

  -- Summary Payload: Runtime Type with 4 branches
  index = siac_cts_output_cta_v2_9_dissect.summary_payload(buffer, index, packet, parent, summary_message_type)

  return index
end

-- Dissect: Summary
siac_cts_output_cta_v2_9_dissect.summary = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_summary = siac_cts_output_cta_v2_9_size_of.summary(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.summary then
    local range = buffer(offset, size_of_summary)
    local display = siac_cts_output_cta_v2_9_display.summary(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.summary, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.summary_fields(buffer, offset, packet, parent, size_of_summary)

  return offset + size_of_summary
end

-- Read runtime size of: Prior Day Trade Message
siac_cts_output_cta_v2_9_size_of.prior_day_trade_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Prior Day Trade Message
siac_cts_output_cta_v2_9_display.prior_day_trade_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Message
siac_cts_output_cta_v2_9_dissect.prior_day_trade_message_fields = function(buffer, offset, packet, parent, size_of_prior_day_trade_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Sale Conditions: Struct of 4 fields
  index, sale_conditions = siac_cts_output_cta_v2_9_dissect.sale_conditions(buffer, index, packet, parent)

  -- Trade Price: 8 Byte Unsigned Fixed Width Integer
  index, trade_price = siac_cts_output_cta_v2_9_dissect.trade_price(buffer, index, packet, parent)

  -- Trade Volume: 4 Byte Unsigned Fixed Width Integer
  index, trade_volume = siac_cts_output_cta_v2_9_dissect.trade_volume(buffer, index, packet, parent)

  -- Sellers Sale Days: 1 Byte Unsigned Fixed Width Integer
  index, sellers_sale_days = siac_cts_output_cta_v2_9_dissect.sellers_sale_days(buffer, index, packet, parent)

  -- Stop Stock Indicator: 1 Byte Ascii String Enum with 2 values
  index, stop_stock_indicator = siac_cts_output_cta_v2_9_dissect.stop_stock_indicator(buffer, index, packet, parent)

  -- Trade Through Exempt Indicator: 1 Byte Ascii String Enum with 2 values
  index, trade_through_exempt_indicator = siac_cts_output_cta_v2_9_dissect.trade_through_exempt_indicator(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cts_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 4 values
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_9_dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Prior Day Trade Date And Time: Struct of 2 fields
  index, prior_day_trade_date_and_time = siac_cts_output_cta_v2_9_dissect.prior_day_trade_date_and_time(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Message
siac_cts_output_cta_v2_9_dissect.prior_day_trade_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_prior_day_trade_message = siac_cts_output_cta_v2_9_size_of.prior_day_trade_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.prior_day_trade_message then
    local range = buffer(offset, size_of_prior_day_trade_message)
    local display = siac_cts_output_cta_v2_9_display.prior_day_trade_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.prior_day_trade_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.prior_day_trade_message_fields(buffer, offset, packet, parent, size_of_prior_day_trade_message)

  return offset + size_of_prior_day_trade_message
end

-- Read runtime size of: Prior Day Trade Correction Message
siac_cts_output_cta_v2_9_size_of.prior_day_trade_correction_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Prior Day Trade Correction Message
siac_cts_output_cta_v2_9_display.prior_day_trade_correction_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day Trade Correction Message
siac_cts_output_cta_v2_9_dissect.prior_day_trade_correction_message_fields = function(buffer, offset, packet, parent, size_of_prior_day_trade_correction_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cts_output_cta_v2_9_dissect.security_symbol(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cts_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Corrected Trade: Struct of 8 fields
  index, corrected_trade = siac_cts_output_cta_v2_9_dissect.corrected_trade(buffer, index, packet, parent)

  -- Trade Reporting Facility Id: 1 Byte Ascii String Enum with 4 values
  index, trade_reporting_facility_id = siac_cts_output_cta_v2_9_dissect.trade_reporting_facility_id(buffer, index, packet, parent)

  -- Original Trade: Struct of 8 fields
  index, original_trade = siac_cts_output_cta_v2_9_dissect.original_trade(buffer, index, packet, parent)

  return index
end

-- Dissect: Prior Day Trade Correction Message
siac_cts_output_cta_v2_9_dissect.prior_day_trade_correction_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_prior_day_trade_correction_message = siac_cts_output_cta_v2_9_size_of.prior_day_trade_correction_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.prior_day_trade_correction_message then
    local range = buffer(offset, size_of_prior_day_trade_correction_message)
    local display = siac_cts_output_cta_v2_9_display.prior_day_trade_correction_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.prior_day_trade_correction_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.prior_day_trade_correction_message_fields(buffer, offset, packet, parent, size_of_prior_day_trade_correction_message)

  return offset + size_of_prior_day_trade_correction_message
end

-- Calculate runtime size of: Prior Day Payload
siac_cts_output_cta_v2_9_size_of.prior_day_payload = function(buffer, offset, prior_day_message_type)
  -- Size of Prior Day Trade Correction Message
  if prior_day_message_type == "C" then
    return siac_cts_output_cta_v2_9_size_of.prior_day_trade_correction_message(buffer, offset)
  end
  -- Size of Prior Day Trade Message
  if prior_day_message_type == "L" then
    return siac_cts_output_cta_v2_9_size_of.prior_day_trade_message(buffer, offset)
  end
  -- Size of Prior Day Trade Message
  if prior_day_message_type == "X" then
    return siac_cts_output_cta_v2_9_size_of.prior_day_trade_message(buffer, offset)
  end

  return 0
end

-- Display: Prior Day Payload
siac_cts_output_cta_v2_9_display.prior_day_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Prior Day Payload
siac_cts_output_cta_v2_9_dissect.prior_day_payload_branches = function(buffer, offset, packet, parent, prior_day_message_type)
  -- Dissect Prior Day Trade Correction Message
  if prior_day_message_type == "C" then
    return siac_cts_output_cta_v2_9_dissect.prior_day_trade_correction_message(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Message
  if prior_day_message_type == "L" then
    return siac_cts_output_cta_v2_9_dissect.prior_day_trade_message(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day Trade Message
  if prior_day_message_type == "X" then
    return siac_cts_output_cta_v2_9_dissect.prior_day_trade_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Prior Day Payload
siac_cts_output_cta_v2_9_dissect.prior_day_payload = function(buffer, offset, packet, parent, prior_day_message_type)
  if not show.prior_day_payload then
    return siac_cts_output_cta_v2_9_dissect.prior_day_payload_branches(buffer, offset, packet, parent, prior_day_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.prior_day_payload(buffer, offset, prior_day_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.prior_day_payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.prior_day_payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.prior_day_payload_branches(buffer, offset, packet, parent, prior_day_message_type)
end

-- Size: Prior Day Message Type
siac_cts_output_cta_v2_9_size_of.prior_day_message_type = 1

-- Display: Prior Day Message Type
siac_cts_output_cta_v2_9_display.prior_day_message_type = function(value)
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
siac_cts_output_cta_v2_9_dissect.prior_day_message_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.prior_day_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.prior_day_message_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.prior_day_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Prior Day
siac_cts_output_cta_v2_9_size_of.prior_day = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Prior Day
siac_cts_output_cta_v2_9_display.prior_day = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Prior Day
siac_cts_output_cta_v2_9_dissect.prior_day_fields = function(buffer, offset, packet, parent, size_of_prior_day)
  local index = offset

  -- Prior Day Message Type: 1 Byte Ascii String Enum with 3 values
  index, prior_day_message_type = siac_cts_output_cta_v2_9_dissect.prior_day_message_type(buffer, index, packet, parent)

  -- Prior Day Payload: Runtime Type with 3 branches
  index = siac_cts_output_cta_v2_9_dissect.prior_day_payload(buffer, index, packet, parent, prior_day_message_type)

  return index
end

-- Dissect: Prior Day
siac_cts_output_cta_v2_9_dissect.prior_day = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_prior_day = siac_cts_output_cta_v2_9_size_of.prior_day(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.prior_day then
    local range = buffer(offset, size_of_prior_day)
    local display = siac_cts_output_cta_v2_9_display.prior_day(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.prior_day, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.prior_day_fields(buffer, offset, packet, parent, size_of_prior_day)

  return offset + size_of_prior_day
end

-- Size: Crossing Session 2 Total Trades Volume
siac_cts_output_cta_v2_9_size_of.crossing_session_2_total_trades_volume = 8

-- Display: Crossing Session 2 Total Trades Volume
siac_cts_output_cta_v2_9_display.crossing_session_2_total_trades_volume = function(value)
  return "Crossing Session 2 Total Trades Volume: "..value
end

-- Dissect: Crossing Session 2 Total Trades Volume
siac_cts_output_cta_v2_9_dissect.crossing_session_2_total_trades_volume = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.crossing_session_2_total_trades_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_9_display.crossing_session_2_total_trades_volume(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.crossing_session_2_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Size: Crossing Session 2 Dollar Value
siac_cts_output_cta_v2_9_size_of.crossing_session_2_dollar_value = 8

-- Display: Crossing Session 2 Dollar Value
siac_cts_output_cta_v2_9_display.crossing_session_2_dollar_value = function(value)
  return "Crossing Session 2 Dollar Value: "..value
end

-- Dissect: Crossing Session 2 Dollar Value
siac_cts_output_cta_v2_9_dissect.crossing_session_2_dollar_value = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.crossing_session_2_dollar_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_9_display.crossing_session_2_dollar_value(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.crossing_session_2_dollar_value, range, value, display)

  return offset + length, value
end

-- Size: Crossing Session 1 Total Trades Volume
siac_cts_output_cta_v2_9_size_of.crossing_session_1_total_trades_volume = 8

-- Display: Crossing Session 1 Total Trades Volume
siac_cts_output_cta_v2_9_display.crossing_session_1_total_trades_volume = function(value)
  return "Crossing Session 1 Total Trades Volume: "..value
end

-- Dissect: Crossing Session 1 Total Trades Volume
siac_cts_output_cta_v2_9_dissect.crossing_session_1_total_trades_volume = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.crossing_session_1_total_trades_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_9_display.crossing_session_1_total_trades_volume(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.crossing_session_1_total_trades_volume, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Crossing Session Summary Message
siac_cts_output_cta_v2_9_size_of.crossing_session_summary_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Crossing Session Summary Message
siac_cts_output_cta_v2_9_display.crossing_session_summary_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Crossing Session Summary Message
siac_cts_output_cta_v2_9_dissect.crossing_session_summary_message_fields = function(buffer, offset, packet, parent, size_of_crossing_session_summary_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Crossing Session 1 Total Trades Volume: 8 Byte Unsigned Fixed Width Integer
  index, crossing_session_1_total_trades_volume = siac_cts_output_cta_v2_9_dissect.crossing_session_1_total_trades_volume(buffer, index, packet, parent)

  -- Crossing Session 2 Dollar Value: 8 Byte Unsigned Fixed Width Integer
  index, crossing_session_2_dollar_value = siac_cts_output_cta_v2_9_dissect.crossing_session_2_dollar_value(buffer, index, packet, parent)

  -- Crossing Session 2 Total Trades Volume: 8 Byte Unsigned Fixed Width Integer
  index, crossing_session_2_total_trades_volume = siac_cts_output_cta_v2_9_dissect.crossing_session_2_total_trades_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Crossing Session Summary Message
siac_cts_output_cta_v2_9_dissect.crossing_session_summary_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_crossing_session_summary_message = siac_cts_output_cta_v2_9_size_of.crossing_session_summary_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.crossing_session_summary_message then
    local range = buffer(offset, size_of_crossing_session_summary_message)
    local display = siac_cts_output_cta_v2_9_display.crossing_session_summary_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.crossing_session_summary_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.crossing_session_summary_message_fields(buffer, offset, packet, parent, size_of_crossing_session_summary_message)

  return offset + size_of_crossing_session_summary_message
end

-- Size: Dollar Value
siac_cts_output_cta_v2_9_size_of.dollar_value = 8

-- Display: Dollar Value
siac_cts_output_cta_v2_9_display.dollar_value = function(value)
  return "Dollar Value: "..value
end

-- Dissect: Dollar Value
siac_cts_output_cta_v2_9_dissect.dollar_value = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.dollar_value
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_9_display.dollar_value(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.dollar_value, range, value, display)

  return offset + length, value
end

-- Size: Total Trades
siac_cts_output_cta_v2_9_size_of.total_trades = 4

-- Display: Total Trades
siac_cts_output_cta_v2_9_display.total_trades = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
siac_cts_output_cta_v2_9_dissect.total_trades = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.total_trades
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.total_trades(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.total_trades, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_9_size_of.approximate_trades_and_total_dollar_value_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_9_display.approximate_trades_and_total_dollar_value_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_9_dissect.approximate_trades_and_total_dollar_value_message_fields = function(buffer, offset, packet, parent, size_of_approximate_trades_and_total_dollar_value_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Total Trades: 4 Byte Unsigned Fixed Width Integer
  index, total_trades = siac_cts_output_cta_v2_9_dissect.total_trades(buffer, index, packet, parent)

  -- Dollar Value: 8 Byte Unsigned Fixed Width Integer
  index, dollar_value = siac_cts_output_cta_v2_9_dissect.dollar_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Approximate Trades And Total Dollar Value Message
siac_cts_output_cta_v2_9_dissect.approximate_trades_and_total_dollar_value_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_approximate_trades_and_total_dollar_value_message = siac_cts_output_cta_v2_9_size_of.approximate_trades_and_total_dollar_value_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.approximate_trades_and_total_dollar_value_message then
    local range = buffer(offset, size_of_approximate_trades_and_total_dollar_value_message)
    local display = siac_cts_output_cta_v2_9_display.approximate_trades_and_total_dollar_value_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.approximate_trades_and_total_dollar_value_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.approximate_trades_and_total_dollar_value_message_fields(buffer, offset, packet, parent, size_of_approximate_trades_and_total_dollar_value_message)

  return offset + size_of_approximate_trades_and_total_dollar_value_message
end

-- Size: Trade Total Volume
siac_cts_output_cta_v2_9_size_of.trade_total_volume = 8

-- Display: Trade Total Volume
siac_cts_output_cta_v2_9_display.trade_total_volume = function(value)
  return "Trade Total Volume: "..value
end

-- Dissect: Trade Total Volume
siac_cts_output_cta_v2_9_dissect.trade_total_volume = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.trade_total_volume
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cts_output_cta_v2_9_display.trade_total_volume(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.trade_total_volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Participants
siac_cts_output_cta_v2_9_size_of.participants = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.participant_id

  index = index + siac_cts_output_cta_v2_9_size_of.trade_total_volume

  return index
end

-- Display: Participants
siac_cts_output_cta_v2_9_display.participants = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participants
siac_cts_output_cta_v2_9_dissect.participants_fields = function(buffer, offset, packet, parent, participants_index)
  local index = offset

  -- Implicit Participants Index
  if participants_index ~= nil then
    local iteration = parent:add(omi_siac_cts_output_cta_v2_9.fields.participants_index, participants_index)
    iteration:set_generated()
  end

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Trade Total Volume: 8 Byte Unsigned Fixed Width Integer
  index, trade_total_volume = siac_cts_output_cta_v2_9_dissect.trade_total_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Participants
siac_cts_output_cta_v2_9_dissect.participants = function(buffer, offset, packet, parent, participants_index)
  if show.participants then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.participants, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.participants_fields(buffer, offset, packet, parent, participants_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.participants(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.participants_fields(buffer, offset, packet, parent, participants_index)
  end
end

-- Read runtime size of: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_9_size_of.approximate_adjusted_volume_market_center_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_9_display.approximate_adjusted_volume_market_center_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_9_dissect.approximate_adjusted_volume_market_center_message_fields = function(buffer, offset, packet, parent, size_of_approximate_adjusted_volume_market_center_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Number Of Participants: 1 Byte Unsigned Fixed Width Integer
  index, number_of_participants = siac_cts_output_cta_v2_9_dissect.number_of_participants(buffer, index, packet, parent)

  -- Repeating: Participants
  for participants_index = 1, number_of_participants do
    index, participants = siac_cts_output_cta_v2_9_dissect.participants(buffer, index, packet, parent, participants_index)
  end

  return index
end

-- Dissect: Approximate Adjusted Volume Market Center Message
siac_cts_output_cta_v2_9_dissect.approximate_adjusted_volume_market_center_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_approximate_adjusted_volume_market_center_message = siac_cts_output_cta_v2_9_size_of.approximate_adjusted_volume_market_center_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.approximate_adjusted_volume_market_center_message then
    local range = buffer(offset, size_of_approximate_adjusted_volume_market_center_message)
    local display = siac_cts_output_cta_v2_9_display.approximate_adjusted_volume_market_center_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.approximate_adjusted_volume_market_center_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.approximate_adjusted_volume_market_center_message_fields(buffer, offset, packet, parent, size_of_approximate_adjusted_volume_market_center_message)

  return offset + size_of_approximate_adjusted_volume_market_center_message
end

-- Size: Reserved
siac_cts_output_cta_v2_9_size_of.reserved = 1

-- Display: Reserved
siac_cts_output_cta_v2_9_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cts_output_cta_v2_9_dissect.reserved = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.reserved(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.reserved, range, value, display)

  return offset + length, value
end

-- Size: Market Wide Circuit Breaker Level Indicator
siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_level_indicator = 1

-- Display: Market Wide Circuit Breaker Level Indicator
siac_cts_output_cta_v2_9_display.market_wide_circuit_breaker_level_indicator = function(value)
  if value == " " then
    return "Market Wide Circuit Breaker Level Indicator: Not Applicable (<whitespace>)"
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
siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_level_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_level_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.market_wide_circuit_breaker_level_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.market_wide_circuit_breaker_level_indicator, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_status_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_9_display.market_wide_circuit_breaker_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Market Wide Circuit Breaker Level Indicator: 1 Byte Ascii String Enum with 4 values
  index, market_wide_circuit_breaker_level_indicator = siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_level_indicator(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = siac_cts_output_cta_v2_9_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_wide_circuit_breaker_status_message = siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_status_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_status_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_status_message)
    local display = siac_cts_output_cta_v2_9_display.market_wide_circuit_breaker_status_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.market_wide_circuit_breaker_status_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_status_message)

  return offset + size_of_market_wide_circuit_breaker_status_message
end

-- Size: Mwcb Level 3
siac_cts_output_cta_v2_9_size_of.mwcb_level_3 = 8

-- Display: Mwcb Level 3
siac_cts_output_cta_v2_9_display.mwcb_level_3 = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
siac_cts_output_cta_v2_9_dissect.mwcb_level_3 = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.mwcb_level_3
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.mwcb_level_3(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 2
siac_cts_output_cta_v2_9_size_of.mwcb_level_2 = 8

-- Display: Mwcb Level 2
siac_cts_output_cta_v2_9_display.mwcb_level_2 = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
siac_cts_output_cta_v2_9_dissect.mwcb_level_2 = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.mwcb_level_2
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.mwcb_level_2(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 1
siac_cts_output_cta_v2_9_size_of.mwcb_level_1 = 8

-- Display: Mwcb Level 1
siac_cts_output_cta_v2_9_display.mwcb_level_1 = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
siac_cts_output_cta_v2_9_dissect.mwcb_level_1 = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.mwcb_level_1
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.mwcb_level_1(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_9_display.market_wide_circuit_breaker_decline_level_status_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Mwcb Level 1: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_1 = siac_cts_output_cta_v2_9_dissect.mwcb_level_1(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_2 = siac_cts_output_cta_v2_9_dissect.mwcb_level_2(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_3 = siac_cts_output_cta_v2_9_dissect.mwcb_level_3(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = siac_cts_output_cta_v2_9_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Message
siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_wide_circuit_breaker_decline_level_status_message = siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_decline_level_status_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_status_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_status_message)
    local display = siac_cts_output_cta_v2_9_display.market_wide_circuit_breaker_decline_level_status_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.market_wide_circuit_breaker_decline_level_status_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_status_message
end

-- Calculate runtime size of: Market Status Payload
siac_cts_output_cta_v2_9_size_of.market_status_payload = function(buffer, offset, market_status_message_type)
  -- Size of Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_decline_level_status_message(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return siac_cts_output_cta_v2_9_size_of.market_wide_circuit_breaker_status_message(buffer, offset)
  end
  -- Size of Approximate Adjusted Volume Market Center Message
  if market_status_message_type == "N" then
    return siac_cts_output_cta_v2_9_size_of.approximate_adjusted_volume_market_center_message(buffer, offset)
  end
  -- Size of Approximate Trades And Total Dollar Value Message
  if market_status_message_type == "O" then
    return siac_cts_output_cta_v2_9_size_of.approximate_trades_and_total_dollar_value_message(buffer, offset)
  end
  -- Size of Crossing Session Summary Message
  if market_status_message_type == "P" then
    return siac_cts_output_cta_v2_9_size_of.crossing_session_summary_message(buffer, offset)
  end

  return 0
end

-- Display: Market Status Payload
siac_cts_output_cta_v2_9_display.market_status_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Market Status Payload
siac_cts_output_cta_v2_9_dissect.market_status_payload_branches = function(buffer, offset, packet, parent, market_status_message_type)
  -- Dissect Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return siac_cts_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Approximate Adjusted Volume Market Center Message
  if market_status_message_type == "N" then
    return siac_cts_output_cta_v2_9_dissect.approximate_adjusted_volume_market_center_message(buffer, offset, packet, parent)
  end
  -- Dissect Approximate Trades And Total Dollar Value Message
  if market_status_message_type == "O" then
    return siac_cts_output_cta_v2_9_dissect.approximate_trades_and_total_dollar_value_message(buffer, offset, packet, parent)
  end
  -- Dissect Crossing Session Summary Message
  if market_status_message_type == "P" then
    return siac_cts_output_cta_v2_9_dissect.crossing_session_summary_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Market Status Payload
siac_cts_output_cta_v2_9_dissect.market_status_payload = function(buffer, offset, packet, parent, market_status_message_type)
  if not show.market_status_payload then
    return siac_cts_output_cta_v2_9_dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.market_status_payload(buffer, offset, market_status_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.market_status_payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.market_status_payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
end

-- Size: Market Status Message Type
siac_cts_output_cta_v2_9_size_of.market_status_message_type = 1

-- Display: Market Status Message Type
siac_cts_output_cta_v2_9_display.market_status_message_type = function(value)
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
siac_cts_output_cta_v2_9_dissect.market_status_message_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.market_status_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.market_status_message_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.market_status_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Market Status
siac_cts_output_cta_v2_9_size_of.market_status = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Market Status
siac_cts_output_cta_v2_9_display.market_status = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status
siac_cts_output_cta_v2_9_dissect.market_status_fields = function(buffer, offset, packet, parent, size_of_market_status)
  local index = offset

  -- Market Status Message Type: 1 Byte Ascii String Enum with 5 values
  index, market_status_message_type = siac_cts_output_cta_v2_9_dissect.market_status_message_type(buffer, index, packet, parent)

  -- Market Status Payload: Runtime Type with 5 branches
  index = siac_cts_output_cta_v2_9_dissect.market_status_payload(buffer, index, packet, parent, market_status_message_type)

  return index
end

-- Dissect: Market Status
siac_cts_output_cta_v2_9_dissect.market_status = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_status = siac_cts_output_cta_v2_9_size_of.market_status(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_status then
    local range = buffer(offset, size_of_market_status)
    local display = siac_cts_output_cta_v2_9_display.market_status(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.market_status, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.market_status_fields(buffer, offset, packet, parent, size_of_market_status)

  return offset + size_of_market_status
end

-- Size: Offer Index Value
siac_cts_output_cta_v2_9_size_of.offer_index_value = 8

-- Display: Offer Index Value
siac_cts_output_cta_v2_9_display.offer_index_value = function(value)
  return "Offer Index Value: "..value
end

-- Dissect: Offer Index Value
siac_cts_output_cta_v2_9_dissect.offer_index_value = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.offer_index_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.offer_index_value(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.offer_index_value, range, value, display)

  return offset + length, value
end

-- Size: Bid Index Value
siac_cts_output_cta_v2_9_size_of.bid_index_value = 8

-- Display: Bid Index Value
siac_cts_output_cta_v2_9_display.bid_index_value = function(value)
  return "Bid Index Value: "..value
end

-- Dissect: Bid Index Value
siac_cts_output_cta_v2_9_dissect.bid_index_value = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.bid_index_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.bid_index_value(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.bid_index_value, range, value, display)

  return offset + length, value
end

-- Size: Index Symbol
siac_cts_output_cta_v2_9_size_of.index_symbol = 11

-- Display: Index Symbol
siac_cts_output_cta_v2_9_display.index_symbol = function(value)
  return "Index Symbol: "..value
end

-- Dissect: Index Symbol
siac_cts_output_cta_v2_9_dissect.index_symbol = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.index_symbol
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.index_symbol(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.index_symbol, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Bid And Offer Index Message
siac_cts_output_cta_v2_9_size_of.bid_and_offer_index_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Bid And Offer Index Message
siac_cts_output_cta_v2_9_display.bid_and_offer_index_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Bid And Offer Index Message
siac_cts_output_cta_v2_9_dissect.bid_and_offer_index_message_fields = function(buffer, offset, packet, parent, size_of_bid_and_offer_index_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Index Symbol: 11 Byte Ascii String
  index, index_symbol = siac_cts_output_cta_v2_9_dissect.index_symbol(buffer, index, packet, parent)

  -- Bid Index Value: 8 Byte Signed Fixed Width Integer
  index, bid_index_value = siac_cts_output_cta_v2_9_dissect.bid_index_value(buffer, index, packet, parent)

  -- Offer Index Value: 8 Byte Signed Fixed Width Integer
  index, offer_index_value = siac_cts_output_cta_v2_9_dissect.offer_index_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Bid And Offer Index Message
siac_cts_output_cta_v2_9_dissect.bid_and_offer_index_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_bid_and_offer_index_message = siac_cts_output_cta_v2_9_size_of.bid_and_offer_index_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.bid_and_offer_index_message then
    local range = buffer(offset, size_of_bid_and_offer_index_message)
    local display = siac_cts_output_cta_v2_9_display.bid_and_offer_index_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.bid_and_offer_index_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.bid_and_offer_index_message_fields(buffer, offset, packet, parent, size_of_bid_and_offer_index_message)

  return offset + size_of_bid_and_offer_index_message
end

-- Size: Index Value
siac_cts_output_cta_v2_9_size_of.index_value = 8

-- Display: Index Value
siac_cts_output_cta_v2_9_display.index_value = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
siac_cts_output_cta_v2_9_dissect.index_value = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.index_value
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cts_output_cta_v2_9_display.index_value(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.index_value, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Index Message
siac_cts_output_cta_v2_9_size_of.index_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Index Message
siac_cts_output_cta_v2_9_display.index_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Message
siac_cts_output_cta_v2_9_dissect.index_message_fields = function(buffer, offset, packet, parent, size_of_index_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Index Symbol: 11 Byte Ascii String
  index, index_symbol = siac_cts_output_cta_v2_9_dissect.index_symbol(buffer, index, packet, parent)

  -- Index Value: 8 Byte Signed Fixed Width Integer
  index, index_value = siac_cts_output_cta_v2_9_dissect.index_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Message
siac_cts_output_cta_v2_9_dissect.index_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_index_message = siac_cts_output_cta_v2_9_size_of.index_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.index_message then
    local range = buffer(offset, size_of_index_message)
    local display = siac_cts_output_cta_v2_9_display.index_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.index_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.index_message_fields(buffer, offset, packet, parent, size_of_index_message)

  return offset + size_of_index_message
end

-- Calculate runtime size of: Index Payload
siac_cts_output_cta_v2_9_size_of.index_payload = function(buffer, offset, index_message_type)
  -- Size of Index Message
  if index_message_type == "I" then
    return siac_cts_output_cta_v2_9_size_of.index_message(buffer, offset)
  end
  -- Size of Bid And Offer Index Message
  if index_message_type == "Q" then
    return siac_cts_output_cta_v2_9_size_of.bid_and_offer_index_message(buffer, offset)
  end

  return 0
end

-- Display: Index Payload
siac_cts_output_cta_v2_9_display.index_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Index Payload
siac_cts_output_cta_v2_9_dissect.index_payload_branches = function(buffer, offset, packet, parent, index_message_type)
  -- Dissect Index Message
  if index_message_type == "I" then
    return siac_cts_output_cta_v2_9_dissect.index_message(buffer, offset, packet, parent)
  end
  -- Dissect Bid And Offer Index Message
  if index_message_type == "Q" then
    return siac_cts_output_cta_v2_9_dissect.bid_and_offer_index_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Index Payload
siac_cts_output_cta_v2_9_dissect.index_payload = function(buffer, offset, packet, parent, index_message_type)
  if not show.index_payload then
    return siac_cts_output_cta_v2_9_dissect.index_payload_branches(buffer, offset, packet, parent, index_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.index_payload(buffer, offset, index_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.index_payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.index_payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.index_payload_branches(buffer, offset, packet, parent, index_message_type)
end

-- Size: Index Message Type
siac_cts_output_cta_v2_9_size_of.index_message_type = 1

-- Display: Index Message Type
siac_cts_output_cta_v2_9_display.index_message_type = function(value)
  if value == "I" then
    return "Index Message Type: Index Message (I)"
  end
  if value == "Q" then
    return "Index Message Type: Bid And Offer Index Message (Q)"
  end

  return "Index Message Type: Unknown("..value..")"
end

-- Dissect: Index Message Type
siac_cts_output_cta_v2_9_dissect.index_message_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.index_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.index_message_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.index_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Index
siac_cts_output_cta_v2_9_size_of.index = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Index
siac_cts_output_cta_v2_9_display.index = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index
siac_cts_output_cta_v2_9_dissect.index_fields = function(buffer, offset, packet, parent, size_of_index)
  local index = offset

  -- Index Message Type: 1 Byte Ascii String Enum with 2 values
  index, index_message_type = siac_cts_output_cta_v2_9_dissect.index_message_type(buffer, index, packet, parent)

  -- Index Payload: Runtime Type with 2 branches
  index = siac_cts_output_cta_v2_9_dissect.index_payload(buffer, index, packet, parent, index_message_type)

  return index
end

-- Dissect: Index
siac_cts_output_cta_v2_9_dissect.index = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_index = siac_cts_output_cta_v2_9_size_of.index(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.index then
    local range = buffer(offset, size_of_index)
    local display = siac_cts_output_cta_v2_9_display.index(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.index, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.index_fields(buffer, offset, packet, parent, size_of_index)

  return offset + size_of_index
end

-- Read runtime size of: End Of Day Message
siac_cts_output_cta_v2_9_size_of.end_of_day_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: End Of Day Message
siac_cts_output_cta_v2_9_display.end_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
siac_cts_output_cta_v2_9_dissect.end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
siac_cts_output_cta_v2_9_dissect.end_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_day_message = siac_cts_output_cta_v2_9_size_of.end_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_day_message then
    local range = buffer(offset, size_of_end_of_day_message)
    local display = siac_cts_output_cta_v2_9_display.end_of_day_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.end_of_day_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.end_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_day_message)

  return offset + size_of_end_of_day_message
end

-- Read runtime size of: Line Integrity Message
siac_cts_output_cta_v2_9_size_of.line_integrity_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Line Integrity Message
siac_cts_output_cta_v2_9_display.line_integrity_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
siac_cts_output_cta_v2_9_dissect.line_integrity_message_fields = function(buffer, offset, packet, parent, size_of_line_integrity_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
siac_cts_output_cta_v2_9_dissect.line_integrity_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_line_integrity_message = siac_cts_output_cta_v2_9_size_of.line_integrity_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.line_integrity_message then
    local range = buffer(offset, size_of_line_integrity_message)
    local display = siac_cts_output_cta_v2_9_display.line_integrity_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.line_integrity_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.line_integrity_message_fields(buffer, offset, packet, parent, size_of_line_integrity_message)

  return offset + size_of_line_integrity_message
end

-- Read runtime size of: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_9_size_of.disaster_recovery_data_center_activation_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_9_display.disaster_recovery_data_center_activation_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message_fields = function(buffer, offset, packet, parent, size_of_disaster_recovery_data_center_activation_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Data Center Activation Message
siac_cts_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_disaster_recovery_data_center_activation_message = siac_cts_output_cta_v2_9_size_of.disaster_recovery_data_center_activation_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.disaster_recovery_data_center_activation_message then
    local range = buffer(offset, size_of_disaster_recovery_data_center_activation_message)
    local display = siac_cts_output_cta_v2_9_display.disaster_recovery_data_center_activation_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.disaster_recovery_data_center_activation_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message_fields(buffer, offset, packet, parent, size_of_disaster_recovery_data_center_activation_message)

  return offset + size_of_disaster_recovery_data_center_activation_message
end

-- Read runtime size of: Reset Block Sequence Number Message
siac_cts_output_cta_v2_9_size_of.reset_block_sequence_number_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Reset Block Sequence Number Message
siac_cts_output_cta_v2_9_display.reset_block_sequence_number_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Block Sequence Number Message
siac_cts_output_cta_v2_9_dissect.reset_block_sequence_number_message_fields = function(buffer, offset, packet, parent, size_of_reset_block_sequence_number_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Block Sequence Number Message
siac_cts_output_cta_v2_9_dissect.reset_block_sequence_number_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_reset_block_sequence_number_message = siac_cts_output_cta_v2_9_size_of.reset_block_sequence_number_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.reset_block_sequence_number_message then
    local range = buffer(offset, size_of_reset_block_sequence_number_message)
    local display = siac_cts_output_cta_v2_9_display.reset_block_sequence_number_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.reset_block_sequence_number_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.reset_block_sequence_number_message_fields(buffer, offset, packet, parent, size_of_reset_block_sequence_number_message)

  return offset + size_of_reset_block_sequence_number_message
end

-- Read runtime size of: Start Of Day Message
siac_cts_output_cta_v2_9_size_of.start_of_day_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Start Of Day Message
siac_cts_output_cta_v2_9_display.start_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
siac_cts_output_cta_v2_9_dissect.start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
siac_cts_output_cta_v2_9_dissect.start_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_start_of_day_message = siac_cts_output_cta_v2_9_size_of.start_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local range = buffer(offset, size_of_start_of_day_message)
    local display = siac_cts_output_cta_v2_9_display.start_of_day_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.start_of_day_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.start_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_day_message)

  return offset + size_of_start_of_day_message
end

-- Calculate runtime size of: Control Payload
siac_cts_output_cta_v2_9_size_of.control_payload = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "A" then
    return siac_cts_output_cta_v2_9_size_of.start_of_day_message(buffer, offset)
  end
  -- Size of Reset Block Sequence Number Message
  if control_message_type == "L" then
    return siac_cts_output_cta_v2_9_size_of.reset_block_sequence_number_message(buffer, offset)
  end
  -- Size of Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return siac_cts_output_cta_v2_9_size_of.disaster_recovery_data_center_activation_message(buffer, offset)
  end
  -- Size of Line Integrity Message
  if control_message_type == "T" then
    return siac_cts_output_cta_v2_9_size_of.line_integrity_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "Z" then
    return siac_cts_output_cta_v2_9_size_of.end_of_day_message(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
siac_cts_output_cta_v2_9_display.control_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
siac_cts_output_cta_v2_9_dissect.control_payload_branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "A" then
    return siac_cts_output_cta_v2_9_dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Reset Block Sequence Number Message
  if control_message_type == "L" then
    return siac_cts_output_cta_v2_9_dissect.reset_block_sequence_number_message(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return siac_cts_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return siac_cts_output_cta_v2_9_dissect.line_integrity_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "Z" then
    return siac_cts_output_cta_v2_9_dissect.end_of_day_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
siac_cts_output_cta_v2_9_dissect.control_payload = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return siac_cts_output_cta_v2_9_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.control_payload(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.control_payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.control_payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
end

-- Size: Control Message Type
siac_cts_output_cta_v2_9_size_of.control_message_type = 1

-- Display: Control Message Type
siac_cts_output_cta_v2_9_display.control_message_type = function(value)
  if value == "A" then
    return "Control Message Type: Start Of Day Message (A)"
  end
  if value == "L" then
    return "Control Message Type: Reset Block Sequence Number Message (L)"
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
siac_cts_output_cta_v2_9_dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Control
siac_cts_output_cta_v2_9_size_of.control = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Control
siac_cts_output_cta_v2_9_display.control = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
siac_cts_output_cta_v2_9_dissect.control_fields = function(buffer, offset, packet, parent, size_of_control)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 5 values
  index, control_message_type = siac_cts_output_cta_v2_9_dissect.control_message_type(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 5 branches
  index = siac_cts_output_cta_v2_9_dissect.control_payload(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
siac_cts_output_cta_v2_9_dissect.control = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_control = siac_cts_output_cta_v2_9_size_of.control(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.control then
    local range = buffer(offset, size_of_control)
    local display = siac_cts_output_cta_v2_9_display.control(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.control, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.control_fields(buffer, offset, packet, parent, size_of_control)

  return offset + size_of_control
end

-- Read runtime size of: End Of Start Of Day Message
siac_cts_output_cta_v2_9_size_of.end_of_start_of_day_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: End Of Start Of Day Message
siac_cts_output_cta_v2_9_display.end_of_start_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Start Of Day Message
siac_cts_output_cta_v2_9_dissect.end_of_start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Start Of Day Message
siac_cts_output_cta_v2_9_dissect.end_of_start_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_start_of_day_message = siac_cts_output_cta_v2_9_size_of.end_of_start_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_start_of_day_message then
    local range = buffer(offset, size_of_end_of_start_of_day_message)
    local display = siac_cts_output_cta_v2_9_display.end_of_start_of_day_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.end_of_start_of_day_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.end_of_start_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_start_of_day_message)

  return offset + size_of_end_of_start_of_day_message
end

-- Read runtime size of: Start Of Start Of Day Message
siac_cts_output_cta_v2_9_size_of.start_of_start_of_day_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Start Of Start Of Day Message
siac_cts_output_cta_v2_9_display.start_of_start_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Start Of Day Message
siac_cts_output_cta_v2_9_dissect.start_of_start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Start Of Day Message
siac_cts_output_cta_v2_9_dissect.start_of_start_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_start_of_start_of_day_message = siac_cts_output_cta_v2_9_size_of.start_of_start_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.start_of_start_of_day_message then
    local range = buffer(offset, size_of_start_of_start_of_day_message)
    local display = siac_cts_output_cta_v2_9_display.start_of_start_of_day_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.start_of_start_of_day_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.start_of_start_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_start_of_day_message)

  return offset + size_of_start_of_start_of_day_message
end

-- Read runtime size of: End Of End Of Day Message
siac_cts_output_cta_v2_9_size_of.end_of_end_of_day_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: End Of End Of Day Message
siac_cts_output_cta_v2_9_display.end_of_end_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of End Of Day Message
siac_cts_output_cta_v2_9_dissect.end_of_end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_end_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of End Of Day Message
siac_cts_output_cta_v2_9_dissect.end_of_end_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_end_of_end_of_day_message = siac_cts_output_cta_v2_9_size_of.end_of_end_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.end_of_end_of_day_message then
    local range = buffer(offset, size_of_end_of_end_of_day_message)
    local display = siac_cts_output_cta_v2_9_display.end_of_end_of_day_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.end_of_end_of_day_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.end_of_end_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_end_of_day_message)

  return offset + size_of_end_of_end_of_day_message
end

-- Read runtime size of: Start Of End Of Day Message
siac_cts_output_cta_v2_9_size_of.start_of_end_of_day_message = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Start Of End Of Day Message
siac_cts_output_cta_v2_9_display.start_of_end_of_day_message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of End Of Day Message
siac_cts_output_cta_v2_9_dissect.start_of_end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_end_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cts_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cts_output_cta_v2_9_dissect.timestamp_1(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cts_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cts_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cts_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of End Of Day Message
siac_cts_output_cta_v2_9_dissect.start_of_end_of_day_message = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_start_of_end_of_day_message = siac_cts_output_cta_v2_9_size_of.start_of_end_of_day_message(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.start_of_end_of_day_message then
    local range = buffer(offset, size_of_start_of_end_of_day_message)
    local display = siac_cts_output_cta_v2_9_display.start_of_end_of_day_message(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.start_of_end_of_day_message, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.start_of_end_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_end_of_day_message)

  return offset + size_of_start_of_end_of_day_message
end

-- Calculate runtime size of: Administrative Payload
siac_cts_output_cta_v2_9_size_of.administrative_payload = function(buffer, offset, administrative_message_type)
  -- Size of Start Of End Of Day Message
  if administrative_message_type == "A" then
    return siac_cts_output_cta_v2_9_size_of.start_of_end_of_day_message(buffer, offset)
  end
  -- Size of End Of End Of Day Message
  if administrative_message_type == "B" then
    return siac_cts_output_cta_v2_9_size_of.end_of_end_of_day_message(buffer, offset)
  end
  -- Size of Start Of Start Of Day Message
  if administrative_message_type == "C" then
    return siac_cts_output_cta_v2_9_size_of.start_of_start_of_day_message(buffer, offset)
  end
  -- Size of End Of Start Of Day Message
  if administrative_message_type == "D" then
    return siac_cts_output_cta_v2_9_size_of.end_of_start_of_day_message(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
siac_cts_output_cta_v2_9_display.administrative_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
siac_cts_output_cta_v2_9_dissect.administrative_payload_branches = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Start Of End Of Day Message
  if administrative_message_type == "A" then
    return siac_cts_output_cta_v2_9_dissect.start_of_end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of End Of Day Message
  if administrative_message_type == "B" then
    return siac_cts_output_cta_v2_9_dissect.end_of_end_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Start Of Day Message
  if administrative_message_type == "C" then
    return siac_cts_output_cta_v2_9_dissect.start_of_start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Start Of Day Message
  if administrative_message_type == "D" then
    return siac_cts_output_cta_v2_9_dissect.end_of_start_of_day_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
siac_cts_output_cta_v2_9_dissect.administrative_payload = function(buffer, offset, packet, parent, administrative_message_type)
  if not show.administrative_payload then
    return siac_cts_output_cta_v2_9_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.administrative_payload(buffer, offset, administrative_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.administrative_payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.administrative_payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.administrative_payload_branches(buffer, offset, packet, parent, administrative_message_type)
end

-- Size: Administrative Message Type
siac_cts_output_cta_v2_9_size_of.administrative_message_type = 1

-- Display: Administrative Message Type
siac_cts_output_cta_v2_9_display.administrative_message_type = function(value)
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

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
siac_cts_output_cta_v2_9_dissect.administrative_message_type = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.administrative_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.administrative_message_type(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Read runtime size of: Administrative
siac_cts_output_cta_v2_9_size_of.administrative = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Administrative
siac_cts_output_cta_v2_9_display.administrative = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
siac_cts_output_cta_v2_9_dissect.administrative_fields = function(buffer, offset, packet, parent, size_of_administrative)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 4 values
  index, administrative_message_type = siac_cts_output_cta_v2_9_dissect.administrative_message_type(buffer, index, packet, parent)

  -- Administrative Payload: Runtime Type with 4 branches
  index = siac_cts_output_cta_v2_9_dissect.administrative_payload(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
siac_cts_output_cta_v2_9_dissect.administrative = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_administrative = siac_cts_output_cta_v2_9_size_of.administrative(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.administrative then
    local range = buffer(offset, size_of_administrative)
    local display = siac_cts_output_cta_v2_9_display.administrative(buffer, packet, parent)
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.administrative, range, display)
  end

  siac_cts_output_cta_v2_9_dissect.administrative_fields(buffer, offset, packet, parent, size_of_administrative)

  return offset + size_of_administrative
end

-- Calculate runtime size of: Payload
siac_cts_output_cta_v2_9_size_of.payload = function(buffer, offset, message_category)
  -- Size of Administrative
  if message_category == "A" then
    return siac_cts_output_cta_v2_9_size_of.administrative(buffer, offset)
  end
  -- Size of Control
  if message_category == "C" then
    return siac_cts_output_cta_v2_9_size_of.control(buffer, offset)
  end
  -- Size of Index
  if message_category == "I" then
    return siac_cts_output_cta_v2_9_size_of.index(buffer, offset)
  end
  -- Size of Market Status
  if message_category == "M" then
    return siac_cts_output_cta_v2_9_size_of.market_status(buffer, offset)
  end
  -- Size of Prior Day
  if message_category == "P" then
    return siac_cts_output_cta_v2_9_size_of.prior_day(buffer, offset)
  end
  -- Size of Summary
  if message_category == "S" then
    return siac_cts_output_cta_v2_9_size_of.summary(buffer, offset)
  end
  -- Size of Trade
  if message_category == "T" then
    return siac_cts_output_cta_v2_9_size_of.trade(buffer, offset)
  end

  return 0
end

-- Display: Payload
siac_cts_output_cta_v2_9_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
siac_cts_output_cta_v2_9_dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative
  if message_category == "A" then
    return siac_cts_output_cta_v2_9_dissect.administrative(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return siac_cts_output_cta_v2_9_dissect.control(buffer, offset, packet, parent)
  end
  -- Dissect Index
  if message_category == "I" then
    return siac_cts_output_cta_v2_9_dissect.index(buffer, offset, packet, parent)
  end
  -- Dissect Market Status
  if message_category == "M" then
    return siac_cts_output_cta_v2_9_dissect.market_status(buffer, offset, packet, parent)
  end
  -- Dissect Prior Day
  if message_category == "P" then
    return siac_cts_output_cta_v2_9_dissect.prior_day(buffer, offset, packet, parent)
  end
  -- Dissect Summary
  if message_category == "S" then
    return siac_cts_output_cta_v2_9_dissect.summary(buffer, offset, packet, parent)
  end
  -- Dissect Trade
  if message_category == "T" then
    return siac_cts_output_cta_v2_9_dissect.trade(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
siac_cts_output_cta_v2_9_dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return siac_cts_output_cta_v2_9_dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cts_output_cta_v2_9_size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cts_output_cta_v2_9_display.payload(buffer, packet, parent)
  local element = parent:add(omi_siac_cts_output_cta_v2_9.fields.payload, range, display)

  return siac_cts_output_cta_v2_9_dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
siac_cts_output_cta_v2_9_size_of.message_category = 1

-- Display: Message Category
siac_cts_output_cta_v2_9_display.message_category = function(value)
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
siac_cts_output_cta_v2_9_dissect.message_category = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.message_category(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Message Length
siac_cts_output_cta_v2_9_size_of.message_length = 2

-- Display: Message Length
siac_cts_output_cta_v2_9_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cts_output_cta_v2_9_dissect.message_length = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.message_length(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
siac_cts_output_cta_v2_9_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.message_length

  index = index + siac_cts_output_cta_v2_9_size_of.message_category

  return index
end

-- Display: Message Header
siac_cts_output_cta_v2_9_display.message_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
siac_cts_output_cta_v2_9_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = siac_cts_output_cta_v2_9_dissect.message_length(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 7 values
  index, message_category = siac_cts_output_cta_v2_9_dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_cts_output_cta_v2_9_dissect.message_header = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.message_header, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.message_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.message_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.message_header_fields(buffer, offset, packet, parent)
  end
end

-- Display: Message
siac_cts_output_cta_v2_9_display.message = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cts_output_cta_v2_9_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_siac_cts_output_cta_v2_9.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = siac_cts_output_cta_v2_9_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 7 branches
  index = siac_cts_output_cta_v2_9_dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cts_output_cta_v2_9_dissect.message = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.message, buffer(offset, 0))
    local current = siac_cts_output_cta_v2_9_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = siac_cts_output_cta_v2_9_display.message(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    siac_cts_output_cta_v2_9_dissect.message_fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Size: Block Checksum
siac_cts_output_cta_v2_9_size_of.block_checksum = 2

-- Display: Block Checksum
siac_cts_output_cta_v2_9_display.block_checksum = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cts_output_cta_v2_9_dissect.block_checksum = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.block_checksum
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.block_checksum(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sip Block Timestamp
siac_cts_output_cta_v2_9_size_of.sip_block_timestamp = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.seconds

  index = index + siac_cts_output_cta_v2_9_size_of.nanoseconds

  return index
end

-- Display: Sip Block Timestamp
siac_cts_output_cta_v2_9_display.sip_block_timestamp = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sip Block Timestamp
siac_cts_output_cta_v2_9_dissect.sip_block_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cts_output_cta_v2_9_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cts_output_cta_v2_9_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Sip Block Timestamp
siac_cts_output_cta_v2_9_dissect.sip_block_timestamp = function(buffer, offset, packet, parent)
  if show.sip_block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.sip_block_timestamp, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.sip_block_timestamp_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.sip_block_timestamp(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.sip_block_timestamp_fields(buffer, offset, packet, parent)
  end
end

-- Size: Messages In Block
siac_cts_output_cta_v2_9_size_of.messages_in_block = 1

-- Display: Messages In Block
siac_cts_output_cta_v2_9_display.messages_in_block = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cts_output_cta_v2_9_dissect.messages_in_block = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.messages_in_block
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.messages_in_block(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Size: Block Sequence Number
siac_cts_output_cta_v2_9_size_of.block_sequence_number = 4

-- Display: Block Sequence Number
siac_cts_output_cta_v2_9_display.block_sequence_number = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cts_output_cta_v2_9_dissect.block_sequence_number = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.block_sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.block_sequence_number(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Indicator
siac_cts_output_cta_v2_9_size_of.retransmission_indicator = 1

-- Display: Retransmission Indicator
siac_cts_output_cta_v2_9_display.retransmission_indicator = function(value)
  if value == "O" then
    return "Retransmission Indicator: Original (O)"
  end
  if value == "V" then
    return "Retransmission Indicator: Retransmitted (V)"
  end

  return "Retransmission Indicator: Unknown("..value..")"
end

-- Dissect: Retransmission Indicator
siac_cts_output_cta_v2_9_dissect.retransmission_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.retransmission_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.retransmission_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Size: Data Feed Indicator
siac_cts_output_cta_v2_9_size_of.data_feed_indicator = 1

-- Display: Data Feed Indicator
siac_cts_output_cta_v2_9_display.data_feed_indicator = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
siac_cts_output_cta_v2_9_dissect.data_feed_indicator = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.data_feed_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cts_output_cta_v2_9_display.data_feed_indicator(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Size
siac_cts_output_cta_v2_9_size_of.block_size = 2

-- Display: Block Size
siac_cts_output_cta_v2_9_display.block_size = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cts_output_cta_v2_9_dissect.block_size = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.block_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.block_size(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.block_size, range, value, display)

  return offset + length, value
end

-- Size: Version
siac_cts_output_cta_v2_9_size_of.version = 1

-- Display: Version
siac_cts_output_cta_v2_9_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cts_output_cta_v2_9_dissect.version = function(buffer, offset, packet, parent)
  local length = siac_cts_output_cta_v2_9_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cts_output_cta_v2_9_display.version(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cts_output_cta_v2_9.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Header
siac_cts_output_cta_v2_9_size_of.block_header = function(buffer, offset)
  local index = 0

  index = index + siac_cts_output_cta_v2_9_size_of.version

  index = index + siac_cts_output_cta_v2_9_size_of.block_size

  index = index + siac_cts_output_cta_v2_9_size_of.data_feed_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.retransmission_indicator

  index = index + siac_cts_output_cta_v2_9_size_of.block_sequence_number

  index = index + siac_cts_output_cta_v2_9_size_of.messages_in_block

  index = index + siac_cts_output_cta_v2_9_size_of.sip_block_timestamp(buffer, offset + index)

  index = index + siac_cts_output_cta_v2_9_size_of.block_checksum

  return index
end

-- Display: Block Header
siac_cts_output_cta_v2_9_display.block_header = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cts_output_cta_v2_9_dissect.block_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = siac_cts_output_cta_v2_9_dissect.version(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = siac_cts_output_cta_v2_9_dissect.block_size(buffer, index, packet, parent)

  -- Data Feed Indicator: 1 Byte Ascii String
  index, data_feed_indicator = siac_cts_output_cta_v2_9_dissect.data_feed_indicator(buffer, index, packet, parent)

  -- Retransmission Indicator: 1 Byte Ascii String Enum with 2 values
  index, retransmission_indicator = siac_cts_output_cta_v2_9_dissect.retransmission_indicator(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = siac_cts_output_cta_v2_9_dissect.block_sequence_number(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = siac_cts_output_cta_v2_9_dissect.messages_in_block(buffer, index, packet, parent)

  -- Sip Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = siac_cts_output_cta_v2_9_dissect.sip_block_timestamp(buffer, index, packet, parent)

  -- Block Checksum: 2 Byte Unsigned Fixed Width Integer
  index, block_checksum = siac_cts_output_cta_v2_9_dissect.block_checksum(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cts_output_cta_v2_9_dissect.block_header = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cts_output_cta_v2_9.fields.block_header, buffer(offset, 0))
    local index = siac_cts_output_cta_v2_9_dissect.block_header_fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cts_output_cta_v2_9_display.block_header(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cts_output_cta_v2_9_dissect.block_header_fields(buffer, offset, packet, parent)
  end
end

-- Dissect Packet
siac_cts_output_cta_v2_9_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 8 fields
  index, block_header = siac_cts_output_cta_v2_9_dissect.block_header(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = siac_cts_output_cta_v2_9_dissect.message(buffer, index, packet, parent, message_length)
  end

  -- Runtime optional field exists: Block Pad Byte
  local block_pad_byte_exists = uneven( index )

  -- Runtime optional field: Block Pad Byte
  if block_pad_byte_exists then
    index, block_pad_byte = siac_cts_output_cta_v2_9_dissect.block_pad_byte(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_cts_output_cta_v2_9.init()
end

-- Dissector for Siac Cts Output Cta 2.9
function omi_siac_cts_output_cta_v2_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_cts_output_cta_v2_9.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_cts_output_cta_v2_9, buffer(), omi_siac_cts_output_cta_v2_9.description, "("..buffer:len().." Bytes)")
  return siac_cts_output_cta_v2_9_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_cts_output_cta_v2_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.omi_siac_cts_output_cta_v2_9_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Siac Cts Output Cta 2.9
local function omi_siac_cts_output_cta_v2_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.omi_siac_cts_output_cta_v2_9_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_cts_output_cta_v2_9
  omi_siac_cts_output_cta_v2_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cts Output Cta 2.9
omi_siac_cts_output_cta_v2_9:register_heuristic("udp", omi_siac_cts_output_cta_v2_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 2.9
--   Date: Friday, December 16, 2022
--   Specification: CTS_Pillar_Output_Specification.pdf
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
