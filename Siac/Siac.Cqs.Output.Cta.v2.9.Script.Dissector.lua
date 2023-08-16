-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 2.9 Protocol
local siac_cqs_output_cta_v2_9 = Proto("Siac.Cqs.Output.Cta.v2.9.Lua", "Siac Cqs Output Cta 2.9")

-- Component Tables
local show = {}
local format = {}
local siac_cqs_output_cta_v2_9_display = {}
local siac_cqs_output_cta_v2_9_dissect = {}
local siac_cqs_output_cta_v2_9_size_of = {}
local verify = {}
local translate = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 2.9 Fields
siac_cqs_output_cta_v2_9.fields.adf_timestamp = ProtoField.new("Adf Timestamp", "siac.cqs.output.cta.v2.9.adftimestamp", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cqs.output.cta.v2.9.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cqs.output.cta.v2.9.auctioncollarreferenceprice", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cqs.output.cta.v2.9.auctioncollarupperthresholdprice", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.auction_status_message = ProtoField.new("Auction Status Message", "siac.cqs.output.cta.v2.9.auctionstatusmessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.best_bid_participant_id = ProtoField.new("Best Bid Participant Id", "siac.cqs.output.cta.v2.9.bestbidparticipantid", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.best_bid_price_long = ProtoField.new("Best Bid Price Long", "siac.cqs.output.cta.v2.9.bestbidpricelong", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.best_bid_price_short = ProtoField.new("Best Bid Price Short", "siac.cqs.output.cta.v2.9.bestbidpriceshort", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.best_bid_quote_condition = ProtoField.new("Best Bid Quote Condition", "siac.cqs.output.cta.v2.9.bestbidquotecondition", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.best_bid_size_long = ProtoField.new("Best Bid Size Long", "siac.cqs.output.cta.v2.9.bestbidsizelong", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.best_bid_size_short = ProtoField.new("Best Bid Size Short", "siac.cqs.output.cta.v2.9.bestbidsizeshort", ftypes.UINT16)
siac_cqs_output_cta_v2_9.fields.best_offer_participant_id = ProtoField.new("Best Offer Participant Id", "siac.cqs.output.cta.v2.9.bestofferparticipantid", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.best_offer_price_long = ProtoField.new("Best Offer Price Long", "siac.cqs.output.cta.v2.9.bestofferpricelong", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.best_offer_price_short = ProtoField.new("Best Offer Price Short", "siac.cqs.output.cta.v2.9.bestofferpriceshort", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.best_offer_quote_condition = ProtoField.new("Best Offer Quote Condition", "siac.cqs.output.cta.v2.9.bestofferquotecondition", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.best_offer_size_long = ProtoField.new("Best Offer Size Long", "siac.cqs.output.cta.v2.9.bestoffersizelong", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.best_offer_size_short = ProtoField.new("Best Offer Size Short", "siac.cqs.output.cta.v2.9.bestoffersizeshort", ftypes.UINT16)
siac_cqs_output_cta_v2_9.fields.bid_price_long = ProtoField.new("Bid Price Long", "siac.cqs.output.cta.v2.9.bidpricelong", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.bid_price_lower_limit_price_band = ProtoField.new("Bid Price Lower Limit Price Band", "siac.cqs.output.cta.v2.9.bidpricelowerlimitpriceband", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.bid_price_short = ProtoField.new("Bid Price Short", "siac.cqs.output.cta.v2.9.bidpriceshort", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.bid_size_long = ProtoField.new("Bid Size Long", "siac.cqs.output.cta.v2.9.bidsizelong", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.bid_size_short = ProtoField.new("Bid Size Short", "siac.cqs.output.cta.v2.9.bidsizeshort", ftypes.UINT16)
siac_cqs_output_cta_v2_9.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cqs.output.cta.v2.9.blockchecksum", ftypes.UINT16)
siac_cqs_output_cta_v2_9.fields.block_header = ProtoField.new("Block Header", "siac.cqs.output.cta.v2.9.blockheader", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cqs.output.cta.v2.9.blockpadbyte", ftypes.UINT8)
siac_cqs_output_cta_v2_9.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cqs.output.cta.v2.9.blocksequencenumber", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.block_size = ProtoField.new("Block Size", "siac.cqs.output.cta.v2.9.blocksize", ftypes.UINT16)
siac_cqs_output_cta_v2_9.fields.control = ProtoField.new("Control", "siac.cqs.output.cta.v2.9.control", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cqs.output.cta.v2.9.controlmessagetype", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.control_payload = ProtoField.new("Control Payload", "siac.cqs.output.cta.v2.9.controlpayload", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.cqs.output.cta.v2.9.datafeedindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.disaster_recovery_data_center_activation_message = ProtoField.new("Disaster Recovery Data Center Activation Message", "siac.cqs.output.cta.v2.9.disasterrecoverydatacenteractivationmessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.end_of_day_message = ProtoField.new("End Of Day Message", "siac.cqs.output.cta.v2.9.endofdaymessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.end_of_test_cycle_message = ProtoField.new("End Of Test Cycle Message", "siac.cqs.output.cta.v2.9.endoftestcyclemessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cqs.output.cta.v2.9.financialstatusindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_bbo_indicator = ProtoField.new("Finra Bbo Indicator", "siac.cqs.output.cta.v2.9.finrabboindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_bbo_luld_indicator = ProtoField.new("Finra Bbo Luld Indicator", "siac.cqs.output.cta.v2.9.finrabboluldindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_best_bid_market_maker_id = ProtoField.new("Finra Best Bid Market Maker Id", "siac.cqs.output.cta.v2.9.finrabestbidmarketmakerid", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_best_bid_price = ProtoField.new("Finra Best Bid Price", "siac.cqs.output.cta.v2.9.finrabestbidprice", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.finra_best_bid_quote_condition = ProtoField.new("Finra Best Bid Quote Condition", "siac.cqs.output.cta.v2.9.finrabestbidquotecondition", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_best_bid_size = ProtoField.new("Finra Best Bid Size", "siac.cqs.output.cta.v2.9.finrabestbidsize", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.finra_best_offer_market_maker_id = ProtoField.new("Finra Best Offer Market Maker Id", "siac.cqs.output.cta.v2.9.finrabestoffermarketmakerid", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_best_offer_price = ProtoField.new("Finra Best Offer Price", "siac.cqs.output.cta.v2.9.finrabestofferprice", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.finra_best_offer_quote_condition = ProtoField.new("Finra Best Offer Quote Condition", "siac.cqs.output.cta.v2.9.finrabestofferquotecondition", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_best_offer_size = ProtoField.new("Finra Best Offer Size", "siac.cqs.output.cta.v2.9.finrabestoffersize", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.finra_close_message = ProtoField.new("Finra Close Message", "siac.cqs.output.cta.v2.9.finraclosemessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_market_maker_id = ProtoField.new("Finra Market Maker Id", "siac.cqs.output.cta.v2.9.finramarketmakerid", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.finra_open_message = ProtoField.new("Finra Open Message", "siac.cqs.output.cta.v2.9.finraopenmessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.future = ProtoField.new("Future", "siac.cqs.output.cta.v2.9.future", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cqs.output.cta.v2.9.instrumenttype", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cqs.output.cta.v2.9.lineintegritymessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.long_quote_message = ProtoField.new("Long Quote Message", "siac.cqs.output.cta.v2.9.longquotemessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.luld_indicator = ProtoField.new("Luld Indicator", "siac.cqs.output.cta.v2.9.luldindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.market_condition = ProtoField.new("Market Condition", "siac.cqs.output.cta.v2.9.marketcondition", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.market_status = ProtoField.new("Market Status", "siac.cqs.output.cta.v2.9.marketstatus", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.market_status_message_type = ProtoField.new("Market Status Message Type", "siac.cqs.output.cta.v2.9.marketstatusmessagetype", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.market_status_payload = ProtoField.new("Market Status Payload", "siac.cqs.output.cta.v2.9.marketstatuspayload", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.market_wide_circuit_breaker_decline_level_status_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Message", "siac.cqs.output.cta.v2.9.marketwidecircuitbreakerdeclinelevelstatusmessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "siac.cqs.output.cta.v2.9.marketwidecircuitbreakerstatusmessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.message = ProtoField.new("Message", "siac.cqs.output.cta.v2.9.message", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.message_category = ProtoField.new("Message Category", "siac.cqs.output.cta.v2.9.messagecategory", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.message_header = ProtoField.new("Message Header", "siac.cqs.output.cta.v2.9.messageheader", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.message_id = ProtoField.new("Message Id", "siac.cqs.output.cta.v2.9.messageid", ftypes.UINT8)
siac_cqs_output_cta_v2_9.fields.message_length = ProtoField.new("Message Length", "siac.cqs.output.cta.v2.9.messagelength", ftypes.UINT16)
siac_cqs_output_cta_v2_9.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cqs.output.cta.v2.9.messagesinblock", ftypes.UINT8)
siac_cqs_output_cta_v2_9.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cqs.output.cta.v2.9.mwcblevel2", ftypes.INT64)
siac_cqs_output_cta_v2_9.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cqs.output.cta.v2.9.mwcblevel3", ftypes.INT64)
siac_cqs_output_cta_v2_9.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cqs.output.cta.v2.9.nanoseconds", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.national_bbo_indicator = ProtoField.new("National Bbo Indicator", "siac.cqs.output.cta.v2.9.nationalbboindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.national_bbo_luld_indicator = ProtoField.new("National Bbo Luld Indicator", "siac.cqs.output.cta.v2.9.nationalbboluldindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.national_best_bid_long_appendage = ProtoField.new("National Best Bid Long Appendage", "siac.cqs.output.cta.v2.9.nationalbestbidlongappendage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.national_best_bid_short_appendage = ProtoField.new("National Best Bid Short Appendage", "siac.cqs.output.cta.v2.9.nationalbestbidshortappendage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.national_best_offer_long_appendage = ProtoField.new("National Best Offer Long Appendage", "siac.cqs.output.cta.v2.9.nationalbestofferlongappendage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.national_best_offer_short_appendage = ProtoField.new("National Best Offer Short Appendage", "siac.cqs.output.cta.v2.9.nationalbestoffershortappendage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cqs.output.cta.v2.9.numberofextensions", ftypes.UINT8)
siac_cqs_output_cta_v2_9.fields.offer_price_long = ProtoField.new("Offer Price Long", "siac.cqs.output.cta.v2.9.offerpricelong", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.offer_price_short = ProtoField.new("Offer Price Short", "siac.cqs.output.cta.v2.9.offerpriceshort", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.offer_price_upper_limit_price_band = ProtoField.new("Offer Price Upper Limit Price Band", "siac.cqs.output.cta.v2.9.offerpriceupperlimitpriceband", ftypes.DOUBLE)
siac_cqs_output_cta_v2_9.fields.offer_size_long = ProtoField.new("Offer Size Long", "siac.cqs.output.cta.v2.9.offersizelong", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.offer_size_short = ProtoField.new("Offer Size Short", "siac.cqs.output.cta.v2.9.offersizeshort", ftypes.UINT16)
siac_cqs_output_cta_v2_9.fields.packet = ProtoField.new("Packet", "siac.cqs.output.cta.v2.9.packet", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.participant_id = ProtoField.new("Participant Id", "siac.cqs.output.cta.v2.9.participantid", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cqs.output.cta.v2.9.participantreferencenumber", ftypes.INT64)
siac_cqs_output_cta_v2_9.fields.participant_timestamp = ProtoField.new("Participant Timestamp", "siac.cqs.output.cta.v2.9.participanttimestamp", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.payload = ProtoField.new("Payload", "siac.cqs.output.cta.v2.9.payload", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cqs.output.cta.v2.9.primarylistingmarketparticipantid", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.quote = ProtoField.new("Quote", "siac.cqs.output.cta.v2.9.quote", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.quote_condition = ProtoField.new("Quote Condition", "siac.cqs.output.cta.v2.9.quotecondition", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.quote_message_type = ProtoField.new("Quote Message Type", "siac.cqs.output.cta.v2.9.quotemessagetype", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.quote_payload = ProtoField.new("Quote Payload", "siac.cqs.output.cta.v2.9.quotepayload", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.reserved = ProtoField.new("Reserved", "siac.cqs.output.cta.v2.9.reserved", ftypes.UINT8)
siac_cqs_output_cta_v2_9.fields.reset_block_sequence_number_message = ProtoField.new("Reset Block Sequence Number Message", "siac.cqs.output.cta.v2.9.resetblocksequencenumbermessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "siac.cqs.output.cta.v2.9.retailinterestindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.cqs.output.cta.v2.9.retransmissionindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.seconds = ProtoField.new("Seconds", "siac.cqs.output.cta.v2.9.seconds", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.security_status_indicator = ProtoField.new("Security Status Indicator", "siac.cqs.output.cta.v2.9.securitystatusindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.security_symbol_long = ProtoField.new("Security Symbol Long", "siac.cqs.output.cta.v2.9.securitysymbollong", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.settlement_condition = ProtoField.new("Settlement Condition", "siac.cqs.output.cta.v2.9.settlementcondition", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.short_quote_message = ProtoField.new("Short Quote Message", "siac.cqs.output.cta.v2.9.shortquotemessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cqs.output.cta.v2.9.shortsalerestrictionindicator", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.sip_block_timestamp = ProtoField.new("Sip Block Timestamp", "siac.cqs.output.cta.v2.9.sipblocktimestamp", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.sip_generated_message_identifier = ProtoField.new("Sip Generated Message Identifier", "siac.cqs.output.cta.v2.9.sipgeneratedmessageidentifier", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.special_long_quote_message = ProtoField.new("Special Long Quote Message", "siac.cqs.output.cta.v2.9.speciallongquotemessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cqs.output.cta.v2.9.startofdaymessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.start_of_test_cycle_message = ProtoField.new("Start Of Test Cycle Message", "siac.cqs.output.cta.v2.9.startoftestcyclemessage", ftypes.STRING)
siac_cqs_output_cta_v2_9.fields.transaction_id = ProtoField.new("Transaction Id", "siac.cqs.output.cta.v2.9.transactionid", ftypes.UINT32)
siac_cqs_output_cta_v2_9.fields.version = ProtoField.new("Version", "siac.cqs.output.cta.v2.9.version", ftypes.UINT8)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 2.9 Element Dissection Options
show.adf_timestamp = true
show.auction_status_message = true
show.block_header = true
show.control = true
show.disaster_recovery_data_center_activation_message = true
show.end_of_day_message = true
show.end_of_test_cycle_message = true
show.finra_close_message = true
show.finra_open_message = true
show.line_integrity_message = true
show.long_quote_message = true
show.market_status = true
show.market_wide_circuit_breaker_decline_level_status_message = true
show.market_wide_circuit_breaker_status_message = true
show.message = true
show.message_header = true
show.national_best_bid_long_appendage = true
show.national_best_bid_short_appendage = true
show.national_best_offer_long_appendage = true
show.national_best_offer_short_appendage = true
show.packet = true
show.participant_timestamp = true
show.quote = true
show.reset_block_sequence_number_message = true
show.short_quote_message = true
show.sip_block_timestamp = true
show.special_long_quote_message = true
show.start_of_day_message = true
show.start_of_test_cycle_message = true
show.control_payload = false
show.market_status_payload = false
show.payload = false
show.quote_payload = false

-- Register Siac Cqs Output Cta 2.9 Show Options
siac_cqs_output_cta_v2_9.prefs.show_adf_timestamp = Pref.bool("Show Adf Timestamp", show.adf_timestamp, "Parse and add Adf Timestamp to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_auction_status_message = Pref.bool("Show Auction Status Message", show.auction_status_message, "Parse and add Auction Status Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_disaster_recovery_data_center_activation_message = Pref.bool("Show Disaster Recovery Data Center Activation Message", show.disaster_recovery_data_center_activation_message, "Parse and add Disaster Recovery Data Center Activation Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_end_of_day_message = Pref.bool("Show End Of Day Message", show.end_of_day_message, "Parse and add End Of Day Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_end_of_test_cycle_message = Pref.bool("Show End Of Test Cycle Message", show.end_of_test_cycle_message, "Parse and add End Of Test Cycle Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_finra_close_message = Pref.bool("Show Finra Close Message", show.finra_close_message, "Parse and add Finra Close Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_finra_open_message = Pref.bool("Show Finra Open Message", show.finra_open_message, "Parse and add Finra Open Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_long_quote_message = Pref.bool("Show Long Quote Message", show.long_quote_message, "Parse and add Long Quote Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_market_status = Pref.bool("Show Market Status", show.market_status, "Parse and add Market Status to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_decline_level_status_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Status Message", show.market_wide_circuit_breaker_decline_level_status_message, "Parse and add Market Wide Circuit Breaker Decline Level Status Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_status_message = Pref.bool("Show Market Wide Circuit Breaker Status Message", show.market_wide_circuit_breaker_status_message, "Parse and add Market Wide Circuit Breaker Status Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_national_best_bid_long_appendage = Pref.bool("Show National Best Bid Long Appendage", show.national_best_bid_long_appendage, "Parse and add National Best Bid Long Appendage to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_national_best_bid_short_appendage = Pref.bool("Show National Best Bid Short Appendage", show.national_best_bid_short_appendage, "Parse and add National Best Bid Short Appendage to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_national_best_offer_long_appendage = Pref.bool("Show National Best Offer Long Appendage", show.national_best_offer_long_appendage, "Parse and add National Best Offer Long Appendage to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_national_best_offer_short_appendage = Pref.bool("Show National Best Offer Short Appendage", show.national_best_offer_short_appendage, "Parse and add National Best Offer Short Appendage to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_participant_timestamp = Pref.bool("Show Participant Timestamp", show.participant_timestamp, "Parse and add Participant Timestamp to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_quote = Pref.bool("Show Quote", show.quote, "Parse and add Quote to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_reset_block_sequence_number_message = Pref.bool("Show Reset Block Sequence Number Message", show.reset_block_sequence_number_message, "Parse and add Reset Block Sequence Number Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_short_quote_message = Pref.bool("Show Short Quote Message", show.short_quote_message, "Parse and add Short Quote Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_sip_block_timestamp = Pref.bool("Show Sip Block Timestamp", show.sip_block_timestamp, "Parse and add Sip Block Timestamp to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_special_long_quote_message = Pref.bool("Show Special Long Quote Message", show.special_long_quote_message, "Parse and add Special Long Quote Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_start_of_day_message = Pref.bool("Show Start Of Day Message", show.start_of_day_message, "Parse and add Start Of Day Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_start_of_test_cycle_message = Pref.bool("Show Start Of Test Cycle Message", show.start_of_test_cycle_message, "Parse and add Start Of Test Cycle Message to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_control_payload = Pref.bool("Show Control Payload", show.control_payload, "Parse and add Control Payload to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_market_status_payload = Pref.bool("Show Market Status Payload", show.market_status_payload, "Parse and add Market Status Payload to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
siac_cqs_output_cta_v2_9.prefs.show_quote_payload = Pref.bool("Show Quote Payload", show.quote_payload, "Parse and add Quote Payload to protocol tree")

-- Handle changed preferences
function siac_cqs_output_cta_v2_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.adf_timestamp ~= siac_cqs_output_cta_v2_9.prefs.show_adf_timestamp then
    show.adf_timestamp = siac_cqs_output_cta_v2_9.prefs.show_adf_timestamp
    changed = true
  end
  if show.auction_status_message ~= siac_cqs_output_cta_v2_9.prefs.show_auction_status_message then
    show.auction_status_message = siac_cqs_output_cta_v2_9.prefs.show_auction_status_message
    changed = true
  end
  if show.block_header ~= siac_cqs_output_cta_v2_9.prefs.show_block_header then
    show.block_header = siac_cqs_output_cta_v2_9.prefs.show_block_header
    changed = true
  end
  if show.control ~= siac_cqs_output_cta_v2_9.prefs.show_control then
    show.control = siac_cqs_output_cta_v2_9.prefs.show_control
    changed = true
  end
  if show.disaster_recovery_data_center_activation_message ~= siac_cqs_output_cta_v2_9.prefs.show_disaster_recovery_data_center_activation_message then
    show.disaster_recovery_data_center_activation_message = siac_cqs_output_cta_v2_9.prefs.show_disaster_recovery_data_center_activation_message
    changed = true
  end
  if show.end_of_day_message ~= siac_cqs_output_cta_v2_9.prefs.show_end_of_day_message then
    show.end_of_day_message = siac_cqs_output_cta_v2_9.prefs.show_end_of_day_message
    changed = true
  end
  if show.end_of_test_cycle_message ~= siac_cqs_output_cta_v2_9.prefs.show_end_of_test_cycle_message then
    show.end_of_test_cycle_message = siac_cqs_output_cta_v2_9.prefs.show_end_of_test_cycle_message
    changed = true
  end
  if show.finra_close_message ~= siac_cqs_output_cta_v2_9.prefs.show_finra_close_message then
    show.finra_close_message = siac_cqs_output_cta_v2_9.prefs.show_finra_close_message
    changed = true
  end
  if show.finra_open_message ~= siac_cqs_output_cta_v2_9.prefs.show_finra_open_message then
    show.finra_open_message = siac_cqs_output_cta_v2_9.prefs.show_finra_open_message
    changed = true
  end
  if show.line_integrity_message ~= siac_cqs_output_cta_v2_9.prefs.show_line_integrity_message then
    show.line_integrity_message = siac_cqs_output_cta_v2_9.prefs.show_line_integrity_message
    changed = true
  end
  if show.long_quote_message ~= siac_cqs_output_cta_v2_9.prefs.show_long_quote_message then
    show.long_quote_message = siac_cqs_output_cta_v2_9.prefs.show_long_quote_message
    changed = true
  end
  if show.market_status ~= siac_cqs_output_cta_v2_9.prefs.show_market_status then
    show.market_status = siac_cqs_output_cta_v2_9.prefs.show_market_status
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_status_message ~= siac_cqs_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_decline_level_status_message then
    show.market_wide_circuit_breaker_decline_level_status_message = siac_cqs_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_decline_level_status_message
    changed = true
  end
  if show.market_wide_circuit_breaker_status_message ~= siac_cqs_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_status_message then
    show.market_wide_circuit_breaker_status_message = siac_cqs_output_cta_v2_9.prefs.show_market_wide_circuit_breaker_status_message
    changed = true
  end
  if show.message ~= siac_cqs_output_cta_v2_9.prefs.show_message then
    show.message = siac_cqs_output_cta_v2_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= siac_cqs_output_cta_v2_9.prefs.show_message_header then
    show.message_header = siac_cqs_output_cta_v2_9.prefs.show_message_header
    changed = true
  end
  if show.national_best_bid_long_appendage ~= siac_cqs_output_cta_v2_9.prefs.show_national_best_bid_long_appendage then
    show.national_best_bid_long_appendage = siac_cqs_output_cta_v2_9.prefs.show_national_best_bid_long_appendage
    changed = true
  end
  if show.national_best_bid_short_appendage ~= siac_cqs_output_cta_v2_9.prefs.show_national_best_bid_short_appendage then
    show.national_best_bid_short_appendage = siac_cqs_output_cta_v2_9.prefs.show_national_best_bid_short_appendage
    changed = true
  end
  if show.national_best_offer_long_appendage ~= siac_cqs_output_cta_v2_9.prefs.show_national_best_offer_long_appendage then
    show.national_best_offer_long_appendage = siac_cqs_output_cta_v2_9.prefs.show_national_best_offer_long_appendage
    changed = true
  end
  if show.national_best_offer_short_appendage ~= siac_cqs_output_cta_v2_9.prefs.show_national_best_offer_short_appendage then
    show.national_best_offer_short_appendage = siac_cqs_output_cta_v2_9.prefs.show_national_best_offer_short_appendage
    changed = true
  end
  if show.packet ~= siac_cqs_output_cta_v2_9.prefs.show_packet then
    show.packet = siac_cqs_output_cta_v2_9.prefs.show_packet
    changed = true
  end
  if show.participant_timestamp ~= siac_cqs_output_cta_v2_9.prefs.show_participant_timestamp then
    show.participant_timestamp = siac_cqs_output_cta_v2_9.prefs.show_participant_timestamp
    changed = true
  end
  if show.quote ~= siac_cqs_output_cta_v2_9.prefs.show_quote then
    show.quote = siac_cqs_output_cta_v2_9.prefs.show_quote
    changed = true
  end
  if show.reset_block_sequence_number_message ~= siac_cqs_output_cta_v2_9.prefs.show_reset_block_sequence_number_message then
    show.reset_block_sequence_number_message = siac_cqs_output_cta_v2_9.prefs.show_reset_block_sequence_number_message
    changed = true
  end
  if show.short_quote_message ~= siac_cqs_output_cta_v2_9.prefs.show_short_quote_message then
    show.short_quote_message = siac_cqs_output_cta_v2_9.prefs.show_short_quote_message
    changed = true
  end
  if show.sip_block_timestamp ~= siac_cqs_output_cta_v2_9.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = siac_cqs_output_cta_v2_9.prefs.show_sip_block_timestamp
    changed = true
  end
  if show.special_long_quote_message ~= siac_cqs_output_cta_v2_9.prefs.show_special_long_quote_message then
    show.special_long_quote_message = siac_cqs_output_cta_v2_9.prefs.show_special_long_quote_message
    changed = true
  end
  if show.start_of_day_message ~= siac_cqs_output_cta_v2_9.prefs.show_start_of_day_message then
    show.start_of_day_message = siac_cqs_output_cta_v2_9.prefs.show_start_of_day_message
    changed = true
  end
  if show.start_of_test_cycle_message ~= siac_cqs_output_cta_v2_9.prefs.show_start_of_test_cycle_message then
    show.start_of_test_cycle_message = siac_cqs_output_cta_v2_9.prefs.show_start_of_test_cycle_message
    changed = true
  end
  if show.control_payload ~= siac_cqs_output_cta_v2_9.prefs.show_control_payload then
    show.control_payload = siac_cqs_output_cta_v2_9.prefs.show_control_payload
    changed = true
  end
  if show.market_status_payload ~= siac_cqs_output_cta_v2_9.prefs.show_market_status_payload then
    show.market_status_payload = siac_cqs_output_cta_v2_9.prefs.show_market_status_payload
    changed = true
  end
  if show.payload ~= siac_cqs_output_cta_v2_9.prefs.show_payload then
    show.payload = siac_cqs_output_cta_v2_9.prefs.show_payload
    changed = true
  end
  if show.quote_payload ~= siac_cqs_output_cta_v2_9.prefs.show_quote_payload then
    show.quote_payload = siac_cqs_output_cta_v2_9.prefs.show_quote_payload
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
-- Dissect Siac Cqs Output Cta 2.9
-----------------------------------------------------------------------

-- Size: Block Pad Byte
siac_cqs_output_cta_v2_9_size_of.block_pad_byte = 1

-- Display: Block Pad Byte
siac_cqs_output_cta_v2_9_display.block_pad_byte = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cqs_output_cta_v2_9_dissect.block_pad_byte = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.block_pad_byte
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.block_pad_byte(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Size Short
siac_cqs_output_cta_v2_9_size_of.best_offer_size_short = 2

-- Display: Best Offer Size Short
siac_cqs_output_cta_v2_9_display.best_offer_size_short = function(value)
  return "Best Offer Size Short: "..value
end

-- Dissect: Best Offer Size Short
siac_cqs_output_cta_v2_9_dissect.best_offer_size_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_offer_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.best_offer_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_offer_size_short, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Price Short
siac_cqs_output_cta_v2_9_size_of.best_offer_price_short = 2

-- Display: Best Offer Price Short
siac_cqs_output_cta_v2_9_display.best_offer_price_short = function(value)
  return "Best Offer Price Short: "..value
end

-- Translate: Best Offer Price Short
translate.best_offer_price_short = function(raw)
  return raw/100
end

-- Dissect: Best Offer Price Short
siac_cqs_output_cta_v2_9_dissect.best_offer_price_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_offer_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.best_offer_price_short(raw)
  local display = siac_cqs_output_cta_v2_9_display.best_offer_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_offer_price_short, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Participant Id
siac_cqs_output_cta_v2_9_size_of.best_offer_participant_id = 1

-- Display: Best Offer Participant Id
siac_cqs_output_cta_v2_9_display.best_offer_participant_id = function(value)
  if value == "A" then
    return "Best Offer Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Best Offer Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Best Offer Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Best Offer Participant Id: Adf (D)"
  end
  if value == "H" then
    return "Best Offer Participant Id: Miax (H)"
  end
  if value == "I" then
    return "Best Offer Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Best Offer Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Best Offer Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Best Offer Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Best Offer Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Best Offer Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Best Offer Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "Best Offer Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "Best Offer Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "Best Offer Participant Id: Memx (U)"
  end
  if value == "V" then
    return "Best Offer Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Best Offer Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Best Offer Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Best Offer Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Best Offer Participant Id: Cboe Bzx (Z)"
  end

  return "Best Offer Participant Id: Unknown("..value..")"
end

-- Dissect: Best Offer Participant Id
siac_cqs_output_cta_v2_9_dissect.best_offer_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_offer_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.best_offer_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_offer_participant_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: National Best Offer Short Appendage
siac_cqs_output_cta_v2_9_size_of.national_best_offer_short_appendage = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.best_offer_participant_id

  index = index + siac_cqs_output_cta_v2_9_size_of.best_offer_price_short

  index = index + siac_cqs_output_cta_v2_9_size_of.best_offer_size_short

  return index
end

-- Display: National Best Offer Short Appendage
siac_cqs_output_cta_v2_9_display.national_best_offer_short_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: National Best Offer Short Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_offer_short_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Offer Participant Id: 1 Byte Ascii String Enum with 20 values
  index, best_offer_participant_id = siac_cqs_output_cta_v2_9_dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Price Short: 2 Byte Unsigned Fixed Width Integer
  index, best_offer_price_short = siac_cqs_output_cta_v2_9_dissect.best_offer_price_short(buffer, index, packet, parent)

  -- Best Offer Size Short: 2 Byte Unsigned Fixed Width Integer
  index, best_offer_size_short = siac_cqs_output_cta_v2_9_dissect.best_offer_size_short(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Offer Short Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_offer_short_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.national_best_offer_short_appendage then
    local length = siac_cqs_output_cta_v2_9_size_of.national_best_offer_short_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.national_best_offer_short_appendage(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.national_best_offer_short_appendage, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.national_best_offer_short_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Best Bid Size Short
siac_cqs_output_cta_v2_9_size_of.best_bid_size_short = 2

-- Display: Best Bid Size Short
siac_cqs_output_cta_v2_9_display.best_bid_size_short = function(value)
  return "Best Bid Size Short: "..value
end

-- Dissect: Best Bid Size Short
siac_cqs_output_cta_v2_9_dissect.best_bid_size_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_bid_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.best_bid_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_bid_size_short, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price Short
siac_cqs_output_cta_v2_9_size_of.best_bid_price_short = 2

-- Display: Best Bid Price Short
siac_cqs_output_cta_v2_9_display.best_bid_price_short = function(value)
  return "Best Bid Price Short: "..value
end

-- Translate: Best Bid Price Short
translate.best_bid_price_short = function(raw)
  return raw/100
end

-- Dissect: Best Bid Price Short
siac_cqs_output_cta_v2_9_dissect.best_bid_price_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_bid_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.best_bid_price_short(raw)
  local display = siac_cqs_output_cta_v2_9_display.best_bid_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_bid_price_short, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Participant Id
siac_cqs_output_cta_v2_9_size_of.best_bid_participant_id = 1

-- Display: Best Bid Participant Id
siac_cqs_output_cta_v2_9_display.best_bid_participant_id = function(value)
  if value == "A" then
    return "Best Bid Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Best Bid Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Best Bid Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Best Bid Participant Id: Adf (D)"
  end
  if value == "H" then
    return "Best Bid Participant Id: Miax (H)"
  end
  if value == "I" then
    return "Best Bid Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Best Bid Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "Best Bid Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "Best Bid Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "Best Bid Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "Best Bid Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "Best Bid Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "Best Bid Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "Best Bid Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "Best Bid Participant Id: Memx (U)"
  end
  if value == "V" then
    return "Best Bid Participant Id: Iex (V)"
  end
  if value == "W" then
    return "Best Bid Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "Best Bid Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Best Bid Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "Best Bid Participant Id: Cboe Bzx (Z)"
  end

  return "Best Bid Participant Id: Unknown("..value..")"
end

-- Dissect: Best Bid Participant Id
siac_cqs_output_cta_v2_9_dissect.best_bid_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_bid_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.best_bid_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: National Best Bid Short Appendage
siac_cqs_output_cta_v2_9_size_of.national_best_bid_short_appendage = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.best_bid_participant_id

  index = index + siac_cqs_output_cta_v2_9_size_of.best_bid_price_short

  index = index + siac_cqs_output_cta_v2_9_size_of.best_bid_size_short

  return index
end

-- Display: National Best Bid Short Appendage
siac_cqs_output_cta_v2_9_display.national_best_bid_short_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: National Best Bid Short Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_bid_short_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: 1 Byte Ascii String Enum with 20 values
  index, best_bid_participant_id = siac_cqs_output_cta_v2_9_dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Price Short: 2 Byte Unsigned Fixed Width Integer
  index, best_bid_price_short = siac_cqs_output_cta_v2_9_dissect.best_bid_price_short(buffer, index, packet, parent)

  -- Best Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, best_bid_size_short = siac_cqs_output_cta_v2_9_dissect.best_bid_size_short(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Bid Short Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_bid_short_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.national_best_bid_short_appendage then
    local length = siac_cqs_output_cta_v2_9_size_of.national_best_bid_short_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.national_best_bid_short_appendage(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.national_best_bid_short_appendage, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.national_best_bid_short_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Finra Best Offer Market Maker Id
siac_cqs_output_cta_v2_9_size_of.finra_best_offer_market_maker_id = 4

-- Display: Finra Best Offer Market Maker Id
siac_cqs_output_cta_v2_9_display.finra_best_offer_market_maker_id = function(value)
  return "Finra Best Offer Market Maker Id: "..value
end

-- Dissect: Finra Best Offer Market Maker Id
siac_cqs_output_cta_v2_9_dissect.finra_best_offer_market_maker_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_offer_market_maker_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.finra_best_offer_market_maker_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_offer_market_maker_id, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Size Long
siac_cqs_output_cta_v2_9_size_of.best_offer_size_long = 4

-- Display: Best Offer Size Long
siac_cqs_output_cta_v2_9_display.best_offer_size_long = function(value)
  return "Best Offer Size Long: "..value
end

-- Dissect: Best Offer Size Long
siac_cqs_output_cta_v2_9_dissect.best_offer_size_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_offer_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.best_offer_size_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_offer_size_long, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Price Long
siac_cqs_output_cta_v2_9_size_of.best_offer_price_long = 8

-- Display: Best Offer Price Long
siac_cqs_output_cta_v2_9_display.best_offer_price_long = function(value)
  return "Best Offer Price Long: "..value
end

-- Translate: Best Offer Price Long
translate.best_offer_price_long = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Offer Price Long
siac_cqs_output_cta_v2_9_dissect.best_offer_price_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_offer_price_long
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.best_offer_price_long(raw)
  local display = siac_cqs_output_cta_v2_9_display.best_offer_price_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_offer_price_long, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Quote Condition
siac_cqs_output_cta_v2_9_size_of.best_offer_quote_condition = 1

-- Display: Best Offer Quote Condition
siac_cqs_output_cta_v2_9_display.best_offer_quote_condition = function(value)
  if value == " " then
    return "Best Offer Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Best Offer Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Best Offer Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Best Offer Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Best Offer Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Best Offer Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Best Offer Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Best Offer Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Best Offer Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Best Offer Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Best Offer Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Best Offer Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Best Offer Quote Condition: Unknown("..value..")"
end

-- Dissect: Best Offer Quote Condition
siac_cqs_output_cta_v2_9_dissect.best_offer_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_offer_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.best_offer_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: National Best Offer Long Appendage
siac_cqs_output_cta_v2_9_size_of.national_best_offer_long_appendage = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.best_offer_participant_id

  index = index + siac_cqs_output_cta_v2_9_size_of.best_offer_quote_condition

  index = index + siac_cqs_output_cta_v2_9_size_of.best_offer_price_long

  index = index + siac_cqs_output_cta_v2_9_size_of.best_offer_size_long

  index = index + siac_cqs_output_cta_v2_9_size_of.finra_best_offer_market_maker_id

  return index
end

-- Display: National Best Offer Long Appendage
siac_cqs_output_cta_v2_9_display.national_best_offer_long_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: National Best Offer Long Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_offer_long_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Offer Participant Id: 1 Byte Ascii String Enum with 20 values
  index, best_offer_participant_id = siac_cqs_output_cta_v2_9_dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, best_offer_quote_condition = siac_cqs_output_cta_v2_9_dissect.best_offer_quote_condition(buffer, index, packet, parent)

  -- Best Offer Price Long: 8 Byte Unsigned Fixed Width Integer
  index, best_offer_price_long = siac_cqs_output_cta_v2_9_dissect.best_offer_price_long(buffer, index, packet, parent)

  -- Best Offer Size Long: 4 Byte Unsigned Fixed Width Integer
  index, best_offer_size_long = siac_cqs_output_cta_v2_9_dissect.best_offer_size_long(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: 4 Byte Ascii String
  index, finra_best_offer_market_maker_id = siac_cqs_output_cta_v2_9_dissect.finra_best_offer_market_maker_id(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Offer Long Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_offer_long_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.national_best_offer_long_appendage then
    local length = siac_cqs_output_cta_v2_9_size_of.national_best_offer_long_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.national_best_offer_long_appendage(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.national_best_offer_long_appendage, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.national_best_offer_long_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Finra Best Bid Market Maker Id
siac_cqs_output_cta_v2_9_size_of.finra_best_bid_market_maker_id = 4

-- Display: Finra Best Bid Market Maker Id
siac_cqs_output_cta_v2_9_display.finra_best_bid_market_maker_id = function(value)
  return "Finra Best Bid Market Maker Id: "..value
end

-- Dissect: Finra Best Bid Market Maker Id
siac_cqs_output_cta_v2_9_dissect.finra_best_bid_market_maker_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_bid_market_maker_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.finra_best_bid_market_maker_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_bid_market_maker_id, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Size Long
siac_cqs_output_cta_v2_9_size_of.best_bid_size_long = 4

-- Display: Best Bid Size Long
siac_cqs_output_cta_v2_9_display.best_bid_size_long = function(value)
  return "Best Bid Size Long: "..value
end

-- Dissect: Best Bid Size Long
siac_cqs_output_cta_v2_9_dissect.best_bid_size_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_bid_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.best_bid_size_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_bid_size_long, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price Long
siac_cqs_output_cta_v2_9_size_of.best_bid_price_long = 8

-- Display: Best Bid Price Long
siac_cqs_output_cta_v2_9_display.best_bid_price_long = function(value)
  return "Best Bid Price Long: "..value
end

-- Translate: Best Bid Price Long
translate.best_bid_price_long = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Bid Price Long
siac_cqs_output_cta_v2_9_dissect.best_bid_price_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_bid_price_long
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.best_bid_price_long(raw)
  local display = siac_cqs_output_cta_v2_9_display.best_bid_price_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_bid_price_long, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Quote Condition
siac_cqs_output_cta_v2_9_size_of.best_bid_quote_condition = 1

-- Display: Best Bid Quote Condition
siac_cqs_output_cta_v2_9_display.best_bid_quote_condition = function(value)
  if value == " " then
    return "Best Bid Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Best Bid Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Best Bid Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Best Bid Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Best Bid Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Best Bid Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Best Bid Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Best Bid Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Best Bid Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Best Bid Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Best Bid Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Best Bid Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Best Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: Best Bid Quote Condition
siac_cqs_output_cta_v2_9_dissect.best_bid_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.best_bid_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.best_bid_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Calculate size of: National Best Bid Long Appendage
siac_cqs_output_cta_v2_9_size_of.national_best_bid_long_appendage = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.best_bid_participant_id

  index = index + siac_cqs_output_cta_v2_9_size_of.best_bid_quote_condition

  index = index + siac_cqs_output_cta_v2_9_size_of.best_bid_price_long

  index = index + siac_cqs_output_cta_v2_9_size_of.best_bid_size_long

  index = index + siac_cqs_output_cta_v2_9_size_of.finra_best_bid_market_maker_id

  return index
end

-- Display: National Best Bid Long Appendage
siac_cqs_output_cta_v2_9_display.national_best_bid_long_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: National Best Bid Long Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_bid_long_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: 1 Byte Ascii String Enum with 20 values
  index, best_bid_participant_id = siac_cqs_output_cta_v2_9_dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, best_bid_quote_condition = siac_cqs_output_cta_v2_9_dissect.best_bid_quote_condition(buffer, index, packet, parent)

  -- Best Bid Price Long: 8 Byte Unsigned Fixed Width Integer
  index, best_bid_price_long = siac_cqs_output_cta_v2_9_dissect.best_bid_price_long(buffer, index, packet, parent)

  -- Best Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, best_bid_size_long = siac_cqs_output_cta_v2_9_dissect.best_bid_size_long(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: 4 Byte Ascii String
  index, finra_best_bid_market_maker_id = siac_cqs_output_cta_v2_9_dissect.finra_best_bid_market_maker_id(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Bid Long Appendage
siac_cqs_output_cta_v2_9_dissect.national_best_bid_long_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.national_best_bid_long_appendage then
    local length = siac_cqs_output_cta_v2_9_size_of.national_best_bid_long_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.national_best_bid_long_appendage(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.national_best_bid_long_appendage, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.national_best_bid_long_appendage_fields(buffer, offset, packet, parent)
end

-- Size: National Bbo Indicator
siac_cqs_output_cta_v2_9_size_of.national_bbo_indicator = 1

-- Display: National Bbo Indicator
siac_cqs_output_cta_v2_9_display.national_bbo_indicator = function(value)
  if value == " " then
    return "National Bbo Indicator: Not Included (<whitespace>)"
  end
  if value == "A" then
    return "National Bbo Indicator: No Best Bid Change Or Best Offer Change (A)"
  end
  if value == "B" then
    return "National Bbo Indicator: No Best Bid Change Quote Contains Best Offer (B)"
  end
  if value == "C" then
    return "National Bbo Indicator: No Best Bid Change Best Offer Short Appendage (C)"
  end
  if value == "D" then
    return "National Bbo Indicator: No Best Bid Change Best Offer Long Appendage (D)"
  end
  if value == "E" then
    return "National Bbo Indicator: No Best Bid Change No Best Offer (E)"
  end
  if value == "F" then
    return "National Bbo Indicator: Quote Contains Best Bid No Best Offer Change (F)"
  end
  if value == "G" then
    return "National Bbo Indicator: Quote Contains Best Bid Quote Contains Best Offer (G)"
  end
  if value == "H" then
    return "National Bbo Indicator: Quote Contains Best Bid Best Offer Short Appendage (H)"
  end
  if value == "I" then
    return "National Bbo Indicator: Quote Contains Best Bid Best Offer Long Appendage (I)"
  end
  if value == "J" then
    return "National Bbo Indicator: Quote Contains Best Bid No Best Offer (J)"
  end
  if value == "K" then
    return "National Bbo Indicator: No Best Bid No Best Offer Change (K)"
  end
  if value == "L" then
    return "National Bbo Indicator: No Best Bid Quote Contains Best Offer (L)"
  end
  if value == "M" then
    return "National Bbo Indicator: No Best Bid Best Offer Short Appendage (M)"
  end
  if value == "N" then
    return "National Bbo Indicator: No Best Bid Best Offer Long Appendage (N)"
  end
  if value == "O" then
    return "National Bbo Indicator: No Best Bid No Best Offer (O)"
  end
  if value == "P" then
    return "National Bbo Indicator: Best Bid Short Appendage No Best Offer Change (P)"
  end
  if value == "Q" then
    return "National Bbo Indicator: Best Bid Long Appendage No Best Offer Change (Q)"
  end
  if value == "R" then
    return "National Bbo Indicator: Best Bid Short Appendage Quote Contains Best Offer (R)"
  end
  if value == "S" then
    return "National Bbo Indicator: Best Bid Long Appendage Quote Contains Best Offer (S)"
  end
  if value == "T" then
    return "National Bbo Indicator: Best Bid Short Appendage Best Offer Short Appendage (T)"
  end
  if value == "U" then
    return "National Bbo Indicator: Best Bid Long Appendage Best Offer Long Appendage (U)"
  end
  if value == "V" then
    return "National Bbo Indicator: Best Bid Short Appendage No Best Offer (V)"
  end
  if value == "W" then
    return "National Bbo Indicator: Best Bid Long Appendage No Best Offer (W)"
  end

  return "National Bbo Indicator: Unknown("..value..")"
end

-- Dissect: National Bbo Indicator
siac_cqs_output_cta_v2_9_dissect.national_bbo_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.national_bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.national_bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: National Bbo Luld Indicator
siac_cqs_output_cta_v2_9_size_of.national_bbo_luld_indicator = 1

-- Display: National Bbo Luld Indicator
siac_cqs_output_cta_v2_9_display.national_bbo_luld_indicator = function(value)
  if value == " " then
    return "National Bbo Luld Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "National Bbo Luld Indicator: National Best Bid And Or National Best Offer Are Executable (A)"
  end
  if value == "B" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And Is Non Executable (B)"
  end
  if value == "C" then
    return "National Bbo Luld Indicator: National Best Offer Above Upper Limit Price Band And Is Non Executable (C)"
  end
  if value == "D" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And National Best Offer Above Upper Limit Price Band Both Are Non Executable (D)"
  end
  if value == "E" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And Is In Limit State (E)"
  end
  if value == "F" then
    return "National Bbo Luld Indicator: National Best Offer Equals Lower Limit Price Band And Is In Limit State (F)"
  end
  if value == "G" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And Is In Limit State And National Best Offer Above Upper Limit Price Band And Is Non Executable (G)"
  end
  if value == "H" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And Is Non Executable And National Best Offer Equals Lower Limit Price Band And Is In Limit State (H)"
  end
  if value == "I" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And National Best Offer Equals Lower Limit Price Band (I)"
  end

  return "National Bbo Luld Indicator: Unknown("..value..")"
end

-- Dissect: National Bbo Luld Indicator
siac_cqs_output_cta_v2_9_dissect.national_bbo_luld_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.national_bbo_luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.national_bbo_luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.national_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: Finra Bbo Luld Indicator
siac_cqs_output_cta_v2_9_size_of.finra_bbo_luld_indicator = 1

-- Display: Finra Bbo Luld Indicator
siac_cqs_output_cta_v2_9_display.finra_bbo_luld_indicator = function(value)
  if value == "" then
    return "Finra Bbo Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Bbo Luld Indicator: Finra Best Bid And Or Finra Best Offer Are Executable (A)"
  end
  if value == "B" then
    return "Finra Bbo Luld Indicator: Finra Best Bid Below Lower Limit Price Band And Finra Best Bid Is Non Executable (B)"
  end
  if value == "C" then
    return "Finra Bbo Luld Indicator: Finra Best Offer Above Upper Limit Price Band And Finra Best Offer Is Non Executable (C)"
  end
  if value == "D" then
    return "Finra Bbo Luld Indicator: Best Bid Below Lower Limit Price Band And Best Offer Above Upper Limit Price Band Best Bid And Best Offer Are Non Executable For Finra (D)"
  end

  return "Finra Bbo Luld Indicator: Unknown("..value..")"
end

-- Dissect: Finra Bbo Luld Indicator
siac_cqs_output_cta_v2_9_dissect.finra_bbo_luld_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_bbo_luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.finra_bbo_luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: Sip Generated Message Identifier
siac_cqs_output_cta_v2_9_size_of.sip_generated_message_identifier = 1

-- Display: Sip Generated Message Identifier
siac_cqs_output_cta_v2_9_display.sip_generated_message_identifier = function(value)
  if value == " " then
    return "Sip Generated Message Identifier: Not Applicable (<whitespace>)"
  end
  if value == "S" then
    return "Sip Generated Message Identifier: Consolidated Quotation System (S)"
  end

  return "Sip Generated Message Identifier: Unknown("..value..")"
end

-- Dissect: Sip Generated Message Identifier
siac_cqs_output_cta_v2_9_dissect.sip_generated_message_identifier = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.sip_generated_message_identifier
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.sip_generated_message_identifier(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.sip_generated_message_identifier, range, value, display)

  return offset + length, value
end

-- Size: Financial Status Indicator
siac_cqs_output_cta_v2_9_size_of.financial_status_indicator = 1

-- Display: Financial Status Indicator
siac_cqs_output_cta_v2_9_display.financial_status_indicator = function(value)
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
siac_cqs_output_cta_v2_9_dissect.financial_status_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.financial_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.financial_status_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Primary Listing Market Participant Id
siac_cqs_output_cta_v2_9_size_of.primary_listing_market_participant_id = 1

-- Display: Primary Listing Market Participant Id
siac_cqs_output_cta_v2_9_display.primary_listing_market_participant_id = function(value)
  if value == " " then
    return "Primary Listing Market Participant Id: Not Applicable (<whitespace>)"
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
    return "Primary Listing Market Participant Id: Adf (D)"
  end
  if value == "H" then
    return "Primary Listing Market Participant Id: Miax (H)"
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
  if value == "U" then
    return "Primary Listing Market Participant Id: Memx (U)"
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
siac_cqs_output_cta_v2_9_dissect.primary_listing_market_participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.primary_listing_market_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.primary_listing_market_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Short Sale Restriction Indicator
siac_cqs_output_cta_v2_9_size_of.short_sale_restriction_indicator = 1

-- Display: Short Sale Restriction Indicator
siac_cqs_output_cta_v2_9_display.short_sale_restriction_indicator = function(value)
  if value == " " then
    return "Short Sale Restriction Indicator: Not In Effect (<whitespace>)"
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
siac_cqs_output_cta_v2_9_dissect.short_sale_restriction_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.short_sale_restriction_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.short_sale_restriction_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Size: Nanoseconds
siac_cqs_output_cta_v2_9_size_of.nanoseconds = 4

-- Display: Nanoseconds
siac_cqs_output_cta_v2_9_display.nanoseconds = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cqs_output_cta_v2_9_dissect.nanoseconds = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.nanoseconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.nanoseconds(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Size: Seconds
siac_cqs_output_cta_v2_9_size_of.seconds = 4

-- Display: Seconds
siac_cqs_output_cta_v2_9_display.seconds = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cqs_output_cta_v2_9_dissect.seconds = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.seconds
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.seconds(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Adf Timestamp
siac_cqs_output_cta_v2_9_size_of.adf_timestamp = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.seconds

  index = index + siac_cqs_output_cta_v2_9_size_of.nanoseconds

  return index
end

-- Display: Adf Timestamp
siac_cqs_output_cta_v2_9_display.adf_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Adf Timestamp
siac_cqs_output_cta_v2_9_dissect.adf_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cqs_output_cta_v2_9_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cqs_output_cta_v2_9_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Adf Timestamp
siac_cqs_output_cta_v2_9_dissect.adf_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.adf_timestamp then
    local length = siac_cqs_output_cta_v2_9_size_of.adf_timestamp(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.adf_timestamp(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.adf_timestamp, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.adf_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Finra Best Offer Size
siac_cqs_output_cta_v2_9_size_of.finra_best_offer_size = 4

-- Display: Finra Best Offer Size
siac_cqs_output_cta_v2_9_display.finra_best_offer_size = function(value)
  return "Finra Best Offer Size: "..value
end

-- Dissect: Finra Best Offer Size
siac_cqs_output_cta_v2_9_dissect.finra_best_offer_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_offer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.finra_best_offer_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Offer Price
siac_cqs_output_cta_v2_9_size_of.finra_best_offer_price = 8

-- Display: Finra Best Offer Price
siac_cqs_output_cta_v2_9_display.finra_best_offer_price = function(value)
  return "Finra Best Offer Price: "..value
end

-- Translate: Finra Best Offer Price
translate.finra_best_offer_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Offer Price
siac_cqs_output_cta_v2_9_dissect.finra_best_offer_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_offer_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.finra_best_offer_price(raw)
  local display = siac_cqs_output_cta_v2_9_display.finra_best_offer_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Offer Quote Condition
siac_cqs_output_cta_v2_9_size_of.finra_best_offer_quote_condition = 1

-- Display: Finra Best Offer Quote Condition
siac_cqs_output_cta_v2_9_display.finra_best_offer_quote_condition = function(value)
  if value == " " then
    return "Finra Best Offer Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Best Offer Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Finra Best Offer Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Finra Best Offer Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Finra Best Offer Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Finra Best Offer Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Finra Best Offer Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Finra Best Offer Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Finra Best Offer Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Finra Best Offer Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Finra Best Offer Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Finra Best Offer Quote Condition: Unknown("..value..")"
end

-- Dissect: Finra Best Offer Quote Condition
siac_cqs_output_cta_v2_9_dissect.finra_best_offer_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_offer_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.finra_best_offer_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Bid Size
siac_cqs_output_cta_v2_9_size_of.finra_best_bid_size = 4

-- Display: Finra Best Bid Size
siac_cqs_output_cta_v2_9_display.finra_best_bid_size = function(value)
  return "Finra Best Bid Size: "..value
end

-- Dissect: Finra Best Bid Size
siac_cqs_output_cta_v2_9_dissect.finra_best_bid_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.finra_best_bid_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Bid Price
siac_cqs_output_cta_v2_9_size_of.finra_best_bid_price = 8

-- Display: Finra Best Bid Price
siac_cqs_output_cta_v2_9_display.finra_best_bid_price = function(value)
  return "Finra Best Bid Price: "..value
end

-- Translate: Finra Best Bid Price
translate.finra_best_bid_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Bid Price
siac_cqs_output_cta_v2_9_dissect.finra_best_bid_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_bid_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.finra_best_bid_price(raw)
  local display = siac_cqs_output_cta_v2_9_display.finra_best_bid_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Finra Best Bid Quote Condition
siac_cqs_output_cta_v2_9_size_of.finra_best_bid_quote_condition = 1

-- Display: Finra Best Bid Quote Condition
siac_cqs_output_cta_v2_9_display.finra_best_bid_quote_condition = function(value)
  if value == " " then
    return "Finra Best Bid Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Best Bid Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Finra Best Bid Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Finra Best Bid Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Finra Best Bid Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Finra Best Bid Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Finra Best Bid Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Finra Best Bid Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Finra Best Bid Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Finra Best Bid Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Finra Best Bid Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Finra Best Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: Finra Best Bid Quote Condition
siac_cqs_output_cta_v2_9_dissect.finra_best_bid_quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_best_bid_quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.finra_best_bid_quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Finra Market Maker Id
siac_cqs_output_cta_v2_9_size_of.finra_market_maker_id = 4

-- Display: Finra Market Maker Id
siac_cqs_output_cta_v2_9_display.finra_market_maker_id = function(value)
  return "Finra Market Maker Id: "..value
end

-- Dissect: Finra Market Maker Id
siac_cqs_output_cta_v2_9_dissect.finra_market_maker_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_market_maker_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.finra_market_maker_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_market_maker_id, range, value, display)

  return offset + length, value
end

-- Size: Market Condition
siac_cqs_output_cta_v2_9_size_of.market_condition = 1

-- Display: Market Condition
siac_cqs_output_cta_v2_9_display.market_condition = function(value)
  if value == " " then
    return "Market Condition: Normal Auction Market (<whitespace>)"
  end
  if value == "A" then
    return "Market Condition: Crossed Market (A)"
  end
  if value == "B" then
    return "Market Condition: Locked Market (B)"
  end

  return "Market Condition: Unknown("..value..")"
end

-- Dissect: Market Condition
siac_cqs_output_cta_v2_9_dissect.market_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.market_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.market_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Size: Settlement Condition
siac_cqs_output_cta_v2_9_size_of.settlement_condition = 1

-- Display: Settlement Condition
siac_cqs_output_cta_v2_9_display.settlement_condition = function(value)
  if value == " " then
    return "Settlement Condition: Regular Way Settlement (<whitespace>)"
  end
  if value == "A" then
    return "Settlement Condition: Cash Only Settlement (A)"
  end
  if value == "B" then
    return "Settlement Condition: Next Day Only Settlement (B)"
  end

  return "Settlement Condition: Unknown("..value..")"
end

-- Dissect: Settlement Condition
siac_cqs_output_cta_v2_9_dissect.settlement_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.settlement_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.settlement_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.settlement_condition, range, value, display)

  return offset + length, value
end

-- Size: Retail Interest Indicator
siac_cqs_output_cta_v2_9_size_of.retail_interest_indicator = 1

-- Display: Retail Interest Indicator
siac_cqs_output_cta_v2_9_display.retail_interest_indicator = function(value)
  if value == " " then
    return "Retail Interest Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Interest Indicator: Retail Interest On Bid Quote (A)"
  end
  if value == "B" then
    return "Retail Interest Indicator: Retail Interest On Offer Quote (B)"
  end
  if value == "C" then
    return "Retail Interest Indicator: Retail Interest On Both The Bid And Offer Quotes (C)"
  end

  return "Retail Interest Indicator: Unknown("..value..")"
end

-- Dissect: Retail Interest Indicator
siac_cqs_output_cta_v2_9_dissect.retail_interest_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.retail_interest_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.retail_interest_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Size: Offer Size Long
siac_cqs_output_cta_v2_9_size_of.offer_size_long = 4

-- Display: Offer Size Long
siac_cqs_output_cta_v2_9_display.offer_size_long = function(value)
  return "Offer Size Long: "..value
end

-- Dissect: Offer Size Long
siac_cqs_output_cta_v2_9_dissect.offer_size_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.offer_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.offer_size_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.offer_size_long, range, value, display)

  return offset + length, value
end

-- Size: Offer Price Long
siac_cqs_output_cta_v2_9_size_of.offer_price_long = 8

-- Display: Offer Price Long
siac_cqs_output_cta_v2_9_display.offer_price_long = function(value)
  return "Offer Price Long: "..value
end

-- Translate: Offer Price Long
translate.offer_price_long = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price Long
siac_cqs_output_cta_v2_9_dissect.offer_price_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.offer_price_long
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.offer_price_long(raw)
  local display = siac_cqs_output_cta_v2_9_display.offer_price_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.offer_price_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Long
siac_cqs_output_cta_v2_9_size_of.bid_size_long = 4

-- Display: Bid Size Long
siac_cqs_output_cta_v2_9_display.bid_size_long = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
siac_cqs_output_cta_v2_9_dissect.bid_size_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.bid_size_long
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.bid_size_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Long
siac_cqs_output_cta_v2_9_size_of.bid_price_long = 8

-- Display: Bid Price Long
siac_cqs_output_cta_v2_9_display.bid_price_long = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
translate.bid_price_long = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price Long
siac_cqs_output_cta_v2_9_dissect.bid_price_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.bid_price_long
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.bid_price_long(raw)
  local display = siac_cqs_output_cta_v2_9_display.bid_price_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Size: Security Status Indicator
siac_cqs_output_cta_v2_9_size_of.security_status_indicator = 1

-- Display: Security Status Indicator
siac_cqs_output_cta_v2_9_display.security_status_indicator = function(value)
  if value == " " then
    return "Security Status Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Security Status Indicator: Additional Information Requested (A)"
  end
  if value == "C" then
    return "Security Status Indicator: Regulatory Concern (C)"
  end
  if value == "D" then
    return "Security Status Indicator: News Released (D)"
  end
  if value == "D" then
    return "Security Status Indicator: Merger Effective (D)"
  end
  if value == "F" then
    return "Security Status Indicator: Etf Component Prices Not Available (F)"
  end
  if value == "G" then
    return "Security Status Indicator: Trading Range Indication (G)"
  end
  if value == "I" then
    return "Security Status Indicator: Order Imbalance (I)"
  end
  if value == "M" then
    return "Security Status Indicator: Luld Trading Pause (M)"
  end
  if value == "N" then
    return "Security Status Indicator: Corporate Action (N)"
  end
  if value == "O" then
    return "Security Status Indicator: New Security Offering (O)"
  end
  if value == "P" then
    return "Security Status Indicator: News Pending (P)"
  end
  if value == "V" then
    return "Security Status Indicator: Intraday Indicative Value Not Available (V)"
  end
  if value == "T" then
    return "Security Status Indicator: Resume (T)"
  end
  if value == "X" then
    return "Security Status Indicator: Operational (X)"
  end
  if value == "Y" then
    return "Security Status Indicator: Sup Penny Trading (Y)"
  end
  if value == "Z" then
    return "Security Status Indicator: No Open No Resume (Z)"
  end
  if value == "0" then
    return "Security Status Indicator: Luld Price Band (0)"
  end
  if value == "1" then
    return "Security Status Indicator: Market Wide Circuit Breaker Level 1 Breached (1)"
  end
  if value == "2" then
    return "Security Status Indicator: Market Wide Circuit Breaker Level 2 Breached (2)"
  end
  if value == "3" then
    return "Security Status Indicator: Market Wide Circuit Breaker Level 3 Breached (3)"
  end
  if value == "9" then
    return "Security Status Indicator: Republished Luld Price Band (9)"
  end

  return "Security Status Indicator: Unknown("..value..")"
end

-- Dissect: Security Status Indicator
siac_cqs_output_cta_v2_9_dissect.security_status_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.security_status_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.security_status_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.security_status_indicator, range, value, display)

  return offset + length, value
end

-- Size: Quote Condition
siac_cqs_output_cta_v2_9_size_of.quote_condition = 1

-- Display: Quote Condition
siac_cqs_output_cta_v2_9_display.quote_condition = function(value)
  if value == " " then
    return "Quote Condition: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
siac_cqs_output_cta_v2_9_dissect.quote_condition = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.quote_condition
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.quote_condition(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Size: Instrument Type
siac_cqs_output_cta_v2_9_size_of.instrument_type = 1

-- Display: Instrument Type
siac_cqs_output_cta_v2_9_display.instrument_type = function(value)
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
siac_cqs_output_cta_v2_9_dissect.instrument_type = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.instrument_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.instrument_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol Long
siac_cqs_output_cta_v2_9_size_of.security_symbol_long = 11

-- Display: Security Symbol Long
siac_cqs_output_cta_v2_9_display.security_symbol_long = function(value)
  return "Security Symbol Long: "..value
end

-- Dissect: Security Symbol Long
siac_cqs_output_cta_v2_9_dissect.security_symbol_long = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.security_symbol_long
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.security_symbol_long(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.security_symbol_long, range, value, display)

  return offset + length, value
end

-- Size: Participant Reference Number
siac_cqs_output_cta_v2_9_size_of.participant_reference_number = 8

-- Display: Participant Reference Number
siac_cqs_output_cta_v2_9_display.participant_reference_number = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_cqs_output_cta_v2_9_dissect.participant_reference_number = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.participant_reference_number
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_output_cta_v2_9_display.participant_reference_number(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Size: Transaction Id
siac_cqs_output_cta_v2_9_size_of.transaction_id = 4

-- Display: Transaction Id
siac_cqs_output_cta_v2_9_display.transaction_id = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
siac_cqs_output_cta_v2_9_dissect.transaction_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.transaction_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.transaction_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Message Id
siac_cqs_output_cta_v2_9_size_of.message_id = 1

-- Display: Message Id
siac_cqs_output_cta_v2_9_display.message_id = function(value)
  return "Message Id: "..value
end

-- Dissect: Message Id
siac_cqs_output_cta_v2_9_dissect.message_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.message_id
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.message_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.message_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Participant Timestamp
siac_cqs_output_cta_v2_9_size_of.participant_timestamp = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.seconds

  index = index + siac_cqs_output_cta_v2_9_size_of.nanoseconds

  return index
end

-- Display: Participant Timestamp
siac_cqs_output_cta_v2_9_display.participant_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Participant Timestamp
siac_cqs_output_cta_v2_9_dissect.participant_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cqs_output_cta_v2_9_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cqs_output_cta_v2_9_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Timestamp
siac_cqs_output_cta_v2_9_dissect.participant_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.participant_timestamp then
    local length = siac_cqs_output_cta_v2_9_size_of.participant_timestamp(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.participant_timestamp(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.participant_timestamp, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.participant_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Participant Id
siac_cqs_output_cta_v2_9_size_of.participant_id = 1

-- Display: Participant Id
siac_cqs_output_cta_v2_9_display.participant_id = function(value)
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
    return "Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "Participant Id: Memx (U)"
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
siac_cqs_output_cta_v2_9_dissect.participant_id = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Display: Special Long Quote Message
siac_cqs_output_cta_v2_9_display.special_long_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Special Long Quote Message
siac_cqs_output_cta_v2_9_dissect.special_long_quote_message_fields = function(buffer, offset, packet, parent, size_of_special_long_quote_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Long: 11 Byte Ascii String
  index, security_symbol_long = siac_cqs_output_cta_v2_9_dissect.security_symbol_long(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cqs_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = siac_cqs_output_cta_v2_9_dissect.quote_condition(buffer, index, packet, parent)

  -- Security Status Indicator: 1 Byte Ascii String Enum with 22 values
  index, security_status_indicator = siac_cqs_output_cta_v2_9_dissect.security_status_indicator(buffer, index, packet, parent)

  -- Bid Price Long: 8 Byte Unsigned Fixed Width Integer
  index, bid_price_long = siac_cqs_output_cta_v2_9_dissect.bid_price_long(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = siac_cqs_output_cta_v2_9_dissect.bid_size_long(buffer, index, packet, parent)

  -- Offer Price Long: 8 Byte Unsigned Fixed Width Integer
  index, offer_price_long = siac_cqs_output_cta_v2_9_dissect.offer_price_long(buffer, index, packet, parent)

  -- Offer Size Long: 4 Byte Unsigned Fixed Width Integer
  index, offer_size_long = siac_cqs_output_cta_v2_9_dissect.offer_size_long(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = siac_cqs_output_cta_v2_9_dissect.retail_interest_indicator(buffer, index, packet, parent)

  -- Settlement Condition: 1 Byte Ascii String Enum with 3 values
  index, settlement_condition = siac_cqs_output_cta_v2_9_dissect.settlement_condition(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Ascii String Enum with 3 values
  index, market_condition = siac_cqs_output_cta_v2_9_dissect.market_condition(buffer, index, packet, parent)

  -- Finra Market Maker Id: 4 Byte Ascii String
  index, finra_market_maker_id = siac_cqs_output_cta_v2_9_dissect.finra_market_maker_id(buffer, index, packet, parent)

  -- Finra Best Bid Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, finra_best_bid_quote_condition = siac_cqs_output_cta_v2_9_dissect.finra_best_bid_quote_condition(buffer, index, packet, parent)

  -- Finra Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, finra_best_bid_price = siac_cqs_output_cta_v2_9_dissect.finra_best_bid_price(buffer, index, packet, parent)

  -- Finra Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, finra_best_bid_size = siac_cqs_output_cta_v2_9_dissect.finra_best_bid_size(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: 4 Byte Ascii String
  index, finra_best_bid_market_maker_id = siac_cqs_output_cta_v2_9_dissect.finra_best_bid_market_maker_id(buffer, index, packet, parent)

  -- Finra Best Offer Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, finra_best_offer_quote_condition = siac_cqs_output_cta_v2_9_dissect.finra_best_offer_quote_condition(buffer, index, packet, parent)

  -- Finra Best Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, finra_best_offer_price = siac_cqs_output_cta_v2_9_dissect.finra_best_offer_price(buffer, index, packet, parent)

  -- Finra Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, finra_best_offer_size = siac_cqs_output_cta_v2_9_dissect.finra_best_offer_size(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: 4 Byte Ascii String
  index, finra_best_offer_market_maker_id = siac_cqs_output_cta_v2_9_dissect.finra_best_offer_market_maker_id(buffer, index, packet, parent)

  -- Adf Timestamp: Struct of 2 fields
  index, adf_timestamp = siac_cqs_output_cta_v2_9_dissect.adf_timestamp(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cqs_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 20 values
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cqs_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Sip Generated Message Identifier: 1 Byte Ascii String Enum with 2 values
  index, sip_generated_message_identifier = siac_cqs_output_cta_v2_9_dissect.sip_generated_message_identifier(buffer, index, packet, parent)

  -- Finra Bbo Luld Indicator: 1 Byte Ascii String Enum with 5 values
  index, finra_bbo_luld_indicator = siac_cqs_output_cta_v2_9_dissect.finra_bbo_luld_indicator(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: 1 Byte Ascii String Enum with 10 values
  index, national_bbo_luld_indicator = siac_cqs_output_cta_v2_9_dissect.national_bbo_luld_indicator(buffer, index, packet, parent)

  -- National Bbo Indicator: 1 Byte Ascii String Enum with 24 values
  index, national_bbo_indicator = siac_cqs_output_cta_v2_9_dissect.national_bbo_indicator(buffer, index, packet, parent)

  -- Runtime optional field exists: National Best Bid Long Appendage
  local national_best_bid_long_appendage_exists = national_bbo_indicator == "U"

  -- Runtime optional field: National Best Bid Long Appendage
  if national_best_bid_long_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_bid_long_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Offer Long Appendage
  local national_best_offer_long_appendage_exists = national_bbo_indicator == "U"

  -- Runtime optional field: National Best Offer Long Appendage
  if national_best_offer_long_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_offer_long_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Bid Short Appendage
  local national_best_bid_short_appendage_exists = national_bbo_indicator == "T"

  -- Runtime optional field: National Best Bid Short Appendage
  if national_best_bid_short_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_bid_short_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Offer Short Appendage
  local national_best_offer_short_appendage_exists = national_bbo_indicator == "T"

  -- Runtime optional field: National Best Offer Short Appendage
  if national_best_offer_short_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_offer_short_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Special Long Quote Message
siac_cqs_output_cta_v2_9_dissect.special_long_quote_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_special_long_quote_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.special_long_quote_message then
    local range = buffer(offset, size_of_special_long_quote_message)
    local display = siac_cqs_output_cta_v2_9_display.special_long_quote_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.special_long_quote_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.special_long_quote_message_fields(buffer, offset, packet, parent, size_of_special_long_quote_message)

  return offset + size_of_special_long_quote_message
end

-- Size: Offer Size Short
siac_cqs_output_cta_v2_9_size_of.offer_size_short = 2

-- Display: Offer Size Short
siac_cqs_output_cta_v2_9_display.offer_size_short = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
siac_cqs_output_cta_v2_9_dissect.offer_size_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.offer_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.offer_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Size: Offer Price Short
siac_cqs_output_cta_v2_9_size_of.offer_price_short = 2

-- Display: Offer Price Short
siac_cqs_output_cta_v2_9_display.offer_price_short = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
translate.offer_price_short = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
siac_cqs_output_cta_v2_9_dissect.offer_price_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.offer_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.offer_price_short(raw)
  local display = siac_cqs_output_cta_v2_9_display.offer_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Short
siac_cqs_output_cta_v2_9_size_of.bid_size_short = 2

-- Display: Bid Size Short
siac_cqs_output_cta_v2_9_display.bid_size_short = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
siac_cqs_output_cta_v2_9_dissect.bid_size_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.bid_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.bid_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Short
siac_cqs_output_cta_v2_9_size_of.bid_price_short = 2

-- Display: Bid Price Short
siac_cqs_output_cta_v2_9_display.bid_price_short = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
translate.bid_price_short = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
siac_cqs_output_cta_v2_9_dissect.bid_price_short = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.bid_price_short
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = translate.bid_price_short(raw)
  local display = siac_cqs_output_cta_v2_9_display.bid_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Display: Short Quote Message
siac_cqs_output_cta_v2_9_display.short_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote Message
siac_cqs_output_cta_v2_9_dissect.short_quote_message_fields = function(buffer, offset, packet, parent, size_of_short_quote_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Short
  index, security_symbol_short = siac_cqs_output_cta_v2_9_dissect.security_symbol_short(buffer, index, packet, parent)

  -- Bid Price Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_price_short = siac_cqs_output_cta_v2_9_dissect.bid_price_short(buffer, index, packet, parent)

  -- Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_short = siac_cqs_output_cta_v2_9_dissect.bid_size_short(buffer, index, packet, parent)

  -- Offer Price Short: 2 Byte Unsigned Fixed Width Integer
  index, offer_price_short = siac_cqs_output_cta_v2_9_dissect.offer_price_short(buffer, index, packet, parent)

  -- Offer Size Short: 2 Byte Unsigned Fixed Width Integer
  index, offer_size_short = siac_cqs_output_cta_v2_9_dissect.offer_size_short(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 20 values
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- National Bbo Indicator: 1 Byte Ascii String Enum with 24 values
  index, national_bbo_indicator = siac_cqs_output_cta_v2_9_dissect.national_bbo_indicator(buffer, index, packet, parent)

  -- Runtime optional field exists: National Best Bid Long Appendage
  local national_best_bid_long_appendage_exists = national_bbo_indicator == "U"

  -- Runtime optional field: National Best Bid Long Appendage
  if national_best_bid_long_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_bid_long_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Offer Long Appendage
  local national_best_offer_long_appendage_exists = national_bbo_indicator == "U"

  -- Runtime optional field: National Best Offer Long Appendage
  if national_best_offer_long_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_offer_long_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Bid Short Appendage
  local national_best_bid_short_appendage_exists = national_bbo_indicator == "T"

  -- Runtime optional field: National Best Bid Short Appendage
  if national_best_bid_short_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_bid_short_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Offer Short Appendage
  local national_best_offer_short_appendage_exists = national_bbo_indicator == "T"

  -- Runtime optional field: National Best Offer Short Appendage
  if national_best_offer_short_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_offer_short_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Short Quote Message
siac_cqs_output_cta_v2_9_dissect.short_quote_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_short_quote_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.short_quote_message then
    local range = buffer(offset, size_of_short_quote_message)
    local display = siac_cqs_output_cta_v2_9_display.short_quote_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.short_quote_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.short_quote_message_fields(buffer, offset, packet, parent, size_of_short_quote_message)

  return offset + size_of_short_quote_message
end

-- Size: Luld Indicator
siac_cqs_output_cta_v2_9_size_of.luld_indicator = 1

-- Display: Luld Indicator
siac_cqs_output_cta_v2_9_display.luld_indicator = function(value)
  if value == " " then
    return "Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Luld Indicator: Bid Is Non Executable (A)"
  end
  if value == "B" then
    return "Luld Indicator: Offer Is Non Executable (B)"
  end

  return "Luld Indicator: Unknown("..value..")"
end

-- Dissect: Luld Indicator
siac_cqs_output_cta_v2_9_dissect.luld_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.luld_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.luld_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.luld_indicator, range, value, display)

  return offset + length, value
end

-- Size: Finra Bbo Indicator
siac_cqs_output_cta_v2_9_size_of.finra_bbo_indicator = 1

-- Display: Finra Bbo Indicator
siac_cqs_output_cta_v2_9_display.finra_bbo_indicator = function(value)
  if value == " " then
    return "Finra Bbo Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Bbo Indicator: No Finra Bbo Change (A)"
  end
  if value == "B" then
    return "Finra Bbo Indicator: No Finra Bbo Exists (B)"
  end

  return "Finra Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Finra Bbo Indicator
siac_cqs_output_cta_v2_9_dissect.finra_bbo_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.finra_bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.finra_bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.finra_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_9_size_of.offer_price_upper_limit_price_band = 8

-- Display: Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_9_display.offer_price_upper_limit_price_band = function(value)
  return "Offer Price Upper Limit Price Band: "..value
end

-- Translate: Offer Price Upper Limit Price Band
translate.offer_price_upper_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_9_dissect.offer_price_upper_limit_price_band = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.offer_price_upper_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.offer_price_upper_limit_price_band(raw)
  local display = siac_cqs_output_cta_v2_9_display.offer_price_upper_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.offer_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_9_size_of.bid_price_lower_limit_price_band = 8

-- Display: Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_9_display.bid_price_lower_limit_price_band = function(value)
  return "Bid Price Lower Limit Price Band: "..value
end

-- Translate: Bid Price Lower Limit Price Band
translate.bid_price_lower_limit_price_band = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_9_dissect.bid_price_lower_limit_price_band = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.bid_price_lower_limit_price_band
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.bid_price_lower_limit_price_band(raw)
  local display = siac_cqs_output_cta_v2_9_display.bid_price_lower_limit_price_band(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.bid_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Display: Long Quote Message
siac_cqs_output_cta_v2_9_display.long_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote Message
siac_cqs_output_cta_v2_9_dissect.long_quote_message_fields = function(buffer, offset, packet, parent, size_of_long_quote_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Long: 11 Byte Ascii String
  index, security_symbol_long = siac_cqs_output_cta_v2_9_dissect.security_symbol_long(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cqs_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = siac_cqs_output_cta_v2_9_dissect.quote_condition(buffer, index, packet, parent)

  -- Security Status Indicator: 1 Byte Ascii String Enum with 22 values
  index, security_status_indicator = siac_cqs_output_cta_v2_9_dissect.security_status_indicator(buffer, index, packet, parent)

  -- Bid Price Lower Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, bid_price_lower_limit_price_band = siac_cqs_output_cta_v2_9_dissect.bid_price_lower_limit_price_band(buffer, index, packet, parent)

  -- Bid Size Long: 4 Byte Unsigned Fixed Width Integer
  index, bid_size_long = siac_cqs_output_cta_v2_9_dissect.bid_size_long(buffer, index, packet, parent)

  -- Offer Price Upper Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, offer_price_upper_limit_price_band = siac_cqs_output_cta_v2_9_dissect.offer_price_upper_limit_price_band(buffer, index, packet, parent)

  -- Offer Size Long: 4 Byte Unsigned Fixed Width Integer
  index, offer_size_long = siac_cqs_output_cta_v2_9_dissect.offer_size_long(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = siac_cqs_output_cta_v2_9_dissect.retail_interest_indicator(buffer, index, packet, parent)

  -- Settlement Condition: 1 Byte Ascii String Enum with 3 values
  index, settlement_condition = siac_cqs_output_cta_v2_9_dissect.settlement_condition(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Ascii String Enum with 3 values
  index, market_condition = siac_cqs_output_cta_v2_9_dissect.market_condition(buffer, index, packet, parent)

  -- Finra Market Maker Id: 4 Byte Ascii String
  index, finra_market_maker_id = siac_cqs_output_cta_v2_9_dissect.finra_market_maker_id(buffer, index, packet, parent)

  -- Finra Bbo Indicator: 1 Byte Ascii String Enum with 3 values
  index, finra_bbo_indicator = siac_cqs_output_cta_v2_9_dissect.finra_bbo_indicator(buffer, index, packet, parent)

  -- Adf Timestamp: Struct of 2 fields
  index, adf_timestamp = siac_cqs_output_cta_v2_9_dissect.adf_timestamp(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cqs_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 20 values
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cqs_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Sip Generated Message Identifier: 1 Byte Ascii String Enum with 2 values
  index, sip_generated_message_identifier = siac_cqs_output_cta_v2_9_dissect.sip_generated_message_identifier(buffer, index, packet, parent)

  -- Luld Indicator: 1 Byte Ascii String Enum with 3 values
  index, luld_indicator = siac_cqs_output_cta_v2_9_dissect.luld_indicator(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: 1 Byte Ascii String Enum with 10 values
  index, national_bbo_luld_indicator = siac_cqs_output_cta_v2_9_dissect.national_bbo_luld_indicator(buffer, index, packet, parent)

  -- National Bbo Indicator: 1 Byte Ascii String Enum with 24 values
  index, national_bbo_indicator = siac_cqs_output_cta_v2_9_dissect.national_bbo_indicator(buffer, index, packet, parent)

  -- Runtime optional field exists: National Best Bid Long Appendage
  local national_best_bid_long_appendage_exists = national_bbo_indicator == "U"

  -- Runtime optional field: National Best Bid Long Appendage
  if national_best_bid_long_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_bid_long_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Offer Long Appendage
  local national_best_offer_long_appendage_exists = national_bbo_indicator == "U"

  -- Runtime optional field: National Best Offer Long Appendage
  if national_best_offer_long_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_offer_long_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Bid Short Appendage
  local national_best_bid_short_appendage_exists = national_bbo_indicator == "T"

  -- Runtime optional field: National Best Bid Short Appendage
  if national_best_bid_short_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_bid_short_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: National Best Offer Short Appendage
  local national_best_offer_short_appendage_exists = national_bbo_indicator == "T"

  -- Runtime optional field: National Best Offer Short Appendage
  if national_best_offer_short_appendage_exists then
    index = siac_cqs_output_cta_v2_9_dissect.national_best_offer_short_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Long Quote Message
siac_cqs_output_cta_v2_9_dissect.long_quote_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_long_quote_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.long_quote_message then
    local range = buffer(offset, size_of_long_quote_message)
    local display = siac_cqs_output_cta_v2_9_display.long_quote_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.long_quote_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.long_quote_message_fields(buffer, offset, packet, parent, size_of_long_quote_message)

  return offset + size_of_long_quote_message
end

-- Size: Future
siac_cqs_output_cta_v2_9_size_of.future = 1

-- Display: Future
siac_cqs_output_cta_v2_9_display.future = function(value)
  return "Future: "..value
end

-- Dissect: Future
siac_cqs_output_cta_v2_9_dissect.future = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.future
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.future(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.future, range, value, display)

  return offset + length, value
end

-- Size: Number Of Extensions
siac_cqs_output_cta_v2_9_size_of.number_of_extensions = 1

-- Display: Number Of Extensions
siac_cqs_output_cta_v2_9_display.number_of_extensions = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cqs_output_cta_v2_9_dissect.number_of_extensions = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.number_of_extensions
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.number_of_extensions(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_9_size_of.auction_collar_lower_threshold_price = 8

-- Display: Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_9_display.auction_collar_lower_threshold_price = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
translate.auction_collar_lower_threshold_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_9_dissect.auction_collar_lower_threshold_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.auction_collar_lower_threshold_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_lower_threshold_price(raw)
  local display = siac_cqs_output_cta_v2_9_display.auction_collar_lower_threshold_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_9_size_of.auction_collar_upper_threshold_price = 8

-- Display: Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_9_display.auction_collar_upper_threshold_price = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
translate.auction_collar_upper_threshold_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_9_dissect.auction_collar_upper_threshold_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.auction_collar_upper_threshold_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_upper_threshold_price(raw)
  local display = siac_cqs_output_cta_v2_9_display.auction_collar_upper_threshold_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Size: Auction Collar Reference Price
siac_cqs_output_cta_v2_9_size_of.auction_collar_reference_price = 8

-- Display: Auction Collar Reference Price
siac_cqs_output_cta_v2_9_display.auction_collar_reference_price = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
translate.auction_collar_reference_price = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cqs_output_cta_v2_9_dissect.auction_collar_reference_price = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.auction_collar_reference_price
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = translate.auction_collar_reference_price(raw)
  local display = siac_cqs_output_cta_v2_9_display.auction_collar_reference_price(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Display: Auction Status Message
siac_cqs_output_cta_v2_9_display.auction_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Auction Status Message
siac_cqs_output_cta_v2_9_dissect.auction_status_message_fields = function(buffer, offset, packet, parent, size_of_auction_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Long: 11 Byte Ascii String
  index, security_symbol_long = siac_cqs_output_cta_v2_9_dissect.security_symbol_long(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cqs_output_cta_v2_9_dissect.instrument_type(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = siac_cqs_output_cta_v2_9_dissect.auction_collar_reference_price(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_upper_threshold_price = siac_cqs_output_cta_v2_9_dissect.auction_collar_upper_threshold_price(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_lower_threshold_price = siac_cqs_output_cta_v2_9_dissect.auction_collar_lower_threshold_price(buffer, index, packet, parent)

  -- Number Of Extensions: 1 Byte Unsigned Fixed Width Integer
  index, number_of_extensions = siac_cqs_output_cta_v2_9_dissect.number_of_extensions(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cqs_output_cta_v2_9_dissect.short_sale_restriction_indicator(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 20 values
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_9_dissect.primary_listing_market_participant_id(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cqs_output_cta_v2_9_dissect.financial_status_indicator(buffer, index, packet, parent)

  -- Future: 1 Byte Ascii String
  index, future = siac_cqs_output_cta_v2_9_dissect.future(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
siac_cqs_output_cta_v2_9_dissect.auction_status_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_auction_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.auction_status_message then
    local range = buffer(offset, size_of_auction_status_message)
    local display = siac_cqs_output_cta_v2_9_display.auction_status_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.auction_status_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.auction_status_message_fields(buffer, offset, packet, parent, size_of_auction_status_message)

  return offset + size_of_auction_status_message
end

-- Calculate runtime size of: Quote Payload
siac_cqs_output_cta_v2_9_size_of.quote_payload = function(buffer, offset, quote_message_type)
  -- Size of Auction Status Message
  if quote_message_type == "A" then
    return siac_cqs_output_cta_v2_9_size_of.auction_status_message(buffer, offset)
  end
  -- Size of Long Quote Message
  if quote_message_type == "L" then
    return siac_cqs_output_cta_v2_9_size_of.long_quote_message(buffer, offset)
  end
  -- Size of Short Quote Message
  if quote_message_type == "Q" then
    return siac_cqs_output_cta_v2_9_size_of.short_quote_message(buffer, offset)
  end
  -- Size of Special Long Quote Message
  if quote_message_type == "S" then
    return siac_cqs_output_cta_v2_9_size_of.special_long_quote_message(buffer, offset)
  end

  return 0
end

-- Display: Quote Payload
siac_cqs_output_cta_v2_9_display.quote_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Quote Payload
siac_cqs_output_cta_v2_9_dissect.quote_payload_branches = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Auction Status Message
  if quote_message_type == "A" then
    return siac_cqs_output_cta_v2_9_dissect.auction_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote Message
  if quote_message_type == "L" then
    return siac_cqs_output_cta_v2_9_dissect.long_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote Message
  if quote_message_type == "Q" then
    return siac_cqs_output_cta_v2_9_dissect.short_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Special Long Quote Message
  if quote_message_type == "S" then
    return siac_cqs_output_cta_v2_9_dissect.special_long_quote_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Quote Payload
siac_cqs_output_cta_v2_9_dissect.quote_payload = function(buffer, offset, packet, parent, quote_message_type)
  if not show.quote_payload then
    return siac_cqs_output_cta_v2_9_dissect.quote_payload_branches(buffer, offset, packet, parent, quote_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_output_cta_v2_9_size_of.quote_payload(buffer, offset, quote_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_output_cta_v2_9_display.quote_payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v2_9.fields.quote_payload, range, display)

  return siac_cqs_output_cta_v2_9_dissect.quote_payload_branches(buffer, offset, packet, parent, quote_message_type)
end

-- Size: Quote Message Type
siac_cqs_output_cta_v2_9_size_of.quote_message_type = 1

-- Display: Quote Message Type
siac_cqs_output_cta_v2_9_display.quote_message_type = function(value)
  if value == "A" then
    return "Quote Message Type: Auction Status Message (A)"
  end
  if value == "L" then
    return "Quote Message Type: Long Quote Message (L)"
  end
  if value == "Q" then
    return "Quote Message Type: Short Quote Message (Q)"
  end
  if value == "S" then
    return "Quote Message Type: Special Long Quote Message (S)"
  end

  return "Quote Message Type: Unknown("..value..")"
end

-- Dissect: Quote Message Type
siac_cqs_output_cta_v2_9_dissect.quote_message_type = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.quote_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.quote_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Display: Quote
siac_cqs_output_cta_v2_9_display.quote = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Quote
siac_cqs_output_cta_v2_9_dissect.quote_fields = function(buffer, offset, packet, parent, size_of_quote)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String Enum with 4 values
  index, quote_message_type = siac_cqs_output_cta_v2_9_dissect.quote_message_type(buffer, index, packet, parent)

  -- Quote Payload: Runtime Type with 4 branches
  index = siac_cqs_output_cta_v2_9_dissect.quote_payload(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote
siac_cqs_output_cta_v2_9_dissect.quote = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_quote = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.quote then
    local range = buffer(offset, size_of_quote)
    local display = siac_cqs_output_cta_v2_9_display.quote(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.quote, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.quote_fields(buffer, offset, packet, parent, size_of_quote)

  return offset + size_of_quote
end

-- Size: Reserved
siac_cqs_output_cta_v2_9_size_of.reserved = 1

-- Display: Reserved
siac_cqs_output_cta_v2_9_display.reserved = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cqs_output_cta_v2_9_dissect.reserved = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.reserved
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.reserved(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.reserved, range, value, display)

  return offset + length, value
end

-- Display: Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_9_display.market_wide_circuit_breaker_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Market Wide Circuit Breaker Level Indicator
  index, market_wide_circuit_breaker_level_indicator = siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_level_indicator(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = siac_cqs_output_cta_v2_9_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_market_wide_circuit_breaker_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_status_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_status_message)
    local display = siac_cqs_output_cta_v2_9_display.market_wide_circuit_breaker_status_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.market_wide_circuit_breaker_status_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_status_message)

  return offset + size_of_market_wide_circuit_breaker_status_message
end

-- Size: Mwcb Level 3
siac_cqs_output_cta_v2_9_size_of.mwcb_level_3 = 8

-- Display: Mwcb Level 3
siac_cqs_output_cta_v2_9_display.mwcb_level_3 = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
siac_cqs_output_cta_v2_9_dissect.mwcb_level_3 = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.mwcb_level_3
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_output_cta_v2_9_display.mwcb_level_3(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Size: Mwcb Level 2
siac_cqs_output_cta_v2_9_size_of.mwcb_level_2 = 8

-- Display: Mwcb Level 2
siac_cqs_output_cta_v2_9_display.mwcb_level_2 = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
siac_cqs_output_cta_v2_9_dissect.mwcb_level_2 = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.mwcb_level_2
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_output_cta_v2_9_display.mwcb_level_2(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Display: Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_9_display.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message_fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  -- Mwcb Level 1
  index, mwcb_level_1 = siac_cqs_output_cta_v2_9_dissect.mwcb_level_1(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_2 = siac_cqs_output_cta_v2_9_dissect.mwcb_level_2(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_3 = siac_cqs_output_cta_v2_9_dissect.mwcb_level_3(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = siac_cqs_output_cta_v2_9_dissect.reserved(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_market_wide_circuit_breaker_decline_level_status_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_status_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_status_message)
    local display = siac_cqs_output_cta_v2_9_display.market_wide_circuit_breaker_decline_level_status_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.market_wide_circuit_breaker_decline_level_status_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message_fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_status_message
end

-- Calculate runtime size of: Market Status Payload
siac_cqs_output_cta_v2_9_size_of.market_status_payload = function(buffer, offset, market_status_message_type)
  -- Size of Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return siac_cqs_output_cta_v2_9_size_of.market_wide_circuit_breaker_decline_level_status_message(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return siac_cqs_output_cta_v2_9_size_of.market_wide_circuit_breaker_status_message(buffer, offset)
  end

  return 0
end

-- Display: Market Status Payload
siac_cqs_output_cta_v2_9_display.market_status_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Market Status Payload
siac_cqs_output_cta_v2_9_dissect.market_status_payload_branches = function(buffer, offset, packet, parent, market_status_message_type)
  -- Dissect Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "M" then
    return siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_decline_level_status_message(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return siac_cqs_output_cta_v2_9_dissect.market_wide_circuit_breaker_status_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Market Status Payload
siac_cqs_output_cta_v2_9_dissect.market_status_payload = function(buffer, offset, packet, parent, market_status_message_type)
  if not show.market_status_payload then
    return siac_cqs_output_cta_v2_9_dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_output_cta_v2_9_size_of.market_status_payload(buffer, offset, market_status_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_output_cta_v2_9_display.market_status_payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v2_9.fields.market_status_payload, range, display)

  return siac_cqs_output_cta_v2_9_dissect.market_status_payload_branches(buffer, offset, packet, parent, market_status_message_type)
end

-- Size: Market Status Message Type
siac_cqs_output_cta_v2_9_size_of.market_status_message_type = 1

-- Display: Market Status Message Type
siac_cqs_output_cta_v2_9_display.market_status_message_type = function(value)
  if value == "M" then
    return "Market Status Message Type: Market Wide Circuit Breaker Decline Level Status Message (M)"
  end
  if value == "L" then
    return "Market Status Message Type: Market Wide Circuit Breaker Status Message (L)"
  end

  return "Market Status Message Type: Unknown("..value..")"
end

-- Dissect: Market Status Message Type
siac_cqs_output_cta_v2_9_dissect.market_status_message_type = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.market_status_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.market_status_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.market_status_message_type, range, value, display)

  return offset + length, value
end

-- Display: Market Status
siac_cqs_output_cta_v2_9_display.market_status = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Market Status
siac_cqs_output_cta_v2_9_dissect.market_status_fields = function(buffer, offset, packet, parent, size_of_market_status)
  local index = offset

  -- Market Status Message Type: 1 Byte Ascii String Enum with 2 values
  index, market_status_message_type = siac_cqs_output_cta_v2_9_dissect.market_status_message_type(buffer, index, packet, parent)

  -- Market Status Payload: Runtime Type with 2 branches
  index = siac_cqs_output_cta_v2_9_dissect.market_status_payload(buffer, index, packet, parent, market_status_message_type)

  return index
end

-- Dissect: Market Status
siac_cqs_output_cta_v2_9_dissect.market_status = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_market_status = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.market_status then
    local range = buffer(offset, size_of_market_status)
    local display = siac_cqs_output_cta_v2_9_display.market_status(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.market_status, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.market_status_fields(buffer, offset, packet, parent, size_of_market_status)

  return offset + size_of_market_status
end

-- Display: End Of Day Message
siac_cqs_output_cta_v2_9_display.end_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Day Message
siac_cqs_output_cta_v2_9_dissect.end_of_day_message_fields = function(buffer, offset, packet, parent, size_of_end_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
siac_cqs_output_cta_v2_9_dissect.end_of_day_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_end_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.end_of_day_message then
    local range = buffer(offset, size_of_end_of_day_message)
    local display = siac_cqs_output_cta_v2_9_display.end_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.end_of_day_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.end_of_day_message_fields(buffer, offset, packet, parent, size_of_end_of_day_message)

  return offset + size_of_end_of_day_message
end

-- Display: Line Integrity Message
siac_cqs_output_cta_v2_9_display.line_integrity_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Line Integrity Message
siac_cqs_output_cta_v2_9_dissect.line_integrity_message_fields = function(buffer, offset, packet, parent, size_of_line_integrity_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
siac_cqs_output_cta_v2_9_dissect.line_integrity_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_line_integrity_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.line_integrity_message then
    local range = buffer(offset, size_of_line_integrity_message)
    local display = siac_cqs_output_cta_v2_9_display.line_integrity_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.line_integrity_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.line_integrity_message_fields(buffer, offset, packet, parent, size_of_line_integrity_message)

  return offset + size_of_line_integrity_message
end

-- Display: Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_9_display.disaster_recovery_data_center_activation_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message_fields = function(buffer, offset, packet, parent, size_of_disaster_recovery_data_center_activation_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_disaster_recovery_data_center_activation_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.disaster_recovery_data_center_activation_message then
    local range = buffer(offset, size_of_disaster_recovery_data_center_activation_message)
    local display = siac_cqs_output_cta_v2_9_display.disaster_recovery_data_center_activation_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.disaster_recovery_data_center_activation_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message_fields(buffer, offset, packet, parent, size_of_disaster_recovery_data_center_activation_message)

  return offset + size_of_disaster_recovery_data_center_activation_message
end

-- Display: Finra Open Message
siac_cqs_output_cta_v2_9_display.finra_open_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Finra Open Message
siac_cqs_output_cta_v2_9_dissect.finra_open_message_fields = function(buffer, offset, packet, parent, size_of_finra_open_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Open Message
siac_cqs_output_cta_v2_9_dissect.finra_open_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_finra_open_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.finra_open_message then
    local range = buffer(offset, size_of_finra_open_message)
    local display = siac_cqs_output_cta_v2_9_display.finra_open_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.finra_open_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.finra_open_message_fields(buffer, offset, packet, parent, size_of_finra_open_message)

  return offset + size_of_finra_open_message
end

-- Display: End Of Test Cycle Message
siac_cqs_output_cta_v2_9_display.end_of_test_cycle_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: End Of Test Cycle Message
siac_cqs_output_cta_v2_9_dissect.end_of_test_cycle_message_fields = function(buffer, offset, packet, parent, size_of_end_of_test_cycle_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Test Cycle Message
siac_cqs_output_cta_v2_9_dissect.end_of_test_cycle_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_end_of_test_cycle_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.end_of_test_cycle_message then
    local range = buffer(offset, size_of_end_of_test_cycle_message)
    local display = siac_cqs_output_cta_v2_9_display.end_of_test_cycle_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.end_of_test_cycle_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.end_of_test_cycle_message_fields(buffer, offset, packet, parent, size_of_end_of_test_cycle_message)

  return offset + size_of_end_of_test_cycle_message
end

-- Display: Start Of Test Cycle Message
siac_cqs_output_cta_v2_9_display.start_of_test_cycle_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Test Cycle Message
siac_cqs_output_cta_v2_9_dissect.start_of_test_cycle_message_fields = function(buffer, offset, packet, parent, size_of_start_of_test_cycle_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Test Cycle Message
siac_cqs_output_cta_v2_9_dissect.start_of_test_cycle_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_start_of_test_cycle_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.start_of_test_cycle_message then
    local range = buffer(offset, size_of_start_of_test_cycle_message)
    local display = siac_cqs_output_cta_v2_9_display.start_of_test_cycle_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.start_of_test_cycle_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.start_of_test_cycle_message_fields(buffer, offset, packet, parent, size_of_start_of_test_cycle_message)

  return offset + size_of_start_of_test_cycle_message
end

-- Display: Reset Block Sequence Number Message
siac_cqs_output_cta_v2_9_display.reset_block_sequence_number_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Reset Block Sequence Number Message
siac_cqs_output_cta_v2_9_dissect.reset_block_sequence_number_message_fields = function(buffer, offset, packet, parent, size_of_reset_block_sequence_number_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Block Sequence Number Message
siac_cqs_output_cta_v2_9_dissect.reset_block_sequence_number_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_reset_block_sequence_number_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.reset_block_sequence_number_message then
    local range = buffer(offset, size_of_reset_block_sequence_number_message)
    local display = siac_cqs_output_cta_v2_9_display.reset_block_sequence_number_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.reset_block_sequence_number_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.reset_block_sequence_number_message_fields(buffer, offset, packet, parent, size_of_reset_block_sequence_number_message)

  return offset + size_of_reset_block_sequence_number_message
end

-- Display: Finra Close Message
siac_cqs_output_cta_v2_9_display.finra_close_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Finra Close Message
siac_cqs_output_cta_v2_9_dissect.finra_close_message_fields = function(buffer, offset, packet, parent, size_of_finra_close_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Close Message
siac_cqs_output_cta_v2_9_dissect.finra_close_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_finra_close_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.finra_close_message then
    local range = buffer(offset, size_of_finra_close_message)
    local display = siac_cqs_output_cta_v2_9_display.finra_close_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.finra_close_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.finra_close_message_fields(buffer, offset, packet, parent, size_of_finra_close_message)

  return offset + size_of_finra_close_message
end

-- Display: Start Of Day Message
siac_cqs_output_cta_v2_9_display.start_of_day_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Start Of Day Message
siac_cqs_output_cta_v2_9_dissect.start_of_day_message_fields = function(buffer, offset, packet, parent, size_of_start_of_day_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_output_cta_v2_9_dissect.participant_id(buffer, index, packet, parent)

  -- Participant Timestamp: Struct of 2 fields
  index, participant_timestamp = siac_cqs_output_cta_v2_9_dissect.participant_timestamp(buffer, index, packet, parent)

  -- Message Id: 1 Byte Unsigned Fixed Width Integer
  index, message_id = siac_cqs_output_cta_v2_9_dissect.message_id(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = siac_cqs_output_cta_v2_9_dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 8 Byte Signed Fixed Width Integer
  index, participant_reference_number = siac_cqs_output_cta_v2_9_dissect.participant_reference_number(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
siac_cqs_output_cta_v2_9_dissect.start_of_day_message = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  -- Parse runtime struct size
  local size_of_start_of_day_message = message_length - 4

  -- Optionally add struct element to protocol tree
  if show.start_of_day_message then
    local range = buffer(offset, size_of_start_of_day_message)
    local display = siac_cqs_output_cta_v2_9_display.start_of_day_message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.start_of_day_message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.start_of_day_message_fields(buffer, offset, packet, parent, size_of_start_of_day_message)

  return offset + size_of_start_of_day_message
end

-- Calculate runtime size of: Control Payload
siac_cqs_output_cta_v2_9_size_of.control_payload = function(buffer, offset, control_message_type)
  -- Size of Start Of Day Message
  if control_message_type == "A" then
    return siac_cqs_output_cta_v2_9_size_of.start_of_day_message(buffer, offset)
  end
  -- Size of Finra Close Message
  if control_message_type == "C" then
    return siac_cqs_output_cta_v2_9_size_of.finra_close_message(buffer, offset)
  end
  -- Size of Reset Block Sequence Number Message
  if control_message_type == "L" then
    return siac_cqs_output_cta_v2_9_size_of.reset_block_sequence_number_message(buffer, offset)
  end
  -- Size of Start Of Test Cycle Message
  if control_message_type == "M" then
    return siac_cqs_output_cta_v2_9_size_of.start_of_test_cycle_message(buffer, offset)
  end
  -- Size of End Of Test Cycle Message
  if control_message_type == "N" then
    return siac_cqs_output_cta_v2_9_size_of.end_of_test_cycle_message(buffer, offset)
  end
  -- Size of Finra Open Message
  if control_message_type == "O" then
    return siac_cqs_output_cta_v2_9_size_of.finra_open_message(buffer, offset)
  end
  -- Size of Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return siac_cqs_output_cta_v2_9_size_of.disaster_recovery_data_center_activation_message(buffer, offset)
  end
  -- Size of Line Integrity Message
  if control_message_type == "T" then
    return siac_cqs_output_cta_v2_9_size_of.line_integrity_message(buffer, offset)
  end
  -- Size of End Of Day Message
  if control_message_type == "Z" then
    return siac_cqs_output_cta_v2_9_size_of.end_of_day_message(buffer, offset)
  end

  return 0
end

-- Display: Control Payload
siac_cqs_output_cta_v2_9_display.control_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Control Payload
siac_cqs_output_cta_v2_9_dissect.control_payload_branches = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "A" then
    return siac_cqs_output_cta_v2_9_dissect.start_of_day_message(buffer, offset, packet, parent)
  end
  -- Dissect Finra Close Message
  if control_message_type == "C" then
    return siac_cqs_output_cta_v2_9_dissect.finra_close_message(buffer, offset, packet, parent)
  end
  -- Dissect Reset Block Sequence Number Message
  if control_message_type == "L" then
    return siac_cqs_output_cta_v2_9_dissect.reset_block_sequence_number_message(buffer, offset, packet, parent)
  end
  -- Dissect Start Of Test Cycle Message
  if control_message_type == "M" then
    return siac_cqs_output_cta_v2_9_dissect.start_of_test_cycle_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Test Cycle Message
  if control_message_type == "N" then
    return siac_cqs_output_cta_v2_9_dissect.end_of_test_cycle_message(buffer, offset, packet, parent)
  end
  -- Dissect Finra Open Message
  if control_message_type == "O" then
    return siac_cqs_output_cta_v2_9_dissect.finra_open_message(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return siac_cqs_output_cta_v2_9_dissect.disaster_recovery_data_center_activation_message(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return siac_cqs_output_cta_v2_9_dissect.line_integrity_message(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "Z" then
    return siac_cqs_output_cta_v2_9_dissect.end_of_day_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Control Payload
siac_cqs_output_cta_v2_9_dissect.control_payload = function(buffer, offset, packet, parent, control_message_type)
  if not show.control_payload then
    return siac_cqs_output_cta_v2_9_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_output_cta_v2_9_size_of.control_payload(buffer, offset, control_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_output_cta_v2_9_display.control_payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v2_9.fields.control_payload, range, display)

  return siac_cqs_output_cta_v2_9_dissect.control_payload_branches(buffer, offset, packet, parent, control_message_type)
end

-- Size: Control Message Type
siac_cqs_output_cta_v2_9_size_of.control_message_type = 1

-- Display: Control Message Type
siac_cqs_output_cta_v2_9_display.control_message_type = function(value)
  if value == "A" then
    return "Control Message Type: Start Of Day Message (A)"
  end
  if value == "C" then
    return "Control Message Type: Finra Close Message (C)"
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
  if value == "O" then
    return "Control Message Type: Finra Open Message (O)"
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
siac_cqs_output_cta_v2_9_dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Display: Control
siac_cqs_output_cta_v2_9_display.control = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control
siac_cqs_output_cta_v2_9_dissect.control_fields = function(buffer, offset, packet, parent, size_of_control)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 9 values
  index, control_message_type = siac_cqs_output_cta_v2_9_dissect.control_message_type(buffer, index, packet, parent)

  -- Control Payload: Runtime Type with 9 branches
  index = siac_cqs_output_cta_v2_9_dissect.control_payload(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
siac_cqs_output_cta_v2_9_dissect.control = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  -- Parse runtime struct size
  local size_of_control = message_length - 3

  -- Optionally add struct element to protocol tree
  if show.control then
    local range = buffer(offset, size_of_control)
    local display = siac_cqs_output_cta_v2_9_display.control(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.control, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.control_fields(buffer, offset, packet, parent, size_of_control)

  return offset + size_of_control
end

-- Calculate runtime size of: Payload
siac_cqs_output_cta_v2_9_size_of.payload = function(buffer, offset, message_category)
  -- Size of Control
  if message_category == "C" then
    return siac_cqs_output_cta_v2_9_size_of.control(buffer, offset)
  end
  -- Size of Market Status
  if message_category == "M" then
    return siac_cqs_output_cta_v2_9_size_of.market_status(buffer, offset)
  end
  -- Size of Quote
  if message_category == "Q" then
    return siac_cqs_output_cta_v2_9_size_of.quote(buffer, offset)
  end

  return 0
end

-- Display: Payload
siac_cqs_output_cta_v2_9_display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
siac_cqs_output_cta_v2_9_dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Control
  if message_category == "C" then
    return siac_cqs_output_cta_v2_9_dissect.control(buffer, offset, packet, parent)
  end
  -- Dissect Market Status
  if message_category == "M" then
    return siac_cqs_output_cta_v2_9_dissect.market_status(buffer, offset, packet, parent)
  end
  -- Dissect Quote
  if message_category == "Q" then
    return siac_cqs_output_cta_v2_9_dissect.quote(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
siac_cqs_output_cta_v2_9_dissect.payload = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return siac_cqs_output_cta_v2_9_dissect.payload_branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_output_cta_v2_9_size_of.payload(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_output_cta_v2_9_display.payload(buffer, packet, parent)
  local element = parent:add(siac_cqs_output_cta_v2_9.fields.payload, range, display)

  return siac_cqs_output_cta_v2_9_dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
siac_cqs_output_cta_v2_9_size_of.message_category = 1

-- Display: Message Category
siac_cqs_output_cta_v2_9_display.message_category = function(value)
  if value == "C" then
    return "Message Category: Control (C)"
  end
  if value == "M" then
    return "Message Category: Market Status (M)"
  end
  if value == "Q" then
    return "Message Category: Quote (Q)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_cqs_output_cta_v2_9_dissect.message_category = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.message_category(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.message_category, range, value, display)

  return offset + length, value
end

-- Size: Message Length
siac_cqs_output_cta_v2_9_size_of.message_length = 2

-- Display: Message Length
siac_cqs_output_cta_v2_9_display.message_length = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cqs_output_cta_v2_9_dissect.message_length = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.message_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.message_length(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.message_length, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message Header
siac_cqs_output_cta_v2_9_size_of.message_header = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.message_length

  index = index + siac_cqs_output_cta_v2_9_size_of.message_category

  return index
end

-- Display: Message Header
siac_cqs_output_cta_v2_9_display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
siac_cqs_output_cta_v2_9_dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = siac_cqs_output_cta_v2_9_dissect.message_length(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 3 values
  index, message_category = siac_cqs_output_cta_v2_9_dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_cqs_output_cta_v2_9_dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local length = siac_cqs_output_cta_v2_9_size_of.message_header(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.message_header(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.message_header, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Display: Message
siac_cqs_output_cta_v2_9_display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
siac_cqs_output_cta_v2_9_dissect.message_fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = siac_cqs_output_cta_v2_9_dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 3 branches
  index = siac_cqs_output_cta_v2_9_dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cqs_output_cta_v2_9_dissect.message = function(buffer, offset, packet, parent, size_of_message)
  -- Optionally add struct element to protocol tree
  if show.message then
    local range = buffer(offset, size_of_message)
    local display = siac_cqs_output_cta_v2_9_display.message(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.message, range, display)
  end

  siac_cqs_output_cta_v2_9_dissect.message_fields(buffer, offset, packet, parent, size_of_message)

  return offset + size_of_message
end

-- Size: Block Checksum
siac_cqs_output_cta_v2_9_size_of.block_checksum = 2

-- Display: Block Checksum
siac_cqs_output_cta_v2_9_display.block_checksum = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cqs_output_cta_v2_9_dissect.block_checksum = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.block_checksum
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.block_checksum(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Calculate size of: Sip Block Timestamp
siac_cqs_output_cta_v2_9_size_of.sip_block_timestamp = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.seconds

  index = index + siac_cqs_output_cta_v2_9_size_of.nanoseconds

  return index
end

-- Display: Sip Block Timestamp
siac_cqs_output_cta_v2_9_display.sip_block_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Sip Block Timestamp
siac_cqs_output_cta_v2_9_dissect.sip_block_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cqs_output_cta_v2_9_dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cqs_output_cta_v2_9_dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Sip Block Timestamp
siac_cqs_output_cta_v2_9_dissect.sip_block_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.sip_block_timestamp then
    local length = siac_cqs_output_cta_v2_9_size_of.sip_block_timestamp(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.sip_block_timestamp(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.sip_block_timestamp, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.sip_block_timestamp_fields(buffer, offset, packet, parent)
end

-- Size: Messages In Block
siac_cqs_output_cta_v2_9_size_of.messages_in_block = 1

-- Display: Messages In Block
siac_cqs_output_cta_v2_9_display.messages_in_block = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cqs_output_cta_v2_9_dissect.messages_in_block = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.messages_in_block
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.messages_in_block(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Size: Block Sequence Number
siac_cqs_output_cta_v2_9_size_of.block_sequence_number = 4

-- Display: Block Sequence Number
siac_cqs_output_cta_v2_9_display.block_sequence_number = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cqs_output_cta_v2_9_dissect.block_sequence_number = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.block_sequence_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.block_sequence_number(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Indicator
siac_cqs_output_cta_v2_9_size_of.retransmission_indicator = 1

-- Display: Retransmission Indicator
siac_cqs_output_cta_v2_9_display.retransmission_indicator = function(value)
  if value == "O" then
    return "Retransmission Indicator: Original (O)"
  end
  if value == "V" then
    return "Retransmission Indicator: Retransmitted (V)"
  end

  return "Retransmission Indicator: Unknown("..value..")"
end

-- Dissect: Retransmission Indicator
siac_cqs_output_cta_v2_9_dissect.retransmission_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.retransmission_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.retransmission_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Size: Data Feed Indicator
siac_cqs_output_cta_v2_9_size_of.data_feed_indicator = 1

-- Display: Data Feed Indicator
siac_cqs_output_cta_v2_9_display.data_feed_indicator = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
siac_cqs_output_cta_v2_9_dissect.data_feed_indicator = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.data_feed_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_9_display.data_feed_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Size: Block Size
siac_cqs_output_cta_v2_9_size_of.block_size = 2

-- Display: Block Size
siac_cqs_output_cta_v2_9_display.block_size = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cqs_output_cta_v2_9_dissect.block_size = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.block_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.block_size(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.block_size, range, value, display)

  return offset + length, value
end

-- Size: Version
siac_cqs_output_cta_v2_9_size_of.version = 1

-- Display: Version
siac_cqs_output_cta_v2_9_display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cqs_output_cta_v2_9_dissect.version = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_9_size_of.version
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_9_display.version(value, buffer, offset, packet, parent)

  parent:add(siac_cqs_output_cta_v2_9.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Header
siac_cqs_output_cta_v2_9_size_of.block_header = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_9_size_of.version

  index = index + siac_cqs_output_cta_v2_9_size_of.block_size

  index = index + siac_cqs_output_cta_v2_9_size_of.data_feed_indicator

  index = index + siac_cqs_output_cta_v2_9_size_of.retransmission_indicator

  index = index + siac_cqs_output_cta_v2_9_size_of.block_sequence_number

  index = index + siac_cqs_output_cta_v2_9_size_of.messages_in_block

  index = index + siac_cqs_output_cta_v2_9_size_of.sip_block_timestamp(buffer, offset + index)

  index = index + siac_cqs_output_cta_v2_9_size_of.block_checksum

  return index
end

-- Display: Block Header
siac_cqs_output_cta_v2_9_display.block_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Header
siac_cqs_output_cta_v2_9_dissect.block_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = siac_cqs_output_cta_v2_9_dissect.version(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = siac_cqs_output_cta_v2_9_dissect.block_size(buffer, index, packet, parent)

  -- Data Feed Indicator: 1 Byte Ascii String
  index, data_feed_indicator = siac_cqs_output_cta_v2_9_dissect.data_feed_indicator(buffer, index, packet, parent)

  -- Retransmission Indicator: 1 Byte Ascii String Enum with 2 values
  index, retransmission_indicator = siac_cqs_output_cta_v2_9_dissect.retransmission_indicator(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = siac_cqs_output_cta_v2_9_dissect.block_sequence_number(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = siac_cqs_output_cta_v2_9_dissect.messages_in_block(buffer, index, packet, parent)

  -- Sip Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = siac_cqs_output_cta_v2_9_dissect.sip_block_timestamp(buffer, index, packet, parent)

  -- Block Checksum: 2 Byte Unsigned Fixed Width Integer
  index, block_checksum = siac_cqs_output_cta_v2_9_dissect.block_checksum(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cqs_output_cta_v2_9_dissect.block_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.block_header then
    local length = siac_cqs_output_cta_v2_9_size_of.block_header(buffer, offset)
    local range = buffer(offset, length)
    local display = siac_cqs_output_cta_v2_9_display.block_header(buffer, packet, parent)
    parent = parent:add(siac_cqs_output_cta_v2_9.fields.block_header, range, display)
  end

  return siac_cqs_output_cta_v2_9_dissect.block_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
siac_cqs_output_cta_v2_9_dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 8 fields
  index, block_header = siac_cqs_output_cta_v2_9_dissect.block_header(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Message: Struct of 2 fields
  for i = 1, messages_in_block do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Message: Struct of 2 fields
    index = siac_cqs_output_cta_v2_9_dissect.message(buffer, index, packet, parent, message_length)
  end

  -- Runtime optional field exists: Block Pad Byte
  local block_pad_byte_exists = uneven( index )

  -- Runtime optional field: Block Pad Byte
  if block_pad_byte_exists then
    index = siac_cqs_output_cta_v2_9_dissect.block_pad_byte(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function siac_cqs_output_cta_v2_9.init()
end

-- Dissector for Siac Cqs Output Cta 2.9
function siac_cqs_output_cta_v2_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = siac_cqs_output_cta_v2_9.name

  -- Dissect protocol
  local protocol = parent:add(siac_cqs_output_cta_v2_9, buffer(), siac_cqs_output_cta_v2_9.description, "("..buffer:len().." Bytes)")
  return siac_cqs_output_cta_v2_9_dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, siac_cqs_output_cta_v2_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.siac_cqs_output_cta_v2_9_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Siac Cqs Output Cta 2.9
local function siac_cqs_output_cta_v2_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.siac_cqs_output_cta_v2_9_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = siac_cqs_output_cta_v2_9
  siac_cqs_output_cta_v2_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cqs Output Cta 2.9
siac_cqs_output_cta_v2_9:register_heuristic("udp", siac_cqs_output_cta_v2_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 2.9
--   Date: Friday, December 16, 2022
--   Specification: CQS_Pillar_Output_Specification.pdf
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
