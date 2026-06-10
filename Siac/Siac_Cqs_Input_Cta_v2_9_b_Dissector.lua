-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cqs Input Cta 2.9.b Protocol
local omi_siac_cqs_input_cta_v2_9_b = Proto("Omi.Siac.Cqs.Input.Cta.v2.9.b", "Siac Cqs Input Cta 2.9.b")

-- Protocol table
local siac_cqs_input_cta_v2_9_b = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cqs Input Cta 2.9.b Fields
omi_siac_cqs_input_cta_v2_9_b.fields.administrative_message = ProtoField.new("Administrative Message", "siac.cqs.input.cta.v2.9.b.administrativemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.cqs.input.cta.v2.9.b.administrativemessagetype", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cqs.input.cta.v2.9.b.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cqs.input.cta.v2.9.b.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cqs.input.cta.v2.9.b.auctioncollarupperthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.bid_price = ProtoField.new("Bid Price", "siac.cqs.input.cta.v2.9.b.bidprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.bid_price_short = ProtoField.new("Bid Price Short", "siac.cqs.input.cta.v2.9.b.bidpriceshort", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.bid_size = ProtoField.new("Bid Size", "siac.cqs.input.cta.v2.9.b.bidsize", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.bid_size_short = ProtoField.new("Bid Size Short", "siac.cqs.input.cta.v2.9.b.bidsizeshort", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cqs.input.cta.v2.9.b.blockchecksum", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.block_header = ProtoField.new("Block Header", "siac.cqs.input.cta.v2.9.b.blockheader", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cqs.input.cta.v2.9.b.blockpadbyte", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.block_separator = ProtoField.new("Block Separator", "siac.cqs.input.cta.v2.9.b.blockseparator", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cqs.input.cta.v2.9.b.blocksequencenumber", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.block_size = ProtoField.new("Block Size", "siac.cqs.input.cta.v2.9.b.blocksize", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.buy_volume = ProtoField.new("Buy Volume", "siac.cqs.input.cta.v2.9.b.buyvolume", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.clear_prior_odd_lot_quotes = ProtoField.new("Clear Prior Odd Lot Quotes", "siac.cqs.input.cta.v2.9.b.clearprioroddlotquotes", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.control_message = ProtoField.new("Control Message", "siac.cqs.input.cta.v2.9.b.controlmessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.control_message_type = ProtoField.new("Control Message Type", "siac.cqs.input.cta.v2.9.b.controlmessagetype", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.count_of_odd_lot_bid_appendages = ProtoField.new("Count Of Odd Lot Bid Appendages", "siac.cqs.input.cta.v2.9.b.countofoddlotbidappendages", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.count_of_odd_lot_offer_appendages = ProtoField.new("Count Of Odd Lot Offer Appendages", "siac.cqs.input.cta.v2.9.b.countofoddlotofferappendages", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.current_block_sequence_number = ProtoField.new("Current Block Sequence Number", "siac.cqs.input.cta.v2.9.b.currentblocksequencenumber", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.data = ProtoField.new("Data", "siac.cqs.input.cta.v2.9.b.data", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.error_code = ProtoField.new("Error Code", "siac.cqs.input.cta.v2.9.b.errorcode", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_bbo_indicator = ProtoField.new("Finra Bbo Indicator", "siac.cqs.input.cta.v2.9.b.finrabboindicator", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_market_maker_id = ProtoField.new("Finra Best Bid Market Maker Id", "siac.cqs.input.cta.v2.9.b.finrabestbidmarketmakerid", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_price = ProtoField.new("Finra Best Bid Price", "siac.cqs.input.cta.v2.9.b.finrabestbidprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_quote_condition = ProtoField.new("Finra Best Bid Quote Condition", "siac.cqs.input.cta.v2.9.b.finrabestbidquotecondition", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_size = ProtoField.new("Finra Best Bid Size", "siac.cqs.input.cta.v2.9.b.finrabestbidsize", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_market_maker_id = ProtoField.new("Finra Best Offer Market Maker Id", "siac.cqs.input.cta.v2.9.b.finrabestoffermarketmakerid", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_price = ProtoField.new("Finra Best Offer Price", "siac.cqs.input.cta.v2.9.b.finrabestofferprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_quote_condition = ProtoField.new("Finra Best Offer Quote Condition", "siac.cqs.input.cta.v2.9.b.finrabestofferquotecondition", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_size = ProtoField.new("Finra Best Offer Size", "siac.cqs.input.cta.v2.9.b.finrabestoffersize", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_market_maker_id = ProtoField.new("Finra Market Maker Id", "siac.cqs.input.cta.v2.9.b.finramarketmakerid", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cqs.input.cta.v2.9.b.haltreason", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.high_indication_price_upper_limit_price_band = ProtoField.new("High Indication Price Upper Limit Price Band", "siac.cqs.input.cta.v2.9.b.highindicationpriceupperlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cqs.input.cta.v2.9.b.instrumenttype", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.last_participant_reference_number = ProtoField.new("Last Participant Reference Number", "siac.cqs.input.cta.v2.9.b.lastparticipantreferencenumber", ftypes.INT64)
omi_siac_cqs_input_cta_v2_9_b.fields.last_price_opening_reopening_luld_reference_price = ProtoField.new("Last Price Opening Reopening Luld Reference Price", "siac.cqs.input.cta.v2.9.b.lastpriceopeningreopeningluldreferenceprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.low_indication_price_lower_limit_price_band = ProtoField.new("Low Indication Price Lower Limit Price Band", "siac.cqs.input.cta.v2.9.b.lowindicationpricelowerlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.market_condition = ProtoField.new("Market Condition", "siac.cqs.input.cta.v2.9.b.marketcondition", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.message = ProtoField.new("Message", "siac.cqs.input.cta.v2.9.b.message", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.message_category = ProtoField.new("Message Category", "siac.cqs.input.cta.v2.9.b.messagecategory", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.message_count = ProtoField.new("Message Count", "siac.cqs.input.cta.v2.9.b.messagecount", ftypes.UINT64)
omi_siac_cqs_input_cta_v2_9_b.fields.message_header = ProtoField.new("Message Header", "siac.cqs.input.cta.v2.9.b.messageheader", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.message_id = ProtoField.new("Message ID", "siac.cqs.input.cta.v2.9.b.messageid", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.message_length = ProtoField.new("Message Length", "siac.cqs.input.cta.v2.9.b.messagelength", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.message_type = ProtoField.new("Message Type", "siac.cqs.input.cta.v2.9.b.messagetype", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cqs.input.cta.v2.9.b.messagesinblock", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cqs.input.cta.v2.9.b.nanoseconds", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cqs.input.cta.v2.9.b.numberofextensions", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_extended_quote_appendage = ProtoField.new("Odd Lot Bid Extended Quote Appendage", "siac.cqs.input.cta.v2.9.b.oddlotbidextendedquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_long_quote_appendage = ProtoField.new("Odd Lot Bid Long Quote Appendage", "siac.cqs.input.cta.v2.9.b.oddlotbidlongquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_short_quote_appendage = ProtoField.new("Odd Lot Bid Short Quote Appendage", "siac.cqs.input.cta.v2.9.b.oddlotbidshortquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_finra_market_maker_id = ProtoField.new("Odd Lot Finra Market Maker Id", "siac.cqs.input.cta.v2.9.b.oddlotfinramarketmakerid", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_extended_quote_appendage = ProtoField.new("Odd Lot Offer Extended Quote Appendage", "siac.cqs.input.cta.v2.9.b.oddlotofferextendedquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_long_quote_appendage = ProtoField.new("Odd Lot Offer Long Quote Appendage", "siac.cqs.input.cta.v2.9.b.oddlotofferlongquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_short_quote_appendage = ProtoField.new("Odd Lot Offer Short Quote Appendage", "siac.cqs.input.cta.v2.9.b.oddlotoffershortquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_appendage_type = ProtoField.new("Odd Lot Quote Appendage Type", "siac.cqs.input.cta.v2.9.b.oddlotquoteappendagetype", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_price = ProtoField.new("Odd Lot Quote Price", "siac.cqs.input.cta.v2.9.b.oddlotquoteprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_price_2 = ProtoField.new("Odd Lot Quote Price 2", "siac.cqs.input.cta.v2.9.b.oddlotquoteprice2", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_size = ProtoField.new("Odd Lot Quote Size", "siac.cqs.input.cta.v2.9.b.oddlotquotesize", ftypes.UINT8)
omi_siac_cqs_input_cta_v2_9_b.fields.offer_price = ProtoField.new("Offer Price", "siac.cqs.input.cta.v2.9.b.offerprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.offer_price_short = ProtoField.new("Offer Price Short", "siac.cqs.input.cta.v2.9.b.offerpriceshort", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.offer_size = ProtoField.new("Offer Size", "siac.cqs.input.cta.v2.9.b.offersize", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.offer_size_short = ProtoField.new("Offer Size Short", "siac.cqs.input.cta.v2.9.b.offersizeshort", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.packet = ProtoField.new("Packet", "siac.cqs.input.cta.v2.9.b.packet", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_extended_quote_appendage = ProtoField.new("Partial Reject Odd Lot Bid Extended Quote Appendage", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotbidextendedquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_long_quote_appendage = ProtoField.new("Partial Reject Odd Lot Bid Long Quote Appendage", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotbidlongquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_short_quote_appendage = ProtoField.new("Partial Reject Odd Lot Bid Short Quote Appendage", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotbidshortquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_extended_quote_appendage = ProtoField.new("Partial Reject Odd Lot Offer Extended Quote Appendage", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotofferextendedquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_long_quote_appendage = ProtoField.new("Partial Reject Odd Lot Offer Long Quote Appendage", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotofferlongquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_short_quote_appendage = ProtoField.new("Partial Reject Odd Lot Offer Short Quote Appendage", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotoffershortquoteappendage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.participant_id = ProtoField.new("Participant ID", "siac.cqs.input.cta.v2.9.b.participantid", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.cqs.input.cta.v2.9.b.participantreferencenumber", ftypes.INT64)
omi_siac_cqs_input_cta_v2_9_b.fields.previous_block_sequence_number = ProtoField.new("Previous Block Sequence Number", "siac.cqs.input.cta.v2.9.b.previousblocksequencenumber", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.previous_participant_reference_number = ProtoField.new("Previous Participant Reference Number", "siac.cqs.input.cta.v2.9.b.previousparticipantreferencenumber", ftypes.INT64)
omi_siac_cqs_input_cta_v2_9_b.fields.quote_condition = ProtoField.new("Quote Condition", "siac.cqs.input.cta.v2.9.b.quotecondition", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.quote_message = ProtoField.new("Quote Message", "siac.cqs.input.cta.v2.9.b.quotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.quote_message_type = ProtoField.new("Quote Message Type", "siac.cqs.input.cta.v2.9.b.quotemessagetype", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.reserved = ProtoField.new("Reserved", "siac.cqs.input.cta.v2.9.b.reserved", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.reserved_2 = ProtoField.new("Reserved 2", "siac.cqs.input.cta.v2.9.b.reserved2", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.reserved_62 = ProtoField.new("Reserved 62", "siac.cqs.input.cta.v2.9.b.reserved62", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.reserved_8 = ProtoField.new("Reserved 8", "siac.cqs.input.cta.v2.9.b.reserved8", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "siac.cqs.input.cta.v2.9.b.retailinterestindicator", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_price = ProtoField.new("Round Lot Bid Price", "siac.cqs.input.cta.v2.9.b.roundlotbidprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_price_short = ProtoField.new("Round Lot Bid Price Short", "siac.cqs.input.cta.v2.9.b.roundlotbidpriceshort", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_size = ProtoField.new("Round Lot Bid Size", "siac.cqs.input.cta.v2.9.b.roundlotbidsize", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_size_short = ProtoField.new("Round Lot Bid Size Short", "siac.cqs.input.cta.v2.9.b.roundlotbidsizeshort", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_price = ProtoField.new("Round Lot Offer Price", "siac.cqs.input.cta.v2.9.b.roundlotofferprice", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_price_short = ProtoField.new("Round Lot Offer Price Short", "siac.cqs.input.cta.v2.9.b.roundlotofferpriceshort", ftypes.DOUBLE)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_size = ProtoField.new("Round Lot Offer Size", "siac.cqs.input.cta.v2.9.b.roundlotoffersize", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_size_short = ProtoField.new("Round Lot Offer Size Short", "siac.cqs.input.cta.v2.9.b.roundlotoffersizeshort", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.seconds = ProtoField.new("Seconds", "siac.cqs.input.cta.v2.9.b.seconds", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.security_status = ProtoField.new("Security Status", "siac.cqs.input.cta.v2.9.b.securitystatus", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.security_status_indicator = ProtoField.new("Security Status Indicator", "siac.cqs.input.cta.v2.9.b.securitystatusindicator", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cqs.input.cta.v2.9.b.securitysymbol", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol_begin_range = ProtoField.new("Security Symbol Begin Range", "siac.cqs.input.cta.v2.9.b.securitysymbolbeginrange", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol_end_range = ProtoField.new("Security Symbol End Range", "siac.cqs.input.cta.v2.9.b.securitysymbolendrange", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "siac.cqs.input.cta.v2.9.b.securitysymbolshort", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.sell_volume = ProtoField.new("Sell Volume", "siac.cqs.input.cta.v2.9.b.sellvolume", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.settlement_condition = ProtoField.new("Settlement Condition", "siac.cqs.input.cta.v2.9.b.settlementcondition", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cqs.input.cta.v2.9.b.shortsalerestrictionindicator", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.timestamp_1 = ProtoField.new("Timestamp 1", "siac.cqs.input.cta.v2.9.b.timestamp1", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.timestamp_2 = ProtoField.new("Timestamp 2", "siac.cqs.input.cta.v2.9.b.timestamp2", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.trade_message = ProtoField.new("Trade Message", "siac.cqs.input.cta.v2.9.b.trademessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.trade_message_type = ProtoField.new("Trade Message Type", "siac.cqs.input.cta.v2.9.b.trademessagetype", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.trading_status_id = ProtoField.new("Trading Status Id", "siac.cqs.input.cta.v2.9.b.tradingstatusid", ftypes.UINT32)
omi_siac_cqs_input_cta_v2_9_b.fields.version = ProtoField.new("Version", "siac.cqs.input.cta.v2.9.b.version", ftypes.UINT8)

-- Siac Cqs Cta Input 2.9.b Application Messages
omi_siac_cqs_input_cta_v2_9_b.fields.auction_status_message = ProtoField.new("Auction Status Message", "siac.cqs.input.cta.v2.9.b.auctionstatusmessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.end_of_day_message = ProtoField.new("End Of Day Message", "siac.cqs.input.cta.v2.9.b.endofdaymessage", ftypes.BYTES)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_close_message = ProtoField.new("Finra Close Message", "siac.cqs.input.cta.v2.9.b.finraclosemessage", ftypes.BYTES)
omi_siac_cqs_input_cta_v2_9_b.fields.finra_open_message = ProtoField.new("Finra Open Message", "siac.cqs.input.cta.v2.9.b.finraopenmessage", ftypes.BYTES)
omi_siac_cqs_input_cta_v2_9_b.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cqs.input.cta.v2.9.b.lineintegritymessage", ftypes.BYTES)
omi_siac_cqs_input_cta_v2_9_b.fields.long_quote_message = ProtoField.new("Long Quote Message", "siac.cqs.input.cta.v2.9.b.longquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_finra_adf_quote_message = ProtoField.new("Odd Lot Finra Adf Quote Message", "siac.cqs.input.cta.v2.9.b.oddlotfinraadfquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_long_quote_message = ProtoField.new("Odd Lot Long Quote Message", "siac.cqs.input.cta.v2.9.b.oddlotlongquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_refresh_request_message = ProtoField.new("Odd Lot Refresh Request Message", "siac.cqs.input.cta.v2.9.b.oddlotrefreshrequestmessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_short_quote_message = ProtoField.new("Odd Lot Short Quote Message", "siac.cqs.input.cta.v2.9.b.oddlotshortquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_rejection_message = ProtoField.new("Partial Rejection Message", "siac.cqs.input.cta.v2.9.b.partialrejectionmessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.rejection_message = ProtoField.new("Rejection Message", "siac.cqs.input.cta.v2.9.b.rejectionmessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_finra_adf_quote_message = ProtoField.new("Round Lot Finra Adf Quote Message", "siac.cqs.input.cta.v2.9.b.roundlotfinraadfquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_long_quote_message = ProtoField.new("Round Lot Long Quote Message", "siac.cqs.input.cta.v2.9.b.roundlotlongquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_short_quote_message = ProtoField.new("Round Lot Short Quote Message", "siac.cqs.input.cta.v2.9.b.roundlotshortquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.sequence_information_and_message_count_inquiry_message = ProtoField.new("Sequence Information And Message Count Inquiry Message", "siac.cqs.input.cta.v2.9.b.sequenceinformationandmessagecountinquirymessage", ftypes.BYTES)
omi_siac_cqs_input_cta_v2_9_b.fields.sequence_information_and_message_count_response_message = ProtoField.new("Sequence Information And Message Count Response Message", "siac.cqs.input.cta.v2.9.b.sequenceinformationandmessagecountresponsemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.short_quote_message = ProtoField.new("Short Quote Message", "siac.cqs.input.cta.v2.9.b.shortquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.special_long_quote_message = ProtoField.new("Special Long Quote Message", "siac.cqs.input.cta.v2.9.b.speciallongquotemessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.start_of_day_message = ProtoField.new("Start Of Day Message", "siac.cqs.input.cta.v2.9.b.startofdaymessage", ftypes.BYTES)
omi_siac_cqs_input_cta_v2_9_b.fields.test_message = ProtoField.new("Test Message", "siac.cqs.input.cta.v2.9.b.testmessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.trading_status_message = ProtoField.new("Trading Status Message", "siac.cqs.input.cta.v2.9.b.tradingstatusmessage", ftypes.STRING)
omi_siac_cqs_input_cta_v2_9_b.fields.warning_message = ProtoField.new("Warning Message", "siac.cqs.input.cta.v2.9.b.warningmessage", ftypes.STRING)

-- Siac Cqs Input Cta 2.9.b generated fields
omi_siac_cqs_input_cta_v2_9_b.fields.message_index = ProtoField.new("Message Index", "siac.cqs.input.cta.v2.9.b.messageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_extended_quote_appendage_index = ProtoField.new("Odd Lot Bid Extended Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.oddlotbidextendedquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_long_quote_appendage_index = ProtoField.new("Odd Lot Bid Long Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.oddlotbidlongquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_short_quote_appendage_index = ProtoField.new("Odd Lot Bid Short Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.oddlotbidshortquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_extended_quote_appendage_index = ProtoField.new("Odd Lot Offer Extended Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.oddlotofferextendedquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_long_quote_appendage_index = ProtoField.new("Odd Lot Offer Long Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.oddlotofferlongquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_short_quote_appendage_index = ProtoField.new("Odd Lot Offer Short Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.oddlotoffershortquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_extended_quote_appendage_index = ProtoField.new("Partial Reject Odd Lot Bid Extended Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotbidextendedquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_long_quote_appendage_index = ProtoField.new("Partial Reject Odd Lot Bid Long Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotbidlongquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_short_quote_appendage_index = ProtoField.new("Partial Reject Odd Lot Bid Short Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotbidshortquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_extended_quote_appendage_index = ProtoField.new("Partial Reject Odd Lot Offer Extended Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotofferextendedquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_long_quote_appendage_index = ProtoField.new("Partial Reject Odd Lot Offer Long Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotofferlongquoteappendageindex", ftypes.UINT16)
omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_short_quote_appendage_index = ProtoField.new("Partial Reject Odd Lot Offer Short Quote Appendage Index", "siac.cqs.input.cta.v2.9.b.partialrejectoddlotoffershortquoteappendageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Cqs Input Cta 2.9.b Element Dissection Options
show.administrative_message = true
show.application_messages = true
show.block_header = true
show.control_message = true
show.message = true
show.message_header = true
show.odd_lot_bid_extended_quote_appendage = true
show.odd_lot_bid_long_quote_appendage = true
show.odd_lot_bid_short_quote_appendage = true
show.odd_lot_offer_extended_quote_appendage = true
show.odd_lot_offer_long_quote_appendage = true
show.odd_lot_offer_short_quote_appendage = true
show.packet = true
show.partial_reject_odd_lot_bid_extended_quote_appendage = true
show.partial_reject_odd_lot_bid_long_quote_appendage = true
show.partial_reject_odd_lot_bid_short_quote_appendage = true
show.partial_reject_odd_lot_offer_extended_quote_appendage = true
show.partial_reject_odd_lot_offer_long_quote_appendage = true
show.partial_reject_odd_lot_offer_short_quote_appendage = true
show.quote_message = true
show.timestamp_1 = true
show.timestamp_2 = true
show.trade_message = true
show.message_index = true
show.partial_reject_odd_lot_bid_short_quote_appendage_index = true
show.partial_reject_odd_lot_offer_short_quote_appendage_index = true
show.partial_reject_odd_lot_bid_long_quote_appendage_index = true
show.partial_reject_odd_lot_offer_long_quote_appendage_index = true
show.partial_reject_odd_lot_bid_extended_quote_appendage_index = true
show.partial_reject_odd_lot_offer_extended_quote_appendage_index = true
show.odd_lot_bid_short_quote_appendage_index = true
show.odd_lot_offer_short_quote_appendage_index = true
show.odd_lot_bid_long_quote_appendage_index = true
show.odd_lot_offer_long_quote_appendage_index = true
show.odd_lot_bid_extended_quote_appendage_index = true
show.odd_lot_offer_extended_quote_appendage_index = true

-- Register Siac Cqs Input Cta 2.9.b Show Options
omi_siac_cqs_input_cta_v2_9_b.prefs.show_administrative_message = Pref.bool("Show Administrative Message", show.administrative_message, "Parse and add Administrative Message to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_control_message = Pref.bool("Show Control Message", show.control_message, "Parse and add Control Message to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_extended_quote_appendage = Pref.bool("Show Odd Lot Bid Extended Quote Appendage", show.odd_lot_bid_extended_quote_appendage, "Parse and add Odd Lot Bid Extended Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_long_quote_appendage = Pref.bool("Show Odd Lot Bid Long Quote Appendage", show.odd_lot_bid_long_quote_appendage, "Parse and add Odd Lot Bid Long Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_short_quote_appendage = Pref.bool("Show Odd Lot Bid Short Quote Appendage", show.odd_lot_bid_short_quote_appendage, "Parse and add Odd Lot Bid Short Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_extended_quote_appendage = Pref.bool("Show Odd Lot Offer Extended Quote Appendage", show.odd_lot_offer_extended_quote_appendage, "Parse and add Odd Lot Offer Extended Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_long_quote_appendage = Pref.bool("Show Odd Lot Offer Long Quote Appendage", show.odd_lot_offer_long_quote_appendage, "Parse and add Odd Lot Offer Long Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_short_quote_appendage = Pref.bool("Show Odd Lot Offer Short Quote Appendage", show.odd_lot_offer_short_quote_appendage, "Parse and add Odd Lot Offer Short Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_extended_quote_appendage = Pref.bool("Show Partial Reject Odd Lot Bid Extended Quote Appendage", show.partial_reject_odd_lot_bid_extended_quote_appendage, "Parse and add Partial Reject Odd Lot Bid Extended Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_long_quote_appendage = Pref.bool("Show Partial Reject Odd Lot Bid Long Quote Appendage", show.partial_reject_odd_lot_bid_long_quote_appendage, "Parse and add Partial Reject Odd Lot Bid Long Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_short_quote_appendage = Pref.bool("Show Partial Reject Odd Lot Bid Short Quote Appendage", show.partial_reject_odd_lot_bid_short_quote_appendage, "Parse and add Partial Reject Odd Lot Bid Short Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_extended_quote_appendage = Pref.bool("Show Partial Reject Odd Lot Offer Extended Quote Appendage", show.partial_reject_odd_lot_offer_extended_quote_appendage, "Parse and add Partial Reject Odd Lot Offer Extended Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_long_quote_appendage = Pref.bool("Show Partial Reject Odd Lot Offer Long Quote Appendage", show.partial_reject_odd_lot_offer_long_quote_appendage, "Parse and add Partial Reject Odd Lot Offer Long Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_short_quote_appendage = Pref.bool("Show Partial Reject Odd Lot Offer Short Quote Appendage", show.partial_reject_odd_lot_offer_short_quote_appendage, "Parse and add Partial Reject Odd Lot Offer Short Quote Appendage to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_quote_message = Pref.bool("Show Quote Message", show.quote_message, "Parse and add Quote Message to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_timestamp_1 = Pref.bool("Show Timestamp 1", show.timestamp_1, "Parse and add Timestamp 1 to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_timestamp_2 = Pref.bool("Show Timestamp 2", show.timestamp_2, "Parse and add Timestamp 2 to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_trade_message = Pref.bool("Show Trade Message", show.trade_message, "Parse and add Trade Message to protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_short_quote_appendage_index = Pref.bool("Show Partial Reject Odd Lot Bid Short Quote Appendage Index", show.partial_reject_odd_lot_bid_short_quote_appendage_index, "Show generated partial reject odd lot bid short quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_short_quote_appendage_index = Pref.bool("Show Partial Reject Odd Lot Offer Short Quote Appendage Index", show.partial_reject_odd_lot_offer_short_quote_appendage_index, "Show generated partial reject odd lot offer short quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_long_quote_appendage_index = Pref.bool("Show Partial Reject Odd Lot Bid Long Quote Appendage Index", show.partial_reject_odd_lot_bid_long_quote_appendage_index, "Show generated partial reject odd lot bid long quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_long_quote_appendage_index = Pref.bool("Show Partial Reject Odd Lot Offer Long Quote Appendage Index", show.partial_reject_odd_lot_offer_long_quote_appendage_index, "Show generated partial reject odd lot offer long quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_extended_quote_appendage_index = Pref.bool("Show Partial Reject Odd Lot Bid Extended Quote Appendage Index", show.partial_reject_odd_lot_bid_extended_quote_appendage_index, "Show generated partial reject odd lot bid extended quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_extended_quote_appendage_index = Pref.bool("Show Partial Reject Odd Lot Offer Extended Quote Appendage Index", show.partial_reject_odd_lot_offer_extended_quote_appendage_index, "Show generated partial reject odd lot offer extended quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_short_quote_appendage_index = Pref.bool("Show Odd Lot Bid Short Quote Appendage Index", show.odd_lot_bid_short_quote_appendage_index, "Show generated odd lot bid short quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_short_quote_appendage_index = Pref.bool("Show Odd Lot Offer Short Quote Appendage Index", show.odd_lot_offer_short_quote_appendage_index, "Show generated odd lot offer short quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_long_quote_appendage_index = Pref.bool("Show Odd Lot Bid Long Quote Appendage Index", show.odd_lot_bid_long_quote_appendage_index, "Show generated odd lot bid long quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_long_quote_appendage_index = Pref.bool("Show Odd Lot Offer Long Quote Appendage Index", show.odd_lot_offer_long_quote_appendage_index, "Show generated odd lot offer long quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_extended_quote_appendage_index = Pref.bool("Show Odd Lot Bid Extended Quote Appendage Index", show.odd_lot_bid_extended_quote_appendage_index, "Show generated odd lot bid extended quote appendage index in protocol tree")
omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_extended_quote_appendage_index = Pref.bool("Show Odd Lot Offer Extended Quote Appendage Index", show.odd_lot_offer_extended_quote_appendage_index, "Show generated odd lot offer extended quote appendage index in protocol tree")


-- Handle changed preferences
function omi_siac_cqs_input_cta_v2_9_b.prefs_changed()

  -- Check if preferences have changed
  if show.administrative_message ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_administrative_message then
    show.administrative_message = omi_siac_cqs_input_cta_v2_9_b.prefs.show_administrative_message
  end
  if show.application_messages ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_application_messages then
    show.application_messages = omi_siac_cqs_input_cta_v2_9_b.prefs.show_application_messages
  end
  if show.block_header ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_block_header then
    show.block_header = omi_siac_cqs_input_cta_v2_9_b.prefs.show_block_header
  end
  if show.control_message ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_control_message then
    show.control_message = omi_siac_cqs_input_cta_v2_9_b.prefs.show_control_message
  end
  if show.message ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_message then
    show.message = omi_siac_cqs_input_cta_v2_9_b.prefs.show_message
  end
  if show.message_header ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_message_header then
    show.message_header = omi_siac_cqs_input_cta_v2_9_b.prefs.show_message_header
  end
  if show.odd_lot_bid_extended_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_extended_quote_appendage then
    show.odd_lot_bid_extended_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_extended_quote_appendage
  end
  if show.odd_lot_bid_long_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_long_quote_appendage then
    show.odd_lot_bid_long_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_long_quote_appendage
  end
  if show.odd_lot_bid_short_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_short_quote_appendage then
    show.odd_lot_bid_short_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_short_quote_appendage
  end
  if show.odd_lot_offer_extended_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_extended_quote_appendage then
    show.odd_lot_offer_extended_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_extended_quote_appendage
  end
  if show.odd_lot_offer_long_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_long_quote_appendage then
    show.odd_lot_offer_long_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_long_quote_appendage
  end
  if show.odd_lot_offer_short_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_short_quote_appendage then
    show.odd_lot_offer_short_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_short_quote_appendage
  end
  if show.packet ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_packet then
    show.packet = omi_siac_cqs_input_cta_v2_9_b.prefs.show_packet
  end
  if show.partial_reject_odd_lot_bid_extended_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_extended_quote_appendage then
    show.partial_reject_odd_lot_bid_extended_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_extended_quote_appendage
  end
  if show.partial_reject_odd_lot_bid_long_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_long_quote_appendage then
    show.partial_reject_odd_lot_bid_long_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_long_quote_appendage
  end
  if show.partial_reject_odd_lot_bid_short_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_short_quote_appendage then
    show.partial_reject_odd_lot_bid_short_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_short_quote_appendage
  end
  if show.partial_reject_odd_lot_offer_extended_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_extended_quote_appendage then
    show.partial_reject_odd_lot_offer_extended_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_extended_quote_appendage
  end
  if show.partial_reject_odd_lot_offer_long_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_long_quote_appendage then
    show.partial_reject_odd_lot_offer_long_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_long_quote_appendage
  end
  if show.partial_reject_odd_lot_offer_short_quote_appendage ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_short_quote_appendage then
    show.partial_reject_odd_lot_offer_short_quote_appendage = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_short_quote_appendage
  end
  if show.quote_message ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_quote_message then
    show.quote_message = omi_siac_cqs_input_cta_v2_9_b.prefs.show_quote_message
  end
  if show.timestamp_1 ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_timestamp_1 then
    show.timestamp_1 = omi_siac_cqs_input_cta_v2_9_b.prefs.show_timestamp_1
  end
  if show.timestamp_2 ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_timestamp_2 then
    show.timestamp_2 = omi_siac_cqs_input_cta_v2_9_b.prefs.show_timestamp_2
  end
  if show.trade_message ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_trade_message then
    show.trade_message = omi_siac_cqs_input_cta_v2_9_b.prefs.show_trade_message
  end
  if show.message_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_message_index then
    show.message_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_message_index
  end
  if show.partial_reject_odd_lot_bid_short_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_short_quote_appendage_index then
    show.partial_reject_odd_lot_bid_short_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_short_quote_appendage_index
  end
  if show.partial_reject_odd_lot_offer_short_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_short_quote_appendage_index then
    show.partial_reject_odd_lot_offer_short_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_short_quote_appendage_index
  end
  if show.partial_reject_odd_lot_bid_long_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_long_quote_appendage_index then
    show.partial_reject_odd_lot_bid_long_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_long_quote_appendage_index
  end
  if show.partial_reject_odd_lot_offer_long_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_long_quote_appendage_index then
    show.partial_reject_odd_lot_offer_long_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_long_quote_appendage_index
  end
  if show.partial_reject_odd_lot_bid_extended_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_extended_quote_appendage_index then
    show.partial_reject_odd_lot_bid_extended_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_bid_extended_quote_appendage_index
  end
  if show.partial_reject_odd_lot_offer_extended_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_extended_quote_appendage_index then
    show.partial_reject_odd_lot_offer_extended_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_partial_reject_odd_lot_offer_extended_quote_appendage_index
  end
  if show.odd_lot_bid_short_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_short_quote_appendage_index then
    show.odd_lot_bid_short_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_short_quote_appendage_index
  end
  if show.odd_lot_offer_short_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_short_quote_appendage_index then
    show.odd_lot_offer_short_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_short_quote_appendage_index
  end
  if show.odd_lot_bid_long_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_long_quote_appendage_index then
    show.odd_lot_bid_long_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_long_quote_appendage_index
  end
  if show.odd_lot_offer_long_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_long_quote_appendage_index then
    show.odd_lot_offer_long_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_long_quote_appendage_index
  end
  if show.odd_lot_bid_extended_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_extended_quote_appendage_index then
    show.odd_lot_bid_extended_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_bid_extended_quote_appendage_index
  end
  if show.odd_lot_offer_extended_quote_appendage_index ~= omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_extended_quote_appendage_index then
    show.odd_lot_offer_extended_quote_appendage_index = omi_siac_cqs_input_cta_v2_9_b.prefs.show_odd_lot_offer_extended_quote_appendage_index
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
-- Siac Cqs Input Cta 2.9.b Fields
-----------------------------------------------------------------------

-- Administrative Message Type
siac_cqs_input_cta_v2_9_b.administrative_message_type = {}

-- Size: Administrative Message Type
siac_cqs_input_cta_v2_9_b.administrative_message_type.size = 1

-- Display: Administrative Message Type
siac_cqs_input_cta_v2_9_b.administrative_message_type.display = function(value)
  return "Administrative Message Type: "..value
end

-- Dissect: Administrative Message Type
siac_cqs_input_cta_v2_9_b.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Auction Collar Lower Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price = {}

-- Size: Auction Collar Lower Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.size = 8

-- Display: Auction Collar Lower Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.display = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
siac_cqs_input_cta_v2_9_b.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.size = 8

-- Display: Auction Collar Reference Price
siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Upper Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price = {}

-- Size: Auction Collar Upper Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.size = 8

-- Display: Auction Collar Upper Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.display = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Bid Price
siac_cqs_input_cta_v2_9_b.bid_price = {}

-- Size: Bid Price
siac_cqs_input_cta_v2_9_b.bid_price.size = 8

-- Display: Bid Price
siac_cqs_input_cta_v2_9_b.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
siac_cqs_input_cta_v2_9_b.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
siac_cqs_input_cta_v2_9_b.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.bid_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Short
siac_cqs_input_cta_v2_9_b.bid_price_short = {}

-- Size: Bid Price Short
siac_cqs_input_cta_v2_9_b.bid_price_short.size = 2

-- Display: Bid Price Short
siac_cqs_input_cta_v2_9_b.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
siac_cqs_input_cta_v2_9_b.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
siac_cqs_input_cta_v2_9_b.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_input_cta_v2_9_b.bid_price_short.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size
siac_cqs_input_cta_v2_9_b.bid_size = {}

-- Size: Bid Size
siac_cqs_input_cta_v2_9_b.bid_size.size = 4

-- Display: Bid Size
siac_cqs_input_cta_v2_9_b.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
siac_cqs_input_cta_v2_9_b.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Size Short
siac_cqs_input_cta_v2_9_b.bid_size_short = {}

-- Size: Bid Size Short
siac_cqs_input_cta_v2_9_b.bid_size_short.size = 2

-- Display: Bid Size Short
siac_cqs_input_cta_v2_9_b.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
siac_cqs_input_cta_v2_9_b.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Block Checksum
siac_cqs_input_cta_v2_9_b.block_checksum = {}

-- Size: Block Checksum
siac_cqs_input_cta_v2_9_b.block_checksum.size = 2

-- Display: Block Checksum
siac_cqs_input_cta_v2_9_b.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cqs_input_cta_v2_9_b.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Block Pad Byte
siac_cqs_input_cta_v2_9_b.block_pad_byte = {}

-- Size: Block Pad Byte
siac_cqs_input_cta_v2_9_b.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_cqs_input_cta_v2_9_b.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cqs_input_cta_v2_9_b.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Block Separator
siac_cqs_input_cta_v2_9_b.block_separator = {}

-- Size: Block Separator
siac_cqs_input_cta_v2_9_b.block_separator.size = 2

-- Display: Block Separator
siac_cqs_input_cta_v2_9_b.block_separator.display = function(value)
  return "Block Separator: "..value
end

-- Dissect: Block Separator
siac_cqs_input_cta_v2_9_b.block_separator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.block_separator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.block_separator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.block_separator, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_cqs_input_cta_v2_9_b.block_sequence_number = {}

-- Size: Block Sequence Number
siac_cqs_input_cta_v2_9_b.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_cqs_input_cta_v2_9_b.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cqs_input_cta_v2_9_b.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_cqs_input_cta_v2_9_b.block_size = {}

-- Size: Block Size
siac_cqs_input_cta_v2_9_b.block_size.size = 2

-- Display: Block Size
siac_cqs_input_cta_v2_9_b.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cqs_input_cta_v2_9_b.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.block_size, range, value, display)

  return offset + length, value
end

-- Buy Volume
siac_cqs_input_cta_v2_9_b.buy_volume = {}

-- Size: Buy Volume
siac_cqs_input_cta_v2_9_b.buy_volume.size = 4

-- Display: Buy Volume
siac_cqs_input_cta_v2_9_b.buy_volume.display = function(value)
  return "Buy Volume: "..value
end

-- Dissect: Buy Volume
siac_cqs_input_cta_v2_9_b.buy_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.buy_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.buy_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.buy_volume, range, value, display)

  return offset + length, value
end

-- Clear Prior Odd Lot Quotes
siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes = {}

-- Size: Clear Prior Odd Lot Quotes
siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size = 1

-- Display: Clear Prior Odd Lot Quotes
siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.display = function(value)
  if value == " " then
    return "Clear Prior Odd Lot Quotes: Not Applicable (<whitespace>)"
  end
  if value == "B" then
    return "Clear Prior Odd Lot Quotes: Clear All Previous Odd Lot Bids (B)"
  end
  if value == "S" then
    return "Clear Prior Odd Lot Quotes: Clear All Previous Odd Lot Offers (S)"
  end
  if value == "X" then
    return "Clear Prior Odd Lot Quotes: Clear All Previous Odd Lot Bids And Offers (X)"
  end

  return "Clear Prior Odd Lot Quotes: Unknown("..value..")"
end

-- Dissect: Clear Prior Odd Lot Quotes
siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.clear_prior_odd_lot_quotes, range, value, display)

  return offset + length, value
end

-- Control Message Type
siac_cqs_input_cta_v2_9_b.control_message_type = {}

-- Size: Control Message Type
siac_cqs_input_cta_v2_9_b.control_message_type.size = 1

-- Display: Control Message Type
siac_cqs_input_cta_v2_9_b.control_message_type.display = function(value)
  return "Control Message Type: "..value
end

-- Dissect: Control Message Type
siac_cqs_input_cta_v2_9_b.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Count Of Odd Lot Bid Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages = {}

-- Size: Count Of Odd Lot Bid Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size = 1

-- Display: Count Of Odd Lot Bid Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.display = function(value)
  return "Count Of Odd Lot Bid Appendages: "..value
end

-- Dissect: Count Of Odd Lot Bid Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.count_of_odd_lot_bid_appendages, range, value, display)

  return offset + length, value
end

-- Count Of Odd Lot Offer Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages = {}

-- Size: Count Of Odd Lot Offer Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size = 1

-- Display: Count Of Odd Lot Offer Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.display = function(value)
  return "Count Of Odd Lot Offer Appendages: "..value
end

-- Dissect: Count Of Odd Lot Offer Appendages
siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.count_of_odd_lot_offer_appendages, range, value, display)

  return offset + length, value
end

-- Current Block Sequence Number
siac_cqs_input_cta_v2_9_b.current_block_sequence_number = {}

-- Size: Current Block Sequence Number
siac_cqs_input_cta_v2_9_b.current_block_sequence_number.size = 4

-- Display: Current Block Sequence Number
siac_cqs_input_cta_v2_9_b.current_block_sequence_number.display = function(value)
  return "Current Block Sequence Number: "..value
end

-- Dissect: Current Block Sequence Number
siac_cqs_input_cta_v2_9_b.current_block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.current_block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.current_block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.current_block_sequence_number, range, value, display)

  return offset + length, value
end

-- Data
siac_cqs_input_cta_v2_9_b.data = {}

-- Size: Data
siac_cqs_input_cta_v2_9_b.data.size = 256

-- Display: Data
siac_cqs_input_cta_v2_9_b.data.display = function(value)
  return "Data: "..value
end

-- Dissect: Data
siac_cqs_input_cta_v2_9_b.data.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.data.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.data.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.data, range, value, display)

  return offset + length, value
end

-- Error Code
siac_cqs_input_cta_v2_9_b.error_code = {}

-- Size: Error Code
siac_cqs_input_cta_v2_9_b.error_code.size = 1

-- Display: Error Code
siac_cqs_input_cta_v2_9_b.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
siac_cqs_input_cta_v2_9_b.error_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.error_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.error_code, range, value, display)

  return offset + length, value
end

-- Finra Bbo Indicator
siac_cqs_input_cta_v2_9_b.finra_bbo_indicator = {}

-- Size: Finra Bbo Indicator
siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.size = 1

-- Display: Finra Bbo Indicator
siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.display = function(value)
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
siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_bbo_indicator, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id = {}

-- Size: Finra Best Bid Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.size = 4

-- Display: Finra Best Bid Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.display = function(value)
  return "Finra Best Bid Market Maker Id: "..value
end

-- Dissect: Finra Best Bid Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Price
siac_cqs_input_cta_v2_9_b.finra_best_bid_price = {}

-- Size: Finra Best Bid Price
siac_cqs_input_cta_v2_9_b.finra_best_bid_price.size = 8

-- Display: Finra Best Bid Price
siac_cqs_input_cta_v2_9_b.finra_best_bid_price.display = function(value)
  return "Finra Best Bid Price: "..value
end

-- Translate: Finra Best Bid Price
siac_cqs_input_cta_v2_9_b.finra_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Bid Price
siac_cqs_input_cta_v2_9_b.finra_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.finra_best_bid_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.finra_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_price, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition = {}

-- Size: Finra Best Bid Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.size = 1

-- Display: Finra Best Bid Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.display = function(value)
  return "Finra Best Bid Quote Condition: "..value
end

-- Dissect: Finra Best Bid Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Size
siac_cqs_input_cta_v2_9_b.finra_best_bid_size = {}

-- Size: Finra Best Bid Size
siac_cqs_input_cta_v2_9_b.finra_best_bid_size.size = 4

-- Display: Finra Best Bid Size
siac_cqs_input_cta_v2_9_b.finra_best_bid_size.display = function(value)
  return "Finra Best Bid Size: "..value
end

-- Dissect: Finra Best Bid Size
siac_cqs_input_cta_v2_9_b.finra_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.finra_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_bid_size, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id = {}

-- Size: Finra Best Offer Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.size = 4

-- Display: Finra Best Offer Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.display = function(value)
  return "Finra Best Offer Market Maker Id: "..value
end

-- Dissect: Finra Best Offer Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Price
siac_cqs_input_cta_v2_9_b.finra_best_offer_price = {}

-- Size: Finra Best Offer Price
siac_cqs_input_cta_v2_9_b.finra_best_offer_price.size = 8

-- Display: Finra Best Offer Price
siac_cqs_input_cta_v2_9_b.finra_best_offer_price.display = function(value)
  return "Finra Best Offer Price: "..value
end

-- Translate: Finra Best Offer Price
siac_cqs_input_cta_v2_9_b.finra_best_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Offer Price
siac_cqs_input_cta_v2_9_b.finra_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.finra_best_offer_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.finra_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_price, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition = {}

-- Size: Finra Best Offer Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.size = 1

-- Display: Finra Best Offer Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.display = function(value)
  return "Finra Best Offer Quote Condition: "..value
end

-- Dissect: Finra Best Offer Quote Condition
siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Size
siac_cqs_input_cta_v2_9_b.finra_best_offer_size = {}

-- Size: Finra Best Offer Size
siac_cqs_input_cta_v2_9_b.finra_best_offer_size.size = 4

-- Display: Finra Best Offer Size
siac_cqs_input_cta_v2_9_b.finra_best_offer_size.display = function(value)
  return "Finra Best Offer Size: "..value
end

-- Dissect: Finra Best Offer Size
siac_cqs_input_cta_v2_9_b.finra_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.finra_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_best_offer_size, range, value, display)

  return offset + length, value
end

-- Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_market_maker_id = {}

-- Size: Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_market_maker_id.size = 4

-- Display: Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_market_maker_id.display = function(value)
  return "Finra Market Maker Id: "..value
end

-- Dissect: Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.finra_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.finra_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.finra_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.finra_market_maker_id, range, value, display)

  return offset + length, value
end

-- Halt Reason
siac_cqs_input_cta_v2_9_b.halt_reason = {}

-- Size: Halt Reason
siac_cqs_input_cta_v2_9_b.halt_reason.size = 1

-- Display: Halt Reason
siac_cqs_input_cta_v2_9_b.halt_reason.display = function(value)
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
siac_cqs_input_cta_v2_9_b.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- High Indication Price Upper Limit Price Band
siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band = {}

-- Size: High Indication Price Upper Limit Price Band
siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.size = 8

-- Display: High Indication Price Upper Limit Price Band
siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.display = function(value)
  return "High Indication Price Upper Limit Price Band: "..value
end

-- Translate: High Indication Price Upper Limit Price Band
siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price Upper Limit Price Band
siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.high_indication_price_upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Instrument Type
siac_cqs_input_cta_v2_9_b.instrument_type = {}

-- Size: Instrument Type
siac_cqs_input_cta_v2_9_b.instrument_type.size = 1

-- Display: Instrument Type
siac_cqs_input_cta_v2_9_b.instrument_type.display = function(value)
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
siac_cqs_input_cta_v2_9_b.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Last Participant Reference Number
siac_cqs_input_cta_v2_9_b.last_participant_reference_number = {}

-- Size: Last Participant Reference Number
siac_cqs_input_cta_v2_9_b.last_participant_reference_number.size = 8

-- Display: Last Participant Reference Number
siac_cqs_input_cta_v2_9_b.last_participant_reference_number.display = function(value)
  return "Last Participant Reference Number: "..value
end

-- Dissect: Last Participant Reference Number
siac_cqs_input_cta_v2_9_b.last_participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.last_participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_input_cta_v2_9_b.last_participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.last_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Last Price Opening Reopening Luld Reference Price
siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price = {}

-- Size: Last Price Opening Reopening Luld Reference Price
siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.size = 8

-- Display: Last Price Opening Reopening Luld Reference Price
siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.display = function(value)
  return "Last Price Opening Reopening Luld Reference Price: "..value
end

-- Translate: Last Price Opening Reopening Luld Reference Price
siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Last Price Opening Reopening Luld Reference Price
siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.last_price_opening_reopening_luld_reference_price, range, value, display)

  return offset + length, value
end

-- Low Indication Price Lower Limit Price Band
siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band = {}

-- Size: Low Indication Price Lower Limit Price Band
siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.size = 8

-- Display: Low Indication Price Lower Limit Price Band
siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.display = function(value)
  return "Low Indication Price Lower Limit Price Band: "..value
end

-- Translate: Low Indication Price Lower Limit Price Band
siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price Lower Limit Price Band
siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.low_indication_price_lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Market Condition
siac_cqs_input_cta_v2_9_b.market_condition = {}

-- Size: Market Condition
siac_cqs_input_cta_v2_9_b.market_condition.size = 1

-- Display: Market Condition
siac_cqs_input_cta_v2_9_b.market_condition.display = function(value)
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
siac_cqs_input_cta_v2_9_b.market_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.market_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.market_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Message Category
siac_cqs_input_cta_v2_9_b.message_category = {}

-- Size: Message Category
siac_cqs_input_cta_v2_9_b.message_category.size = 1

-- Display: Message Category
siac_cqs_input_cta_v2_9_b.message_category.display = function(value)
  if value == "A" then
    return "Message Category: Administrative (A)"
  end
  if value == "C" then
    return "Message Category: Control (C)"
  end
  if value == "Q" then
    return "Message Category: Quote (Q)"
  end
  if value == "T" then
    return "Message Category: Trade (T)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_cqs_input_cta_v2_9_b.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Count
siac_cqs_input_cta_v2_9_b.message_count = {}

-- Size: Message Count
siac_cqs_input_cta_v2_9_b.message_count.size = 8

-- Display: Message Count
siac_cqs_input_cta_v2_9_b.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
siac_cqs_input_cta_v2_9_b.message_count.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_cqs_input_cta_v2_9_b.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message ID
siac_cqs_input_cta_v2_9_b.message_id = {}

-- Size: Message ID
siac_cqs_input_cta_v2_9_b.message_id.size = 1

-- Display: Message ID
siac_cqs_input_cta_v2_9_b.message_id.display = function(value)
  return "Message ID: "..value
end

-- Dissect: Message ID
siac_cqs_input_cta_v2_9_b.message_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.message_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.message_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message_id, range, value, display)

  return offset + length, value
end

-- Message Length
siac_cqs_input_cta_v2_9_b.message_length = {}

-- Size: Message Length
siac_cqs_input_cta_v2_9_b.message_length.size = 2

-- Display: Message Length
siac_cqs_input_cta_v2_9_b.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cqs_input_cta_v2_9_b.message_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
siac_cqs_input_cta_v2_9_b.message_type = {}

-- Size: Message Type
siac_cqs_input_cta_v2_9_b.message_type.size = 1

-- Display: Message Type
siac_cqs_input_cta_v2_9_b.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
siac_cqs_input_cta_v2_9_b.message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message_type, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_cqs_input_cta_v2_9_b.messages_in_block = {}

-- Size: Messages In Block
siac_cqs_input_cta_v2_9_b.messages_in_block.size = 1

-- Display: Messages In Block
siac_cqs_input_cta_v2_9_b.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cqs_input_cta_v2_9_b.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_cqs_input_cta_v2_9_b.nanoseconds = {}

-- Size: Nanoseconds
siac_cqs_input_cta_v2_9_b.nanoseconds.size = 4

-- Display: Nanoseconds
siac_cqs_input_cta_v2_9_b.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cqs_input_cta_v2_9_b.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Number Of Extensions
siac_cqs_input_cta_v2_9_b.number_of_extensions = {}

-- Size: Number Of Extensions
siac_cqs_input_cta_v2_9_b.number_of_extensions.size = 1

-- Display: Number Of Extensions
siac_cqs_input_cta_v2_9_b.number_of_extensions.display = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cqs_input_cta_v2_9_b.number_of_extensions.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.number_of_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.number_of_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Odd Lot Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id = {}

-- Size: Odd Lot Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.size = 4

-- Display: Odd Lot Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.display = function(value)
  return "Odd Lot Finra Market Maker Id: "..value
end

-- Dissect: Odd Lot Finra Market Maker Id
siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_finra_market_maker_id, range, value, display)

  return offset + length, value
end

-- Odd Lot Quote Appendage Type
siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type = {}

-- Size: Odd Lot Quote Appendage Type
siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type.size = 1

-- Display: Odd Lot Quote Appendage Type
siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type.display = function(value)
  if value == "S" then
    return "Odd Lot Quote Appendage Type: Odd Lot Quote Short Appendage (S)"
  end
  if value == "L" then
    return "Odd Lot Quote Appendage Type: Odd Lot Quote Long Appendage (L)"
  end
  if value == "E" then
    return "Odd Lot Quote Appendage Type: Odd Lot Quote Extended Appendage (E)"
  end

  return "Odd Lot Quote Appendage Type: Unknown("..value..")"
end

-- Dissect: Odd Lot Quote Appendage Type
siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_appendage_type, range, value, display)

  return offset + length, value
end

-- Odd Lot Quote Price
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price = {}

-- Size: Odd Lot Quote Price
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size = 8

-- Display: Odd Lot Quote Price
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.display = function(value)
  return "Odd Lot Quote Price: "..value
end

-- Translate: Odd Lot Quote Price
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Odd Lot Quote Price
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_price, range, value, display)

  return offset + length, value
end

-- Odd Lot Quote Price 2
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2 = {}

-- Size: Odd Lot Quote Price 2
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.size = 2

-- Display: Odd Lot Quote Price 2
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.display = function(value)
  return "Odd Lot Quote Price 2: "..value
end

-- Translate: Odd Lot Quote Price 2
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Odd Lot Quote Price 2
siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_price_2, range, value, display)

  return offset + length, value
end

-- Odd Lot Quote Size
siac_cqs_input_cta_v2_9_b.odd_lot_quote_size = {}

-- Size: Odd Lot Quote Size
siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size = 1

-- Display: Odd Lot Quote Size
siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.display = function(value)
  return "Odd Lot Quote Size: "..value
end

-- Dissect: Odd Lot Quote Size
siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_quote_size, range, value, display)

  return offset + length, value
end

-- Offer Price
siac_cqs_input_cta_v2_9_b.offer_price = {}

-- Size: Offer Price
siac_cqs_input_cta_v2_9_b.offer_price.size = 8

-- Display: Offer Price
siac_cqs_input_cta_v2_9_b.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
siac_cqs_input_cta_v2_9_b.offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price
siac_cqs_input_cta_v2_9_b.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.offer_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Price Short
siac_cqs_input_cta_v2_9_b.offer_price_short = {}

-- Size: Offer Price Short
siac_cqs_input_cta_v2_9_b.offer_price_short.size = 2

-- Display: Offer Price Short
siac_cqs_input_cta_v2_9_b.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
siac_cqs_input_cta_v2_9_b.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
siac_cqs_input_cta_v2_9_b.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_input_cta_v2_9_b.offer_price_short.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Size
siac_cqs_input_cta_v2_9_b.offer_size = {}

-- Size: Offer Size
siac_cqs_input_cta_v2_9_b.offer_size.size = 4

-- Display: Offer Size
siac_cqs_input_cta_v2_9_b.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
siac_cqs_input_cta_v2_9_b.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Offer Size Short
siac_cqs_input_cta_v2_9_b.offer_size_short = {}

-- Size: Offer Size Short
siac_cqs_input_cta_v2_9_b.offer_size_short.size = 2

-- Display: Offer Size Short
siac_cqs_input_cta_v2_9_b.offer_size_short.display = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
siac_cqs_input_cta_v2_9_b.offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.offer_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Participant ID
siac_cqs_input_cta_v2_9_b.participant_id = {}

-- Size: Participant ID
siac_cqs_input_cta_v2_9_b.participant_id.size = 1

-- Display: Participant ID
siac_cqs_input_cta_v2_9_b.participant_id.display = function(value)
  return "Participant ID: "..value
end

-- Dissect: Participant ID
siac_cqs_input_cta_v2_9_b.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Reference Number
siac_cqs_input_cta_v2_9_b.participant_reference_number = {}

-- Size: Participant Reference Number
siac_cqs_input_cta_v2_9_b.participant_reference_number.size = 8

-- Display: Participant Reference Number
siac_cqs_input_cta_v2_9_b.participant_reference_number.display = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_cqs_input_cta_v2_9_b.participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_input_cta_v2_9_b.participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Previous Block Sequence Number
siac_cqs_input_cta_v2_9_b.previous_block_sequence_number = {}

-- Size: Previous Block Sequence Number
siac_cqs_input_cta_v2_9_b.previous_block_sequence_number.size = 4

-- Display: Previous Block Sequence Number
siac_cqs_input_cta_v2_9_b.previous_block_sequence_number.display = function(value)
  return "Previous Block Sequence Number: "..value
end

-- Dissect: Previous Block Sequence Number
siac_cqs_input_cta_v2_9_b.previous_block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.previous_block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.previous_block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.previous_block_sequence_number, range, value, display)

  return offset + length, value
end

-- Previous Participant Reference Number
siac_cqs_input_cta_v2_9_b.previous_participant_reference_number = {}

-- Size: Previous Participant Reference Number
siac_cqs_input_cta_v2_9_b.previous_participant_reference_number.size = 8

-- Display: Previous Participant Reference Number
siac_cqs_input_cta_v2_9_b.previous_participant_reference_number.display = function(value)
  return "Previous Participant Reference Number: "..value
end

-- Dissect: Previous Participant Reference Number
siac_cqs_input_cta_v2_9_b.previous_participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.previous_participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_input_cta_v2_9_b.previous_participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.previous_participant_reference_number, range, value, display)

  return offset + length, value
end

-- Quote Condition
siac_cqs_input_cta_v2_9_b.quote_condition = {}

-- Size: Quote Condition
siac_cqs_input_cta_v2_9_b.quote_condition.size = 1

-- Display: Quote Condition
siac_cqs_input_cta_v2_9_b.quote_condition.display = function(value)
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
    return "Quote Condition: Closed Market Maker Finra (L)"
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
siac_cqs_input_cta_v2_9_b.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Quote Message Type
siac_cqs_input_cta_v2_9_b.quote_message_type = {}

-- Size: Quote Message Type
siac_cqs_input_cta_v2_9_b.quote_message_type.size = 1

-- Display: Quote Message Type
siac_cqs_input_cta_v2_9_b.quote_message_type.display = function(value)
  return "Quote Message Type: "..value
end

-- Dissect: Quote Message Type
siac_cqs_input_cta_v2_9_b.quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Reserved
siac_cqs_input_cta_v2_9_b.reserved = {}

-- Size: Reserved
siac_cqs_input_cta_v2_9_b.reserved.size = 4

-- Display: Reserved
siac_cqs_input_cta_v2_9_b.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cqs_input_cta_v2_9_b.reserved.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 2
siac_cqs_input_cta_v2_9_b.reserved_2 = {}

-- Size: Reserved 2
siac_cqs_input_cta_v2_9_b.reserved_2.size = 2

-- Display: Reserved 2
siac_cqs_input_cta_v2_9_b.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
siac_cqs_input_cta_v2_9_b.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 62
siac_cqs_input_cta_v2_9_b.reserved_62 = {}

-- Size: Reserved 62
siac_cqs_input_cta_v2_9_b.reserved_62.size = 62

-- Display: Reserved 62
siac_cqs_input_cta_v2_9_b.reserved_62.display = function(value)
  return "Reserved 62: "..value
end

-- Dissect: Reserved 62
siac_cqs_input_cta_v2_9_b.reserved_62.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.reserved_62.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.reserved_62.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.reserved_62, range, value, display)

  return offset + length, value
end

-- Reserved 8
siac_cqs_input_cta_v2_9_b.reserved_8 = {}

-- Size: Reserved 8
siac_cqs_input_cta_v2_9_b.reserved_8.size = 8

-- Display: Reserved 8
siac_cqs_input_cta_v2_9_b.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
siac_cqs_input_cta_v2_9_b.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.reserved_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
siac_cqs_input_cta_v2_9_b.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
siac_cqs_input_cta_v2_9_b.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
siac_cqs_input_cta_v2_9_b.retail_interest_indicator.display = function(value)
  if value == " " then
    return "Retail Interest Indicator: Retail Interest Not Applicable (<whitespace>)"
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
siac_cqs_input_cta_v2_9_b.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Bid Price
siac_cqs_input_cta_v2_9_b.round_lot_bid_price = {}

-- Size: Round Lot Bid Price
siac_cqs_input_cta_v2_9_b.round_lot_bid_price.size = 8

-- Display: Round Lot Bid Price
siac_cqs_input_cta_v2_9_b.round_lot_bid_price.display = function(value)
  return "Round Lot Bid Price: "..value
end

-- Translate: Round Lot Bid Price
siac_cqs_input_cta_v2_9_b.round_lot_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Round Lot Bid Price
siac_cqs_input_cta_v2_9_b.round_lot_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.round_lot_bid_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.round_lot_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_price, range, value, display)

  return offset + length, value
end

-- Round Lot Bid Price Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short = {}

-- Size: Round Lot Bid Price Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.size = 2

-- Display: Round Lot Bid Price Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.display = function(value)
  return "Round Lot Bid Price Short: "..value
end

-- Translate: Round Lot Bid Price Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Round Lot Bid Price Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_price_short, range, value, display)

  return offset + length, value
end

-- Round Lot Bid Size
siac_cqs_input_cta_v2_9_b.round_lot_bid_size = {}

-- Size: Round Lot Bid Size
siac_cqs_input_cta_v2_9_b.round_lot_bid_size.size = 4

-- Display: Round Lot Bid Size
siac_cqs_input_cta_v2_9_b.round_lot_bid_size.display = function(value)
  return "Round Lot Bid Size: "..value
end

-- Dissect: Round Lot Bid Size
siac_cqs_input_cta_v2_9_b.round_lot_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.round_lot_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_size, range, value, display)

  return offset + length, value
end

-- Round Lot Bid Size Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short = {}

-- Size: Round Lot Bid Size Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short.size = 2

-- Display: Round Lot Bid Size Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short.display = function(value)
  return "Round Lot Bid Size Short: "..value
end

-- Dissect: Round Lot Bid Size Short
siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_bid_size_short, range, value, display)

  return offset + length, value
end

-- Round Lot Offer Price
siac_cqs_input_cta_v2_9_b.round_lot_offer_price = {}

-- Size: Round Lot Offer Price
siac_cqs_input_cta_v2_9_b.round_lot_offer_price.size = 8

-- Display: Round Lot Offer Price
siac_cqs_input_cta_v2_9_b.round_lot_offer_price.display = function(value)
  return "Round Lot Offer Price: "..value
end

-- Translate: Round Lot Offer Price
siac_cqs_input_cta_v2_9_b.round_lot_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Round Lot Offer Price
siac_cqs_input_cta_v2_9_b.round_lot_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_input_cta_v2_9_b.round_lot_offer_price.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.round_lot_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_price, range, value, display)

  return offset + length, value
end

-- Round Lot Offer Price Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short = {}

-- Size: Round Lot Offer Price Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.size = 2

-- Display: Round Lot Offer Price Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.display = function(value)
  return "Round Lot Offer Price Short: "..value
end

-- Translate: Round Lot Offer Price Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Round Lot Offer Price Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.translate(raw)
  local display = siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_price_short, range, value, display)

  return offset + length, value
end

-- Round Lot Offer Size
siac_cqs_input_cta_v2_9_b.round_lot_offer_size = {}

-- Size: Round Lot Offer Size
siac_cqs_input_cta_v2_9_b.round_lot_offer_size.size = 4

-- Display: Round Lot Offer Size
siac_cqs_input_cta_v2_9_b.round_lot_offer_size.display = function(value)
  return "Round Lot Offer Size: "..value
end

-- Dissect: Round Lot Offer Size
siac_cqs_input_cta_v2_9_b.round_lot_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.round_lot_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_size, range, value, display)

  return offset + length, value
end

-- Round Lot Offer Size Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short = {}

-- Size: Round Lot Offer Size Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short.size = 2

-- Display: Round Lot Offer Size Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short.display = function(value)
  return "Round Lot Offer Size Short: "..value
end

-- Dissect: Round Lot Offer Size Short
siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_offer_size_short, range, value, display)

  return offset + length, value
end

-- Seconds
siac_cqs_input_cta_v2_9_b.seconds = {}

-- Size: Seconds
siac_cqs_input_cta_v2_9_b.seconds.size = 4

-- Display: Seconds
siac_cqs_input_cta_v2_9_b.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cqs_input_cta_v2_9_b.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Status
siac_cqs_input_cta_v2_9_b.security_status = {}

-- Size: Security Status
siac_cqs_input_cta_v2_9_b.security_status.size = 1

-- Display: Security Status
siac_cqs_input_cta_v2_9_b.security_status.display = function(value)
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
siac_cqs_input_cta_v2_9_b.security_status.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.security_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.security_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.security_status, range, value, display)

  return offset + length, value
end

-- Security Status Indicator
siac_cqs_input_cta_v2_9_b.security_status_indicator = {}

-- Size: Security Status Indicator
siac_cqs_input_cta_v2_9_b.security_status_indicator.size = 1

-- Display: Security Status Indicator
siac_cqs_input_cta_v2_9_b.security_status_indicator.display = function(value)
  return "Security Status Indicator: "..value
end

-- Dissect: Security Status Indicator
siac_cqs_input_cta_v2_9_b.security_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.security_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.security_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.security_status_indicator, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_cqs_input_cta_v2_9_b.security_symbol = {}

-- Size: Security Symbol
siac_cqs_input_cta_v2_9_b.security_symbol.size = 11

-- Display: Security Symbol
siac_cqs_input_cta_v2_9_b.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cqs_input_cta_v2_9_b.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Security Symbol Begin Range
siac_cqs_input_cta_v2_9_b.security_symbol_begin_range = {}

-- Size: Security Symbol Begin Range
siac_cqs_input_cta_v2_9_b.security_symbol_begin_range.size = 11

-- Display: Security Symbol Begin Range
siac_cqs_input_cta_v2_9_b.security_symbol_begin_range.display = function(value)
  return "Security Symbol Begin Range: "..value
end

-- Dissect: Security Symbol Begin Range
siac_cqs_input_cta_v2_9_b.security_symbol_begin_range.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.security_symbol_begin_range.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.security_symbol_begin_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol_begin_range, range, value, display)

  return offset + length, value
end

-- Security Symbol End Range
siac_cqs_input_cta_v2_9_b.security_symbol_end_range = {}

-- Size: Security Symbol End Range
siac_cqs_input_cta_v2_9_b.security_symbol_end_range.size = 11

-- Display: Security Symbol End Range
siac_cqs_input_cta_v2_9_b.security_symbol_end_range.display = function(value)
  return "Security Symbol End Range: "..value
end

-- Dissect: Security Symbol End Range
siac_cqs_input_cta_v2_9_b.security_symbol_end_range.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.security_symbol_end_range.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.security_symbol_end_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol_end_range, range, value, display)

  return offset + length, value
end

-- Security Symbol Short
siac_cqs_input_cta_v2_9_b.security_symbol_short = {}

-- Size: Security Symbol Short
siac_cqs_input_cta_v2_9_b.security_symbol_short.size = 5

-- Display: Security Symbol Short
siac_cqs_input_cta_v2_9_b.security_symbol_short.display = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
siac_cqs_input_cta_v2_9_b.security_symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.security_symbol_short.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_input_cta_v2_9_b.security_symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Sell Volume
siac_cqs_input_cta_v2_9_b.sell_volume = {}

-- Size: Sell Volume
siac_cqs_input_cta_v2_9_b.sell_volume.size = 4

-- Display: Sell Volume
siac_cqs_input_cta_v2_9_b.sell_volume.display = function(value)
  return "Sell Volume: "..value
end

-- Dissect: Sell Volume
siac_cqs_input_cta_v2_9_b.sell_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.sell_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.sell_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.sell_volume, range, value, display)

  return offset + length, value
end

-- Settlement Condition
siac_cqs_input_cta_v2_9_b.settlement_condition = {}

-- Size: Settlement Condition
siac_cqs_input_cta_v2_9_b.settlement_condition.size = 1

-- Display: Settlement Condition
siac_cqs_input_cta_v2_9_b.settlement_condition.display = function(value)
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
siac_cqs_input_cta_v2_9_b.settlement_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.settlement_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.settlement_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.settlement_condition, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction Indicator
siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator = {}

-- Size: Short Sale Restriction Indicator
siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.size = 1

-- Display: Short Sale Restriction Indicator
siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.display = function(value)
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

  return "Short Sale Restriction Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction Indicator
siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Trade Message Type
siac_cqs_input_cta_v2_9_b.trade_message_type = {}

-- Size: Trade Message Type
siac_cqs_input_cta_v2_9_b.trade_message_type.size = 1

-- Display: Trade Message Type
siac_cqs_input_cta_v2_9_b.trade_message_type.display = function(value)
  return "Trade Message Type: "..value
end

-- Dissect: Trade Message Type
siac_cqs_input_cta_v2_9_b.trade_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.trade_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_input_cta_v2_9_b.trade_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Trading Status Id
siac_cqs_input_cta_v2_9_b.trading_status_id = {}

-- Size: Trading Status Id
siac_cqs_input_cta_v2_9_b.trading_status_id.size = 4

-- Display: Trading Status Id
siac_cqs_input_cta_v2_9_b.trading_status_id.display = function(value)
  return "Trading Status Id: "..value
end

-- Dissect: Trading Status Id
siac_cqs_input_cta_v2_9_b.trading_status_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.trading_status_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.trading_status_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.trading_status_id, range, value, display)

  return offset + length, value
end

-- Version
siac_cqs_input_cta_v2_9_b.version = {}

-- Size: Version
siac_cqs_input_cta_v2_9_b.version.size = 1

-- Display: Version
siac_cqs_input_cta_v2_9_b.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cqs_input_cta_v2_9_b.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_input_cta_v2_9_b.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_input_cta_v2_9_b.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Siac Cqs Input Cta 2.9.b
-----------------------------------------------------------------------

-- Trading Status Message
siac_cqs_input_cta_v2_9_b.trading_status_message = {}

-- Size: Trading Status Message
siac_cqs_input_cta_v2_9_b.trading_status_message.size =
  siac_cqs_input_cta_v2_9_b.security_symbol.size + 
  siac_cqs_input_cta_v2_9_b.instrument_type.size + 
  siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.size + 
  siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.size + 
  siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.size + 
  siac_cqs_input_cta_v2_9_b.buy_volume.size + 
  siac_cqs_input_cta_v2_9_b.sell_volume.size + 
  siac_cqs_input_cta_v2_9_b.security_status.size + 
  siac_cqs_input_cta_v2_9_b.halt_reason.size + 
  siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.size + 
  siac_cqs_input_cta_v2_9_b.trading_status_id.size

-- Display: Trading Status Message
siac_cqs_input_cta_v2_9_b.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
siac_cqs_input_cta_v2_9_b.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_input_cta_v2_9_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Last Price Opening Reopening Luld Reference Price: Long
  index, last_price_opening_reopening_luld_reference_price = siac_cqs_input_cta_v2_9_b.last_price_opening_reopening_luld_reference_price.dissect(buffer, index, packet, parent)

  -- High Indication Price Upper Limit Price Band: Long
  index, high_indication_price_upper_limit_price_band = siac_cqs_input_cta_v2_9_b.high_indication_price_upper_limit_price_band.dissect(buffer, index, packet, parent)

  -- Low Indication Price Lower Limit Price Band: Long
  index, low_indication_price_lower_limit_price_band = siac_cqs_input_cta_v2_9_b.low_indication_price_lower_limit_price_band.dissect(buffer, index, packet, parent)

  -- Buy Volume: Integer
  index, buy_volume = siac_cqs_input_cta_v2_9_b.buy_volume.dissect(buffer, index, packet, parent)

  -- Sell Volume: Integer
  index, sell_volume = siac_cqs_input_cta_v2_9_b.sell_volume.dissect(buffer, index, packet, parent)

  -- Security Status: Char
  index, security_status = siac_cqs_input_cta_v2_9_b.security_status.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cqs_input_cta_v2_9_b.halt_reason.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Trading Status Id: Integer
  index, trading_status_id = siac_cqs_input_cta_v2_9_b.trading_status_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
siac_cqs_input_cta_v2_9_b.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.trading_status_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Message Payload
siac_cqs_input_cta_v2_9_b.trade_message_payload = {}

-- Dissect: Trade Message Payload
siac_cqs_input_cta_v2_9_b.trade_message_payload.dissect = function(buffer, offset, packet, parent, trade_message_type)
  -- Dissect Trading Status Message
  if trade_message_type == "S" then
    return siac_cqs_input_cta_v2_9_b.trading_status_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Trade Message
siac_cqs_input_cta_v2_9_b.trade_message = {}

-- Calculate size of: Trade Message
siac_cqs_input_cta_v2_9_b.trade_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.trade_message_type.size

  -- Calculate runtime size of Trade Message Payload field
  local trade_message_payload_offset = offset + index
  local trade_message_payload_type = buffer(trade_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_input_cta_v2_9_b.trade_message_payload.size(buffer, trade_message_payload_offset, trade_message_payload_type)

  return index
end

-- Display: Trade Message
siac_cqs_input_cta_v2_9_b.trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Message
siac_cqs_input_cta_v2_9_b.trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: Char
  index, trade_message_type = siac_cqs_input_cta_v2_9_b.trade_message_type.dissect(buffer, index, packet, parent)

  -- Trade Message Payload: Runtime Type with 1 branches
  index = siac_cqs_input_cta_v2_9_b.trade_message_payload.dissect(buffer, index, packet, parent, trade_message_type)

  return index
end

-- Dissect: Trade Message
siac_cqs_input_cta_v2_9_b.trade_message.dissect = function(buffer, offset, packet, parent)
  if show.trade_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.trade_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage = {}

-- Size: Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.size

-- Display: Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.fields = function(buffer, offset, packet, parent, odd_lot_offer_extended_quote_appendage_index)
  local index = offset

  -- Implicit Odd Lot Offer Extended Quote Appendage Index
  if odd_lot_offer_extended_quote_appendage_index ~= nil and show.odd_lot_offer_extended_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_extended_quote_appendage_index, odd_lot_offer_extended_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  -- Odd Lot Finra Market Maker Id: Char[]
  index, odd_lot_finra_market_maker_id = siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.dissect = function(buffer, offset, packet, parent, odd_lot_offer_extended_quote_appendage_index)
  if show.odd_lot_offer_extended_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_extended_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_offer_extended_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_offer_extended_quote_appendage_index)
  end
end

-- Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage = {}

-- Size: Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.size

-- Display: Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.fields = function(buffer, offset, packet, parent, odd_lot_bid_extended_quote_appendage_index)
  local index = offset

  -- Implicit Odd Lot Bid Extended Quote Appendage Index
  if odd_lot_bid_extended_quote_appendage_index ~= nil and show.odd_lot_bid_extended_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_extended_quote_appendage_index, odd_lot_bid_extended_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  -- Odd Lot Finra Market Maker Id: Char[]
  index, odd_lot_finra_market_maker_id = siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.dissect = function(buffer, offset, packet, parent, odd_lot_bid_extended_quote_appendage_index)
  if show.odd_lot_bid_extended_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_extended_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_bid_extended_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_bid_extended_quote_appendage_index)
  end
end

-- Odd Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message = {}

-- Calculate size of: Odd Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.security_symbol.size

  index = index + siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size

  -- Calculate field size from count
  local odd_lot_bid_extended_quote_appendage_count = buffer(offset + index - 2, 1):uint()
  index = index + odd_lot_bid_extended_quote_appendage_count * 13

  -- Calculate field size from count
  local odd_lot_offer_extended_quote_appendage_count = buffer(offset + index - 14, 1):uint()
  index = index + odd_lot_offer_extended_quote_appendage_count * 13

  return index
end

-- Display: Odd Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Clear Prior Odd Lot Quotes: Char
  index, clear_prior_odd_lot_quotes = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Bid Appendages: Byte
  index, count_of_odd_lot_bid_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Offer Appendages: Byte
  index, count_of_odd_lot_offer_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Extended Quote Appendage
  for odd_lot_bid_extended_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
    index, odd_lot_bid_extended_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_bid_extended_quote_appendage_index)
  end

  -- Repeating: Odd Lot Offer Extended Quote Appendage
  for odd_lot_offer_extended_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
    index, odd_lot_offer_extended_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_offer_extended_quote_appendage_index)
  end

  return index
end

-- Dissect: Odd Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_finra_adf_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage = {}

-- Size: Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.fields = function(buffer, offset, packet, parent, odd_lot_offer_long_quote_appendage_index)
  local index = offset

  -- Implicit Odd Lot Offer Long Quote Appendage Index
  if odd_lot_offer_long_quote_appendage_index ~= nil and show.odd_lot_offer_long_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_long_quote_appendage_index, odd_lot_offer_long_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.dissect = function(buffer, offset, packet, parent, odd_lot_offer_long_quote_appendage_index)
  if show.odd_lot_offer_long_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_long_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_offer_long_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_offer_long_quote_appendage_index)
  end
end

-- Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage = {}

-- Size: Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.fields = function(buffer, offset, packet, parent, odd_lot_bid_long_quote_appendage_index)
  local index = offset

  -- Implicit Odd Lot Bid Long Quote Appendage Index
  if odd_lot_bid_long_quote_appendage_index ~= nil and show.odd_lot_bid_long_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_long_quote_appendage_index, odd_lot_bid_long_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.dissect = function(buffer, offset, packet, parent, odd_lot_bid_long_quote_appendage_index)
  if show.odd_lot_bid_long_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_long_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_bid_long_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_bid_long_quote_appendage_index)
  end
end

-- Odd Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message = {}

-- Calculate size of: Odd Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.security_symbol.size

  index = index + siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size

  -- Calculate field size from count
  local odd_lot_bid_long_quote_appendage_count = buffer(offset + index - 2, 1):uint()
  index = index + odd_lot_bid_long_quote_appendage_count * 9

  -- Calculate field size from count
  local odd_lot_offer_long_quote_appendage_count = buffer(offset + index - 10, 1):uint()
  index = index + odd_lot_offer_long_quote_appendage_count * 9

  return index
end

-- Display: Odd Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Clear Prior Odd Lot Quotes: Char
  index, clear_prior_odd_lot_quotes = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Bid Appendages: Byte
  index, count_of_odd_lot_bid_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Offer Appendages: Byte
  index, count_of_odd_lot_offer_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Long Quote Appendage
  for odd_lot_bid_long_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
    index, odd_lot_bid_long_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_bid_long_quote_appendage_index)
  end

  -- Repeating: Odd Lot Offer Long Quote Appendage
  for odd_lot_offer_long_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
    index, odd_lot_offer_long_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_offer_long_quote_appendage_index)
  end

  return index
end

-- Dissect: Odd Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_long_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage = {}

-- Size: Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.fields = function(buffer, offset, packet, parent, odd_lot_offer_short_quote_appendage_index)
  local index = offset

  -- Implicit Odd Lot Offer Short Quote Appendage Index
  if odd_lot_offer_short_quote_appendage_index ~= nil and show.odd_lot_offer_short_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_short_quote_appendage_index, odd_lot_offer_short_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price 2: Short
  index, odd_lot_quote_price_2 = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.dissect = function(buffer, offset, packet, parent, odd_lot_offer_short_quote_appendage_index)
  if show.odd_lot_offer_short_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_offer_short_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_offer_short_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_offer_short_quote_appendage_index)
  end
end

-- Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage = {}

-- Size: Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.fields = function(buffer, offset, packet, parent, odd_lot_bid_short_quote_appendage_index)
  local index = offset

  -- Implicit Odd Lot Bid Short Quote Appendage Index
  if odd_lot_bid_short_quote_appendage_index ~= nil and show.odd_lot_bid_short_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_short_quote_appendage_index, odd_lot_bid_short_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price 2: Short
  index, odd_lot_quote_price_2 = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.dissect = function(buffer, offset, packet, parent, odd_lot_bid_short_quote_appendage_index)
  if show.odd_lot_bid_short_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_bid_short_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_bid_short_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.fields(buffer, offset, packet, parent, odd_lot_bid_short_quote_appendage_index)
  end
end

-- Odd Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message = {}

-- Calculate size of: Odd Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.security_symbol_short.size

  index = index + siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size

  -- Calculate field size from count
  local odd_lot_bid_short_quote_appendage_count = buffer(offset + index - 2, 1):uint()
  index = index + odd_lot_bid_short_quote_appendage_count * 3

  -- Calculate field size from count
  local odd_lot_offer_short_quote_appendage_count = buffer(offset + index - 4, 1):uint()
  index = index + odd_lot_offer_short_quote_appendage_count * 3

  return index
end

-- Display: Odd Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol Short: Char[]
  index, security_symbol_short = siac_cqs_input_cta_v2_9_b.security_symbol_short.dissect(buffer, index, packet, parent)

  -- Clear Prior Odd Lot Quotes: Char
  index, clear_prior_odd_lot_quotes = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Bid Appendages: Byte
  index, count_of_odd_lot_bid_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Offer Appendages: Byte
  index, count_of_odd_lot_offer_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Short Quote Appendage
  for odd_lot_bid_short_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
    index, odd_lot_bid_short_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_bid_short_quote_appendage_index)
  end

  -- Repeating: Odd Lot Offer Short Quote Appendage
  for odd_lot_offer_short_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
    index, odd_lot_offer_short_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_offer_short_quote_appendage_index)
  end

  return index
end

-- Dissect: Odd Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_short_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Timestamp 2
siac_cqs_input_cta_v2_9_b.timestamp_2 = {}

-- Size: Timestamp 2
siac_cqs_input_cta_v2_9_b.timestamp_2.size =
  siac_cqs_input_cta_v2_9_b.seconds.size + 
  siac_cqs_input_cta_v2_9_b.nanoseconds.size

-- Display: Timestamp 2
siac_cqs_input_cta_v2_9_b.timestamp_2.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp 2
siac_cqs_input_cta_v2_9_b.timestamp_2.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = siac_cqs_input_cta_v2_9_b.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = siac_cqs_input_cta_v2_9_b.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 2
siac_cqs_input_cta_v2_9_b.timestamp_2.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_2 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.timestamp_2, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.timestamp_2.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.timestamp_2.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.timestamp_2.fields(buffer, offset, packet, parent)
  end
end

-- Round Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message = {}

-- Calculate size of: Round Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.security_symbol.size

  index = index + siac_cqs_input_cta_v2_9_b.quote_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_bid_price.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_bid_size.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_offer_price.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_offer_size.size

  index = index + siac_cqs_input_cta_v2_9_b.retail_interest_indicator.size

  index = index + siac_cqs_input_cta_v2_9_b.settlement_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.market_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_market_maker_id.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_bid_price.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_bid_size.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_offer_price.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_offer_size.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.size

  index = index + siac_cqs_input_cta_v2_9_b.timestamp_2.size

  index = index + siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size

  -- Calculate field size from count
  local odd_lot_bid_extended_quote_appendage_count = buffer(offset + index - 2, 1):uint()
  index = index + odd_lot_bid_extended_quote_appendage_count * 13

  -- Calculate field size from count
  local odd_lot_offer_extended_quote_appendage_count = buffer(offset + index - 14, 1):uint()
  index = index + odd_lot_offer_extended_quote_appendage_count * 13

  return index
end

-- Display: Round Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Round Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Quote Condition: Char
  index, quote_condition = siac_cqs_input_cta_v2_9_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Round Lot Bid Price: Long
  index, round_lot_bid_price = siac_cqs_input_cta_v2_9_b.round_lot_bid_price.dissect(buffer, index, packet, parent)

  -- Round Lot Bid Size: Integer
  index, round_lot_bid_size = siac_cqs_input_cta_v2_9_b.round_lot_bid_size.dissect(buffer, index, packet, parent)

  -- Round Lot Offer Price: Long
  index, round_lot_offer_price = siac_cqs_input_cta_v2_9_b.round_lot_offer_price.dissect(buffer, index, packet, parent)

  -- Round Lot Offer Size: Integer
  index, round_lot_offer_size = siac_cqs_input_cta_v2_9_b.round_lot_offer_size.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: Char
  index, retail_interest_indicator = siac_cqs_input_cta_v2_9_b.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: Char
  index, settlement_condition = siac_cqs_input_cta_v2_9_b.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: Char
  index, market_condition = siac_cqs_input_cta_v2_9_b.market_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Maker Id: Char[]
  index, finra_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Quote Condition: Char
  index, finra_best_bid_quote_condition = siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Price: Long
  index, finra_best_bid_price = siac_cqs_input_cta_v2_9_b.finra_best_bid_price.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Size: Integer
  index, finra_best_bid_size = siac_cqs_input_cta_v2_9_b.finra_best_bid_size.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: Char[]
  index, finra_best_bid_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Quote Condition: Char
  index, finra_best_offer_quote_condition = siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Price: Long
  index, finra_best_offer_price = siac_cqs_input_cta_v2_9_b.finra_best_offer_price.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Size: Integer
  index, finra_best_offer_size = siac_cqs_input_cta_v2_9_b.finra_best_offer_size.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: Char[]
  index, finra_best_offer_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cqs_input_cta_v2_9_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Clear Prior Odd Lot Quotes: Char
  index, clear_prior_odd_lot_quotes = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Bid Appendages: Byte
  index, count_of_odd_lot_bid_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Offer Appendages: Byte
  index, count_of_odd_lot_offer_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Extended Quote Appendage
  for odd_lot_bid_extended_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
    index, odd_lot_bid_extended_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_bid_extended_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_bid_extended_quote_appendage_index)
  end

  -- Repeating: Odd Lot Offer Extended Quote Appendage
  for odd_lot_offer_extended_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
    index, odd_lot_offer_extended_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_offer_extended_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_offer_extended_quote_appendage_index)
  end

  return index
end

-- Dissect: Round Lot Finra Adf Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_finra_adf_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Round Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message = {}

-- Calculate size of: Round Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.security_symbol.size

  index = index + siac_cqs_input_cta_v2_9_b.quote_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_bid_price.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_bid_size.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_offer_price.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_offer_size.size

  index = index + siac_cqs_input_cta_v2_9_b.retail_interest_indicator.size

  index = index + siac_cqs_input_cta_v2_9_b.settlement_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.market_condition.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_market_maker_id.size

  index = index + siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.size

  index = index + siac_cqs_input_cta_v2_9_b.timestamp_2.size

  index = index + siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size

  -- Calculate field size from count
  local odd_lot_bid_long_quote_appendage_count = buffer(offset + index - 2, 1):uint()
  index = index + odd_lot_bid_long_quote_appendage_count * 9

  -- Calculate field size from count
  local odd_lot_offer_long_quote_appendage_count = buffer(offset + index - 10, 1):uint()
  index = index + odd_lot_offer_long_quote_appendage_count * 9

  return index
end

-- Display: Round Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Round Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Quote Condition: Char
  index, quote_condition = siac_cqs_input_cta_v2_9_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Round Lot Bid Price: Long
  index, round_lot_bid_price = siac_cqs_input_cta_v2_9_b.round_lot_bid_price.dissect(buffer, index, packet, parent)

  -- Round Lot Bid Size: Integer
  index, round_lot_bid_size = siac_cqs_input_cta_v2_9_b.round_lot_bid_size.dissect(buffer, index, packet, parent)

  -- Round Lot Offer Price: Long
  index, round_lot_offer_price = siac_cqs_input_cta_v2_9_b.round_lot_offer_price.dissect(buffer, index, packet, parent)

  -- Round Lot Offer Size: Integer
  index, round_lot_offer_size = siac_cqs_input_cta_v2_9_b.round_lot_offer_size.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: Char
  index, retail_interest_indicator = siac_cqs_input_cta_v2_9_b.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: Char
  index, settlement_condition = siac_cqs_input_cta_v2_9_b.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: Char
  index, market_condition = siac_cqs_input_cta_v2_9_b.market_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Maker Id: Char[]
  index, finra_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Bbo Indicator: Char
  index, finra_bbo_indicator = siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cqs_input_cta_v2_9_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Clear Prior Odd Lot Quotes: Char
  index, clear_prior_odd_lot_quotes = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Bid Appendages: Byte
  index, count_of_odd_lot_bid_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Offer Appendages: Byte
  index, count_of_odd_lot_offer_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Long Quote Appendage
  for odd_lot_bid_long_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
    index, odd_lot_bid_long_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_bid_long_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_bid_long_quote_appendage_index)
  end

  -- Repeating: Odd Lot Offer Long Quote Appendage
  for odd_lot_offer_long_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
    index, odd_lot_offer_long_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_offer_long_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_offer_long_quote_appendage_index)
  end

  return index
end

-- Dissect: Round Lot Long Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_long_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Round Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message = {}

-- Calculate size of: Round Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.security_symbol_short.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.size

  index = index + siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short.size

  index = index + siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size

  -- Calculate field size from count
  local odd_lot_bid_short_quote_appendage_count = buffer(offset + index - 2, 1):uint()
  index = index + odd_lot_bid_short_quote_appendage_count * 3

  -- Calculate field size from count
  local odd_lot_offer_short_quote_appendage_count = buffer(offset + index - 4, 1):uint()
  index = index + odd_lot_offer_short_quote_appendage_count * 3

  return index
end

-- Display: Round Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Round Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol Short: Char[]
  index, security_symbol_short = siac_cqs_input_cta_v2_9_b.security_symbol_short.dissect(buffer, index, packet, parent)

  -- Round Lot Bid Price Short: Short
  index, round_lot_bid_price_short = siac_cqs_input_cta_v2_9_b.round_lot_bid_price_short.dissect(buffer, index, packet, parent)

  -- Round Lot Bid Size Short: Short
  index, round_lot_bid_size_short = siac_cqs_input_cta_v2_9_b.round_lot_bid_size_short.dissect(buffer, index, packet, parent)

  -- Round Lot Offer Price Short: Short
  index, round_lot_offer_price_short = siac_cqs_input_cta_v2_9_b.round_lot_offer_price_short.dissect(buffer, index, packet, parent)

  -- Round Lot Offer Size Short: Short
  index, round_lot_offer_size_short = siac_cqs_input_cta_v2_9_b.round_lot_offer_size_short.dissect(buffer, index, packet, parent)

  -- Clear Prior Odd Lot Quotes: Char
  index, clear_prior_odd_lot_quotes = siac_cqs_input_cta_v2_9_b.clear_prior_odd_lot_quotes.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Bid Appendages: Byte
  index, count_of_odd_lot_bid_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Offer Appendages: Byte
  index, count_of_odd_lot_offer_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect(buffer, index, packet, parent)

  -- Repeating: Odd Lot Bid Short Quote Appendage
  for odd_lot_bid_short_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
    index, odd_lot_bid_short_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_bid_short_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_bid_short_quote_appendage_index)
  end

  -- Repeating: Odd Lot Offer Short Quote Appendage
  for odd_lot_offer_short_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
    index, odd_lot_offer_short_quote_appendage = siac_cqs_input_cta_v2_9_b.odd_lot_offer_short_quote_appendage.dissect(buffer, index, packet, parent, odd_lot_offer_short_quote_appendage_index)
  end

  return index
end

-- Dissect: Round Lot Short Quote Message
siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.round_lot_short_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Special Long Quote Message
siac_cqs_input_cta_v2_9_b.special_long_quote_message = {}

-- Size: Special Long Quote Message
siac_cqs_input_cta_v2_9_b.special_long_quote_message.size =
  siac_cqs_input_cta_v2_9_b.security_symbol.size + 
  siac_cqs_input_cta_v2_9_b.instrument_type.size + 
  siac_cqs_input_cta_v2_9_b.quote_condition.size + 
  siac_cqs_input_cta_v2_9_b.security_status_indicator.size + 
  siac_cqs_input_cta_v2_9_b.bid_price.size + 
  siac_cqs_input_cta_v2_9_b.bid_size.size + 
  siac_cqs_input_cta_v2_9_b.offer_price.size + 
  siac_cqs_input_cta_v2_9_b.offer_size.size + 
  siac_cqs_input_cta_v2_9_b.retail_interest_indicator.size + 
  siac_cqs_input_cta_v2_9_b.settlement_condition.size + 
  siac_cqs_input_cta_v2_9_b.market_condition.size + 
  siac_cqs_input_cta_v2_9_b.finra_market_maker_id.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_bid_price.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_bid_size.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_offer_price.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_offer_size.size + 
  siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.size + 
  siac_cqs_input_cta_v2_9_b.timestamp_2.size + 
  siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.size

-- Display: Special Long Quote Message
siac_cqs_input_cta_v2_9_b.special_long_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Special Long Quote Message
siac_cqs_input_cta_v2_9_b.special_long_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_input_cta_v2_9_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Quote Condition: Char
  index, quote_condition = siac_cqs_input_cta_v2_9_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Security Status Indicator: Char
  index, security_status_indicator = siac_cqs_input_cta_v2_9_b.security_status_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price: Long
  index, bid_price = siac_cqs_input_cta_v2_9_b.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = siac_cqs_input_cta_v2_9_b.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: Long
  index, offer_price = siac_cqs_input_cta_v2_9_b.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: Integer
  index, offer_size = siac_cqs_input_cta_v2_9_b.offer_size.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: Char
  index, retail_interest_indicator = siac_cqs_input_cta_v2_9_b.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: Char
  index, settlement_condition = siac_cqs_input_cta_v2_9_b.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: Char
  index, market_condition = siac_cqs_input_cta_v2_9_b.market_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Maker Id: Char[]
  index, finra_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Quote Condition: Char
  index, finra_best_bid_quote_condition = siac_cqs_input_cta_v2_9_b.finra_best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Price: Long
  index, finra_best_bid_price = siac_cqs_input_cta_v2_9_b.finra_best_bid_price.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Size: Integer
  index, finra_best_bid_size = siac_cqs_input_cta_v2_9_b.finra_best_bid_size.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: Char[]
  index, finra_best_bid_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Quote Condition: Char
  index, finra_best_offer_quote_condition = siac_cqs_input_cta_v2_9_b.finra_best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Price: Long
  index, finra_best_offer_price = siac_cqs_input_cta_v2_9_b.finra_best_offer_price.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Size: Integer
  index, finra_best_offer_size = siac_cqs_input_cta_v2_9_b.finra_best_offer_size.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: Char[]
  index, finra_best_offer_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cqs_input_cta_v2_9_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Special Long Quote Message
siac_cqs_input_cta_v2_9_b.special_long_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.special_long_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.special_long_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.special_long_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.special_long_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Quote Message
siac_cqs_input_cta_v2_9_b.long_quote_message = {}

-- Size: Long Quote Message
siac_cqs_input_cta_v2_9_b.long_quote_message.size =
  siac_cqs_input_cta_v2_9_b.security_symbol.size + 
  siac_cqs_input_cta_v2_9_b.instrument_type.size + 
  siac_cqs_input_cta_v2_9_b.quote_condition.size + 
  siac_cqs_input_cta_v2_9_b.security_status_indicator.size + 
  siac_cqs_input_cta_v2_9_b.bid_price.size + 
  siac_cqs_input_cta_v2_9_b.bid_size.size + 
  siac_cqs_input_cta_v2_9_b.offer_price.size + 
  siac_cqs_input_cta_v2_9_b.offer_size.size + 
  siac_cqs_input_cta_v2_9_b.retail_interest_indicator.size + 
  siac_cqs_input_cta_v2_9_b.settlement_condition.size + 
  siac_cqs_input_cta_v2_9_b.market_condition.size + 
  siac_cqs_input_cta_v2_9_b.finra_market_maker_id.size + 
  siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.size + 
  siac_cqs_input_cta_v2_9_b.timestamp_2.size + 
  siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.size

-- Display: Long Quote Message
siac_cqs_input_cta_v2_9_b.long_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Quote Message
siac_cqs_input_cta_v2_9_b.long_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_input_cta_v2_9_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Quote Condition: Char
  index, quote_condition = siac_cqs_input_cta_v2_9_b.quote_condition.dissect(buffer, index, packet, parent)

  -- Security Status Indicator: Char
  index, security_status_indicator = siac_cqs_input_cta_v2_9_b.security_status_indicator.dissect(buffer, index, packet, parent)

  -- Bid Price: Long
  index, bid_price = siac_cqs_input_cta_v2_9_b.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = siac_cqs_input_cta_v2_9_b.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: Long
  index, offer_price = siac_cqs_input_cta_v2_9_b.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: Integer
  index, offer_size = siac_cqs_input_cta_v2_9_b.offer_size.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: Char
  index, retail_interest_indicator = siac_cqs_input_cta_v2_9_b.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: Char
  index, settlement_condition = siac_cqs_input_cta_v2_9_b.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: Char
  index, market_condition = siac_cqs_input_cta_v2_9_b.market_condition.dissect(buffer, index, packet, parent)

  -- Finra Market Maker Id: Char[]
  index, finra_market_maker_id = siac_cqs_input_cta_v2_9_b.finra_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Bbo Indicator: Char
  index, finra_bbo_indicator = siac_cqs_input_cta_v2_9_b.finra_bbo_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp 2: Struct of 2 fields
  index, timestamp_2 = siac_cqs_input_cta_v2_9_b.timestamp_2.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_input_cta_v2_9_b.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote Message
siac_cqs_input_cta_v2_9_b.long_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.long_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.long_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.long_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.long_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Quote Message
siac_cqs_input_cta_v2_9_b.short_quote_message = {}

-- Size: Short Quote Message
siac_cqs_input_cta_v2_9_b.short_quote_message.size =
  siac_cqs_input_cta_v2_9_b.security_symbol_short.size + 
  siac_cqs_input_cta_v2_9_b.bid_price_short.size + 
  siac_cqs_input_cta_v2_9_b.bid_size_short.size + 
  siac_cqs_input_cta_v2_9_b.offer_price_short.size + 
  siac_cqs_input_cta_v2_9_b.offer_size_short.size + 
  siac_cqs_input_cta_v2_9_b.reserved_2.size

-- Display: Short Quote Message
siac_cqs_input_cta_v2_9_b.short_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Quote Message
siac_cqs_input_cta_v2_9_b.short_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol Short: Char[]
  index, security_symbol_short = siac_cqs_input_cta_v2_9_b.security_symbol_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: Short
  index, bid_price_short = siac_cqs_input_cta_v2_9_b.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: Short
  index, bid_size_short = siac_cqs_input_cta_v2_9_b.bid_size_short.dissect(buffer, index, packet, parent)

  -- Offer Price Short: Short
  index, offer_price_short = siac_cqs_input_cta_v2_9_b.offer_price_short.dissect(buffer, index, packet, parent)

  -- Offer Size Short: Short
  index, offer_size_short = siac_cqs_input_cta_v2_9_b.offer_size_short.dissect(buffer, index, packet, parent)

  -- Reserved 2: Char[]
  index, reserved_2 = siac_cqs_input_cta_v2_9_b.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote Message
siac_cqs_input_cta_v2_9_b.short_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.short_quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.short_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.short_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.short_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Status Message
siac_cqs_input_cta_v2_9_b.auction_status_message = {}

-- Size: Auction Status Message
siac_cqs_input_cta_v2_9_b.auction_status_message.size =
  siac_cqs_input_cta_v2_9_b.security_symbol.size + 
  siac_cqs_input_cta_v2_9_b.instrument_type.size + 
  siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.size + 
  siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.size + 
  siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.size + 
  siac_cqs_input_cta_v2_9_b.number_of_extensions.size + 
  siac_cqs_input_cta_v2_9_b.reserved_62.size

-- Display: Auction Status Message
siac_cqs_input_cta_v2_9_b.auction_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Status Message
siac_cqs_input_cta_v2_9_b.auction_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_input_cta_v2_9_b.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_input_cta_v2_9_b.instrument_type.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Long
  index, auction_collar_reference_price = siac_cqs_input_cta_v2_9_b.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: Long
  index, auction_collar_upper_threshold_price = siac_cqs_input_cta_v2_9_b.auction_collar_upper_threshold_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: Long
  index, auction_collar_lower_threshold_price = siac_cqs_input_cta_v2_9_b.auction_collar_lower_threshold_price.dissect(buffer, index, packet, parent)

  -- Number Of Extensions: Byte
  index, number_of_extensions = siac_cqs_input_cta_v2_9_b.number_of_extensions.dissect(buffer, index, packet, parent)

  -- Reserved 62: Char[]
  index, reserved_62 = siac_cqs_input_cta_v2_9_b.reserved_62.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Status Message
siac_cqs_input_cta_v2_9_b.auction_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.auction_status_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.auction_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.auction_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.auction_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Quote Message Payload
siac_cqs_input_cta_v2_9_b.quote_message_payload = {}

-- Dissect: Quote Message Payload
siac_cqs_input_cta_v2_9_b.quote_message_payload.dissect = function(buffer, offset, packet, parent, quote_message_type)
  -- Dissect Auction Status Message
  if quote_message_type == "A" then
    return siac_cqs_input_cta_v2_9_b.auction_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote Message
  if quote_message_type == "Q" then
    return siac_cqs_input_cta_v2_9_b.short_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote Message
  if quote_message_type == "L" then
    return siac_cqs_input_cta_v2_9_b.long_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Special Long Quote Message
  if quote_message_type == "S" then
    return siac_cqs_input_cta_v2_9_b.special_long_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Round Lot Short Quote Message
  if quote_message_type == "P" then
    return siac_cqs_input_cta_v2_9_b.round_lot_short_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Round Lot Long Quote Message
  if quote_message_type == "K" then
    return siac_cqs_input_cta_v2_9_b.round_lot_long_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Round Lot Finra Adf Quote Message
  if quote_message_type == "U" then
    return siac_cqs_input_cta_v2_9_b.round_lot_finra_adf_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Odd Lot Short Quote Message
  if quote_message_type == "R" then
    return siac_cqs_input_cta_v2_9_b.odd_lot_short_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Odd Lot Long Quote Message
  if quote_message_type == "M" then
    return siac_cqs_input_cta_v2_9_b.odd_lot_long_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Odd Lot Finra Adf Quote Message
  if quote_message_type == "T" then
    return siac_cqs_input_cta_v2_9_b.odd_lot_finra_adf_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Quote Message
siac_cqs_input_cta_v2_9_b.quote_message = {}

-- Calculate size of: Quote Message
siac_cqs_input_cta_v2_9_b.quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.quote_message_type.size

  -- Calculate runtime size of Quote Message Payload field
  local quote_message_payload_offset = offset + index
  local quote_message_payload_type = buffer(quote_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_input_cta_v2_9_b.quote_message_payload.size(buffer, quote_message_payload_offset, quote_message_payload_type)

  return index
end

-- Display: Quote Message
siac_cqs_input_cta_v2_9_b.quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quote Message
siac_cqs_input_cta_v2_9_b.quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: Char
  index, quote_message_type = siac_cqs_input_cta_v2_9_b.quote_message_type.dissect(buffer, index, packet, parent)

  -- Quote Message Payload: Runtime Type with 10 branches
  index = siac_cqs_input_cta_v2_9_b.quote_message_payload.dissect(buffer, index, packet, parent, quote_message_type)

  return index
end

-- Dissect: Quote Message
siac_cqs_input_cta_v2_9_b.quote_message.dissect = function(buffer, offset, packet, parent)
  if show.quote_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.quote_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Test Message
siac_cqs_input_cta_v2_9_b.test_message = {}

-- Size: Test Message
siac_cqs_input_cta_v2_9_b.test_message.size =
  siac_cqs_input_cta_v2_9_b.data.size

-- Display: Test Message
siac_cqs_input_cta_v2_9_b.test_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Test Message
siac_cqs_input_cta_v2_9_b.test_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Data: Char[]
  index, data = siac_cqs_input_cta_v2_9_b.data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Test Message
siac_cqs_input_cta_v2_9_b.test_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.test_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.test_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.test_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.test_message.fields(buffer, offset, packet, parent)
  end
end

-- Odd Lot Refresh Request Message
siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message = {}

-- Size: Odd Lot Refresh Request Message
siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.size =
  siac_cqs_input_cta_v2_9_b.security_symbol_begin_range.size + 
  siac_cqs_input_cta_v2_9_b.security_symbol_end_range.size + 
  siac_cqs_input_cta_v2_9_b.reserved_8.size

-- Display: Odd Lot Refresh Request Message
siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Odd Lot Refresh Request Message
siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol Begin Range: Char[]
  index, security_symbol_begin_range = siac_cqs_input_cta_v2_9_b.security_symbol_begin_range.dissect(buffer, index, packet, parent)

  -- Security Symbol End Range: Char[]
  index, security_symbol_end_range = siac_cqs_input_cta_v2_9_b.security_symbol_end_range.dissect(buffer, index, packet, parent)

  -- Reserved 8: Char[]
  index, reserved_8 = siac_cqs_input_cta_v2_9_b.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Odd Lot Refresh Request Message
siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.odd_lot_refresh_request_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Information And Message Count Response Message
siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message = {}

-- Size: Sequence Information And Message Count Response Message
siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.size =
  siac_cqs_input_cta_v2_9_b.current_block_sequence_number.size + 
  siac_cqs_input_cta_v2_9_b.last_participant_reference_number.size + 
  siac_cqs_input_cta_v2_9_b.message_count.size

-- Display: Sequence Information And Message Count Response Message
siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Information And Message Count Response Message
siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Current Block Sequence Number: Integer
  index, current_block_sequence_number = siac_cqs_input_cta_v2_9_b.current_block_sequence_number.dissect(buffer, index, packet, parent)

  -- Last Participant Reference Number: Signed Long
  index, last_participant_reference_number = siac_cqs_input_cta_v2_9_b.last_participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message Count: Long
  index, message_count = siac_cqs_input_cta_v2_9_b.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sequence Information And Message Count Response Message
siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.sequence_information_and_message_count_response_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
siac_cqs_input_cta_v2_9_b.control_message_payload = {}

-- Dissect: Control Message Payload
siac_cqs_input_cta_v2_9_b.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Start Of Day Message
  if control_message_type == "A" then
    return offset
  end
  -- Dissect Finra Close Message
  if control_message_type == "C" then
    return offset
  end
  -- Dissect Sequence Information And Message Count Inquiry Message
  if control_message_type == "I" then
    return offset
  end
  -- Dissect Sequence Information And Message Count Response Message
  if control_message_type == "N" then
    return siac_cqs_input_cta_v2_9_b.sequence_information_and_message_count_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Open Message
  if control_message_type == "O" then
    return offset
  end
  -- Dissect Odd Lot Refresh Request Message
  if control_message_type == "R" then
    return siac_cqs_input_cta_v2_9_b.odd_lot_refresh_request_message.dissect(buffer, offset, packet, parent)
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
    return siac_cqs_input_cta_v2_9_b.test_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Message
siac_cqs_input_cta_v2_9_b.control_message = {}

-- Calculate size of: Control Message
siac_cqs_input_cta_v2_9_b.control_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_input_cta_v2_9_b.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Message
siac_cqs_input_cta_v2_9_b.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
siac_cqs_input_cta_v2_9_b.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: Char
  index, control_message_type = siac_cqs_input_cta_v2_9_b.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 9 branches
  index = siac_cqs_input_cta_v2_9_b.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Message
siac_cqs_input_cta_v2_9_b.control_message.dissect = function(buffer, offset, packet, parent)
  if show.control_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.control_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Warning Message
siac_cqs_input_cta_v2_9_b.warning_message = {}

-- Size: Warning Message
siac_cqs_input_cta_v2_9_b.warning_message.size =
  siac_cqs_input_cta_v2_9_b.previous_block_sequence_number.size + 
  siac_cqs_input_cta_v2_9_b.previous_participant_reference_number.size

-- Display: Warning Message
siac_cqs_input_cta_v2_9_b.warning_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Warning Message
siac_cqs_input_cta_v2_9_b.warning_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Previous Block Sequence Number: Integer
  index, previous_block_sequence_number = siac_cqs_input_cta_v2_9_b.previous_block_sequence_number.dissect(buffer, index, packet, parent)

  -- Previous Participant Reference Number: Signed Long
  index, previous_participant_reference_number = siac_cqs_input_cta_v2_9_b.previous_participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Warning Message
siac_cqs_input_cta_v2_9_b.warning_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.warning_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.warning_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.warning_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.warning_message.fields(buffer, offset, packet, parent)
  end
end

-- Partial Reject Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage = {}

-- Size: Partial Reject Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.size

-- Display: Partial Reject Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Reject Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.fields = function(buffer, offset, packet, parent, partial_reject_odd_lot_offer_extended_quote_appendage_index)
  local index = offset

  -- Implicit Partial Reject Odd Lot Offer Extended Quote Appendage Index
  if partial_reject_odd_lot_offer_extended_quote_appendage_index ~= nil and show.partial_reject_odd_lot_offer_extended_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_extended_quote_appendage_index, partial_reject_odd_lot_offer_extended_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  -- Odd Lot Finra Market Maker Id: Char[]
  index, odd_lot_finra_market_maker_id = siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Reject Odd Lot Offer Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.dissect = function(buffer, offset, packet, parent, partial_reject_odd_lot_offer_extended_quote_appendage_index)
  if show.partial_reject_odd_lot_offer_extended_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_extended_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_offer_extended_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_offer_extended_quote_appendage_index)
  end
end

-- Partial Reject Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage = {}

-- Size: Partial Reject Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.size

-- Display: Partial Reject Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Reject Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.fields = function(buffer, offset, packet, parent, partial_reject_odd_lot_bid_extended_quote_appendage_index)
  local index = offset

  -- Implicit Partial Reject Odd Lot Bid Extended Quote Appendage Index
  if partial_reject_odd_lot_bid_extended_quote_appendage_index ~= nil and show.partial_reject_odd_lot_bid_extended_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_extended_quote_appendage_index, partial_reject_odd_lot_bid_extended_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  -- Odd Lot Finra Market Maker Id: Char[]
  index, odd_lot_finra_market_maker_id = siac_cqs_input_cta_v2_9_b.odd_lot_finra_market_maker_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Reject Odd Lot Bid Extended Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.dissect = function(buffer, offset, packet, parent, partial_reject_odd_lot_bid_extended_quote_appendage_index)
  if show.partial_reject_odd_lot_bid_extended_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_extended_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_bid_extended_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_bid_extended_quote_appendage_index)
  end
end

-- Partial Reject Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage = {}

-- Size: Partial Reject Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Partial Reject Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Reject Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.fields = function(buffer, offset, packet, parent, partial_reject_odd_lot_offer_long_quote_appendage_index)
  local index = offset

  -- Implicit Partial Reject Odd Lot Offer Long Quote Appendage Index
  if partial_reject_odd_lot_offer_long_quote_appendage_index ~= nil and show.partial_reject_odd_lot_offer_long_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_long_quote_appendage_index, partial_reject_odd_lot_offer_long_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Reject Odd Lot Offer Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.dissect = function(buffer, offset, packet, parent, partial_reject_odd_lot_offer_long_quote_appendage_index)
  if show.partial_reject_odd_lot_offer_long_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_long_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_offer_long_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_offer_long_quote_appendage_index)
  end
end

-- Partial Reject Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage = {}

-- Size: Partial Reject Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Partial Reject Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Reject Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.fields = function(buffer, offset, packet, parent, partial_reject_odd_lot_bid_long_quote_appendage_index)
  local index = offset

  -- Implicit Partial Reject Odd Lot Bid Long Quote Appendage Index
  if partial_reject_odd_lot_bid_long_quote_appendage_index ~= nil and show.partial_reject_odd_lot_bid_long_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_long_quote_appendage_index, partial_reject_odd_lot_bid_long_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price: Long
  index, odd_lot_quote_price = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Reject Odd Lot Bid Long Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.dissect = function(buffer, offset, packet, parent, partial_reject_odd_lot_bid_long_quote_appendage_index)
  if show.partial_reject_odd_lot_bid_long_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_long_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_bid_long_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_bid_long_quote_appendage_index)
  end
end

-- Partial Reject Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage = {}

-- Size: Partial Reject Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Partial Reject Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Reject Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.fields = function(buffer, offset, packet, parent, partial_reject_odd_lot_offer_short_quote_appendage_index)
  local index = offset

  -- Implicit Partial Reject Odd Lot Offer Short Quote Appendage Index
  if partial_reject_odd_lot_offer_short_quote_appendage_index ~= nil and show.partial_reject_odd_lot_offer_short_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_short_quote_appendage_index, partial_reject_odd_lot_offer_short_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price 2: Short
  index, odd_lot_quote_price_2 = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Reject Odd Lot Offer Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.dissect = function(buffer, offset, packet, parent, partial_reject_odd_lot_offer_short_quote_appendage_index)
  if show.partial_reject_odd_lot_offer_short_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_offer_short_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_offer_short_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_offer_short_quote_appendage_index)
  end
end

-- Partial Reject Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage = {}

-- Size: Partial Reject Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.size =
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.size + 
  siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.size

-- Display: Partial Reject Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Reject Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.fields = function(buffer, offset, packet, parent, partial_reject_odd_lot_bid_short_quote_appendage_index)
  local index = offset

  -- Implicit Partial Reject Odd Lot Bid Short Quote Appendage Index
  if partial_reject_odd_lot_bid_short_quote_appendage_index ~= nil and show.partial_reject_odd_lot_bid_short_quote_appendage_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_short_quote_appendage_index, partial_reject_odd_lot_bid_short_quote_appendage_index)
    iteration:set_generated()
  end

  -- Odd Lot Quote Price 2: Short
  index, odd_lot_quote_price_2 = siac_cqs_input_cta_v2_9_b.odd_lot_quote_price_2.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Size: Byte
  index, odd_lot_quote_size = siac_cqs_input_cta_v2_9_b.odd_lot_quote_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Partial Reject Odd Lot Bid Short Quote Appendage
siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.dissect = function(buffer, offset, packet, parent, partial_reject_odd_lot_bid_short_quote_appendage_index)
  if show.partial_reject_odd_lot_bid_short_quote_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_reject_odd_lot_bid_short_quote_appendage, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_bid_short_quote_appendage_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.fields(buffer, offset, packet, parent, partial_reject_odd_lot_bid_short_quote_appendage_index)
  end
end

-- Partial Rejection Message
siac_cqs_input_cta_v2_9_b.partial_rejection_message = {}

-- Calculate size of: Partial Rejection Message
siac_cqs_input_cta_v2_9_b.partial_rejection_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.error_code.size

  index = index + siac_cqs_input_cta_v2_9_b.block_sequence_number.size

  index = index + siac_cqs_input_cta_v2_9_b.participant_reference_number.size

  index = index + siac_cqs_input_cta_v2_9_b.message_id.size

  index = index + siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.size

  index = index + siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.size

  local odd_lot_quote_appendage_type = buffer(offset + index - 3, 1):string()

  if odd_lot_quote_appendage_type == "S" then
    -- Calculate field size from count
    local partial_reject_odd_lot_bid_short_quote_appendage_count = buffer(offset + index - 2, 1):uint()
    index = index + partial_reject_odd_lot_bid_short_quote_appendage_count * 3

  end

  local odd_lot_quote_appendage_type = buffer(offset + index - 6, 1):string()

  if odd_lot_quote_appendage_type == "S" then
    -- Calculate field size from count
    local partial_reject_odd_lot_offer_short_quote_appendage_count = buffer(offset + index - 4, 1):uint()
    index = index + partial_reject_odd_lot_offer_short_quote_appendage_count * 3

  end

  local odd_lot_quote_appendage_type = buffer(offset + index - 9, 1):string()

  if odd_lot_quote_appendage_type == "L" then
    -- Calculate field size from count
    local partial_reject_odd_lot_bid_long_quote_appendage_count = buffer(offset + index - 8, 1):uint()
    index = index + partial_reject_odd_lot_bid_long_quote_appendage_count * 9

  end

  local odd_lot_quote_appendage_type = buffer(offset + index - 18, 1):string()

  if odd_lot_quote_appendage_type == "L" then
    -- Calculate field size from count
    local partial_reject_odd_lot_offer_long_quote_appendage_count = buffer(offset + index - 16, 1):uint()
    index = index + partial_reject_odd_lot_offer_long_quote_appendage_count * 9

  end

  local odd_lot_quote_appendage_type = buffer(offset + index - 27, 1):string()

  if odd_lot_quote_appendage_type == "E" then
    -- Calculate field size from count
    local partial_reject_odd_lot_bid_extended_quote_appendage_count = buffer(offset + index - 26, 1):uint()
    index = index + partial_reject_odd_lot_bid_extended_quote_appendage_count * 13

  end

  local odd_lot_quote_appendage_type = buffer(offset + index - 40, 1):string()

  if odd_lot_quote_appendage_type == "E" then
    -- Calculate field size from count
    local partial_reject_odd_lot_offer_extended_quote_appendage_count = buffer(offset + index - 38, 1):uint()
    index = index + partial_reject_odd_lot_offer_extended_quote_appendage_count * 13

  end

  return index
end

-- Display: Partial Rejection Message
siac_cqs_input_cta_v2_9_b.partial_rejection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Partial Rejection Message
siac_cqs_input_cta_v2_9_b.partial_rejection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Code: Byte
  index, error_code = siac_cqs_input_cta_v2_9_b.error_code.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: Integer
  index, block_sequence_number = siac_cqs_input_cta_v2_9_b.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_input_cta_v2_9_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message ID: Byte
  index, message_id = siac_cqs_input_cta_v2_9_b.message_id.dissect(buffer, index, packet, parent)

  -- Odd Lot Quote Appendage Type: Char
  index, odd_lot_quote_appendage_type = siac_cqs_input_cta_v2_9_b.odd_lot_quote_appendage_type.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Bid Appendages: Byte
  index, count_of_odd_lot_bid_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_bid_appendages.dissect(buffer, index, packet, parent)

  -- Count Of Odd Lot Offer Appendages: Byte
  index, count_of_odd_lot_offer_appendages = siac_cqs_input_cta_v2_9_b.count_of_odd_lot_offer_appendages.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Partial Reject Odd Lot Bid Short Quote Appendage
  local partial_reject_odd_lot_bid_short_quote_appendage = nil

  local partial_reject_odd_lot_bid_short_quote_appendage_exists = odd_lot_quote_appendage_type == "S"

  if partial_reject_odd_lot_bid_short_quote_appendage_exists then

    -- Repeating: Partial Reject Odd Lot Bid Short Quote Appendage
    for partial_reject_odd_lot_bid_short_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
      index, partial_reject_odd_lot_bid_short_quote_appendage = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_short_quote_appendage.dissect(buffer, index, packet, parent, partial_reject_odd_lot_bid_short_quote_appendage_index)
    end
  end

  -- Runtime optional field: Partial Reject Odd Lot Offer Short Quote Appendage
  local partial_reject_odd_lot_offer_short_quote_appendage = nil

  local partial_reject_odd_lot_offer_short_quote_appendage_exists = odd_lot_quote_appendage_type == "S"

  if partial_reject_odd_lot_offer_short_quote_appendage_exists then

    -- Repeating: Partial Reject Odd Lot Offer Short Quote Appendage
    for partial_reject_odd_lot_offer_short_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
      index, partial_reject_odd_lot_offer_short_quote_appendage = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_short_quote_appendage.dissect(buffer, index, packet, parent, partial_reject_odd_lot_offer_short_quote_appendage_index)
    end
  end

  -- Runtime optional field: Partial Reject Odd Lot Bid Long Quote Appendage
  local partial_reject_odd_lot_bid_long_quote_appendage = nil

  local partial_reject_odd_lot_bid_long_quote_appendage_exists = odd_lot_quote_appendage_type == "L"

  if partial_reject_odd_lot_bid_long_quote_appendage_exists then

    -- Repeating: Partial Reject Odd Lot Bid Long Quote Appendage
    for partial_reject_odd_lot_bid_long_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
      index, partial_reject_odd_lot_bid_long_quote_appendage = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_long_quote_appendage.dissect(buffer, index, packet, parent, partial_reject_odd_lot_bid_long_quote_appendage_index)
    end
  end

  -- Runtime optional field: Partial Reject Odd Lot Offer Long Quote Appendage
  local partial_reject_odd_lot_offer_long_quote_appendage = nil

  local partial_reject_odd_lot_offer_long_quote_appendage_exists = odd_lot_quote_appendage_type == "L"

  if partial_reject_odd_lot_offer_long_quote_appendage_exists then

    -- Repeating: Partial Reject Odd Lot Offer Long Quote Appendage
    for partial_reject_odd_lot_offer_long_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
      index, partial_reject_odd_lot_offer_long_quote_appendage = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_long_quote_appendage.dissect(buffer, index, packet, parent, partial_reject_odd_lot_offer_long_quote_appendage_index)
    end
  end

  -- Runtime optional field: Partial Reject Odd Lot Bid Extended Quote Appendage
  local partial_reject_odd_lot_bid_extended_quote_appendage = nil

  local partial_reject_odd_lot_bid_extended_quote_appendage_exists = odd_lot_quote_appendage_type == "E"

  if partial_reject_odd_lot_bid_extended_quote_appendage_exists then

    -- Repeating: Partial Reject Odd Lot Bid Extended Quote Appendage
    for partial_reject_odd_lot_bid_extended_quote_appendage_index = 1, count_of_odd_lot_bid_appendages do
      index, partial_reject_odd_lot_bid_extended_quote_appendage = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_bid_extended_quote_appendage.dissect(buffer, index, packet, parent, partial_reject_odd_lot_bid_extended_quote_appendage_index)
    end
  end

  -- Runtime optional field: Partial Reject Odd Lot Offer Extended Quote Appendage
  local partial_reject_odd_lot_offer_extended_quote_appendage = nil

  local partial_reject_odd_lot_offer_extended_quote_appendage_exists = odd_lot_quote_appendage_type == "E"

  if partial_reject_odd_lot_offer_extended_quote_appendage_exists then

    -- Repeating: Partial Reject Odd Lot Offer Extended Quote Appendage
    for partial_reject_odd_lot_offer_extended_quote_appendage_index = 1, count_of_odd_lot_offer_appendages do
      index, partial_reject_odd_lot_offer_extended_quote_appendage = siac_cqs_input_cta_v2_9_b.partial_reject_odd_lot_offer_extended_quote_appendage.dissect(buffer, index, packet, parent, partial_reject_odd_lot_offer_extended_quote_appendage_index)
    end
  end

  return index
end

-- Dissect: Partial Rejection Message
siac_cqs_input_cta_v2_9_b.partial_rejection_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.partial_rejection_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.partial_rejection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.partial_rejection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.partial_rejection_message.fields(buffer, offset, packet, parent)
  end
end

-- Rejection Message
siac_cqs_input_cta_v2_9_b.rejection_message = {}

-- Size: Rejection Message
siac_cqs_input_cta_v2_9_b.rejection_message.size =
  siac_cqs_input_cta_v2_9_b.error_code.size + 
  siac_cqs_input_cta_v2_9_b.block_sequence_number.size + 
  siac_cqs_input_cta_v2_9_b.participant_reference_number.size + 
  siac_cqs_input_cta_v2_9_b.message_id.size

-- Display: Rejection Message
siac_cqs_input_cta_v2_9_b.rejection_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rejection Message
siac_cqs_input_cta_v2_9_b.rejection_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Error Code: Byte
  index, error_code = siac_cqs_input_cta_v2_9_b.error_code.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: Integer
  index, block_sequence_number = siac_cqs_input_cta_v2_9_b.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_input_cta_v2_9_b.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message ID: Byte
  index, message_id = siac_cqs_input_cta_v2_9_b.message_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rejection Message
siac_cqs_input_cta_v2_9_b.rejection_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.rejection_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.rejection_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.rejection_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.rejection_message.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message Payload
siac_cqs_input_cta_v2_9_b.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
siac_cqs_input_cta_v2_9_b.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Rejection Message
  if administrative_message_type == "R" then
    return siac_cqs_input_cta_v2_9_b.rejection_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Partial Rejection Message
  if administrative_message_type == "P" then
    return siac_cqs_input_cta_v2_9_b.partial_rejection_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Warning Message
  if administrative_message_type == "W" then
    return siac_cqs_input_cta_v2_9_b.warning_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Message
siac_cqs_input_cta_v2_9_b.administrative_message = {}

-- Calculate size of: Administrative Message
siac_cqs_input_cta_v2_9_b.administrative_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_input_cta_v2_9_b.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Message
siac_cqs_input_cta_v2_9_b.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
siac_cqs_input_cta_v2_9_b.administrative_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: Char
  index, administrative_message_type = siac_cqs_input_cta_v2_9_b.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 3 branches
  index = siac_cqs_input_cta_v2_9_b.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Message
siac_cqs_input_cta_v2_9_b.administrative_message.dissect = function(buffer, offset, packet, parent)
  if show.administrative_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.administrative_message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.administrative_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.administrative_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.administrative_message.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
siac_cqs_input_cta_v2_9_b.category_payload = {}

-- Dissect: Category Payload
siac_cqs_input_cta_v2_9_b.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative Message
  if message_category == "A" then
    return siac_cqs_input_cta_v2_9_b.administrative_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "C" then
    return siac_cqs_input_cta_v2_9_b.control_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quote Message
  if message_category == "Q" then
    return siac_cqs_input_cta_v2_9_b.quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Message
  if message_category == "T" then
    return siac_cqs_input_cta_v2_9_b.trade_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Timestamp 1
siac_cqs_input_cta_v2_9_b.timestamp_1 = {}

-- Size: Timestamp 1
siac_cqs_input_cta_v2_9_b.timestamp_1.size =
  siac_cqs_input_cta_v2_9_b.seconds.size + 
  siac_cqs_input_cta_v2_9_b.nanoseconds.size

-- Display: Timestamp 1
siac_cqs_input_cta_v2_9_b.timestamp_1.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Timestamp 1
siac_cqs_input_cta_v2_9_b.timestamp_1.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: Integer
  index, seconds = siac_cqs_input_cta_v2_9_b.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: Integer
  index, nanoseconds = siac_cqs_input_cta_v2_9_b.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Timestamp 1
siac_cqs_input_cta_v2_9_b.timestamp_1.dissect = function(buffer, offset, packet, parent)
  if show.timestamp_1 then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.timestamp_1, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.timestamp_1.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.timestamp_1.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.timestamp_1.fields(buffer, offset, packet, parent)
  end
end

-- Message Header
siac_cqs_input_cta_v2_9_b.message_header = {}

-- Size: Message Header
siac_cqs_input_cta_v2_9_b.message_header.size =
  siac_cqs_input_cta_v2_9_b.message_length.size + 
  siac_cqs_input_cta_v2_9_b.message_category.size + 
  siac_cqs_input_cta_v2_9_b.message_type.size + 
  siac_cqs_input_cta_v2_9_b.participant_id.size + 
  siac_cqs_input_cta_v2_9_b.timestamp_1.size + 
  siac_cqs_input_cta_v2_9_b.message_id.size + 
  siac_cqs_input_cta_v2_9_b.reserved.size + 
  siac_cqs_input_cta_v2_9_b.participant_reference_number.size

-- Display: Message Header
siac_cqs_input_cta_v2_9_b.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
siac_cqs_input_cta_v2_9_b.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: Short
  index, message_length = siac_cqs_input_cta_v2_9_b.message_length.dissect(buffer, index, packet, parent)

  -- Message Category: Char
  index, message_category = siac_cqs_input_cta_v2_9_b.message_category.dissect(buffer, index, packet, parent)

  -- Message Type: Char
  index, message_type = siac_cqs_input_cta_v2_9_b.message_type.dissect(buffer, index, packet, parent)

  -- Participant ID: Char
  index, participant_id = siac_cqs_input_cta_v2_9_b.participant_id.dissect(buffer, index, packet, parent)

  -- Timestamp 1: Struct of 2 fields
  index, timestamp_1 = siac_cqs_input_cta_v2_9_b.timestamp_1.dissect(buffer, index, packet, parent)

  -- Message ID: Byte
  index, message_id = siac_cqs_input_cta_v2_9_b.message_id.dissect(buffer, index, packet, parent)

  -- Reserved: Char [4]
  index, reserved = siac_cqs_input_cta_v2_9_b.reserved.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: Signed Long
  index, participant_reference_number = siac_cqs_input_cta_v2_9_b.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_cqs_input_cta_v2_9_b.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message_header, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
siac_cqs_input_cta_v2_9_b.message = {}

-- Calculate size of: Message
siac_cqs_input_cta_v2_9_b.message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_input_cta_v2_9_b.message_header.size

  -- Parse runtime size of: Category Payload
  index = index + buffer(offset + index - 26, 2):uint()

  return index
end

-- Display: Message
siac_cqs_input_cta_v2_9_b.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cqs_input_cta_v2_9_b.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 8 fields
  index, message_header = siac_cqs_input_cta_v2_9_b.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 24, 1):string()

  -- Category Payload: Runtime Type with 4 branches
  index = siac_cqs_input_cta_v2_9_b.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cqs_input_cta_v2_9_b.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.message, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Block Header
siac_cqs_input_cta_v2_9_b.block_header = {}

-- Size: Block Header
siac_cqs_input_cta_v2_9_b.block_header.size =
  siac_cqs_input_cta_v2_9_b.version.size + 
  siac_cqs_input_cta_v2_9_b.block_size.size + 
  siac_cqs_input_cta_v2_9_b.block_sequence_number.size + 
  siac_cqs_input_cta_v2_9_b.messages_in_block.size + 
  siac_cqs_input_cta_v2_9_b.block_checksum.size

-- Display: Block Header
siac_cqs_input_cta_v2_9_b.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cqs_input_cta_v2_9_b.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: Byte
  index, version = siac_cqs_input_cta_v2_9_b.version.dissect(buffer, index, packet, parent)

  -- Block Size: Short
  index, block_size = siac_cqs_input_cta_v2_9_b.block_size.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: Integer
  index, block_sequence_number = siac_cqs_input_cta_v2_9_b.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: Byte
  index, messages_in_block = siac_cqs_input_cta_v2_9_b.messages_in_block.dissect(buffer, index, packet, parent)

  -- Block Checksum: Short
  index, block_checksum = siac_cqs_input_cta_v2_9_b.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cqs_input_cta_v2_9_b.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_input_cta_v2_9_b.fields.block_header, buffer(offset, 0))
    local index = siac_cqs_input_cta_v2_9_b.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_input_cta_v2_9_b.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_input_cta_v2_9_b.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_cqs_input_cta_v2_9_b.packet = {}

-- Verify required size of Tcp packet
siac_cqs_input_cta_v2_9_b.packet.requiredsize = function(buffer)
  return buffer:len() >= siac_cqs_input_cta_v2_9_b.block_separator.size + siac_cqs_input_cta_v2_9_b.block_header.size
end

-- Dissect Packet
siac_cqs_input_cta_v2_9_b.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Separator: Byte [2]
  index, block_separator = siac_cqs_input_cta_v2_9_b.block_separator.dissect(buffer, index, packet, parent)

  -- Block Header: Struct of 5 fields
  index, block_header = siac_cqs_input_cta_v2_9_b.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 3, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do
    index, message = siac_cqs_input_cta_v2_9_b.message.dissect(buffer, index, packet, parent, message_index)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_cqs_input_cta_v2_9_b.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_cqs_input_cta_v2_9_b.init()
end

-- Dissector for Siac Cqs Input Cta 2.9.b
function omi_siac_cqs_input_cta_v2_9_b.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_cqs_input_cta_v2_9_b.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_cqs_input_cta_v2_9_b, buffer(), omi_siac_cqs_input_cta_v2_9_b.description, "("..buffer:len().." Bytes)")
  return siac_cqs_input_cta_v2_9_b.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Siac Cqs Input Cta 2.9.b (Tcp)
local function omi_siac_cqs_input_cta_v2_9_b_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_cqs_input_cta_v2_9_b.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_cqs_input_cta_v2_9_b
  omi_siac_cqs_input_cta_v2_9_b.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cqs Input Cta 2.9.b
omi_siac_cqs_input_cta_v2_9_b:register_heuristic("tcp", omi_siac_cqs_input_cta_v2_9_b_tcp_heuristic)

-- Register Siac Cqs Input Cta 2.9.b on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_cqs_input_cta_v2_9_b)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The Securities Industry Automation Corporation
--   Version: 2.9.b
--   Date: Thursday, January 29, 2026
--   Specification: CQS_Pillar_Input_Specification.pdf
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
