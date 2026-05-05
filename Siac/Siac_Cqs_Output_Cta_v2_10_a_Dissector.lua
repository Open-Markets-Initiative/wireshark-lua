-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 2.10.a Protocol
local omi_siac_cqs_output_cta_v2_10_a = Proto("Siac.Cqs.Output.Cta.v2.10.a.Lua", "Siac Cqs Output Cta 2.10.a")

-- Protocol table
local siac_cqs_output_cta_v2_10_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cqs Output Cta 2.10.a Fields
omi_siac_cqs_output_cta_v2_10_a.fields.administrative = ProtoField.new("Administrative", "siac.cqs.output.cta.v2.10.a.administrative", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.cqs.output.cta.v2.10.a.administrativemessagetype", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cqs.output.cta.v2.10.a.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cqs.output.cta.v2.10.a.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cqs.output.cta.v2.10.a.auctioncollarupperthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_participant_id = ProtoField.new("Best Bid Participant Id", "siac.cqs.output.cta.v2.10.a.bestbidparticipantid", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_price_long = ProtoField.new("Best Bid Price Long", "siac.cqs.output.cta.v2.10.a.bestbidpricelong", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_price_short = ProtoField.new("Best Bid Price Short", "siac.cqs.output.cta.v2.10.a.bestbidpriceshort", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_quote_condition = ProtoField.new("Best Bid Quote Condition", "siac.cqs.output.cta.v2.10.a.bestbidquotecondition", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_size_long = ProtoField.new("Best Bid Size Long", "siac.cqs.output.cta.v2.10.a.bestbidsizelong", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_size_short = ProtoField.new("Best Bid Size Short", "siac.cqs.output.cta.v2.10.a.bestbidsizeshort", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_participant_id = ProtoField.new("Best Offer Participant Id", "siac.cqs.output.cta.v2.10.a.bestofferparticipantid", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_price_long = ProtoField.new("Best Offer Price Long", "siac.cqs.output.cta.v2.10.a.bestofferpricelong", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_price_short = ProtoField.new("Best Offer Price Short", "siac.cqs.output.cta.v2.10.a.bestofferpriceshort", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_quote_condition = ProtoField.new("Best Offer Quote Condition", "siac.cqs.output.cta.v2.10.a.bestofferquotecondition", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_size_long = ProtoField.new("Best Offer Size Long", "siac.cqs.output.cta.v2.10.a.bestoffersizelong", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_size_short = ProtoField.new("Best Offer Size Short", "siac.cqs.output.cta.v2.10.a.bestoffersizeshort", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.bid_price_long = ProtoField.new("Bid Price Long", "siac.cqs.output.cta.v2.10.a.bidpricelong", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.bid_price_lower_limit_price_band = ProtoField.new("Bid Price Lower Limit Price Band", "siac.cqs.output.cta.v2.10.a.bidpricelowerlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.bid_price_short = ProtoField.new("Bid Price Short", "siac.cqs.output.cta.v2.10.a.bidpriceshort", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.bid_size_long = ProtoField.new("Bid Size Long", "siac.cqs.output.cta.v2.10.a.bidsizelong", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.bid_size_short = ProtoField.new("Bid Size Short", "siac.cqs.output.cta.v2.10.a.bidsizeshort", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cqs.output.cta.v2.10.a.blockchecksum", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.block_header = ProtoField.new("Block Header", "siac.cqs.output.cta.v2.10.a.blockheader", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cqs.output.cta.v2.10.a.blockpadbyte", ftypes.UINT8)
omi_siac_cqs_output_cta_v2_10_a.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cqs.output.cta.v2.10.a.blocksequencenumber", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.block_size = ProtoField.new("Block Size", "siac.cqs.output.cta.v2.10.a.blocksize", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.consolidated_closing_price = ProtoField.new("Consolidated Closing Price", "siac.cqs.output.cta.v2.10.a.consolidatedclosingprice", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.control = ProtoField.new("Control", "siac.cqs.output.cta.v2.10.a.control", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cqs.output.cta.v2.10.a.controlmessagetype", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.cqs.output.cta.v2.10.a.datafeedindicator", ftypes.BYTES)
omi_siac_cqs_output_cta_v2_10_a.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cqs.output.cta.v2.10.a.financialstatusindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_bbo_indicator = ProtoField.new("Finra Bbo Indicator", "siac.cqs.output.cta.v2.10.a.finrabboindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_bbo_luld_indicator = ProtoField.new("Finra Bbo Luld Indicator", "siac.cqs.output.cta.v2.10.a.finrabboluldindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_market_maker_id = ProtoField.new("Finra Best Bid Market Maker Id", "siac.cqs.output.cta.v2.10.a.finrabestbidmarketmakerid", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_price = ProtoField.new("Finra Best Bid Price", "siac.cqs.output.cta.v2.10.a.finrabestbidprice", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_quote_condition = ProtoField.new("Finra Best Bid Quote Condition", "siac.cqs.output.cta.v2.10.a.finrabestbidquotecondition", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_size = ProtoField.new("Finra Best Bid Size", "siac.cqs.output.cta.v2.10.a.finrabestbidsize", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_market_maker_id = ProtoField.new("Finra Best Offer Market Maker Id", "siac.cqs.output.cta.v2.10.a.finrabestoffermarketmakerid", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_price = ProtoField.new("Finra Best Offer Price", "siac.cqs.output.cta.v2.10.a.finrabestofferprice", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_quote_condition = ProtoField.new("Finra Best Offer Quote Condition", "siac.cqs.output.cta.v2.10.a.finrabestofferquotecondition", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_size = ProtoField.new("Finra Best Offer Size", "siac.cqs.output.cta.v2.10.a.finrabestoffersize", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_market_maker_id = ProtoField.new("Finra Market Maker Id", "siac.cqs.output.cta.v2.10.a.finramarketmakerid", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cqs.output.cta.v2.10.a.haltreason", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cqs.output.cta.v2.10.a.instrumenttype", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.ipo = ProtoField.new("Ipo", "siac.cqs.output.cta.v2.10.a.ipo", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.limit_up_limit_down_luld_indicator = ProtoField.new("Limit Up Limit Down Luld Indicator", "siac.cqs.output.cta.v2.10.a.limituplimitdownluldindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.luld_leverage_ratio = ProtoField.new("Luld Leverage Ratio", "siac.cqs.output.cta.v2.10.a.luldleverageratio", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.luld_tier = ProtoField.new("Luld Tier", "siac.cqs.output.cta.v2.10.a.luldtier", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.market_condition = ProtoField.new("Market Condition", "siac.cqs.output.cta.v2.10.a.marketcondition", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.market_status = ProtoField.new("Market Status", "siac.cqs.output.cta.v2.10.a.marketstatus", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.market_status_message_type = ProtoField.new("Market Status Message Type", "siac.cqs.output.cta.v2.10.a.marketstatusmessagetype", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.market_wide_circuit_breaker_level_indicator = ProtoField.new("Market Wide Circuit Breaker Level Indicator", "siac.cqs.output.cta.v2.10.a.marketwidecircuitbreakerlevelindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.message = ProtoField.new("Message", "siac.cqs.output.cta.v2.10.a.message", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.message_category = ProtoField.new("Message Category", "siac.cqs.output.cta.v2.10.a.messagecategory", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.message_id = ProtoField.new("Message Id", "siac.cqs.output.cta.v2.10.a.messageid", ftypes.UINT8)
omi_siac_cqs_output_cta_v2_10_a.fields.message_length = ProtoField.new("Message Length", "siac.cqs.output.cta.v2.10.a.messagelength", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cqs.output.cta.v2.10.a.messagesinblock", ftypes.UINT8)
omi_siac_cqs_output_cta_v2_10_a.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "siac.cqs.output.cta.v2.10.a.mwcblevel1", ftypes.INT64)
omi_siac_cqs_output_cta_v2_10_a.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cqs.output.cta.v2.10.a.mwcblevel2", ftypes.INT64)
omi_siac_cqs_output_cta_v2_10_a.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cqs.output.cta.v2.10.a.mwcblevel3", ftypes.INT64)
omi_siac_cqs_output_cta_v2_10_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cqs.output.cta.v2.10.a.nanoseconds", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.national_bbo_indicator = ProtoField.new("National Bbo Indicator", "siac.cqs.output.cta.v2.10.a.nationalbboindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.national_bbo_luld_indicator = ProtoField.new("National Bbo Luld Indicator", "siac.cqs.output.cta.v2.10.a.nationalbboluldindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_and_offer_long_appendage = ProtoField.new("National Best Bid And Offer Long Appendage", "siac.cqs.output.cta.v2.10.a.nationalbestbidandofferlongappendage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_and_offer_short_appendage = ProtoField.new("National Best Bid And Offer Short Appendage", "siac.cqs.output.cta.v2.10.a.nationalbestbidandoffershortappendage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_long_appendage = ProtoField.new("National Best Bid Long Appendage", "siac.cqs.output.cta.v2.10.a.nationalbestbidlongappendage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_short_appendage = ProtoField.new("National Best Bid Short Appendage", "siac.cqs.output.cta.v2.10.a.nationalbestbidshortappendage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.national_best_offer_long_appendage = ProtoField.new("National Best Offer Long Appendage", "siac.cqs.output.cta.v2.10.a.nationalbestofferlongappendage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.national_best_offer_short_appendage = ProtoField.new("National Best Offer Short Appendage", "siac.cqs.output.cta.v2.10.a.nationalbestoffershortappendage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cqs.output.cta.v2.10.a.numberofextensions", ftypes.UINT8)
omi_siac_cqs_output_cta_v2_10_a.fields.offer_price_long = ProtoField.new("Offer Price Long", "siac.cqs.output.cta.v2.10.a.offerpricelong", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.offer_price_short = ProtoField.new("Offer Price Short", "siac.cqs.output.cta.v2.10.a.offerpriceshort", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.offer_price_upper_limit_price_band = ProtoField.new("Offer Price Upper Limit Price Band", "siac.cqs.output.cta.v2.10.a.offerpriceupperlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.offer_size_long = ProtoField.new("Offer Size Long", "siac.cqs.output.cta.v2.10.a.offersizelong", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.offer_size_short = ProtoField.new("Offer Size Short", "siac.cqs.output.cta.v2.10.a.offersizeshort", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.packet = ProtoField.new("Packet", "siac.cqs.output.cta.v2.10.a.packet", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.participant_id = ProtoField.new("Participant Id", "siac.cqs.output.cta.v2.10.a.participantid", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cqs.output.cta.v2.10.a.participantreferencenumber", ftypes.INT64)
omi_siac_cqs_output_cta_v2_10_a.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cqs.output.cta.v2.10.a.primarylistingmarketparticipantid", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.primary_listing_market_previous_closing_price = ProtoField.new("Primary Listing Market Previous Closing Price", "siac.cqs.output.cta.v2.10.a.primarylistingmarketpreviousclosingprice", ftypes.DOUBLE)
omi_siac_cqs_output_cta_v2_10_a.fields.prior_security_symbol = ProtoField.new("Prior Security Symbol", "siac.cqs.output.cta.v2.10.a.priorsecuritysymbol", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.quote = ProtoField.new("Quote", "siac.cqs.output.cta.v2.10.a.quote", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.quote_condition = ProtoField.new("Quote Condition", "siac.cqs.output.cta.v2.10.a.quotecondition", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.quote_message_type = ProtoField.new("Quote Message Type", "siac.cqs.output.cta.v2.10.a.quotemessagetype", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.reserved = ProtoField.new("Reserved", "siac.cqs.output.cta.v2.10.a.reserved", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.reserved_128 = ProtoField.new("Reserved 128", "siac.cqs.output.cta.v2.10.a.reserved128", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.reserved_62 = ProtoField.new("Reserved 62", "siac.cqs.output.cta.v2.10.a.reserved62", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "siac.cqs.output.cta.v2.10.a.retailinterestindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.cqs.output.cta.v2.10.a.retransmissionindicator", ftypes.BYTES)
omi_siac_cqs_output_cta_v2_10_a.fields.round_lot_size = ProtoField.new("Round Lot Size", "siac.cqs.output.cta.v2.10.a.roundlotsize", ftypes.UINT16)
omi_siac_cqs_output_cta_v2_10_a.fields.seconds = ProtoField.new("Seconds", "siac.cqs.output.cta.v2.10.a.seconds", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.security_status_indicator = ProtoField.new("Security Status Indicator", "siac.cqs.output.cta.v2.10.a.securitystatusindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cqs.output.cta.v2.10.a.securitysymbol", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.settlement_condition = ProtoField.new("Settlement Condition", "siac.cqs.output.cta.v2.10.a.settlementcondition", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cqs.output.cta.v2.10.a.shortsalerestrictionindicator", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.sip_block_timestamp = ProtoField.new("SIP Block Timestamp", "siac.cqs.output.cta.v2.10.a.sipblocktimestamp", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.sip_generated_message_identifier = ProtoField.new("Sip Generated Message Identifier", "siac.cqs.output.cta.v2.10.a.sipgeneratedmessageidentifier", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.test = ProtoField.new("Test", "siac.cqs.output.cta.v2.10.a.test", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.timestamp_1 = ProtoField.new("Timestamp 1", "siac.cqs.output.cta.v2.10.a.timestamp1", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.timestamp_2 = ProtoField.new("Timestamp 2", "siac.cqs.output.cta.v2.10.a.timestamp2", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.transaction_id = ProtoField.new("Transaction Id", "siac.cqs.output.cta.v2.10.a.transactionid", ftypes.UINT32)
omi_siac_cqs_output_cta_v2_10_a.fields.version = ProtoField.new("Version", "siac.cqs.output.cta.v2.10.a.version", ftypes.UINT8)

-- Siac Cqs Cta Output 2.10.a Application Messages
omi_siac_cqs_output_cta_v2_10_a.fields.auction_status_message = ProtoField.new("Auction Status Message", "siac.cqs.output.cta.v2.10.a.auctionstatusmessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.disaster_recovery_data_center_activation_message = ProtoField.new("Disaster Recovery Data Center Activation Message", "siac.cqs.output.cta.v2.10.a.disasterrecoverydatacenteractivationmessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.end_of_day_message = ProtoField.new("End Of Day Message", "siac.cqs.output.cta.v2.10.a.endofdaymessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_close_message = ProtoField.new("Finra Close Message", "siac.cqs.output.cta.v2.10.a.finraclosemessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.finra_open_message = ProtoField.new("Finra Open Message", "siac.cqs.output.cta.v2.10.a.finraopenmessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cqs.output.cta.v2.10.a.lineintegritymessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.long_quote_message = ProtoField.new("Long Quote Message", "siac.cqs.output.cta.v2.10.a.longquotemessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.market_wide_circuit_breaker_decline_level_status_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Message", "siac.cqs.output.cta.v2.10.a.marketwidecircuitbreakerdeclinelevelstatusmessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.market_wide_circuit_breaker_status_message = ProtoField.new("Market Wide Circuit Breaker Status Message", "siac.cqs.output.cta.v2.10.a.marketwidecircuitbreakerstatusmessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.reset_block_sequence_number_message = ProtoField.new("Reset Block Sequence Number Message", "siac.cqs.output.cta.v2.10.a.resetblocksequencenumbermessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.short_quote_message = ProtoField.new("Short Quote Message", "siac.cqs.output.cta.v2.10.a.shortquotemessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.special_long_quote_message = ProtoField.new("Special Long Quote Message", "siac.cqs.output.cta.v2.10.a.speciallongquotemessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cqs.output.cta.v2.10.a.startofdaymessage", ftypes.STRING)
omi_siac_cqs_output_cta_v2_10_a.fields.symbol_reference_data_message = ProtoField.new("Symbol Reference Data Message", "siac.cqs.output.cta.v2.10.a.symbolreferencedatamessage", ftypes.STRING)

-- Siac Cqs Output Cta 2.10.a generated fields
omi_siac_cqs_output_cta_v2_10_a.fields.message_index = ProtoField.new("Message Index", "siac.cqs.output.cta.v2.10.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Cqs Output Cta 2.10.a Element Dissection Options
show.administrative = true
show.application_messages = true
show.block_header = true
show.control = true
show.market_status = true
show.message = true
show.national_best_bid_and_offer_long_appendage = true
show.national_best_bid_and_offer_short_appendage = true
show.national_best_bid_long_appendage = true
show.national_best_bid_short_appendage = true
show.national_best_offer_long_appendage = true
show.national_best_offer_short_appendage = true
show.packet = true
show.quote = true
show.sip_block_timestamp = true
show.timestamp_1 = true
show.timestamp_2 = true
show.message_index = true

-- Register Siac Cqs Output Cta 2.10.a Show Options
omi_siac_cqs_output_cta_v2_10_a.prefs.show_administrative = Pref.bool("Show Administrative", show.administrative, "Parse and add Administrative to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_control = Pref.bool("Show Control", show.control, "Parse and add Control to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_market_status = Pref.bool("Show Market Status", show.market_status, "Parse and add Market Status to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_and_offer_long_appendage = Pref.bool("Show National Best Bid And Offer Long Appendage", show.national_best_bid_and_offer_long_appendage, "Parse and add National Best Bid And Offer Long Appendage to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_and_offer_short_appendage = Pref.bool("Show National Best Bid And Offer Short Appendage", show.national_best_bid_and_offer_short_appendage, "Parse and add National Best Bid And Offer Short Appendage to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_long_appendage = Pref.bool("Show National Best Bid Long Appendage", show.national_best_bid_long_appendage, "Parse and add National Best Bid Long Appendage to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_short_appendage = Pref.bool("Show National Best Bid Short Appendage", show.national_best_bid_short_appendage, "Parse and add National Best Bid Short Appendage to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_offer_long_appendage = Pref.bool("Show National Best Offer Long Appendage", show.national_best_offer_long_appendage, "Parse and add National Best Offer Long Appendage to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_offer_short_appendage = Pref.bool("Show National Best Offer Short Appendage", show.national_best_offer_short_appendage, "Parse and add National Best Offer Short Appendage to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_quote = Pref.bool("Show Quote", show.quote, "Parse and add Quote to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_sip_block_timestamp = Pref.bool("Show SIP Block Timestamp", show.sip_block_timestamp, "Parse and add SIP Block Timestamp to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_timestamp_1 = Pref.bool("Show Timestamp 1", show.timestamp_1, "Parse and add Timestamp 1 to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_timestamp_2 = Pref.bool("Show Timestamp 2", show.timestamp_2, "Parse and add Timestamp 2 to protocol tree")
omi_siac_cqs_output_cta_v2_10_a.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_siac_cqs_output_cta_v2_10_a.prefs_changed()

  -- Check if show options have changed
  if show.administrative ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_administrative then
    show.administrative = omi_siac_cqs_output_cta_v2_10_a.prefs.show_administrative
  end
  if show.application_messages ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_application_messages then
    show.application_messages = omi_siac_cqs_output_cta_v2_10_a.prefs.show_application_messages
  end
  if show.block_header ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_block_header then
    show.block_header = omi_siac_cqs_output_cta_v2_10_a.prefs.show_block_header
  end
  if show.control ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_control then
    show.control = omi_siac_cqs_output_cta_v2_10_a.prefs.show_control
  end
  if show.market_status ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_market_status then
    show.market_status = omi_siac_cqs_output_cta_v2_10_a.prefs.show_market_status
  end
  if show.message ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_message then
    show.message = omi_siac_cqs_output_cta_v2_10_a.prefs.show_message
  end
  if show.national_best_bid_and_offer_long_appendage ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_and_offer_long_appendage then
    show.national_best_bid_and_offer_long_appendage = omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_and_offer_long_appendage
  end
  if show.national_best_bid_and_offer_short_appendage ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_and_offer_short_appendage then
    show.national_best_bid_and_offer_short_appendage = omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_and_offer_short_appendage
  end
  if show.national_best_bid_long_appendage ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_long_appendage then
    show.national_best_bid_long_appendage = omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_long_appendage
  end
  if show.national_best_bid_short_appendage ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_short_appendage then
    show.national_best_bid_short_appendage = omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_bid_short_appendage
  end
  if show.national_best_offer_long_appendage ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_offer_long_appendage then
    show.national_best_offer_long_appendage = omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_offer_long_appendage
  end
  if show.national_best_offer_short_appendage ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_offer_short_appendage then
    show.national_best_offer_short_appendage = omi_siac_cqs_output_cta_v2_10_a.prefs.show_national_best_offer_short_appendage
  end
  if show.packet ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_packet then
    show.packet = omi_siac_cqs_output_cta_v2_10_a.prefs.show_packet
  end
  if show.quote ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_quote then
    show.quote = omi_siac_cqs_output_cta_v2_10_a.prefs.show_quote
  end
  if show.sip_block_timestamp ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = omi_siac_cqs_output_cta_v2_10_a.prefs.show_sip_block_timestamp
  end
  if show.timestamp_1 ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_timestamp_1 then
    show.timestamp_1 = omi_siac_cqs_output_cta_v2_10_a.prefs.show_timestamp_1
  end
  if show.timestamp_2 ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_timestamp_2 then
    show.timestamp_2 = omi_siac_cqs_output_cta_v2_10_a.prefs.show_timestamp_2
  end
  if show.message_index ~= omi_siac_cqs_output_cta_v2_10_a.prefs.show_message_index then
    show.message_index = omi_siac_cqs_output_cta_v2_10_a.prefs.show_message_index
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
-- Siac Cqs Output Cta 2.10.a Fields
-----------------------------------------------------------------------

-- Administrative Message Type
siac_cqs_output_cta_v2_10_a.administrative_message_type = {}

-- Size: Administrative Message Type
siac_cqs_output_cta_v2_10_a.administrative_message_type.size = 1

-- Display: Administrative Message Type
siac_cqs_output_cta_v2_10_a.administrative_message_type.display = function(value)
  if value == "S" then
    return "Administrative Message Type: Symbol Reference Data (S)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
siac_cqs_output_cta_v2_10_a.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price = {}

-- Size: Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.size = 8

-- Display: Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.display = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
siac_cqs_output_cta_v2_10_a.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.size = 8

-- Display: Auction Collar Reference Price
siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price = {}

-- Size: Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.size = 8

-- Display: Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.display = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Best Bid Participant Id
siac_cqs_output_cta_v2_10_a.best_bid_participant_id = {}

-- Size: Best Bid Participant Id
siac_cqs_output_cta_v2_10_a.best_bid_participant_id.size = 1

-- Display: Best Bid Participant Id
siac_cqs_output_cta_v2_10_a.best_bid_participant_id.display = function(value)
  return "Best Bid Participant Id: "..value
end

-- Dissect: Best Bid Participant Id
siac_cqs_output_cta_v2_10_a.best_bid_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_bid_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.best_bid_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- Best Bid Price Long
siac_cqs_output_cta_v2_10_a.best_bid_price_long = {}

-- Size: Best Bid Price Long
siac_cqs_output_cta_v2_10_a.best_bid_price_long.size = 8

-- Display: Best Bid Price Long
siac_cqs_output_cta_v2_10_a.best_bid_price_long.display = function(value)
  return "Best Bid Price Long: "..value
end

-- Translate: Best Bid Price Long
siac_cqs_output_cta_v2_10_a.best_bid_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Bid Price Long
siac_cqs_output_cta_v2_10_a.best_bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.best_bid_price_long.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.best_bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_price_long, range, value, display)

  return offset + length, value
end

-- Best Bid Price Short
siac_cqs_output_cta_v2_10_a.best_bid_price_short = {}

-- Size: Best Bid Price Short
siac_cqs_output_cta_v2_10_a.best_bid_price_short.size = 2

-- Display: Best Bid Price Short
siac_cqs_output_cta_v2_10_a.best_bid_price_short.display = function(value)
  return "Best Bid Price Short: "..value
end

-- Translate: Best Bid Price Short
siac_cqs_output_cta_v2_10_a.best_bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Best Bid Price Short
siac_cqs_output_cta_v2_10_a.best_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_output_cta_v2_10_a.best_bid_price_short.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.best_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_price_short, range, value, display)

  return offset + length, value
end

-- Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.best_bid_quote_condition = {}

-- Size: Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.size = 1

-- Display: Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.display = function(value)
  return "Best Bid Quote Condition: "..value
end

-- Dissect: Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Best Bid Size Long
siac_cqs_output_cta_v2_10_a.best_bid_size_long = {}

-- Size: Best Bid Size Long
siac_cqs_output_cta_v2_10_a.best_bid_size_long.size = 4

-- Display: Best Bid Size Long
siac_cqs_output_cta_v2_10_a.best_bid_size_long.display = function(value)
  return "Best Bid Size Long: "..value
end

-- Dissect: Best Bid Size Long
siac_cqs_output_cta_v2_10_a.best_bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.best_bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_size_long, range, value, display)

  return offset + length, value
end

-- Best Bid Size Short
siac_cqs_output_cta_v2_10_a.best_bid_size_short = {}

-- Size: Best Bid Size Short
siac_cqs_output_cta_v2_10_a.best_bid_size_short.size = 2

-- Display: Best Bid Size Short
siac_cqs_output_cta_v2_10_a.best_bid_size_short.display = function(value)
  return "Best Bid Size Short: "..value
end

-- Dissect: Best Bid Size Short
siac_cqs_output_cta_v2_10_a.best_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.best_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_bid_size_short, range, value, display)

  return offset + length, value
end

-- Best Offer Participant Id
siac_cqs_output_cta_v2_10_a.best_offer_participant_id = {}

-- Size: Best Offer Participant Id
siac_cqs_output_cta_v2_10_a.best_offer_participant_id.size = 1

-- Display: Best Offer Participant Id
siac_cqs_output_cta_v2_10_a.best_offer_participant_id.display = function(value)
  return "Best Offer Participant Id: "..value
end

-- Dissect: Best Offer Participant Id
siac_cqs_output_cta_v2_10_a.best_offer_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_offer_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.best_offer_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_participant_id, range, value, display)

  return offset + length, value
end

-- Best Offer Price Long
siac_cqs_output_cta_v2_10_a.best_offer_price_long = {}

-- Size: Best Offer Price Long
siac_cqs_output_cta_v2_10_a.best_offer_price_long.size = 8

-- Display: Best Offer Price Long
siac_cqs_output_cta_v2_10_a.best_offer_price_long.display = function(value)
  return "Best Offer Price Long: "..value
end

-- Translate: Best Offer Price Long
siac_cqs_output_cta_v2_10_a.best_offer_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Best Offer Price Long
siac_cqs_output_cta_v2_10_a.best_offer_price_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_offer_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.best_offer_price_long.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.best_offer_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_price_long, range, value, display)

  return offset + length, value
end

-- Best Offer Price Short
siac_cqs_output_cta_v2_10_a.best_offer_price_short = {}

-- Size: Best Offer Price Short
siac_cqs_output_cta_v2_10_a.best_offer_price_short.size = 2

-- Display: Best Offer Price Short
siac_cqs_output_cta_v2_10_a.best_offer_price_short.display = function(value)
  return "Best Offer Price Short: "..value
end

-- Translate: Best Offer Price Short
siac_cqs_output_cta_v2_10_a.best_offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Best Offer Price Short
siac_cqs_output_cta_v2_10_a.best_offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_output_cta_v2_10_a.best_offer_price_short.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.best_offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_price_short, range, value, display)

  return offset + length, value
end

-- Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.best_offer_quote_condition = {}

-- Size: Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.size = 1

-- Display: Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.display = function(value)
  return "Best Offer Quote Condition: "..value
end

-- Dissect: Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Best Offer Size Long
siac_cqs_output_cta_v2_10_a.best_offer_size_long = {}

-- Size: Best Offer Size Long
siac_cqs_output_cta_v2_10_a.best_offer_size_long.size = 4

-- Display: Best Offer Size Long
siac_cqs_output_cta_v2_10_a.best_offer_size_long.display = function(value)
  return "Best Offer Size Long: "..value
end

-- Dissect: Best Offer Size Long
siac_cqs_output_cta_v2_10_a.best_offer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_offer_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.best_offer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_size_long, range, value, display)

  return offset + length, value
end

-- Best Offer Size Short
siac_cqs_output_cta_v2_10_a.best_offer_size_short = {}

-- Size: Best Offer Size Short
siac_cqs_output_cta_v2_10_a.best_offer_size_short.size = 2

-- Display: Best Offer Size Short
siac_cqs_output_cta_v2_10_a.best_offer_size_short.display = function(value)
  return "Best Offer Size Short: "..value
end

-- Dissect: Best Offer Size Short
siac_cqs_output_cta_v2_10_a.best_offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.best_offer_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.best_offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.best_offer_size_short, range, value, display)

  return offset + length, value
end

-- Bid Price Long
siac_cqs_output_cta_v2_10_a.bid_price_long = {}

-- Size: Bid Price Long
siac_cqs_output_cta_v2_10_a.bid_price_long.size = 8

-- Display: Bid Price Long
siac_cqs_output_cta_v2_10_a.bid_price_long.display = function(value)
  return "Bid Price Long: "..value
end

-- Translate: Bid Price Long
siac_cqs_output_cta_v2_10_a.bid_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price Long
siac_cqs_output_cta_v2_10_a.bid_price_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.bid_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.bid_price_long.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.bid_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.bid_price_long, range, value, display)

  return offset + length, value
end

-- Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band = {}

-- Size: Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.size = 8

-- Display: Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.display = function(value)
  return "Bid Price Lower Limit Price Band: "..value
end

-- Translate: Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price Lower Limit Price Band
siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.bid_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Bid Price Short
siac_cqs_output_cta_v2_10_a.bid_price_short = {}

-- Size: Bid Price Short
siac_cqs_output_cta_v2_10_a.bid_price_short.size = 2

-- Display: Bid Price Short
siac_cqs_output_cta_v2_10_a.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
siac_cqs_output_cta_v2_10_a.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
siac_cqs_output_cta_v2_10_a.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_output_cta_v2_10_a.bid_price_short.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size Long
siac_cqs_output_cta_v2_10_a.bid_size_long = {}

-- Size: Bid Size Long
siac_cqs_output_cta_v2_10_a.bid_size_long.size = 4

-- Display: Bid Size Long
siac_cqs_output_cta_v2_10_a.bid_size_long.display = function(value)
  return "Bid Size Long: "..value
end

-- Dissect: Bid Size Long
siac_cqs_output_cta_v2_10_a.bid_size_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.bid_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.bid_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.bid_size_long, range, value, display)

  return offset + length, value
end

-- Bid Size Short
siac_cqs_output_cta_v2_10_a.bid_size_short = {}

-- Size: Bid Size Short
siac_cqs_output_cta_v2_10_a.bid_size_short.size = 2

-- Display: Bid Size Short
siac_cqs_output_cta_v2_10_a.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
siac_cqs_output_cta_v2_10_a.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Block Checksum
siac_cqs_output_cta_v2_10_a.block_checksum = {}

-- Size: Block Checksum
siac_cqs_output_cta_v2_10_a.block_checksum.size = 2

-- Display: Block Checksum
siac_cqs_output_cta_v2_10_a.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cqs_output_cta_v2_10_a.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Block Pad Byte
siac_cqs_output_cta_v2_10_a.block_pad_byte = {}

-- Size: Block Pad Byte
siac_cqs_output_cta_v2_10_a.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_cqs_output_cta_v2_10_a.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cqs_output_cta_v2_10_a.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_cqs_output_cta_v2_10_a.block_sequence_number = {}

-- Size: Block Sequence Number
siac_cqs_output_cta_v2_10_a.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_cqs_output_cta_v2_10_a.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cqs_output_cta_v2_10_a.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_cqs_output_cta_v2_10_a.block_size = {}

-- Size: Block Size
siac_cqs_output_cta_v2_10_a.block_size.size = 2

-- Display: Block Size
siac_cqs_output_cta_v2_10_a.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cqs_output_cta_v2_10_a.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.block_size, range, value, display)

  return offset + length, value
end

-- Consolidated Closing Price
siac_cqs_output_cta_v2_10_a.consolidated_closing_price = {}

-- Size: Consolidated Closing Price
siac_cqs_output_cta_v2_10_a.consolidated_closing_price.size = 8

-- Display: Consolidated Closing Price
siac_cqs_output_cta_v2_10_a.consolidated_closing_price.display = function(value)
  return "Consolidated Closing Price: "..value
end

-- Translate: Consolidated Closing Price
siac_cqs_output_cta_v2_10_a.consolidated_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Closing Price
siac_cqs_output_cta_v2_10_a.consolidated_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.consolidated_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.consolidated_closing_price.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.consolidated_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.consolidated_closing_price, range, value, display)

  return offset + length, value
end

-- Control Message Type
siac_cqs_output_cta_v2_10_a.control_message_type = {}

-- Size: Control Message Type
siac_cqs_output_cta_v2_10_a.control_message_type.size = 1

-- Display: Control Message Type
siac_cqs_output_cta_v2_10_a.control_message_type.display = function(value)
  if value == "A" then
    return "Control Message Type: Start Of Day (A)"
  end
  if value == "C" then
    return "Control Message Type: Finra Close (C)"
  end
  if value == "L" then
    return "Control Message Type: Reset Block Sequence Number (L)"
  end
  if value == "O" then
    return "Control Message Type: Finra Open (O)"
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
siac_cqs_output_cta_v2_10_a.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Data Feed Indicator
siac_cqs_output_cta_v2_10_a.data_feed_indicator = {}

-- Size: Data Feed Indicator
siac_cqs_output_cta_v2_10_a.data_feed_indicator.size = 1

-- Display: Data Feed Indicator
siac_cqs_output_cta_v2_10_a.data_feed_indicator.display = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
siac_cqs_output_cta_v2_10_a.data_feed_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.data_feed_indicator.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = siac_cqs_output_cta_v2_10_a.data_feed_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
siac_cqs_output_cta_v2_10_a.financial_status_indicator = {}

-- Size: Financial Status Indicator
siac_cqs_output_cta_v2_10_a.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
siac_cqs_output_cta_v2_10_a.financial_status_indicator.display = function(value)
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
siac_cqs_output_cta_v2_10_a.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Finra Bbo Indicator
siac_cqs_output_cta_v2_10_a.finra_bbo_indicator = {}

-- Size: Finra Bbo Indicator
siac_cqs_output_cta_v2_10_a.finra_bbo_indicator.size = 1

-- Display: Finra Bbo Indicator
siac_cqs_output_cta_v2_10_a.finra_bbo_indicator.display = function(value)
  if value == " " then
    return "Finra Bbo Indicator: Finra Bbo Indicator Not Applicable (<whitespace>)"
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
siac_cqs_output_cta_v2_10_a.finra_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.finra_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Finra Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator = {}

-- Size: Finra Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator.size = 1

-- Display: Finra Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator.display = function(value)
  if value == " " then
    return "Finra Bbo Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Bbo Luld Indicator: Finra Best Bid And Finra Best Offer Are Executable (A)"
  end
  if value == "B" then
    return "Finra Bbo Luld Indicator: Finra Best Bid Outside Price Band (B)"
  end
  if value == "C" then
    return "Finra Bbo Luld Indicator: Finra Best Offer Outside Price Band (C)"
  end
  if value == "D" then
    return "Finra Bbo Luld Indicator: Finra Best Bid And Finra Best Offer Outside Price Band (D)"
  end

  return "Finra Bbo Luld Indicator: Unknown("..value..")"
end

-- Dissect: Finra Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id = {}

-- Size: Finra Best Bid Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.size = 4

-- Display: Finra Best Bid Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.display = function(value)
  return "Finra Best Bid Market Maker Id: "..value
end

-- Dissect: Finra Best Bid Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Price
siac_cqs_output_cta_v2_10_a.finra_best_bid_price = {}

-- Size: Finra Best Bid Price
siac_cqs_output_cta_v2_10_a.finra_best_bid_price.size = 8

-- Display: Finra Best Bid Price
siac_cqs_output_cta_v2_10_a.finra_best_bid_price.display = function(value)
  return "Finra Best Bid Price: "..value
end

-- Translate: Finra Best Bid Price
siac_cqs_output_cta_v2_10_a.finra_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Bid Price
siac_cqs_output_cta_v2_10_a.finra_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.finra_best_bid_price.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.finra_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_price, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition = {}

-- Size: Finra Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition.size = 1

-- Display: Finra Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition.display = function(value)
  return "Finra Best Bid Quote Condition: "..value
end

-- Dissect: Finra Best Bid Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Size
siac_cqs_output_cta_v2_10_a.finra_best_bid_size = {}

-- Size: Finra Best Bid Size
siac_cqs_output_cta_v2_10_a.finra_best_bid_size.size = 4

-- Display: Finra Best Bid Size
siac_cqs_output_cta_v2_10_a.finra_best_bid_size.display = function(value)
  return "Finra Best Bid Size: "..value
end

-- Dissect: Finra Best Bid Size
siac_cqs_output_cta_v2_10_a.finra_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.finra_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_bid_size, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id = {}

-- Size: Finra Best Offer Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.size = 4

-- Display: Finra Best Offer Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.display = function(value)
  return "Finra Best Offer Market Maker Id: "..value
end

-- Dissect: Finra Best Offer Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Price
siac_cqs_output_cta_v2_10_a.finra_best_offer_price = {}

-- Size: Finra Best Offer Price
siac_cqs_output_cta_v2_10_a.finra_best_offer_price.size = 8

-- Display: Finra Best Offer Price
siac_cqs_output_cta_v2_10_a.finra_best_offer_price.display = function(value)
  return "Finra Best Offer Price: "..value
end

-- Translate: Finra Best Offer Price
siac_cqs_output_cta_v2_10_a.finra_best_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Offer Price
siac_cqs_output_cta_v2_10_a.finra_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.finra_best_offer_price.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.finra_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_price, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition = {}

-- Size: Finra Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition.size = 1

-- Display: Finra Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition.display = function(value)
  return "Finra Best Offer Quote Condition: "..value
end

-- Dissect: Finra Best Offer Quote Condition
siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Size
siac_cqs_output_cta_v2_10_a.finra_best_offer_size = {}

-- Size: Finra Best Offer Size
siac_cqs_output_cta_v2_10_a.finra_best_offer_size.size = 4

-- Display: Finra Best Offer Size
siac_cqs_output_cta_v2_10_a.finra_best_offer_size.display = function(value)
  return "Finra Best Offer Size: "..value
end

-- Dissect: Finra Best Offer Size
siac_cqs_output_cta_v2_10_a.finra_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.finra_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_best_offer_size, range, value, display)

  return offset + length, value
end

-- Finra Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_market_maker_id = {}

-- Size: Finra Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_market_maker_id.size = 4

-- Display: Finra Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_market_maker_id.display = function(value)
  return "Finra Market Maker Id: "..value
end

-- Dissect: Finra Market Maker Id
siac_cqs_output_cta_v2_10_a.finra_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.finra_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_output_cta_v2_10_a.finra_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_market_maker_id, range, value, display)

  return offset + length, value
end

-- Halt Reason
siac_cqs_output_cta_v2_10_a.halt_reason = {}

-- Size: Halt Reason
siac_cqs_output_cta_v2_10_a.halt_reason.size = 1

-- Display: Halt Reason
siac_cqs_output_cta_v2_10_a.halt_reason.display = function(value)
  return "Halt Reason: "..value
end

-- Dissect: Halt Reason
siac_cqs_output_cta_v2_10_a.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Instrument Type
siac_cqs_output_cta_v2_10_a.instrument_type = {}

-- Size: Instrument Type
siac_cqs_output_cta_v2_10_a.instrument_type.size = 1

-- Display: Instrument Type
siac_cqs_output_cta_v2_10_a.instrument_type.display = function(value)
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
siac_cqs_output_cta_v2_10_a.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Ipo
siac_cqs_output_cta_v2_10_a.ipo = {}

-- Size: Ipo
siac_cqs_output_cta_v2_10_a.ipo.size = 1

-- Display: Ipo
siac_cqs_output_cta_v2_10_a.ipo.display = function(value)
  if value == "0" then
    return "Ipo: Not An Ipo Symbol (0)"
  end
  if value == "1" then
    return "Ipo: Ipo Symbol (1)"
  end

  return "Ipo: Unknown("..value..")"
end

-- Dissect: Ipo
siac_cqs_output_cta_v2_10_a.ipo.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.ipo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.ipo.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.ipo, range, value, display)

  return offset + length, value
end

-- Limit Up Limit Down Luld Indicator
siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator = {}

-- Size: Limit Up Limit Down Luld Indicator
siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator.size = 1

-- Display: Limit Up Limit Down Luld Indicator
siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator.display = function(value)
  if value == " " then
    return "Limit Up Limit Down Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Limit Up Limit Down Luld Indicator: Bid Price Above Upper Limit Price Band (A)"
  end
  if value == "B" then
    return "Limit Up Limit Down Luld Indicator: Offer Price Below Lower Limit Price Band (B)"
  end

  return "Limit Up Limit Down Luld Indicator: Unknown("..value..")"
end

-- Dissect: Limit Up Limit Down Luld Indicator
siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.limit_up_limit_down_luld_indicator, range, value, display)

  return offset + length, value
end

-- Luld Leverage Ratio
siac_cqs_output_cta_v2_10_a.luld_leverage_ratio = {}

-- Size: Luld Leverage Ratio
siac_cqs_output_cta_v2_10_a.luld_leverage_ratio.size = 4

-- Display: Luld Leverage Ratio
siac_cqs_output_cta_v2_10_a.luld_leverage_ratio.display = function(value)
  return "Luld Leverage Ratio: "..value
end

-- Dissect: Luld Leverage Ratio
siac_cqs_output_cta_v2_10_a.luld_leverage_ratio.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.luld_leverage_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.luld_leverage_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.luld_leverage_ratio, range, value, display)

  return offset + length, value
end

-- Luld Tier
siac_cqs_output_cta_v2_10_a.luld_tier = {}

-- Size: Luld Tier
siac_cqs_output_cta_v2_10_a.luld_tier.size = 1

-- Display: Luld Tier
siac_cqs_output_cta_v2_10_a.luld_tier.display = function(value)
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
siac_cqs_output_cta_v2_10_a.luld_tier.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.luld_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.luld_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Market Condition
siac_cqs_output_cta_v2_10_a.market_condition = {}

-- Size: Market Condition
siac_cqs_output_cta_v2_10_a.market_condition.size = 1

-- Display: Market Condition
siac_cqs_output_cta_v2_10_a.market_condition.display = function(value)
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
siac_cqs_output_cta_v2_10_a.market_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.market_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.market_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Market Status Message Type
siac_cqs_output_cta_v2_10_a.market_status_message_type = {}

-- Size: Market Status Message Type
siac_cqs_output_cta_v2_10_a.market_status_message_type.size = 1

-- Display: Market Status Message Type
siac_cqs_output_cta_v2_10_a.market_status_message_type.display = function(value)
  if value == "K" then
    return "Market Status Message Type: Market Wide Circuit Breaker Decline Level Status (K)"
  end
  if value == "L" then
    return "Market Status Message Type: Market Wide Circuit Breaker Status (L)"
  end

  return "Market Status Message Type: Unknown("..value..")"
end

-- Dissect: Market Status Message Type
siac_cqs_output_cta_v2_10_a.market_status_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.market_status_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.market_status_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.market_status_message_type, range, value, display)

  return offset + length, value
end

-- Market Wide Circuit Breaker Level Indicator
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator = {}

-- Size: Market Wide Circuit Breaker Level Indicator
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator.size = 1

-- Display: Market Wide Circuit Breaker Level Indicator
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator.display = function(value)
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
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.market_wide_circuit_breaker_level_indicator, range, value, display)

  return offset + length, value
end

-- Message Category
siac_cqs_output_cta_v2_10_a.message_category = {}

-- Size: Message Category
siac_cqs_output_cta_v2_10_a.message_category.size = 1

-- Display: Message Category
siac_cqs_output_cta_v2_10_a.message_category.display = function(value)
  if value == "A" then
    return "Message Category: Administrative (A)"
  end
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
siac_cqs_output_cta_v2_10_a.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Id
siac_cqs_output_cta_v2_10_a.message_id = {}

-- Size: Message Id
siac_cqs_output_cta_v2_10_a.message_id.size = 1

-- Display: Message Id
siac_cqs_output_cta_v2_10_a.message_id.display = function(value)
  return "Message Id: "..value
end

-- Dissect: Message Id
siac_cqs_output_cta_v2_10_a.message_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.message_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.message_id, range, value, display)

  return offset + length, value
end

-- Message Length
siac_cqs_output_cta_v2_10_a.message_length = {}

-- Size: Message Length
siac_cqs_output_cta_v2_10_a.message_length.size = 2

-- Display: Message Length
siac_cqs_output_cta_v2_10_a.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cqs_output_cta_v2_10_a.message_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.message_length, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_cqs_output_cta_v2_10_a.messages_in_block = {}

-- Size: Messages In Block
siac_cqs_output_cta_v2_10_a.messages_in_block.size = 1

-- Display: Messages In Block
siac_cqs_output_cta_v2_10_a.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cqs_output_cta_v2_10_a.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
siac_cqs_output_cta_v2_10_a.mwcb_level_1 = {}

-- Size: Mwcb Level 1
siac_cqs_output_cta_v2_10_a.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
siac_cqs_output_cta_v2_10_a.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
siac_cqs_output_cta_v2_10_a.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_output_cta_v2_10_a.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
siac_cqs_output_cta_v2_10_a.mwcb_level_2 = {}

-- Size: Mwcb Level 2
siac_cqs_output_cta_v2_10_a.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
siac_cqs_output_cta_v2_10_a.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
siac_cqs_output_cta_v2_10_a.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_output_cta_v2_10_a.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
siac_cqs_output_cta_v2_10_a.mwcb_level_3 = {}

-- Size: Mwcb Level 3
siac_cqs_output_cta_v2_10_a.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
siac_cqs_output_cta_v2_10_a.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
siac_cqs_output_cta_v2_10_a.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_output_cta_v2_10_a.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_cqs_output_cta_v2_10_a.nanoseconds = {}

-- Size: Nanoseconds
siac_cqs_output_cta_v2_10_a.nanoseconds.size = 4

-- Display: Nanoseconds
siac_cqs_output_cta_v2_10_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cqs_output_cta_v2_10_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- National Bbo Indicator
siac_cqs_output_cta_v2_10_a.national_bbo_indicator = {}

-- Size: National Bbo Indicator
siac_cqs_output_cta_v2_10_a.national_bbo_indicator.size = 1

-- Display: National Bbo Indicator
siac_cqs_output_cta_v2_10_a.national_bbo_indicator.display = function(value)
  if value == " " then
    return "National Bbo Indicator: Quote Not Included In Bbo (<whitespace>)"
  end
  if value == "A" then
    return "National Bbo Indicator: No Best Bid Change No Best Offer Change (A)"
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
siac_cqs_output_cta_v2_10_a.national_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.national_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.national_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_bbo_indicator, range, value, display)

  return offset + length, value
end

-- National Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator = {}

-- Size: National Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.size = 1

-- Display: National Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.display = function(value)
  if value == " " then
    return "National Bbo Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "National Bbo Luld Indicator: National Best Bid Andor National Best Offer Are Executable (A)"
  end
  if value == "B" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band (B)"
  end
  if value == "C" then
    return "National Bbo Luld Indicator: National Best Offer Above Upper Limit Price Band (C)"
  end
  if value == "D" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower And National Best Offer Above Upper Limit Price Band (D)"
  end
  if value == "E" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band (E)"
  end
  if value == "F" then
    return "National Bbo Luld Indicator: National Best Offer Equals Lower Limit Price Band (F)"
  end
  if value == "G" then
    return "National Bbo Luld Indicator: National Best Bid In Limit State And National Best Offer Non Executable (G)"
  end
  if value == "H" then
    return "National Bbo Luld Indicator: National Best Bid Non Executable And National Best Offer In Limit State (H)"
  end
  if value == "I" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper And National Best Offer Equals Lower Limit Price Band (I)"
  end

  return "National Bbo Luld Indicator: Unknown("..value..")"
end

-- Dissect: National Bbo Luld Indicator
siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Number Of Extensions
siac_cqs_output_cta_v2_10_a.number_of_extensions = {}

-- Size: Number Of Extensions
siac_cqs_output_cta_v2_10_a.number_of_extensions.size = 1

-- Display: Number Of Extensions
siac_cqs_output_cta_v2_10_a.number_of_extensions.display = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cqs_output_cta_v2_10_a.number_of_extensions.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.number_of_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.number_of_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Offer Price Long
siac_cqs_output_cta_v2_10_a.offer_price_long = {}

-- Size: Offer Price Long
siac_cqs_output_cta_v2_10_a.offer_price_long.size = 8

-- Display: Offer Price Long
siac_cqs_output_cta_v2_10_a.offer_price_long.display = function(value)
  return "Offer Price Long: "..value
end

-- Translate: Offer Price Long
siac_cqs_output_cta_v2_10_a.offer_price_long.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price Long
siac_cqs_output_cta_v2_10_a.offer_price_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.offer_price_long.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.offer_price_long.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.offer_price_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.offer_price_long, range, value, display)

  return offset + length, value
end

-- Offer Price Short
siac_cqs_output_cta_v2_10_a.offer_price_short = {}

-- Size: Offer Price Short
siac_cqs_output_cta_v2_10_a.offer_price_short.size = 2

-- Display: Offer Price Short
siac_cqs_output_cta_v2_10_a.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
siac_cqs_output_cta_v2_10_a.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
siac_cqs_output_cta_v2_10_a.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_output_cta_v2_10_a.offer_price_short.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band = {}

-- Size: Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.size = 8

-- Display: Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.display = function(value)
  return "Offer Price Upper Limit Price Band: "..value
end

-- Translate: Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price Upper Limit Price Band
siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.offer_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Offer Size Long
siac_cqs_output_cta_v2_10_a.offer_size_long = {}

-- Size: Offer Size Long
siac_cqs_output_cta_v2_10_a.offer_size_long.size = 4

-- Display: Offer Size Long
siac_cqs_output_cta_v2_10_a.offer_size_long.display = function(value)
  return "Offer Size Long: "..value
end

-- Dissect: Offer Size Long
siac_cqs_output_cta_v2_10_a.offer_size_long.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.offer_size_long.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.offer_size_long.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.offer_size_long, range, value, display)

  return offset + length, value
end

-- Offer Size Short
siac_cqs_output_cta_v2_10_a.offer_size_short = {}

-- Size: Offer Size Short
siac_cqs_output_cta_v2_10_a.offer_size_short.size = 2

-- Display: Offer Size Short
siac_cqs_output_cta_v2_10_a.offer_size_short.display = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
siac_cqs_output_cta_v2_10_a.offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.offer_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Participant Id
siac_cqs_output_cta_v2_10_a.participant_id = {}

-- Size: Participant Id
siac_cqs_output_cta_v2_10_a.participant_id.size = 1

-- Display: Participant Id
siac_cqs_output_cta_v2_10_a.participant_id.display = function(value)
  if value == "A" then
    return "Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Participant Id: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Participant Id: Finra Adf (D)"
  end
  if value == "G" then
    return "Participant Id: 24 X (G)"
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
    return "Participant Id: Nyse Texas (M)"
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
    return "Participant Id: Nasdaq Omx Psx (X)"
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
siac_cqs_output_cta_v2_10_a.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Reference Number
siac_cqs_output_cta_v2_10_a.participant_reference_number = {}

-- Size: Participant Reference Number
siac_cqs_output_cta_v2_10_a.participant_reference_number.size = 8

-- Display: Participant Reference Number
siac_cqs_output_cta_v2_10_a.participant_reference_number.display = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_output_cta_v2_10_a.participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Participant Id
siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id = {}

-- Size: Primary Listing Market Participant Id
siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.size = 1

-- Display: Primary Listing Market Participant Id
siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.display = function(value)
  if value == " " then
    return "Primary Listing Market Participant Id: Primary Listing Market Participant Id Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Primary Listing Market Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Primary Listing Market Participant Id: Nasdaq Omx Bx (B)"
  end
  if value == "C" then
    return "Primary Listing Market Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "Primary Listing Market Participant Id: Finra Adf (D)"
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
siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Previous Closing Price
siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price = {}

-- Size: Primary Listing Market Previous Closing Price
siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.size = 8

-- Display: Primary Listing Market Previous Closing Price
siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.display = function(value)
  return "Primary Listing Market Previous Closing Price: "..value
end

-- Translate: Primary Listing Market Previous Closing Price
siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Primary Listing Market Previous Closing Price
siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.translate(raw)
  local display = siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.primary_listing_market_previous_closing_price, range, value, display)

  return offset + length, value
end

-- Prior Security Symbol
siac_cqs_output_cta_v2_10_a.prior_security_symbol = {}

-- Size: Prior Security Symbol
siac_cqs_output_cta_v2_10_a.prior_security_symbol.size = 11

-- Display: Prior Security Symbol
siac_cqs_output_cta_v2_10_a.prior_security_symbol.display = function(value)
  return "Prior Security Symbol: "..value
end

-- Dissect: Prior Security Symbol
siac_cqs_output_cta_v2_10_a.prior_security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.prior_security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_output_cta_v2_10_a.prior_security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.prior_security_symbol, range, value, display)

  return offset + length, value
end

-- Quote Condition
siac_cqs_output_cta_v2_10_a.quote_condition = {}

-- Size: Quote Condition
siac_cqs_output_cta_v2_10_a.quote_condition.size = 1

-- Display: Quote Condition
siac_cqs_output_cta_v2_10_a.quote_condition.display = function(value)
  if value == " " then
    return "Quote Condition: Quote Condition Not Applicable (<whitespace>)"
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
    return "Quote Condition: Regular (R)"
  end
  if value == "U" then
    return "Quote Condition: Slow Quote Due To Lrp Or Gap Quote On Both Sides (U)"
  end
  if value == "W" then
    return "Quote Condition: Slow Quote Due To Set Slow List On Both Sides (W)"
  end
  if value == "4" then
    return "Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
siac_cqs_output_cta_v2_10_a.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Message Type
siac_cqs_output_cta_v2_10_a.quote_message_type = {}

-- Size: Quote Message Type
siac_cqs_output_cta_v2_10_a.quote_message_type.size = 1

-- Display: Quote Message Type
siac_cqs_output_cta_v2_10_a.quote_message_type.display = function(value)
  if value == "A" then
    return "Quote Message Type: Auction Status (A)"
  end
  if value == "L" then
    return "Quote Message Type: Long Quote (L)"
  end
  if value == "Q" then
    return "Quote Message Type: Short Quote (Q)"
  end
  if value == "S" then
    return "Quote Message Type: Special Long Quote (S)"
  end

  return "Quote Message Type: Unknown("..value..")"
end

-- Dissect: Quote Message Type
siac_cqs_output_cta_v2_10_a.quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Reserved
siac_cqs_output_cta_v2_10_a.reserved = {}

-- Size: Reserved
siac_cqs_output_cta_v2_10_a.reserved.size = 1

-- Display: Reserved
siac_cqs_output_cta_v2_10_a.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cqs_output_cta_v2_10_a.reserved.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 128
siac_cqs_output_cta_v2_10_a.reserved_128 = {}

-- Size: Reserved 128
siac_cqs_output_cta_v2_10_a.reserved_128.size = 128

-- Display: Reserved 128
siac_cqs_output_cta_v2_10_a.reserved_128.display = function(value)
  return "Reserved 128: "..value
end

-- Dissect: Reserved 128
siac_cqs_output_cta_v2_10_a.reserved_128.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.reserved_128.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_output_cta_v2_10_a.reserved_128.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.reserved_128, range, value, display)

  return offset + length, value
end

-- Reserved 62
siac_cqs_output_cta_v2_10_a.reserved_62 = {}

-- Size: Reserved 62
siac_cqs_output_cta_v2_10_a.reserved_62.size = 62

-- Display: Reserved 62
siac_cqs_output_cta_v2_10_a.reserved_62.display = function(value)
  return "Reserved 62: "..value
end

-- Dissect: Reserved 62
siac_cqs_output_cta_v2_10_a.reserved_62.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.reserved_62.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_output_cta_v2_10_a.reserved_62.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.reserved_62, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
siac_cqs_output_cta_v2_10_a.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
siac_cqs_output_cta_v2_10_a.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
siac_cqs_output_cta_v2_10_a.retail_interest_indicator.display = function(value)
  if value == " " then
    return "Retail Interest Indicator: Retail Interest Indicator Not Applicable (<whitespace>)"
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
siac_cqs_output_cta_v2_10_a.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Retransmission Indicator
siac_cqs_output_cta_v2_10_a.retransmission_indicator = {}

-- Size: Retransmission Indicator
siac_cqs_output_cta_v2_10_a.retransmission_indicator.size = 1

-- Display: Retransmission Indicator
siac_cqs_output_cta_v2_10_a.retransmission_indicator.display = function(value)
  return "Retransmission Indicator: "..value
end

-- Dissect: Retransmission Indicator
siac_cqs_output_cta_v2_10_a.retransmission_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.retransmission_indicator.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = siac_cqs_output_cta_v2_10_a.retransmission_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
siac_cqs_output_cta_v2_10_a.round_lot_size = {}

-- Size: Round Lot Size
siac_cqs_output_cta_v2_10_a.round_lot_size.size = 2

-- Display: Round Lot Size
siac_cqs_output_cta_v2_10_a.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
siac_cqs_output_cta_v2_10_a.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Seconds
siac_cqs_output_cta_v2_10_a.seconds = {}

-- Size: Seconds
siac_cqs_output_cta_v2_10_a.seconds.size = 4

-- Display: Seconds
siac_cqs_output_cta_v2_10_a.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cqs_output_cta_v2_10_a.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status Indicator
siac_cqs_output_cta_v2_10_a.security_status_indicator = {}

-- Size: Security Status Indicator
siac_cqs_output_cta_v2_10_a.security_status_indicator.size = 1

-- Display: Security Status Indicator
siac_cqs_output_cta_v2_10_a.security_status_indicator.display = function(value)
  if value == " " then
    return "Security Status Indicator: Security Status Indicator Not Applicable (<whitespace>)"
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
  if value == "E" then
    return "Security Status Indicator: Merger Effective (E)"
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
    return "Security Status Indicator: Limit Up Limit Down Trading Pause (M)"
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
    return "Security Status Indicator: Reserved (Z)"
  end
  if value == "0" then
    return "Security Status Indicator: Limit Up Limit Down Price Band (0)"
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
    return "Security Status Indicator: Republished Limit Up Limit Down Price Band (9)"
  end

  return "Security Status Indicator: Unknown("..value..")"
end

-- Dissect: Security Status Indicator
siac_cqs_output_cta_v2_10_a.security_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.security_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.security_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.security_status_indicator, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_cqs_output_cta_v2_10_a.security_symbol = {}

-- Size: Security Symbol
siac_cqs_output_cta_v2_10_a.security_symbol.size = 11

-- Display: Security Symbol
siac_cqs_output_cta_v2_10_a.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cqs_output_cta_v2_10_a.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_output_cta_v2_10_a.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Settlement Condition
siac_cqs_output_cta_v2_10_a.settlement_condition = {}

-- Size: Settlement Condition
siac_cqs_output_cta_v2_10_a.settlement_condition.size = 1

-- Display: Settlement Condition
siac_cqs_output_cta_v2_10_a.settlement_condition.display = function(value)
  if value == " " then
    return "Settlement Condition: Regular Way Settlement (<whitespace>)"
  end
  if value == "A" then
    return "Settlement Condition: Cash Settlement (A)"
  end
  if value == "B" then
    return "Settlement Condition: Next Day Settlement (B)"
  end

  return "Settlement Condition: Unknown("..value..")"
end

-- Dissect: Settlement Condition
siac_cqs_output_cta_v2_10_a.settlement_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.settlement_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.settlement_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.settlement_condition, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction Indicator
siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator = {}

-- Size: Short Sale Restriction Indicator
siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.size = 1

-- Display: Short Sale Restriction Indicator
siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.display = function(value)
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
siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Sip Generated Message Identifier
siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier = {}

-- Size: Sip Generated Message Identifier
siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.size = 1

-- Display: Sip Generated Message Identifier
siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.display = function(value)
  if value == " " then
    return "Sip Generated Message Identifier: Sip Generated Message Not Applicable (<whitespace>)"
  end
  if value == "S" then
    return "Sip Generated Message Identifier: Consolidated Quotation System (S)"
  end

  return "Sip Generated Message Identifier: Unknown("..value..")"
end

-- Dissect: Sip Generated Message Identifier
siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.sip_generated_message_identifier, range, value, display)

  return offset + length, value
end

-- Test
siac_cqs_output_cta_v2_10_a.test = {}

-- Size: Test
siac_cqs_output_cta_v2_10_a.test.size = 1

-- Display: Test
siac_cqs_output_cta_v2_10_a.test.display = function(value)
  if value == "0" then
    return "Test: Not A Test Symbol (0)"
  end
  if value == "1" then
    return "Test: Test Symbol (1)"
  end

  return "Test: Unknown("..value..")"
end

-- Dissect: Test
siac_cqs_output_cta_v2_10_a.test.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.test.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_output_cta_v2_10_a.test.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.test, range, value, display)

  return offset + length, value
end

-- Transaction Id
siac_cqs_output_cta_v2_10_a.transaction_id = {}

-- Size: Transaction Id
siac_cqs_output_cta_v2_10_a.transaction_id.size = 4

-- Display: Transaction Id
siac_cqs_output_cta_v2_10_a.transaction_id.display = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
siac_cqs_output_cta_v2_10_a.transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.transaction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Version
siac_cqs_output_cta_v2_10_a.version = {}

-- Size: Version
siac_cqs_output_cta_v2_10_a.version.size = 1

-- Display: Version
siac_cqs_output_cta_v2_10_a.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cqs_output_cta_v2_10_a.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_output_cta_v2_10_a.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_output_cta_v2_10_a.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Siac Cqs Output Cta 2.10.a
-----------------------------------------------------------------------

-- National Best Bid And Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage = {}

-- Size: National Best Bid And Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.size =
  siac_cqs_output_cta_v2_10_a.best_bid_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_price_short.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_size_short.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_price_short.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_size_short.size

-- Display: National Best Bid And Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Best Bid And Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: Char
  index, best_bid_participant_id = siac_cqs_output_cta_v2_10_a.best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- Best Bid Price Short: Short
  index, best_bid_price_short = siac_cqs_output_cta_v2_10_a.best_bid_price_short.dissect(buffer, index, packet, parent)

  -- Best Bid Size Short: Short
  index, best_bid_size_short = siac_cqs_output_cta_v2_10_a.best_bid_size_short.dissect(buffer, index, packet, parent)

  -- Best Offer Participant Id: Char
  index, best_offer_participant_id = siac_cqs_output_cta_v2_10_a.best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- Best Offer Price Short: Short
  index, best_offer_price_short = siac_cqs_output_cta_v2_10_a.best_offer_price_short.dissect(buffer, index, packet, parent)

  -- Best Offer Size Short: Short
  index, best_offer_size_short = siac_cqs_output_cta_v2_10_a.best_offer_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Bid And Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.dissect = function(buffer, offset, packet, parent)
  if show.national_best_bid_and_offer_short_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_and_offer_short_appendage, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Best Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage = {}

-- Size: National Best Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.size =
  siac_cqs_output_cta_v2_10_a.best_offer_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_price_short.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_size_short.size

-- Display: National Best Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Best Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Offer Participant Id: Char
  index, best_offer_participant_id = siac_cqs_output_cta_v2_10_a.best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- Best Offer Price Short: Short
  index, best_offer_price_short = siac_cqs_output_cta_v2_10_a.best_offer_price_short.dissect(buffer, index, packet, parent)

  -- Best Offer Size Short: Short
  index, best_offer_size_short = siac_cqs_output_cta_v2_10_a.best_offer_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Offer Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.dissect = function(buffer, offset, packet, parent)
  if show.national_best_offer_short_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_best_offer_short_appendage, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Best Bid Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage = {}

-- Size: National Best Bid Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.size =
  siac_cqs_output_cta_v2_10_a.best_bid_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_price_short.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_size_short.size

-- Display: National Best Bid Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Best Bid Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: Char
  index, best_bid_participant_id = siac_cqs_output_cta_v2_10_a.best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- Best Bid Price Short: Short
  index, best_bid_price_short = siac_cqs_output_cta_v2_10_a.best_bid_price_short.dissect(buffer, index, packet, parent)

  -- Best Bid Size Short: Short
  index, best_bid_size_short = siac_cqs_output_cta_v2_10_a.best_bid_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Bid Short Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.dissect = function(buffer, offset, packet, parent)
  if show.national_best_bid_short_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_short_appendage, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Best Bid And Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage = {}

-- Size: National Best Bid And Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.size =
  siac_cqs_output_cta_v2_10_a.best_bid_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_price_long.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_size_long.size + 
  siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_price_long.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_size_long.size + 
  siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.size

-- Display: National Best Bid And Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Best Bid And Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: Char
  index, best_bid_participant_id = siac_cqs_output_cta_v2_10_a.best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- Best Bid Quote Condition: Char
  index, best_bid_quote_condition = siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Best Bid Price Long: Long
  index, best_bid_price_long = siac_cqs_output_cta_v2_10_a.best_bid_price_long.dissect(buffer, index, packet, parent)

  -- Best Bid Size Long: Integer
  index, best_bid_size_long = siac_cqs_output_cta_v2_10_a.best_bid_size_long.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: Char[]
  index, finra_best_bid_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- Best Offer Participant Id: Char
  index, best_offer_participant_id = siac_cqs_output_cta_v2_10_a.best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- Best Offer Quote Condition: Char
  index, best_offer_quote_condition = siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- Best Offer Price Long: Long
  index, best_offer_price_long = siac_cqs_output_cta_v2_10_a.best_offer_price_long.dissect(buffer, index, packet, parent)

  -- Best Offer Size Long: Integer
  index, best_offer_size_long = siac_cqs_output_cta_v2_10_a.best_offer_size_long.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: Char[]
  index, finra_best_offer_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Bid And Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.dissect = function(buffer, offset, packet, parent)
  if show.national_best_bid_and_offer_long_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_and_offer_long_appendage, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Best Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage = {}

-- Size: National Best Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.size =
  siac_cqs_output_cta_v2_10_a.best_offer_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_price_long.size + 
  siac_cqs_output_cta_v2_10_a.best_offer_size_long.size + 
  siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.size

-- Display: National Best Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Best Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Offer Participant Id: Char
  index, best_offer_participant_id = siac_cqs_output_cta_v2_10_a.best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- Best Offer Quote Condition: Char
  index, best_offer_quote_condition = siac_cqs_output_cta_v2_10_a.best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- Best Offer Price Long: Long
  index, best_offer_price_long = siac_cqs_output_cta_v2_10_a.best_offer_price_long.dissect(buffer, index, packet, parent)

  -- Best Offer Size Long: Integer
  index, best_offer_size_long = siac_cqs_output_cta_v2_10_a.best_offer_size_long.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: Char[]
  index, finra_best_offer_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Offer Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.dissect = function(buffer, offset, packet, parent)
  if show.national_best_offer_long_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_best_offer_long_appendage, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.fields(buffer, offset, packet, parent)
  end
end

-- National Best Bid Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage = {}

-- Size: National Best Bid Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.size =
  siac_cqs_output_cta_v2_10_a.best_bid_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_price_long.size + 
  siac_cqs_output_cta_v2_10_a.best_bid_size_long.size + 
  siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.size

-- Display: National Best Bid Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: National Best Bid Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: Char
  index, best_bid_participant_id = siac_cqs_output_cta_v2_10_a.best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- Best Bid Quote Condition: Char
  index, best_bid_quote_condition = siac_cqs_output_cta_v2_10_a.best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Best Bid Price Long: Long
  index, best_bid_price_long = siac_cqs_output_cta_v2_10_a.best_bid_price_long.dissect(buffer, index, packet, parent)

  -- Best Bid Size Long: Integer
  index, best_bid_size_long = siac_cqs_output_cta_v2_10_a.best_bid_size_long.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: Char[]
  index, finra_best_bid_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: National Best Bid Long Appendage
siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.dissect = function(buffer, offset, packet, parent)
  if show.national_best_bid_long_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.national_best_bid_long_appendage, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp 2
siac_cqs_output_cta_v2_10_a.timestamp_2 = {}

-- Size: Timestamp 2
siac_cqs_output_cta_v2_10_a.timestamp_2.size =
  siac_cqs_output_cta_v2_10_a.seconds.size + 
  siac_cqs_output_cta_v2_10_a.nanoseconds.size

-- Display: Timestamp 2
siac_cqs_output_cta_v2_10_a.timestamp_2.display = function(packet, parent, value)
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
siac_cqs_output_cta_v2_10_a.timestamp_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_cqs_output_cta_v2_10_a.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_cqs_output_cta_v2_10_a.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local timestamp_2 = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, timestamp_2
end

-- Dissect: Timestamp 2
siac_cqs_output_cta_v2_10_a.timestamp_2.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_2 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.timestamp_2, buffer(offset, 0))
    local index, value = siac_cqs_output_cta_v2_10_a.timestamp_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.timestamp_2.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.timestamp_2.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp 1
siac_cqs_output_cta_v2_10_a.timestamp_1 = {}

-- Size: Timestamp 1
siac_cqs_output_cta_v2_10_a.timestamp_1.size =
  siac_cqs_output_cta_v2_10_a.seconds.size + 
  siac_cqs_output_cta_v2_10_a.nanoseconds.size

-- Display: Timestamp 1
siac_cqs_output_cta_v2_10_a.timestamp_1.display = function(packet, parent, value)
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
siac_cqs_output_cta_v2_10_a.timestamp_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_cqs_output_cta_v2_10_a.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_cqs_output_cta_v2_10_a.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local timestamp_1 = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, timestamp_1
end

-- Dissect: Timestamp 1
siac_cqs_output_cta_v2_10_a.timestamp_1.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_1 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.timestamp_1, buffer(offset, 0))
    local index, value = siac_cqs_output_cta_v2_10_a.timestamp_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.timestamp_1.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.timestamp_1.fields(buffer, offset, packet, parent)
  end
end

-- Special Long Quote Message
siac_cqs_output_cta_v2_10_a.special_long_quote_message = {}

-- Calculate size of: Special Long Quote Message
siac_cqs_output_cta_v2_10_a.special_long_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.participant_id.size

  index = index + siac_cqs_output_cta_v2_10_a.timestamp_1.size

  index = index + siac_cqs_output_cta_v2_10_a.message_id.size

  index = index + siac_cqs_output_cta_v2_10_a.transaction_id.size

  index = index + siac_cqs_output_cta_v2_10_a.participant_reference_number.size

  index = index + siac_cqs_output_cta_v2_10_a.security_symbol.size

  index = index + siac_cqs_output_cta_v2_10_a.instrument_type.size

  index = index + siac_cqs_output_cta_v2_10_a.quote_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.security_status_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.bid_price_long.size

  index = index + siac_cqs_output_cta_v2_10_a.bid_size_long.size

  index = index + siac_cqs_output_cta_v2_10_a.offer_price_long.size

  index = index + siac_cqs_output_cta_v2_10_a.offer_size_long.size

  index = index + siac_cqs_output_cta_v2_10_a.retail_interest_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.settlement_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.market_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_market_maker_id.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_bid_price.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_bid_size.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_offer_price.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_offer_size.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.size

  index = index + siac_cqs_output_cta_v2_10_a.timestamp_2.size

  index = index + siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.size

  index = index + siac_cqs_output_cta_v2_10_a.financial_status_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.national_bbo_indicator.size

  local national_bbo_indicator = buffer(offset + index - 1, 1):string()

  if national_bbo_indicator == "Q" or national_bbo_indicator == "S" or national_bbo_indicator == "W" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 19, 1):string()

  if national_bbo_indicator == "I" or national_bbo_indicator == "N" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 37, 1):string()

  if national_bbo_indicator == "U" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 73, 1):string()

  if national_bbo_indicator == "P" or national_bbo_indicator == "R" or national_bbo_indicator == "V" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 78, 1):string()

  if national_bbo_indicator == "H" or national_bbo_indicator == "M" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 83, 1):string()

  if national_bbo_indicator == "T" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.size

  end

  return index
end

-- Display: Special Long Quote Message
siac_cqs_output_cta_v2_10_a.special_long_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Long Quote Message
siac_cqs_output_cta_v2_10_a.special_long_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_output_cta_v2_10_a.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_output_cta_v2_10_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Quote Condition: Char
  index, quote_condition = siac_cqs_output_cta_v2_10_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Security Status Indicator: Char
  index, security_status_indicator = siac_cqs_output_cta_v2_10_a.security_status_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price Long: Long
  index, bid_price_long = siac_cqs_output_cta_v2_10_a.bid_price_long.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = siac_cqs_output_cta_v2_10_a.bid_size_long.dissect(buffer, index, packet, parent)

  -- Offer Price Long: Long
  index, offer_price_long = siac_cqs_output_cta_v2_10_a.offer_price_long.dissect(buffer, index, packet, parent)

  -- Offer Size Long: Integer
  index, offer_size_long = siac_cqs_output_cta_v2_10_a.offer_size_long.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: Char
  index, retail_interest_indicator = siac_cqs_output_cta_v2_10_a.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: Char
  index, settlement_condition = siac_cqs_output_cta_v2_10_a.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: Char
  index, market_condition = siac_cqs_output_cta_v2_10_a.market_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Maker Id: Char[]
  index, finra_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Quote Condition: Char
  index, finra_best_bid_quote_condition = siac_cqs_output_cta_v2_10_a.finra_best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Price: Long
  index, finra_best_bid_price = siac_cqs_output_cta_v2_10_a.finra_best_bid_price.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Size: Integer
  index, finra_best_bid_size = siac_cqs_output_cta_v2_10_a.finra_best_bid_size.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: Char[]
  index, finra_best_bid_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Quote Condition: Char
  index, finra_best_offer_quote_condition = siac_cqs_output_cta_v2_10_a.finra_best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Price: Long
  index, finra_best_offer_price = siac_cqs_output_cta_v2_10_a.finra_best_offer_price.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Size: Integer
  index, finra_best_offer_size = siac_cqs_output_cta_v2_10_a.finra_best_offer_size.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: Char[]
  index, finra_best_offer_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cqs_output_cta_v2_10_a.timestamp_2.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cqs_output_cta_v2_10_a.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Sip Generated Message Identifier: Char
  index, sip_generated_message_identifier = siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.dissect(buffer, index, packet, parent)

  -- Finra Bbo Luld Indicator: Char
  index, finra_bbo_luld_indicator = siac_cqs_output_cta_v2_10_a.finra_bbo_luld_indicator.dissect(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: Char
  index, national_bbo_luld_indicator = siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.dissect(buffer, index, packet, parent)

  -- National Bbo Indicator: Char
  index, national_bbo_indicator = siac_cqs_output_cta_v2_10_a.national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Best Bid Long Appendage
  local national_best_bid_long_appendage = nil

  local national_best_bid_long_appendage_exists = national_bbo_indicator == "Q" or national_bbo_indicator == "S" or national_bbo_indicator == "W"

  if national_best_bid_long_appendage_exists then
    index, national_best_bid_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Offer Long Appendage
  local national_best_offer_long_appendage = nil

  local national_best_offer_long_appendage_exists = national_bbo_indicator == "I" or national_bbo_indicator == "N"

  if national_best_offer_long_appendage_exists then
    index, national_best_offer_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid And Offer Long Appendage
  local national_best_bid_and_offer_long_appendage = nil

  local national_best_bid_and_offer_long_appendage_exists = national_bbo_indicator == "U"

  if national_best_bid_and_offer_long_appendage_exists then
    index, national_best_bid_and_offer_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid Short Appendage
  local national_best_bid_short_appendage = nil

  local national_best_bid_short_appendage_exists = national_bbo_indicator == "P" or national_bbo_indicator == "R" or national_bbo_indicator == "V"

  if national_best_bid_short_appendage_exists then
    index, national_best_bid_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Offer Short Appendage
  local national_best_offer_short_appendage = nil

  local national_best_offer_short_appendage_exists = national_bbo_indicator == "H" or national_bbo_indicator == "M"

  if national_best_offer_short_appendage_exists then
    index, national_best_offer_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid And Offer Short Appendage
  local national_best_bid_and_offer_short_appendage = nil

  local national_best_bid_and_offer_short_appendage_exists = national_bbo_indicator == "T"

  if national_best_bid_and_offer_short_appendage_exists then
    index, national_best_bid_and_offer_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Special Long Quote Message
siac_cqs_output_cta_v2_10_a.special_long_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.special_long_quote_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.special_long_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.special_long_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.special_long_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Quote Message
siac_cqs_output_cta_v2_10_a.short_quote_message = {}

-- Calculate size of: Short Quote Message
siac_cqs_output_cta_v2_10_a.short_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.participant_id.size

  index = index + siac_cqs_output_cta_v2_10_a.timestamp_1.size

  index = index + siac_cqs_output_cta_v2_10_a.message_id.size

  index = index + siac_cqs_output_cta_v2_10_a.transaction_id.size

  index = index + siac_cqs_output_cta_v2_10_a.participant_reference_number.size

  index = index + siac_cqs_output_cta_v2_10_a.security_symbol.size

  index = index + siac_cqs_output_cta_v2_10_a.bid_price_short.size

  index = index + siac_cqs_output_cta_v2_10_a.bid_size_short.size

  index = index + siac_cqs_output_cta_v2_10_a.offer_price_short.size

  index = index + siac_cqs_output_cta_v2_10_a.offer_size_short.size

  index = index + siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.size

  index = index + siac_cqs_output_cta_v2_10_a.national_bbo_indicator.size

  local national_bbo_indicator = buffer(offset + index - 1, 1):string()

  if national_bbo_indicator == "Q" or national_bbo_indicator == "S" or national_bbo_indicator == "W" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 19, 1):string()

  if national_bbo_indicator == "I" or national_bbo_indicator == "N" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 37, 1):string()

  if national_bbo_indicator == "U" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 73, 1):string()

  if national_bbo_indicator == "P" or national_bbo_indicator == "R" or national_bbo_indicator == "V" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 78, 1):string()

  if national_bbo_indicator == "H" or national_bbo_indicator == "M" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 83, 1):string()

  if national_bbo_indicator == "T" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.size

  end

  return index
end

-- Display: Short Quote Message
siac_cqs_output_cta_v2_10_a.short_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Quote Message
siac_cqs_output_cta_v2_10_a.short_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_output_cta_v2_10_a.security_symbol.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Short
  index, bid_price_short = siac_cqs_output_cta_v2_10_a.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Short
  index, bid_size_short = siac_cqs_output_cta_v2_10_a.bid_size_short.dissect(buffer, index, packet, parent)

  -- Offer Price Short: Short
  index, offer_price_short = siac_cqs_output_cta_v2_10_a.offer_price_short.dissect(buffer, index, packet, parent)

  -- Offer Size Short: Short
  index, offer_size_short = siac_cqs_output_cta_v2_10_a.offer_size_short.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- National Bbo Indicator: Char
  index, national_bbo_indicator = siac_cqs_output_cta_v2_10_a.national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Best Bid Long Appendage
  local national_best_bid_long_appendage = nil

  local national_best_bid_long_appendage_exists = national_bbo_indicator == "Q" or national_bbo_indicator == "S" or national_bbo_indicator == "W"

  if national_best_bid_long_appendage_exists then
    index, national_best_bid_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Offer Long Appendage
  local national_best_offer_long_appendage = nil

  local national_best_offer_long_appendage_exists = national_bbo_indicator == "I" or national_bbo_indicator == "N"

  if national_best_offer_long_appendage_exists then
    index, national_best_offer_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid And Offer Long Appendage
  local national_best_bid_and_offer_long_appendage = nil

  local national_best_bid_and_offer_long_appendage_exists = national_bbo_indicator == "U"

  if national_best_bid_and_offer_long_appendage_exists then
    index, national_best_bid_and_offer_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid Short Appendage
  local national_best_bid_short_appendage = nil

  local national_best_bid_short_appendage_exists = national_bbo_indicator == "P" or national_bbo_indicator == "R" or national_bbo_indicator == "V"

  if national_best_bid_short_appendage_exists then
    index, national_best_bid_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Offer Short Appendage
  local national_best_offer_short_appendage = nil

  local national_best_offer_short_appendage_exists = national_bbo_indicator == "H" or national_bbo_indicator == "M"

  if national_best_offer_short_appendage_exists then
    index, national_best_offer_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid And Offer Short Appendage
  local national_best_bid_and_offer_short_appendage = nil

  local national_best_bid_and_offer_short_appendage_exists = national_bbo_indicator == "T"

  if national_best_bid_and_offer_short_appendage_exists then
    index, national_best_bid_and_offer_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Short Quote Message
siac_cqs_output_cta_v2_10_a.short_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.short_quote_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.short_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.short_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.short_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Quote Message
siac_cqs_output_cta_v2_10_a.long_quote_message = {}

-- Calculate size of: Long Quote Message
siac_cqs_output_cta_v2_10_a.long_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.participant_id.size

  index = index + siac_cqs_output_cta_v2_10_a.timestamp_1.size

  index = index + siac_cqs_output_cta_v2_10_a.message_id.size

  index = index + siac_cqs_output_cta_v2_10_a.transaction_id.size

  index = index + siac_cqs_output_cta_v2_10_a.participant_reference_number.size

  index = index + siac_cqs_output_cta_v2_10_a.security_symbol.size

  index = index + siac_cqs_output_cta_v2_10_a.instrument_type.size

  index = index + siac_cqs_output_cta_v2_10_a.quote_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.security_status_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.size

  index = index + siac_cqs_output_cta_v2_10_a.bid_size_long.size

  index = index + siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.size

  index = index + siac_cqs_output_cta_v2_10_a.offer_size_long.size

  index = index + siac_cqs_output_cta_v2_10_a.retail_interest_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.settlement_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.market_condition.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_market_maker_id.size

  index = index + siac_cqs_output_cta_v2_10_a.finra_bbo_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.timestamp_2.size

  index = index + siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.size

  index = index + siac_cqs_output_cta_v2_10_a.financial_status_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.size

  index = index + siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.size

  index = index + siac_cqs_output_cta_v2_10_a.national_bbo_indicator.size

  local national_bbo_indicator = buffer(offset + index - 1, 1):string()

  if national_bbo_indicator == "Q" or national_bbo_indicator == "S" or national_bbo_indicator == "W" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 19, 1):string()

  if national_bbo_indicator == "I" or national_bbo_indicator == "N" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 37, 1):string()

  if national_bbo_indicator == "U" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 73, 1):string()

  if national_bbo_indicator == "P" or national_bbo_indicator == "R" or national_bbo_indicator == "V" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 78, 1):string()

  if national_bbo_indicator == "H" or national_bbo_indicator == "M" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.size

  end

  local national_bbo_indicator = buffer(offset + index - 83, 1):string()

  if national_bbo_indicator == "T" then
    index = index + siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.size

  end

  return index
end

-- Display: Long Quote Message
siac_cqs_output_cta_v2_10_a.long_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Quote Message
siac_cqs_output_cta_v2_10_a.long_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_output_cta_v2_10_a.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_output_cta_v2_10_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Quote Condition: Char
  index, quote_condition = siac_cqs_output_cta_v2_10_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Security Status Indicator: Char
  index, security_status_indicator = siac_cqs_output_cta_v2_10_a.security_status_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price Lower Limit Price Band: Long
  index, bid_price_lower_limit_price_band = siac_cqs_output_cta_v2_10_a.bid_price_lower_limit_price_band.dissect(buffer, index, packet, parent)

  -- Bid Size Long: Integer
  index, bid_size_long = siac_cqs_output_cta_v2_10_a.bid_size_long.dissect(buffer, index, packet, parent)

  -- Offer Price Upper Limit Price Band: Long
  index, offer_price_upper_limit_price_band = siac_cqs_output_cta_v2_10_a.offer_price_upper_limit_price_band.dissect(buffer, index, packet, parent)

  -- Offer Size Long: Integer
  index, offer_size_long = siac_cqs_output_cta_v2_10_a.offer_size_long.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: Char
  index, retail_interest_indicator = siac_cqs_output_cta_v2_10_a.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: Char
  index, settlement_condition = siac_cqs_output_cta_v2_10_a.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: Char
  index, market_condition = siac_cqs_output_cta_v2_10_a.market_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Maker Id: Char[]
  index, finra_market_maker_id = siac_cqs_output_cta_v2_10_a.finra_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Bbo Indicator: Char
  index, finra_bbo_indicator = siac_cqs_output_cta_v2_10_a.finra_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cqs_output_cta_v2_10_a.timestamp_2.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cqs_output_cta_v2_10_a.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Sip Generated Message Identifier: Char
  index, sip_generated_message_identifier = siac_cqs_output_cta_v2_10_a.sip_generated_message_identifier.dissect(buffer, index, packet, parent)

  -- Limit Up Limit Down Luld Indicator: Char
  index, limit_up_limit_down_luld_indicator = siac_cqs_output_cta_v2_10_a.limit_up_limit_down_luld_indicator.dissect(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: Char
  index, national_bbo_luld_indicator = siac_cqs_output_cta_v2_10_a.national_bbo_luld_indicator.dissect(buffer, index, packet, parent)

  -- National Bbo Indicator: Char
  index, national_bbo_indicator = siac_cqs_output_cta_v2_10_a.national_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Runtime optional field: National Best Bid Long Appendage
  local national_best_bid_long_appendage = nil

  local national_best_bid_long_appendage_exists = national_bbo_indicator == "Q" or national_bbo_indicator == "S" or national_bbo_indicator == "W"

  if national_best_bid_long_appendage_exists then
    index, national_best_bid_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Offer Long Appendage
  local national_best_offer_long_appendage = nil

  local national_best_offer_long_appendage_exists = national_bbo_indicator == "I" or national_bbo_indicator == "N"

  if national_best_offer_long_appendage_exists then
    index, national_best_offer_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_offer_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid And Offer Long Appendage
  local national_best_bid_and_offer_long_appendage = nil

  local national_best_bid_and_offer_long_appendage_exists = national_bbo_indicator == "U"

  if national_best_bid_and_offer_long_appendage_exists then
    index, national_best_bid_and_offer_long_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_long_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid Short Appendage
  local national_best_bid_short_appendage = nil

  local national_best_bid_short_appendage_exists = national_bbo_indicator == "P" or national_bbo_indicator == "R" or national_bbo_indicator == "V"

  if national_best_bid_short_appendage_exists then
    index, national_best_bid_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_short_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Offer Short Appendage
  local national_best_offer_short_appendage = nil

  local national_best_offer_short_appendage_exists = national_bbo_indicator == "H" or national_bbo_indicator == "M"

  if national_best_offer_short_appendage_exists then
    index, national_best_offer_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_offer_short_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: National Best Bid And Offer Short Appendage
  local national_best_bid_and_offer_short_appendage = nil

  local national_best_bid_and_offer_short_appendage_exists = national_bbo_indicator == "T"

  if national_best_bid_and_offer_short_appendage_exists then
    index, national_best_bid_and_offer_short_appendage = siac_cqs_output_cta_v2_10_a.national_best_bid_and_offer_short_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Long Quote Message
siac_cqs_output_cta_v2_10_a.long_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.long_quote_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.long_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.long_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.long_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Status Message
siac_cqs_output_cta_v2_10_a.auction_status_message = {}

-- Size: Auction Status Message
siac_cqs_output_cta_v2_10_a.auction_status_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size + 
  siac_cqs_output_cta_v2_10_a.security_symbol.size + 
  siac_cqs_output_cta_v2_10_a.instrument_type.size + 
  siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.size + 
  siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.size + 
  siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.size + 
  siac_cqs_output_cta_v2_10_a.number_of_extensions.size + 
  siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.size + 
  siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.financial_status_indicator.size + 
  siac_cqs_output_cta_v2_10_a.reserved_62.size

-- Display: Auction Status Message
siac_cqs_output_cta_v2_10_a.auction_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Status Message
siac_cqs_output_cta_v2_10_a.auction_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_output_cta_v2_10_a.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_output_cta_v2_10_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Long
  index, auction_collar_reference_price = siac_cqs_output_cta_v2_10_a.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: Long
  index, auction_collar_upper_threshold_price = siac_cqs_output_cta_v2_10_a.auction_collar_upper_threshold_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: Long
  index, auction_collar_lower_threshold_price = siac_cqs_output_cta_v2_10_a.auction_collar_lower_threshold_price.dissect(buffer, index, packet, parent)

  -- Number Of Extensions: Byte
  index, number_of_extensions = siac_cqs_output_cta_v2_10_a.number_of_extensions.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cqs_output_cta_v2_10_a.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Reserved 62: Char[]
  index, reserved_62 = siac_cqs_output_cta_v2_10_a.reserved_62.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
siac_cqs_output_cta_v2_10_a.auction_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.auction_status_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.auction_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.auction_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.auction_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message Payload
siac_cqs_output_cta_v2_10_a.quote_message_payload = {}

-- Dissect: Quote Message Payload
siac_cqs_output_cta_v2_10_a.quote_message_payload.dissect = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Auction Status Message
  if quote_message_type == "A" then
    return siac_cqs_output_cta_v2_10_a.auction_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote Message
  if quote_message_type == "L" then
    return siac_cqs_output_cta_v2_10_a.long_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote Message
  if quote_message_type == "Q" then
    return siac_cqs_output_cta_v2_10_a.short_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Special Long Quote Message
  if quote_message_type == "S" then
    return siac_cqs_output_cta_v2_10_a.special_long_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quote
siac_cqs_output_cta_v2_10_a.quote = {}

-- Calculate size of: Quote
siac_cqs_output_cta_v2_10_a.quote.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.quote_message_type.size

  -- Calculate runtime size of Quote Message Payload field
  local quote_message_payload_offset = offset + index
  local quote_message_payload_type = buffer(quote_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_output_cta_v2_10_a.quote_message_payload.size(buffer, quote_message_payload_offset, quote_message_payload_type)

  return index
end

-- Display: Quote
siac_cqs_output_cta_v2_10_a.quote.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote
siac_cqs_output_cta_v2_10_a.quote.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: Char
  index, quote_message_type = siac_cqs_output_cta_v2_10_a.quote_message_type.dissect(buffer, index, packet, parent)

  -- Quote Message Payload: Runtime Type with 4 branches
  index = siac_cqs_output_cta_v2_10_a.quote_message_payload.dissect(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote
siac_cqs_output_cta_v2_10_a.quote.dissect = function(buffer, offset, packet, parent)
  if show.quote then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.quote, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.quote.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.quote.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.quote.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message = {}

-- Size: Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size + 
  siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator.size + 
  siac_cqs_output_cta_v2_10_a.reserved.size

-- Display: Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Market Wide Circuit Breaker Level Indicator: Char
  index, market_wide_circuit_breaker_level_indicator = siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_level_indicator.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_output_cta_v2_10_a.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.market_wide_circuit_breaker_status_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size + 
  siac_cqs_output_cta_v2_10_a.mwcb_level_1.size + 
  siac_cqs_output_cta_v2_10_a.mwcb_level_2.size + 
  siac_cqs_output_cta_v2_10_a.mwcb_level_3.size + 
  siac_cqs_output_cta_v2_10_a.reserved.size

-- Display: Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: Signed Long
  index, mwcb_level_1 = siac_cqs_output_cta_v2_10_a.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: Signed Long
  index, mwcb_level_2 = siac_cqs_output_cta_v2_10_a.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: Signed Long
  index, mwcb_level_3 = siac_cqs_output_cta_v2_10_a.mwcb_level_3.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_output_cta_v2_10_a.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Message
siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.market_wide_circuit_breaker_decline_level_status_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Status Message Payload
siac_cqs_output_cta_v2_10_a.market_status_message_payload = {}

-- Dissect: Market Status Message Payload
siac_cqs_output_cta_v2_10_a.market_status_message_payload.dissect = function(buffer, offset, packet, parent, market_status_message_type)
  -- Dissect Market Wide Circuit Breaker Decline Level Status Message
  if market_status_message_type == "K" then
    return siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_decline_level_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Status Message
  if market_status_message_type == "L" then
    return siac_cqs_output_cta_v2_10_a.market_wide_circuit_breaker_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Market Status
siac_cqs_output_cta_v2_10_a.market_status = {}

-- Calculate size of: Market Status
siac_cqs_output_cta_v2_10_a.market_status.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.market_status_message_type.size

  -- Calculate runtime size of Market Status Message Payload field
  local market_status_message_payload_offset = offset + index
  local market_status_message_payload_type = buffer(market_status_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_output_cta_v2_10_a.market_status_message_payload.size(buffer, market_status_message_payload_offset, market_status_message_payload_type)

  return index
end

-- Display: Market Status
siac_cqs_output_cta_v2_10_a.market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Status
siac_cqs_output_cta_v2_10_a.market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Status Message Type: Char
  index, market_status_message_type = siac_cqs_output_cta_v2_10_a.market_status_message_type.dissect(buffer, index, packet, parent)

  -- Market Status Message Payload: Runtime Type with 2 branches
  index = siac_cqs_output_cta_v2_10_a.market_status_message_payload.dissect(buffer, index, packet, parent, market_status_message_type)

  return index
end

-- Dissect: Market Status
siac_cqs_output_cta_v2_10_a.market_status.dissect = function(buffer, offset, packet, parent)
  if show.market_status then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.market_status, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.market_status.fields(buffer, offset, packet, parent)
  end
end

-- End Of Day Message
siac_cqs_output_cta_v2_10_a.end_of_day_message = {}

-- Size: End Of Day Message
siac_cqs_output_cta_v2_10_a.end_of_day_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size

-- Display: End Of Day Message
siac_cqs_output_cta_v2_10_a.end_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: End Of Day Message
siac_cqs_output_cta_v2_10_a.end_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: End Of Day Message
siac_cqs_output_cta_v2_10_a.end_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.end_of_day_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.end_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.end_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.end_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Integrity Message
siac_cqs_output_cta_v2_10_a.line_integrity_message = {}

-- Size: Line Integrity Message
siac_cqs_output_cta_v2_10_a.line_integrity_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size

-- Display: Line Integrity Message
siac_cqs_output_cta_v2_10_a.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
siac_cqs_output_cta_v2_10_a.line_integrity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
siac_cqs_output_cta_v2_10_a.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.line_integrity_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.line_integrity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.line_integrity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.line_integrity_message.fields(buffer, offset, packet, parent)
  end
end

-- Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message = {}

-- Size: Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size

-- Display: Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Disaster Recovery Data Center Activation Message
siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.disaster_recovery_data_center_activation_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Open Message
siac_cqs_output_cta_v2_10_a.finra_open_message = {}

-- Size: Finra Open Message
siac_cqs_output_cta_v2_10_a.finra_open_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size

-- Display: Finra Open Message
siac_cqs_output_cta_v2_10_a.finra_open_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Open Message
siac_cqs_output_cta_v2_10_a.finra_open_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Open Message
siac_cqs_output_cta_v2_10_a.finra_open_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_open_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.finra_open_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.finra_open_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.finra_open_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset Block Sequence Number Message
siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message = {}

-- Size: Reset Block Sequence Number Message
siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size

-- Display: Reset Block Sequence Number Message
siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset Block Sequence Number Message
siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset Block Sequence Number Message
siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.reset_block_sequence_number_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.fields(buffer, offset, packet, parent)
  end
end

-- Finra Close Message
siac_cqs_output_cta_v2_10_a.finra_close_message = {}

-- Size: Finra Close Message
siac_cqs_output_cta_v2_10_a.finra_close_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size

-- Display: Finra Close Message
siac_cqs_output_cta_v2_10_a.finra_close_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Close Message
siac_cqs_output_cta_v2_10_a.finra_close_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Close Message
siac_cqs_output_cta_v2_10_a.finra_close_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.finra_close_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.finra_close_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.finra_close_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.finra_close_message.fields(buffer, offset, packet, parent)
  end
end

-- Start Of Day Message
siac_cqs_output_cta_v2_10_a.start_of_day_message = {}

-- Size: Start Of Day Message
siac_cqs_output_cta_v2_10_a.start_of_day_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size

-- Display: Start Of Day Message
siac_cqs_output_cta_v2_10_a.start_of_day_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Start Of Day Message
siac_cqs_output_cta_v2_10_a.start_of_day_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Start Of Day Message
siac_cqs_output_cta_v2_10_a.start_of_day_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.start_of_day_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.start_of_day_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.start_of_day_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.start_of_day_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
siac_cqs_output_cta_v2_10_a.control_message_payload = {}

-- Dissect: Control Message Payload
siac_cqs_output_cta_v2_10_a.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "A" then
    return siac_cqs_output_cta_v2_10_a.start_of_day_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Close Message
  if control_message_type == "C" then
    return siac_cqs_output_cta_v2_10_a.finra_close_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset Block Sequence Number Message
  if control_message_type == "L" then
    return siac_cqs_output_cta_v2_10_a.reset_block_sequence_number_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Open Message
  if control_message_type == "O" then
    return siac_cqs_output_cta_v2_10_a.finra_open_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Disaster Recovery Data Center Activation Message
  if control_message_type == "P" then
    return siac_cqs_output_cta_v2_10_a.disaster_recovery_data_center_activation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Line Integrity Message
  if control_message_type == "T" then
    return siac_cqs_output_cta_v2_10_a.line_integrity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Day Message
  if control_message_type == "Z" then
    return siac_cqs_output_cta_v2_10_a.end_of_day_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control
siac_cqs_output_cta_v2_10_a.control = {}

-- Calculate size of: Control
siac_cqs_output_cta_v2_10_a.control.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_output_cta_v2_10_a.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control
siac_cqs_output_cta_v2_10_a.control.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control
siac_cqs_output_cta_v2_10_a.control.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: Char
  index, control_message_type = siac_cqs_output_cta_v2_10_a.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 7 branches
  index = siac_cqs_output_cta_v2_10_a.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control
siac_cqs_output_cta_v2_10_a.control.dissect = function(buffer, offset, packet, parent)
  if show.control then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.control, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.control.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.control.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.control.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Reference Data Message
siac_cqs_output_cta_v2_10_a.symbol_reference_data_message = {}

-- Size: Symbol Reference Data Message
siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.size =
  siac_cqs_output_cta_v2_10_a.participant_id.size + 
  siac_cqs_output_cta_v2_10_a.timestamp_1.size + 
  siac_cqs_output_cta_v2_10_a.message_id.size + 
  siac_cqs_output_cta_v2_10_a.transaction_id.size + 
  siac_cqs_output_cta_v2_10_a.participant_reference_number.size + 
  siac_cqs_output_cta_v2_10_a.security_symbol.size + 
  siac_cqs_output_cta_v2_10_a.prior_security_symbol.size + 
  siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.size + 
  siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.size + 
  siac_cqs_output_cta_v2_10_a.consolidated_closing_price.size + 
  siac_cqs_output_cta_v2_10_a.round_lot_size.size + 
  siac_cqs_output_cta_v2_10_a.reserved.size + 
  siac_cqs_output_cta_v2_10_a.luld_tier.size + 
  siac_cqs_output_cta_v2_10_a.luld_leverage_ratio.size + 
  siac_cqs_output_cta_v2_10_a.test.size + 
  siac_cqs_output_cta_v2_10_a.ipo.size + 
  siac_cqs_output_cta_v2_10_a.financial_status_indicator.size + 
  siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.size + 
  siac_cqs_output_cta_v2_10_a.halt_reason.size + 
  siac_cqs_output_cta_v2_10_a.instrument_type.size + 
  siac_cqs_output_cta_v2_10_a.reserved.size + 
  siac_cqs_output_cta_v2_10_a.reserved.size + 
  siac_cqs_output_cta_v2_10_a.reserved_128.size

-- Display: Symbol Reference Data Message
siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Reference Data Message
siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_output_cta_v2_10_a.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_output_cta_v2_10_a.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message Id: Byte
  index, message_id = siac_cqs_output_cta_v2_10_a.message_id.dissect(buffer, index, packet, parent)

  -- Transaction Id: Integer
  index, transaction_id = siac_cqs_output_cta_v2_10_a.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_output_cta_v2_10_a.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_output_cta_v2_10_a.security_symbol.dissect(buffer, index, packet, parent)

  -- Prior Security Symbol: Char[]
  index, prior_security_symbol = siac_cqs_output_cta_v2_10_a.prior_security_symbol.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cqs_output_cta_v2_10_a.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Previous Closing Price: Long
  index, primary_listing_market_previous_closing_price = siac_cqs_output_cta_v2_10_a.primary_listing_market_previous_closing_price.dissect(buffer, index, packet, parent)

  -- Consolidated Closing Price: Long
  index, consolidated_closing_price = siac_cqs_output_cta_v2_10_a.consolidated_closing_price.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Short
  index, round_lot_size = siac_cqs_output_cta_v2_10_a.round_lot_size.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_output_cta_v2_10_a.reserved.dissect(buffer, index, packet, parent)

  -- Luld Tier: Char
  index, luld_tier = siac_cqs_output_cta_v2_10_a.luld_tier.dissect(buffer, index, packet, parent)

  -- Luld Leverage Ratio: Integer
  index, luld_leverage_ratio = siac_cqs_output_cta_v2_10_a.luld_leverage_ratio.dissect(buffer, index, packet, parent)

  -- Test: Char
  index, test = siac_cqs_output_cta_v2_10_a.test.dissect(buffer, index, packet, parent)

  -- Ipo: Char
  index, ipo = siac_cqs_output_cta_v2_10_a.ipo.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cqs_output_cta_v2_10_a.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_output_cta_v2_10_a.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cqs_output_cta_v2_10_a.halt_reason.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_output_cta_v2_10_a.instrument_type.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_output_cta_v2_10_a.reserved.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_output_cta_v2_10_a.reserved.dissect(buffer, index, packet, parent)

  -- Reserved 128: Char[]
  index, reserved_128 = siac_cqs_output_cta_v2_10_a.reserved_128.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Reference Data Message
siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.symbol_reference_data_message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
siac_cqs_output_cta_v2_10_a.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
siac_cqs_output_cta_v2_10_a.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Symbol Reference Data Message
  if administrative_message_type == "S" then
    return siac_cqs_output_cta_v2_10_a.symbol_reference_data_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative
siac_cqs_output_cta_v2_10_a.administrative = {}

-- Calculate size of: Administrative
siac_cqs_output_cta_v2_10_a.administrative.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_output_cta_v2_10_a.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative
siac_cqs_output_cta_v2_10_a.administrative.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative
siac_cqs_output_cta_v2_10_a.administrative.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: Char
  index, administrative_message_type = siac_cqs_output_cta_v2_10_a.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 1 branches
  index = siac_cqs_output_cta_v2_10_a.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative
siac_cqs_output_cta_v2_10_a.administrative.dissect = function(buffer, offset, packet, parent)
  if show.administrative then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.administrative, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.administrative.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.administrative.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.administrative.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
siac_cqs_output_cta_v2_10_a.category_payload = {}

-- Dissect: Category Payload
siac_cqs_output_cta_v2_10_a.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative
  if message_category == "A" then
    return siac_cqs_output_cta_v2_10_a.administrative.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control
  if message_category == "C" then
    return siac_cqs_output_cta_v2_10_a.control.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Status
  if message_category == "M" then
    return siac_cqs_output_cta_v2_10_a.market_status.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote
  if message_category == "Q" then
    return siac_cqs_output_cta_v2_10_a.quote.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
siac_cqs_output_cta_v2_10_a.message = {}

-- Calculate size of: Message
siac_cqs_output_cta_v2_10_a.message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_output_cta_v2_10_a.message_length.size

  index = index + siac_cqs_output_cta_v2_10_a.message_category.size

  -- Calculate runtime size of Category Payload field
  local category_payload_offset = offset + index
  local category_payload_type = buffer(category_payload_offset - 1, 1):string()
  index = index + siac_cqs_output_cta_v2_10_a.category_payload.size(buffer, category_payload_offset, category_payload_type)

  return index
end

-- Display: Message
siac_cqs_output_cta_v2_10_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cqs_output_cta_v2_10_a.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: Short
  index, message_length = siac_cqs_output_cta_v2_10_a.message_length.dissect(buffer, index, packet, parent)

  -- Message Category: Char
  index, message_category = siac_cqs_output_cta_v2_10_a.message_category.dissect(buffer, index, packet, parent)

  -- Category Payload: Runtime Type with 4 branches
  index = siac_cqs_output_cta_v2_10_a.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cqs_output_cta_v2_10_a.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.message, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- SIP Block Timestamp
siac_cqs_output_cta_v2_10_a.sip_block_timestamp = {}

-- Size: SIP Block Timestamp
siac_cqs_output_cta_v2_10_a.sip_block_timestamp.size =
  siac_cqs_output_cta_v2_10_a.seconds.size + 
  siac_cqs_output_cta_v2_10_a.nanoseconds.size

-- Display: SIP Block Timestamp
siac_cqs_output_cta_v2_10_a.sip_block_timestamp.display = function(packet, parent, value)
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
siac_cqs_output_cta_v2_10_a.sip_block_timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_cqs_output_cta_v2_10_a.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_cqs_output_cta_v2_10_a.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local sip_block_timestamp = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, sip_block_timestamp
end

-- Dissect: SIP Block Timestamp
siac_cqs_output_cta_v2_10_a.sip_block_timestamp.dissect = function(buffer, offset, packet, parent)
  if show.sip_block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.sip_block_timestamp, buffer(offset, 0))
    local index, value = siac_cqs_output_cta_v2_10_a.sip_block_timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.sip_block_timestamp.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.sip_block_timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Block Header
siac_cqs_output_cta_v2_10_a.block_header = {}

-- Size: Block Header
siac_cqs_output_cta_v2_10_a.block_header.size =
  siac_cqs_output_cta_v2_10_a.version.size + 
  siac_cqs_output_cta_v2_10_a.block_size.size + 
  siac_cqs_output_cta_v2_10_a.data_feed_indicator.size + 
  siac_cqs_output_cta_v2_10_a.retransmission_indicator.size + 
  siac_cqs_output_cta_v2_10_a.block_sequence_number.size + 
  siac_cqs_output_cta_v2_10_a.messages_in_block.size + 
  siac_cqs_output_cta_v2_10_a.sip_block_timestamp.size + 
  siac_cqs_output_cta_v2_10_a.block_checksum.size

-- Display: Block Header
siac_cqs_output_cta_v2_10_a.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cqs_output_cta_v2_10_a.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: unsigned integer
  index, version = siac_cqs_output_cta_v2_10_a.version.dissect(buffer, index, packet, parent)

  -- Block Size: unsigned integer
  index, block_size = siac_cqs_output_cta_v2_10_a.block_size.dissect(buffer, index, packet, parent)

  -- Data Feed Indicator: char
  index, data_feed_indicator = siac_cqs_output_cta_v2_10_a.data_feed_indicator.dissect(buffer, index, packet, parent)

  -- Retransmission Indicator: char
  index, retransmission_indicator = siac_cqs_output_cta_v2_10_a.retransmission_indicator.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: unsigned integer
  index, block_sequence_number = siac_cqs_output_cta_v2_10_a.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: unsigned integer
  index, messages_in_block = siac_cqs_output_cta_v2_10_a.messages_in_block.dissect(buffer, index, packet, parent)

  -- SIP Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = siac_cqs_output_cta_v2_10_a.sip_block_timestamp.dissect(buffer, index, packet, parent)

  -- Block Checksum: unsigned integer
  index, block_checksum = siac_cqs_output_cta_v2_10_a.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cqs_output_cta_v2_10_a.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_output_cta_v2_10_a.fields.block_header, buffer(offset, 0))
    local index = siac_cqs_output_cta_v2_10_a.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_output_cta_v2_10_a.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_output_cta_v2_10_a.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_cqs_output_cta_v2_10_a.packet = {}

-- Verify required size of Udp packet
siac_cqs_output_cta_v2_10_a.packet.requiredsize = function(buffer)
  return buffer:len() >= siac_cqs_output_cta_v2_10_a.block_header.size
end

-- Dissect Packet
siac_cqs_output_cta_v2_10_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 8 fields
  index, block_header = siac_cqs_output_cta_v2_10_a.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do
    index, message = siac_cqs_output_cta_v2_10_a.message.dissect(buffer, index, packet, parent, message_index)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_cqs_output_cta_v2_10_a.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_cqs_output_cta_v2_10_a.init()
end

-- Dissector for Siac Cqs Output Cta 2.10.a
function omi_siac_cqs_output_cta_v2_10_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_cqs_output_cta_v2_10_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_cqs_output_cta_v2_10_a, buffer(), omi_siac_cqs_output_cta_v2_10_a.description, "("..buffer:len().." Bytes)")
  return siac_cqs_output_cta_v2_10_a.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Siac Cqs Output Cta 2.10.a (Udp)
local function omi_siac_cqs_output_cta_v2_10_a_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_cqs_output_cta_v2_10_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_cqs_output_cta_v2_10_a
  omi_siac_cqs_output_cta_v2_10_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cqs Output Cta 2.10.a
omi_siac_cqs_output_cta_v2_10_a:register_heuristic("udp", omi_siac_cqs_output_cta_v2_10_a_udp_heuristic)

-- Register Siac Cqs Output Cta 2.10.a on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_cqs_output_cta_v2_10_a)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: The Securities Industry Automation Corporation
--   Version: 2.10.a
--   Date: Friday, June 6, 2025
--   Specification: CQS_Pillar_Snapshot_Specification.pdf
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
