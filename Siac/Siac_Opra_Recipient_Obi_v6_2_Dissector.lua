-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 6.2 Protocol
local omi_siac_opra_recipient_obi_v6_2 = Proto("Siac.Opra.Recipient.Obi.v6.2.Lua", "Siac Opra Recipient Obi 6.2")

-- Protocol table
local siac_opra_recipient_obi_v6_2 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 6.2 Fields
omi_siac_opra_recipient_obi_v6_2.fields.administrative_category = ProtoField.new("Administrative Category", "siac.opra.recipient.obi.v6.2.administrativecategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.opra.recipient.obi.v6.2.administrativemessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.bbo_indicator = ProtoField.new("Bbo Indicator", "siac.opra.recipient.obi.v6.2.bboindicator", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.best_bid_and_offer_appendage = ProtoField.new("Best Bid And Offer Appendage", "siac.opra.recipient.obi.v6.2.bestbidandofferappendage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.best_bid_appendage = ProtoField.new("Best Bid Appendage", "siac.opra.recipient.obi.v6.2.bestbidappendage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.best_bid_denominator_code = ProtoField.new("Best Bid Denominator Code", "siac.opra.recipient.obi.v6.2.bestbiddenominatorcode", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.best_bid_participant_id = ProtoField.new("Best Bid Participant Id", "siac.opra.recipient.obi.v6.2.bestbidparticipantid", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.best_bid_price = ProtoField.new("Best Bid Price", "siac.opra.recipient.obi.v6.2.bestbidprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.best_bid_size = ProtoField.new("Best Bid Size", "siac.opra.recipient.obi.v6.2.bestbidsize", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.best_offer_appendage = ProtoField.new("Best Offer Appendage", "siac.opra.recipient.obi.v6.2.bestofferappendage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.best_offer_denominator_code = ProtoField.new("Best Offer Denominator Code", "siac.opra.recipient.obi.v6.2.bestofferdenominatorcode", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.best_offer_participant_id = ProtoField.new("Best Offer Participant Id", "siac.opra.recipient.obi.v6.2.bestofferparticipantid", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.best_offer_price = ProtoField.new("Best Offer Price", "siac.opra.recipient.obi.v6.2.bestofferprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.best_offer_size = ProtoField.new("Best Offer Size", "siac.opra.recipient.obi.v6.2.bestoffersize", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.bid_index_value = ProtoField.new("Bid Index Value", "siac.opra.recipient.obi.v6.2.bidindexvalue", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.bid_price = ProtoField.new("Bid Price", "siac.opra.recipient.obi.v6.2.bidprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.bid_price_short = ProtoField.new("Bid Price Short", "siac.opra.recipient.obi.v6.2.bidpriceshort", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.bid_size = ProtoField.new("Bid Size", "siac.opra.recipient.obi.v6.2.bidsize", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.bid_size_short = ProtoField.new("Bid Size Short", "siac.opra.recipient.obi.v6.2.bidsizeshort", ftypes.UINT16)
omi_siac_opra_recipient_obi_v6_2.fields.block_checksum = ProtoField.new("Block Checksum", "siac.opra.recipient.obi.v6.2.blockchecksum", ftypes.UINT16)
omi_siac_opra_recipient_obi_v6_2.fields.block_header = ProtoField.new("Block Header", "siac.opra.recipient.obi.v6.2.blockheader", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.opra.recipient.obi.v6.2.blockpadbyte", ftypes.UINT8)
omi_siac_opra_recipient_obi_v6_2.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.opra.recipient.obi.v6.2.blocksequencenumber", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.block_size = ProtoField.new("Block Size", "siac.opra.recipient.obi.v6.2.blocksize", ftypes.UINT16)
omi_siac_opra_recipient_obi_v6_2.fields.block_timestamp = ProtoField.new("Block Timestamp", "siac.opra.recipient.obi.v6.2.blocktimestamp", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.control_category = ProtoField.new("Control Category", "siac.opra.recipient.obi.v6.2.controlcategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.control_message_type = ProtoField.new("Control Message Type", "siac.opra.recipient.obi.v6.2.controlmessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.opra.recipient.obi.v6.2.datafeedindicator", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_end_of_day_summary_category = ProtoField.new("Equity And Index End Of Day Summary Category", "siac.opra.recipient.obi.v6.2.equityandindexendofdaysummarycategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_end_of_day_summary_message_type = ProtoField.new("Equity And Index End Of Day Summary Message Type", "siac.opra.recipient.obi.v6.2.equityandindexendofdaysummarymessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_last_sale_category = ProtoField.new("Equity And Index Last Sale Category", "siac.opra.recipient.obi.v6.2.equityandindexlastsalecategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_last_sale_message_type = ProtoField.new("Equity And Index Last Sale Message Type", "siac.opra.recipient.obi.v6.2.equityandindexlastsalemessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.expiration_block = ProtoField.new("Expiration Block", "siac.opra.recipient.obi.v6.2.expirationblock", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.expiration_day = ProtoField.new("Expiration Day", "siac.opra.recipient.obi.v6.2.expirationday", ftypes.UINT8)
omi_siac_opra_recipient_obi_v6_2.fields.expiration_month = ProtoField.new("Expiration Month", "siac.opra.recipient.obi.v6.2.expirationmonth", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.expiration_year = ProtoField.new("Expiration Year", "siac.opra.recipient.obi.v6.2.expirationyear", ftypes.UINT8)
omi_siac_opra_recipient_obi_v6_2.fields.high_price = ProtoField.new("High Price", "siac.opra.recipient.obi.v6.2.highprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.index_value = ProtoField.new("Index Value", "siac.opra.recipient.obi.v6.2.indexvalue", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.index_value_denominator_code = ProtoField.new("Index Value Denominator Code", "siac.opra.recipient.obi.v6.2.indexvaluedenominatorcode", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.last_price = ProtoField.new("Last Price", "siac.opra.recipient.obi.v6.2.lastprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.long_equity_and_index_quote_category = ProtoField.new("Long Equity And Index Quote Category", "siac.opra.recipient.obi.v6.2.longequityandindexquotecategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.long_equity_and_index_quote_message_type = ProtoField.new("Long Equity And Index Quote Message Type", "siac.opra.recipient.obi.v6.2.longequityandindexquotemessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.low_price = ProtoField.new("Low Price", "siac.opra.recipient.obi.v6.2.lowprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.message = ProtoField.new("Message", "siac.opra.recipient.obi.v6.2.message", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.message_category = ProtoField.new("Message Category", "siac.opra.recipient.obi.v6.2.messagecategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.message_data = ProtoField.new("Message Data", "siac.opra.recipient.obi.v6.2.messagedata", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.message_data_length = ProtoField.new("Message Data Length", "siac.opra.recipient.obi.v6.2.messagedatalength", ftypes.UINT16)
omi_siac_opra_recipient_obi_v6_2.fields.message_header = ProtoField.new("Message Header", "siac.opra.recipient.obi.v6.2.messageheader", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.message_indicator = ProtoField.new("Message Indicator", "siac.opra.recipient.obi.v6.2.messageindicator", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.opra.recipient.obi.v6.2.messagesinblock", ftypes.UINT8)
omi_siac_opra_recipient_obi_v6_2.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.opra.recipient.obi.v6.2.nanoseconds", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.net_change = ProtoField.new("Net Change", "siac.opra.recipient.obi.v6.2.netchange", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.offer_index_value = ProtoField.new("Offer Index Value", "siac.opra.recipient.obi.v6.2.offerindexvalue", ftypes.INT64)
omi_siac_opra_recipient_obi_v6_2.fields.offer_price = ProtoField.new("Offer Price", "siac.opra.recipient.obi.v6.2.offerprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.offer_price_short = ProtoField.new("Offer Price Short", "siac.opra.recipient.obi.v6.2.offerpriceshort", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.offer_size = ProtoField.new("Offer Size", "siac.opra.recipient.obi.v6.2.offersize", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.offer_size_short = ProtoField.new("Offer Size Short", "siac.opra.recipient.obi.v6.2.offersizeshort", ftypes.UINT16)
omi_siac_opra_recipient_obi_v6_2.fields.open_interest_category = ProtoField.new("Open Interest Category", "siac.opra.recipient.obi.v6.2.openinterestcategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.open_interest_message_type = ProtoField.new("Open Interest Message Type", "siac.opra.recipient.obi.v6.2.openinterestmessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.open_interest_volume = ProtoField.new("Open Interest Volume", "siac.opra.recipient.obi.v6.2.openinterestvolume", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.open_price = ProtoField.new("Open Price", "siac.opra.recipient.obi.v6.2.openprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.packet = ProtoField.new("Packet", "siac.opra.recipient.obi.v6.2.packet", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.participant_id = ProtoField.new("Participant Id", "siac.opra.recipient.obi.v6.2.participantid", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.opra.recipient.obi.v6.2.participantreferencenumber", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.premium_price = ProtoField.new("Premium Price", "siac.opra.recipient.obi.v6.2.premiumprice", ftypes.INT32)
omi_siac_opra_recipient_obi_v6_2.fields.premium_price_denominator_code = ProtoField.new("Premium Price Denominator Code", "siac.opra.recipient.obi.v6.2.premiumpricedenominatorcode", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.reserved_1 = ProtoField.new("Reserved 1", "siac.opra.recipient.obi.v6.2.reserved1", ftypes.UINT8)
omi_siac_opra_recipient_obi_v6_2.fields.reserved_4 = ProtoField.new("Reserved 4", "siac.opra.recipient.obi.v6.2.reserved4", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.opra.recipient.obi.v6.2.retransmissionindicator", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.seconds = ProtoField.new("Seconds", "siac.opra.recipient.obi.v6.2.seconds", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.security_symbol = ProtoField.new("Security Symbol", "siac.opra.recipient.obi.v6.2.securitysymbol", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "siac.opra.recipient.obi.v6.2.securitysymbolshort", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.session_indicator = ProtoField.new("Session Indicator", "siac.opra.recipient.obi.v6.2.sessionindicator", ftypes.UINT8)
omi_siac_opra_recipient_obi_v6_2.fields.short_equity_and_index_quote_category = ProtoField.new("Short Equity And Index Quote Category", "siac.opra.recipient.obi.v6.2.shortequityandindexquotecategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.short_equity_and_index_quote_message_type = ProtoField.new("Short Equity And Index Quote Message Type", "siac.opra.recipient.obi.v6.2.shortequityandindexquotemessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.strike_price = ProtoField.new("Strike Price", "siac.opra.recipient.obi.v6.2.strikeprice", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.strike_price_denominator_code = ProtoField.new("Strike Price Denominator Code", "siac.opra.recipient.obi.v6.2.strikepricedenominatorcode", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.strike_price_short = ProtoField.new("Strike Price Short", "siac.opra.recipient.obi.v6.2.strikepriceshort", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.trade_identifier = ProtoField.new("Trade Identifier", "siac.opra.recipient.obi.v6.2.tradeidentifier", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.transaction_id = ProtoField.new("Transaction Id", "siac.opra.recipient.obi.v6.2.transactionid", ftypes.UINT32)
omi_siac_opra_recipient_obi_v6_2.fields.underlying_price = ProtoField.new("Underlying Price", "siac.opra.recipient.obi.v6.2.underlyingprice", ftypes.INT64)
omi_siac_opra_recipient_obi_v6_2.fields.underlying_price_denominator_code = ProtoField.new("Underlying Price Denominator Code", "siac.opra.recipient.obi.v6.2.underlyingpricedenominatorcode", ftypes.DOUBLE)
omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_category = ProtoField.new("Underlying Value Category", "siac.opra.recipient.obi.v6.2.underlyingvaluecategory", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_message_type = ProtoField.new("Underlying Value Message Type", "siac.opra.recipient.obi.v6.2.underlyingvaluemessagetype", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.version = ProtoField.new("Version", "siac.opra.recipient.obi.v6.2.version", ftypes.UINT8)
omi_siac_opra_recipient_obi_v6_2.fields.volume = ProtoField.new("Volume", "siac.opra.recipient.obi.v6.2.volume", ftypes.UINT32)

-- Siac Opra Obi Recipient 6.2 Application Messages
omi_siac_opra_recipient_obi_v6_2.fields.administrative_message = ProtoField.new("Administrative Message", "siac.opra.recipient.obi.v6.2.administrativemessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.control_message = ProtoField.new("Control Message", "siac.opra.recipient.obi.v6.2.controlmessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_end_of_day_summary_message = ProtoField.new("Equity And Index End Of Day Summary Message", "siac.opra.recipient.obi.v6.2.equityandindexendofdaysummarymessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_last_sale_message = ProtoField.new("Equity And Index Last Sale Message", "siac.opra.recipient.obi.v6.2.equityandindexlastsalemessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.long_equity_and_index_quote_message = ProtoField.new("Long Equity And Index Quote Message", "siac.opra.recipient.obi.v6.2.longequityandindexquotemessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.open_interest_message = ProtoField.new("Open Interest Message", "siac.opra.recipient.obi.v6.2.openinterestmessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.short_equity_and_index_quote_message = ProtoField.new("Short Equity And Index Quote Message", "siac.opra.recipient.obi.v6.2.shortequityandindexquotemessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_bid_and_offer_message = ProtoField.new("Underlying Value Bid And Offer Message", "siac.opra.recipient.obi.v6.2.underlyingvaluebidandoffermessage", ftypes.STRING)
omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_last_sale_message = ProtoField.new("Underlying Value Last Sale Message", "siac.opra.recipient.obi.v6.2.underlyingvaluelastsalemessage", ftypes.STRING)

-- Siac Opra Recipient Obi 6.2 generated fields
omi_siac_opra_recipient_obi_v6_2.fields.message_index = ProtoField.new("Message Index", "siac.opra.recipient.obi.v6.2.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Opra Recipient Obi 6.2 Element Dissection Options
show.administrative_category = true
show.application_messages = true
show.best_bid_and_offer_appendage = true
show.best_bid_appendage = true
show.best_offer_appendage = true
show.block_header = true
show.block_timestamp = true
show.control_category = true
show.equity_and_index_end_of_day_summary_category = true
show.equity_and_index_last_sale_category = true
show.expiration_block = true
show.long_equity_and_index_quote_category = true
show.message = true
show.message_header = true
show.open_interest_category = true
show.packet = true
show.short_equity_and_index_quote_category = true
show.underlying_value_category = true
show.message_index = true

-- Register Siac Opra Recipient Obi 6.2 Show Options
omi_siac_opra_recipient_obi_v6_2.prefs.show_administrative_category = Pref.bool("Show Administrative Category", show.administrative_category, "Parse and add Administrative Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_best_bid_and_offer_appendage = Pref.bool("Show Best Bid And Offer Appendage", show.best_bid_and_offer_appendage, "Parse and add Best Bid And Offer Appendage to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_best_bid_appendage = Pref.bool("Show Best Bid Appendage", show.best_bid_appendage, "Parse and add Best Bid Appendage to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_best_offer_appendage = Pref.bool("Show Best Offer Appendage", show.best_offer_appendage, "Parse and add Best Offer Appendage to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_block_timestamp = Pref.bool("Show Block Timestamp", show.block_timestamp, "Parse and add Block Timestamp to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_control_category = Pref.bool("Show Control Category", show.control_category, "Parse and add Control Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_equity_and_index_end_of_day_summary_category = Pref.bool("Show Equity And Index End Of Day Summary Category", show.equity_and_index_end_of_day_summary_category, "Parse and add Equity And Index End Of Day Summary Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_equity_and_index_last_sale_category = Pref.bool("Show Equity And Index Last Sale Category", show.equity_and_index_last_sale_category, "Parse and add Equity And Index Last Sale Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_expiration_block = Pref.bool("Show Expiration Block", show.expiration_block, "Parse and add Expiration Block to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_long_equity_and_index_quote_category = Pref.bool("Show Long Equity And Index Quote Category", show.long_equity_and_index_quote_category, "Parse and add Long Equity And Index Quote Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_open_interest_category = Pref.bool("Show Open Interest Category", show.open_interest_category, "Parse and add Open Interest Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_short_equity_and_index_quote_category = Pref.bool("Show Short Equity And Index Quote Category", show.short_equity_and_index_quote_category, "Parse and add Short Equity And Index Quote Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_underlying_value_category = Pref.bool("Show Underlying Value Category", show.underlying_value_category, "Parse and add Underlying Value Category to protocol tree")
omi_siac_opra_recipient_obi_v6_2.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_siac_opra_recipient_obi_v6_2.prefs_changed()

  -- Check if preferences have changed
  if show.administrative_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_administrative_category then
    show.administrative_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_administrative_category
  end
  if show.application_messages ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_application_messages then
    show.application_messages = omi_siac_opra_recipient_obi_v6_2.prefs.show_application_messages
  end
  if show.best_bid_and_offer_appendage ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_best_bid_and_offer_appendage then
    show.best_bid_and_offer_appendage = omi_siac_opra_recipient_obi_v6_2.prefs.show_best_bid_and_offer_appendage
  end
  if show.best_bid_appendage ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_best_bid_appendage then
    show.best_bid_appendage = omi_siac_opra_recipient_obi_v6_2.prefs.show_best_bid_appendage
  end
  if show.best_offer_appendage ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_best_offer_appendage then
    show.best_offer_appendage = omi_siac_opra_recipient_obi_v6_2.prefs.show_best_offer_appendage
  end
  if show.block_header ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_block_header then
    show.block_header = omi_siac_opra_recipient_obi_v6_2.prefs.show_block_header
  end
  if show.block_timestamp ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_block_timestamp then
    show.block_timestamp = omi_siac_opra_recipient_obi_v6_2.prefs.show_block_timestamp
  end
  if show.control_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_control_category then
    show.control_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_control_category
  end
  if show.equity_and_index_end_of_day_summary_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_equity_and_index_end_of_day_summary_category then
    show.equity_and_index_end_of_day_summary_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_equity_and_index_end_of_day_summary_category
  end
  if show.equity_and_index_last_sale_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_equity_and_index_last_sale_category then
    show.equity_and_index_last_sale_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_equity_and_index_last_sale_category
  end
  if show.expiration_block ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_expiration_block then
    show.expiration_block = omi_siac_opra_recipient_obi_v6_2.prefs.show_expiration_block
  end
  if show.long_equity_and_index_quote_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_long_equity_and_index_quote_category then
    show.long_equity_and_index_quote_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_long_equity_and_index_quote_category
  end
  if show.message ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_message then
    show.message = omi_siac_opra_recipient_obi_v6_2.prefs.show_message
  end
  if show.message_header ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_message_header then
    show.message_header = omi_siac_opra_recipient_obi_v6_2.prefs.show_message_header
  end
  if show.open_interest_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_open_interest_category then
    show.open_interest_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_open_interest_category
  end
  if show.packet ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_packet then
    show.packet = omi_siac_opra_recipient_obi_v6_2.prefs.show_packet
  end
  if show.short_equity_and_index_quote_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_short_equity_and_index_quote_category then
    show.short_equity_and_index_quote_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_short_equity_and_index_quote_category
  end
  if show.underlying_value_category ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_underlying_value_category then
    show.underlying_value_category = omi_siac_opra_recipient_obi_v6_2.prefs.show_underlying_value_category
  end
  if show.message_index ~= omi_siac_opra_recipient_obi_v6_2.prefs.show_message_index then
    show.message_index = omi_siac_opra_recipient_obi_v6_2.prefs.show_message_index
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
-- Siac Opra Recipient Obi 6.2 Fields
-----------------------------------------------------------------------

-- Administrative Message Type
siac_opra_recipient_obi_v6_2.administrative_message_type = {}

-- Size: Administrative Message Type
siac_opra_recipient_obi_v6_2.administrative_message_type.size = 1

-- Display: Administrative Message Type
siac_opra_recipient_obi_v6_2.administrative_message_type.display = function(value)
  if value == " " then
    return "Administrative Message Type: Administrative (<whitespace>)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
siac_opra_recipient_obi_v6_2.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Bbo Indicator
siac_opra_recipient_obi_v6_2.bbo_indicator = {}

-- Size: Bbo Indicator
siac_opra_recipient_obi_v6_2.bbo_indicator.size = 1

-- Display: Bbo Indicator
siac_opra_recipient_obi_v6_2.bbo_indicator.display = function(value)
  if value == "A" then
    return "Bbo Indicator: No Best Bid Change Or Best Offer Change (A)"
  end
  if value == "B" then
    return "Bbo Indicator: No Best Bid Change Quote Contains Best Offer (B)"
  end
  if value == "C" then
    return "Bbo Indicator: No Best Bid Change Best Offer Appendage (C)"
  end
  if value == "D" then
    return "Bbo Indicator: No Best Bid Change No Best Offer (D)"
  end
  if value == "E" then
    return "Bbo Indicator: Quote Contains Best Bid No Best Offer Change (E)"
  end
  if value == "F" then
    return "Bbo Indicator: Quote Contains Best Bid Quote Contains Best Offer (F)"
  end
  if value == "G" then
    return "Bbo Indicator: Quote Contains Best Bid Best Offer Appendage (G)"
  end
  if value == "H" then
    return "Bbo Indicator: Quote Contains Best Bid No Best Offer (H)"
  end
  if value == "I" then
    return "Bbo Indicator: No Best Bid No Best Offer Change (I)"
  end
  if value == "J" then
    return "Bbo Indicator: No Best Bid Quote Contains Best Offer (J)"
  end
  if value == "K" then
    return "Bbo Indicator: No Best Bid Best Offer Appendage (K)"
  end
  if value == "L" then
    return "Bbo Indicator: No Best Bid No Best Offer (L)"
  end
  if value == "M" then
    return "Bbo Indicator: Best Bid Appendage No Best Offer Change (M)"
  end
  if value == "N" then
    return "Bbo Indicator: Best Bid Appendage Quote Contains Best Offer (N)"
  end
  if value == "O" then
    return "Bbo Indicator: Best Bid Appendage Best Offer Appendage (O)"
  end
  if value == "P" then
    return "Bbo Indicator: Best Bid Appendage No Best Offer (P)"
  end
  if value == " " then
    return "Bbo Indicator: Not Included In The Bbo (<whitespace>)"
  end

  return "Bbo Indicator: Unknown("..value..")"
end

-- Dissect: Bbo Indicator
siac_opra_recipient_obi_v6_2.bbo_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.bbo_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.bbo_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.bbo_indicator, range, value, display)

  return offset + length, value
end

-- Best Bid Denominator Code
siac_opra_recipient_obi_v6_2.best_bid_denominator_code = {}

-- Size: Best Bid Denominator Code
siac_opra_recipient_obi_v6_2.best_bid_denominator_code.size = 1

-- Display: Best Bid Denominator Code
siac_opra_recipient_obi_v6_2.best_bid_denominator_code.display = function(value)
  if value == "A" then
    return "Best Bid Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Best Bid Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Best Bid Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Best Bid Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Best Bid Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Best Bid Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Best Bid Denominator Code: Ten Million (G)"
  end
  if value == "H" then
    return "Best Bid Denominator Code: Hundred Million (H)"
  end
  if value == "I" then
    return "Best Bid Denominator Code: No Fraction (I)"
  end

  return "Best Bid Denominator Code: Unknown("..value..")"
end

-- Dissect: Best Bid Denominator Code
siac_opra_recipient_obi_v6_2.best_bid_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_bid_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.best_bid_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_bid_denominator_code, range, value, display)

  return offset + length, value
end

-- Best Bid Participant Id
siac_opra_recipient_obi_v6_2.best_bid_participant_id = {}

-- Size: Best Bid Participant Id
siac_opra_recipient_obi_v6_2.best_bid_participant_id.size = 1

-- Display: Best Bid Participant Id
siac_opra_recipient_obi_v6_2.best_bid_participant_id.display = function(value)
  if value == "A" then
    return "Best Bid Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Best Bid Participant Id: Boston Options Exchange (B)"
  end
  if value == "C" then
    return "Best Bid Participant Id: Cboe Options Exchange (C)"
  end
  if value == "D" then
    return "Best Bid Participant Id: Miax Emerald (D)"
  end
  if value == "E" then
    return "Best Bid Participant Id: Cboe Edgx Options (E)"
  end
  if value == "H" then
    return "Best Bid Participant Id: Nasdaq Gemx (H)"
  end
  if value == "I" then
    return "Best Bid Participant Id: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Best Bid Participant Id: Nasdaq Mrx (J)"
  end
  if value == "M" then
    return "Best Bid Participant Id: Miami International Securities Exchange (M)"
  end
  if value == "N" then
    return "Best Bid Participant Id: Nyse Arca (N)"
  end
  if value == "O" then
    return "Best Bid Participant Id: Options Price Reporting Authority (O)"
  end
  if value == "P" then
    return "Best Bid Participant Id: Miax Pearl (P)"
  end
  if value == "Q" then
    return "Best Bid Participant Id: Nasdaq Options Market (Q)"
  end
  if value == "T" then
    return "Best Bid Participant Id: Nasdaq Bx Options (T)"
  end
  if value == "W" then
    return "Best Bid Participant Id: Cboe C 2 Options (W)"
  end
  if value == "X" then
    return "Best Bid Participant Id: Nasdaq Phlx (X)"
  end
  if value == "Z" then
    return "Best Bid Participant Id: Cboe Bzx Options Exchange (Z)"
  end

  return "Best Bid Participant Id: Unknown("..value..")"
end

-- Dissect: Best Bid Participant Id
siac_opra_recipient_obi_v6_2.best_bid_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_bid_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.best_bid_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- Best Bid Price
siac_opra_recipient_obi_v6_2.best_bid_price = {}

-- Size: Best Bid Price
siac_opra_recipient_obi_v6_2.best_bid_price.size = 4

-- Display: Best Bid Price
siac_opra_recipient_obi_v6_2.best_bid_price.display = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
siac_opra_recipient_obi_v6_2.best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Best Bid Size
siac_opra_recipient_obi_v6_2.best_bid_size = {}

-- Size: Best Bid Size
siac_opra_recipient_obi_v6_2.best_bid_size.size = 4

-- Display: Best Bid Size
siac_opra_recipient_obi_v6_2.best_bid_size.display = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
siac_opra_recipient_obi_v6_2.best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Best Offer Denominator Code
siac_opra_recipient_obi_v6_2.best_offer_denominator_code = {}

-- Size: Best Offer Denominator Code
siac_opra_recipient_obi_v6_2.best_offer_denominator_code.size = 1

-- Display: Best Offer Denominator Code
siac_opra_recipient_obi_v6_2.best_offer_denominator_code.display = function(value)
  if value == "A" then
    return "Best Offer Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Best Offer Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Best Offer Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Best Offer Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Best Offer Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Best Offer Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Best Offer Denominator Code: Ten Million (G)"
  end
  if value == "H" then
    return "Best Offer Denominator Code: Hundred Million (H)"
  end
  if value == "I" then
    return "Best Offer Denominator Code: No Fraction (I)"
  end

  return "Best Offer Denominator Code: Unknown("..value..")"
end

-- Dissect: Best Offer Denominator Code
siac_opra_recipient_obi_v6_2.best_offer_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_offer_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.best_offer_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_offer_denominator_code, range, value, display)

  return offset + length, value
end

-- Best Offer Participant Id
siac_opra_recipient_obi_v6_2.best_offer_participant_id = {}

-- Size: Best Offer Participant Id
siac_opra_recipient_obi_v6_2.best_offer_participant_id.size = 1

-- Display: Best Offer Participant Id
siac_opra_recipient_obi_v6_2.best_offer_participant_id.display = function(value)
  if value == "A" then
    return "Best Offer Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Best Offer Participant Id: Boston Options Exchange (B)"
  end
  if value == "C" then
    return "Best Offer Participant Id: Cboe Options Exchange (C)"
  end
  if value == "D" then
    return "Best Offer Participant Id: Miax Emerald (D)"
  end
  if value == "E" then
    return "Best Offer Participant Id: Cboe Edgx Options (E)"
  end
  if value == "H" then
    return "Best Offer Participant Id: Nasdaq Gemx (H)"
  end
  if value == "I" then
    return "Best Offer Participant Id: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Best Offer Participant Id: Nasdaq Mrx (J)"
  end
  if value == "M" then
    return "Best Offer Participant Id: Miami International Securities Exchange (M)"
  end
  if value == "N" then
    return "Best Offer Participant Id: Nyse Arca (N)"
  end
  if value == "O" then
    return "Best Offer Participant Id: Options Price Reporting Authority (O)"
  end
  if value == "P" then
    return "Best Offer Participant Id: Miax Pearl (P)"
  end
  if value == "Q" then
    return "Best Offer Participant Id: Nasdaq Options Market (Q)"
  end
  if value == "T" then
    return "Best Offer Participant Id: Nasdaq Bx Options (T)"
  end
  if value == "W" then
    return "Best Offer Participant Id: Cboe C 2 Options (W)"
  end
  if value == "X" then
    return "Best Offer Participant Id: Nasdaq Phlx (X)"
  end
  if value == "Z" then
    return "Best Offer Participant Id: Cboe Bzx Options Exchange (Z)"
  end

  return "Best Offer Participant Id: Unknown("..value..")"
end

-- Dissect: Best Offer Participant Id
siac_opra_recipient_obi_v6_2.best_offer_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_offer_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.best_offer_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_offer_participant_id, range, value, display)

  return offset + length, value
end

-- Best Offer Price
siac_opra_recipient_obi_v6_2.best_offer_price = {}

-- Size: Best Offer Price
siac_opra_recipient_obi_v6_2.best_offer_price.size = 4

-- Display: Best Offer Price
siac_opra_recipient_obi_v6_2.best_offer_price.display = function(value)
  return "Best Offer Price: "..value
end

-- Dissect: Best Offer Price
siac_opra_recipient_obi_v6_2.best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_offer_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Best Offer Size
siac_opra_recipient_obi_v6_2.best_offer_size = {}

-- Size: Best Offer Size
siac_opra_recipient_obi_v6_2.best_offer_size.size = 4

-- Display: Best Offer Size
siac_opra_recipient_obi_v6_2.best_offer_size.display = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
siac_opra_recipient_obi_v6_2.best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Bid Index Value
siac_opra_recipient_obi_v6_2.bid_index_value = {}

-- Size: Bid Index Value
siac_opra_recipient_obi_v6_2.bid_index_value.size = 4

-- Display: Bid Index Value
siac_opra_recipient_obi_v6_2.bid_index_value.display = function(value)
  return "Bid Index Value: "..value
end

-- Dissect: Bid Index Value
siac_opra_recipient_obi_v6_2.bid_index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.bid_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.bid_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.bid_index_value, range, value, display)

  return offset + length, value
end

-- Bid Price
siac_opra_recipient_obi_v6_2.bid_price = {}

-- Size: Bid Price
siac_opra_recipient_obi_v6_2.bid_price.size = 4

-- Display: Bid Price
siac_opra_recipient_obi_v6_2.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
siac_opra_recipient_obi_v6_2.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Short
siac_opra_recipient_obi_v6_2.bid_price_short = {}

-- Size: Bid Price Short
siac_opra_recipient_obi_v6_2.bid_price_short.size = 2

-- Display: Bid Price Short
siac_opra_recipient_obi_v6_2.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Translate: Bid Price Short
siac_opra_recipient_obi_v6_2.bid_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price Short
siac_opra_recipient_obi_v6_2.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.bid_price_short.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = siac_opra_recipient_obi_v6_2.bid_price_short.translate(raw)
  local display = siac_opra_recipient_obi_v6_2.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size
siac_opra_recipient_obi_v6_2.bid_size = {}

-- Size: Bid Size
siac_opra_recipient_obi_v6_2.bid_size.size = 4

-- Display: Bid Size
siac_opra_recipient_obi_v6_2.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
siac_opra_recipient_obi_v6_2.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Size Short
siac_opra_recipient_obi_v6_2.bid_size_short = {}

-- Size: Bid Size Short
siac_opra_recipient_obi_v6_2.bid_size_short.size = 2

-- Display: Bid Size Short
siac_opra_recipient_obi_v6_2.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
siac_opra_recipient_obi_v6_2.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Block Checksum
siac_opra_recipient_obi_v6_2.block_checksum = {}

-- Size: Block Checksum
siac_opra_recipient_obi_v6_2.block_checksum.size = 2

-- Display: Block Checksum
siac_opra_recipient_obi_v6_2.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_opra_recipient_obi_v6_2.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Block Pad Byte
siac_opra_recipient_obi_v6_2.block_pad_byte = {}

-- Size: Block Pad Byte
siac_opra_recipient_obi_v6_2.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_opra_recipient_obi_v6_2.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_opra_recipient_obi_v6_2.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_opra_recipient_obi_v6_2.block_sequence_number = {}

-- Size: Block Sequence Number
siac_opra_recipient_obi_v6_2.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_opra_recipient_obi_v6_2.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_opra_recipient_obi_v6_2.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_opra_recipient_obi_v6_2.block_size = {}

-- Size: Block Size
siac_opra_recipient_obi_v6_2.block_size.size = 2

-- Display: Block Size
siac_opra_recipient_obi_v6_2.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_opra_recipient_obi_v6_2.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.block_size, range, value, display)

  return offset + length, value
end

-- Control Message Type
siac_opra_recipient_obi_v6_2.control_message_type = {}

-- Size: Control Message Type
siac_opra_recipient_obi_v6_2.control_message_type.size = 1

-- Display: Control Message Type
siac_opra_recipient_obi_v6_2.control_message_type.display = function(value)
  if value == "C" then
    return "Control Message Type: Start Of Day (C)"
  end
  if value == "E" then
    return "Control Message Type: Start Of Summary (E)"
  end
  if value == "F" then
    return "Control Message Type: End Of Summary (F)"
  end
  if value == "J" then
    return "Control Message Type: End Of Day (J)"
  end
  if value == "K" then
    return "Control Message Type: Reset Block Sequence Number (K)"
  end
  if value == "L" then
    return "Control Message Type: Start Of Open Interest (L)"
  end
  if value == "M" then
    return "Control Message Type: End Of Open Interest (M)"
  end
  if value == "N" then
    return "Control Message Type: Line Integrity (N)"
  end
  if value == "P" then
    return "Control Message Type: Disaster Recovery Data Center Activation (P)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
siac_opra_recipient_obi_v6_2.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Data Feed Indicator
siac_opra_recipient_obi_v6_2.data_feed_indicator = {}

-- Size: Data Feed Indicator
siac_opra_recipient_obi_v6_2.data_feed_indicator.size = 1

-- Display: Data Feed Indicator
siac_opra_recipient_obi_v6_2.data_feed_indicator.display = function(value)
  if value == "O" then
    return "Data Feed Indicator: Opra (O)"
  end

  return "Data Feed Indicator: Unknown("..value..")"
end

-- Dissect: Data Feed Indicator
siac_opra_recipient_obi_v6_2.data_feed_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.data_feed_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.data_feed_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.data_feed_indicator, range, value, display)

  return offset + length, value
end

-- Equity And Index End Of Day Summary Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type = {}

-- Size: Equity And Index End Of Day Summary Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type.size = 1

-- Display: Equity And Index End Of Day Summary Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type.display = function(value)
  if value == " " then
    return "Equity And Index End Of Day Summary Message Type: Equity And Index End Of Day Summary (<whitespace>)"
  end

  return "Equity And Index End Of Day Summary Message Type: Unknown("..value..")"
end

-- Dissect: Equity And Index End Of Day Summary Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_end_of_day_summary_message_type, range, value, display)

  return offset + length, value
end

-- Equity And Index Last Sale Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type = {}

-- Size: Equity And Index Last Sale Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type.size = 1

-- Display: Equity And Index Last Sale Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type.display = function(value)
  if value == "A" then
    return "Equity And Index Last Sale Message Type: Canc (A)"
  end
  if value == "B" then
    return "Equity And Index Last Sale Message Type: Oseq (B)"
  end
  if value == "C" then
    return "Equity And Index Last Sale Message Type: Cncl (C)"
  end
  if value == "D" then
    return "Equity And Index Last Sale Message Type: Late (D)"
  end
  if value == "E" then
    return "Equity And Index Last Sale Message Type: Cnco (E)"
  end
  if value == "F" then
    return "Equity And Index Last Sale Message Type: Open (F)"
  end
  if value == "G" then
    return "Equity And Index Last Sale Message Type: Cnol (G)"
  end
  if value == "H" then
    return "Equity And Index Last Sale Message Type: Opnl (H)"
  end
  if value == "I" then
    return "Equity And Index Last Sale Message Type: Auto (I)"
  end
  if value == "J" then
    return "Equity And Index Last Sale Message Type: Reop (J)"
  end
  if value == "K" then
    return "Equity And Index Last Sale Message Type: Ajst (K)"
  end
  if value == "L" then
    return "Equity And Index Last Sale Message Type: Sprd (L)"
  end
  if value == "M" then
    return "Equity And Index Last Sale Message Type: Stdl (M)"
  end
  if value == "N" then
    return "Equity And Index Last Sale Message Type: Stpd (N)"
  end
  if value == "O" then
    return "Equity And Index Last Sale Message Type: Cstp (O)"
  end
  if value == "P" then
    return "Equity And Index Last Sale Message Type: Bwrt (P)"
  end
  if value == "Q" then
    return "Equity And Index Last Sale Message Type: Cmbo (Q)"
  end
  if value == "R" then
    return "Equity And Index Last Sale Message Type: Spim (R)"
  end
  if value == "S" then
    return "Equity And Index Last Sale Message Type: Isoi (S)"
  end
  if value == "T" then
    return "Equity And Index Last Sale Message Type: Bnmt (T)"
  end
  if value == "X" then
    return "Equity And Index Last Sale Message Type: Xmpt (X)"
  end

  return "Equity And Index Last Sale Message Type: Unknown("..value..")"
end

-- Dissect: Equity And Index Last Sale Message Type
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_last_sale_message_type, range, value, display)

  return offset + length, value
end

-- Expiration Day
siac_opra_recipient_obi_v6_2.expiration_day = {}

-- Size: Expiration Day
siac_opra_recipient_obi_v6_2.expiration_day.size = 1

-- Display: Expiration Day
siac_opra_recipient_obi_v6_2.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
siac_opra_recipient_obi_v6_2.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
siac_opra_recipient_obi_v6_2.expiration_month = {}

-- Size: Expiration Month
siac_opra_recipient_obi_v6_2.expiration_month.size = 1

-- Display: Expiration Month
siac_opra_recipient_obi_v6_2.expiration_month.display = function(value)
  if value == "A" then
    return "Expiration Month: January Call (A)"
  end
  if value == "M" then
    return "Expiration Month: January Put (M)"
  end
  if value == "B" then
    return "Expiration Month: February Call (B)"
  end
  if value == "N" then
    return "Expiration Month: February Put (N)"
  end
  if value == "C" then
    return "Expiration Month: March Call (C)"
  end
  if value == "O" then
    return "Expiration Month: March Put (O)"
  end
  if value == "D" then
    return "Expiration Month: April Call (D)"
  end
  if value == "P" then
    return "Expiration Month: April Put (P)"
  end
  if value == "E" then
    return "Expiration Month: May Call (E)"
  end
  if value == "Q" then
    return "Expiration Month: May Put (Q)"
  end
  if value == "F" then
    return "Expiration Month: June Call (F)"
  end
  if value == "R" then
    return "Expiration Month: June Put (R)"
  end
  if value == "G" then
    return "Expiration Month: July Call (G)"
  end
  if value == "S" then
    return "Expiration Month: July Put (S)"
  end
  if value == "H" then
    return "Expiration Month: August Call (H)"
  end
  if value == "T" then
    return "Expiration Month: August Put (T)"
  end
  if value == "I" then
    return "Expiration Month: September Call (I)"
  end
  if value == "U" then
    return "Expiration Month: September Put (U)"
  end
  if value == "J" then
    return "Expiration Month: October Call (J)"
  end
  if value == "V" then
    return "Expiration Month: October Put (V)"
  end
  if value == "K" then
    return "Expiration Month: November Call (K)"
  end
  if value == "W" then
    return "Expiration Month: November Put (W)"
  end
  if value == "L" then
    return "Expiration Month: December Call (L)"
  end
  if value == "X" then
    return "Expiration Month: December Put (X)"
  end

  return "Expiration Month: Unknown("..value..")"
end

-- Dissect: Expiration Month
siac_opra_recipient_obi_v6_2.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.expiration_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
siac_opra_recipient_obi_v6_2.expiration_year = {}

-- Size: Expiration Year
siac_opra_recipient_obi_v6_2.expiration_year.size = 1

-- Display: Expiration Year
siac_opra_recipient_obi_v6_2.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
siac_opra_recipient_obi_v6_2.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- High Price
siac_opra_recipient_obi_v6_2.high_price = {}

-- Size: High Price
siac_opra_recipient_obi_v6_2.high_price.size = 4

-- Display: High Price
siac_opra_recipient_obi_v6_2.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
siac_opra_recipient_obi_v6_2.high_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.high_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index Value
siac_opra_recipient_obi_v6_2.index_value = {}

-- Size: Index Value
siac_opra_recipient_obi_v6_2.index_value.size = 4

-- Display: Index Value
siac_opra_recipient_obi_v6_2.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
siac_opra_recipient_obi_v6_2.index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.index_value, range, value, display)

  return offset + length, value
end

-- Index Value Denominator Code
siac_opra_recipient_obi_v6_2.index_value_denominator_code = {}

-- Size: Index Value Denominator Code
siac_opra_recipient_obi_v6_2.index_value_denominator_code.size = 1

-- Display: Index Value Denominator Code
siac_opra_recipient_obi_v6_2.index_value_denominator_code.display = function(value)
  if value == "A" then
    return "Index Value Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Index Value Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Index Value Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Index Value Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Index Value Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Index Value Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Index Value Denominator Code: Ten Million (G)"
  end
  if value == "I" then
    return "Index Value Denominator Code: No Fraction (I)"
  end

  return "Index Value Denominator Code: Unknown("..value..")"
end

-- Dissect: Index Value Denominator Code
siac_opra_recipient_obi_v6_2.index_value_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.index_value_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.index_value_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.index_value_denominator_code, range, value, display)

  return offset + length, value
end

-- Last Price
siac_opra_recipient_obi_v6_2.last_price = {}

-- Size: Last Price
siac_opra_recipient_obi_v6_2.last_price.size = 4

-- Display: Last Price
siac_opra_recipient_obi_v6_2.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
siac_opra_recipient_obi_v6_2.last_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.last_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.last_price, range, value, display)

  return offset + length, value
end

-- Long Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type = {}

-- Size: Long Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type.size = 1

-- Display: Long Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type.display = function(value)
  if value == " " then
    return "Long Equity And Index Quote Message Type: Regular Trading (<whitespace>)"
  end
  if value == "F" then
    return "Long Equity And Index Quote Message Type: Non Firm Quote (F)"
  end
  if value == "I" then
    return "Long Equity And Index Quote Message Type: Indicative Value (I)"
  end
  if value == "R" then
    return "Long Equity And Index Quote Message Type: Rotation (R)"
  end
  if value == "T" then
    return "Long Equity And Index Quote Message Type: Trading Halted (T)"
  end
  if value == "A" then
    return "Long Equity And Index Quote Message Type: Eligible For Automatic Execution (A)"
  end
  if value == "B" then
    return "Long Equity And Index Quote Message Type: Bid Contains Customer Trading Interest (B)"
  end
  if value == "O" then
    return "Long Equity And Index Quote Message Type: Offer Contains Customer Trading Interest (O)"
  end
  if value == "C" then
    return "Long Equity And Index Quote Message Type: Both Bid And Offer Contain Customer Trading Interest (C)"
  end
  if value == "X" then
    return "Long Equity And Index Quote Message Type: Offer Side Of Quote Not Firm Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Long Equity And Index Quote Message Type: Bid Side Of Quote Not Firm Offer Side Firm (Y)"
  end

  return "Long Equity And Index Quote Message Type: Unknown("..value..")"
end

-- Dissect: Long Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.long_equity_and_index_quote_message_type, range, value, display)

  return offset + length, value
end

-- Low Price
siac_opra_recipient_obi_v6_2.low_price = {}

-- Size: Low Price
siac_opra_recipient_obi_v6_2.low_price.size = 4

-- Display: Low Price
siac_opra_recipient_obi_v6_2.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
siac_opra_recipient_obi_v6_2.low_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.low_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.low_price, range, value, display)

  return offset + length, value
end

-- Message Category
siac_opra_recipient_obi_v6_2.message_category = {}

-- Size: Message Category
siac_opra_recipient_obi_v6_2.message_category.size = 1

-- Display: Message Category
siac_opra_recipient_obi_v6_2.message_category.display = function(value)
  if value == "C" then
    return "Message Category: Administrative (C)"
  end
  if value == "H" then
    return "Message Category: Control (H)"
  end
  if value == "a" then
    return "Message Category: Equity And Index Last Sale (a)"
  end
  if value == "d" then
    return "Message Category: Open Interest (d)"
  end
  if value == "f" then
    return "Message Category: Equity And Index End Of Day Summary (f)"
  end
  if value == "k" then
    return "Message Category: Long Equity And Index Quote (k)"
  end
  if value == "q" then
    return "Message Category: Short Equity And Index Quote (q)"
  end
  if value == "Y" then
    return "Message Category: Underlying Value (Y)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_opra_recipient_obi_v6_2.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Data
siac_opra_recipient_obi_v6_2.message_data = {}

-- Display: Message Data
siac_opra_recipient_obi_v6_2.message_data.display = function(value)
  return "Message Data: "..value
end

-- Dissect runtime sized field: Message Data
siac_opra_recipient_obi_v6_2.message_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.message_data.display(value, packet, parent, size)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.message_data, range, value, display)

  return offset + size, value
end

-- Message Data Length
siac_opra_recipient_obi_v6_2.message_data_length = {}

-- Size: Message Data Length
siac_opra_recipient_obi_v6_2.message_data_length.size = 2

-- Display: Message Data Length
siac_opra_recipient_obi_v6_2.message_data_length.display = function(value)
  return "Message Data Length: "..value
end

-- Dissect: Message Data Length
siac_opra_recipient_obi_v6_2.message_data_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.message_data_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.message_data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.message_data_length, range, value, display)

  return offset + length, value
end

-- Message Indicator
siac_opra_recipient_obi_v6_2.message_indicator = {}

-- Size: Message Indicator
siac_opra_recipient_obi_v6_2.message_indicator.size = 1

-- Display: Message Indicator
siac_opra_recipient_obi_v6_2.message_indicator.display = function(value)
  return "Message Indicator: "..value
end

-- Dissect: Message Indicator
siac_opra_recipient_obi_v6_2.message_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.message_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.message_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.message_indicator, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_opra_recipient_obi_v6_2.messages_in_block = {}

-- Size: Messages In Block
siac_opra_recipient_obi_v6_2.messages_in_block.size = 1

-- Display: Messages In Block
siac_opra_recipient_obi_v6_2.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_opra_recipient_obi_v6_2.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_opra_recipient_obi_v6_2.nanoseconds = {}

-- Size: Nanoseconds
siac_opra_recipient_obi_v6_2.nanoseconds.size = 4

-- Display: Nanoseconds
siac_opra_recipient_obi_v6_2.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_opra_recipient_obi_v6_2.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Net Change
siac_opra_recipient_obi_v6_2.net_change = {}

-- Size: Net Change
siac_opra_recipient_obi_v6_2.net_change.size = 4

-- Display: Net Change
siac_opra_recipient_obi_v6_2.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
siac_opra_recipient_obi_v6_2.net_change.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.net_change.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.net_change, range, value, display)

  return offset + length, value
end

-- Offer Index Value
siac_opra_recipient_obi_v6_2.offer_index_value = {}

-- Size: Offer Index Value
siac_opra_recipient_obi_v6_2.offer_index_value.size = 8

-- Display: Offer Index Value
siac_opra_recipient_obi_v6_2.offer_index_value.display = function(value)
  return "Offer Index Value: "..value
end

-- Dissect: Offer Index Value
siac_opra_recipient_obi_v6_2.offer_index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.offer_index_value.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_opra_recipient_obi_v6_2.offer_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.offer_index_value, range, value, display)

  return offset + length, value
end

-- Offer Price
siac_opra_recipient_obi_v6_2.offer_price = {}

-- Size: Offer Price
siac_opra_recipient_obi_v6_2.offer_price.size = 4

-- Display: Offer Price
siac_opra_recipient_obi_v6_2.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
siac_opra_recipient_obi_v6_2.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.offer_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Price Short
siac_opra_recipient_obi_v6_2.offer_price_short = {}

-- Size: Offer Price Short
siac_opra_recipient_obi_v6_2.offer_price_short.size = 2

-- Display: Offer Price Short
siac_opra_recipient_obi_v6_2.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Translate: Offer Price Short
siac_opra_recipient_obi_v6_2.offer_price_short.translate = function(raw)
  return raw/100
end

-- Dissect: Offer Price Short
siac_opra_recipient_obi_v6_2.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.offer_price_short.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = siac_opra_recipient_obi_v6_2.offer_price_short.translate(raw)
  local display = siac_opra_recipient_obi_v6_2.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Size
siac_opra_recipient_obi_v6_2.offer_size = {}

-- Size: Offer Size
siac_opra_recipient_obi_v6_2.offer_size.size = 4

-- Display: Offer Size
siac_opra_recipient_obi_v6_2.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
siac_opra_recipient_obi_v6_2.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Offer Size Short
siac_opra_recipient_obi_v6_2.offer_size_short = {}

-- Size: Offer Size Short
siac_opra_recipient_obi_v6_2.offer_size_short.size = 2

-- Display: Offer Size Short
siac_opra_recipient_obi_v6_2.offer_size_short.display = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
siac_opra_recipient_obi_v6_2.offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.offer_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Open Interest Message Type
siac_opra_recipient_obi_v6_2.open_interest_message_type = {}

-- Size: Open Interest Message Type
siac_opra_recipient_obi_v6_2.open_interest_message_type.size = 1

-- Display: Open Interest Message Type
siac_opra_recipient_obi_v6_2.open_interest_message_type.display = function(value)
  if value == " " then
    return "Open Interest Message Type: Open Interest (<whitespace>)"
  end

  return "Open Interest Message Type: Unknown("..value..")"
end

-- Dissect: Open Interest Message Type
siac_opra_recipient_obi_v6_2.open_interest_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.open_interest_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.open_interest_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.open_interest_message_type, range, value, display)

  return offset + length, value
end

-- Open Interest Volume
siac_opra_recipient_obi_v6_2.open_interest_volume = {}

-- Size: Open Interest Volume
siac_opra_recipient_obi_v6_2.open_interest_volume.size = 4

-- Display: Open Interest Volume
siac_opra_recipient_obi_v6_2.open_interest_volume.display = function(value)
  return "Open Interest Volume: "..value
end

-- Dissect: Open Interest Volume
siac_opra_recipient_obi_v6_2.open_interest_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.open_interest_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.open_interest_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.open_interest_volume, range, value, display)

  return offset + length, value
end

-- Open Price
siac_opra_recipient_obi_v6_2.open_price = {}

-- Size: Open Price
siac_opra_recipient_obi_v6_2.open_price.size = 4

-- Display: Open Price
siac_opra_recipient_obi_v6_2.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
siac_opra_recipient_obi_v6_2.open_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.open_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.open_price, range, value, display)

  return offset + length, value
end

-- Participant Id
siac_opra_recipient_obi_v6_2.participant_id = {}

-- Size: Participant Id
siac_opra_recipient_obi_v6_2.participant_id.size = 1

-- Display: Participant Id
siac_opra_recipient_obi_v6_2.participant_id.display = function(value)
  if value == "A" then
    return "Participant Id: Amex (A)"
  end
  if value == "B" then
    return "Participant Id: Box (B)"
  end
  if value == "C" then
    return "Participant Id: Cboe (C)"
  end
  if value == "D" then
    return "Participant Id: Emerald (D)"
  end
  if value == "E" then
    return "Participant Id: Edgx (E)"
  end
  if value == "H" then
    return "Participant Id: Gemx (H)"
  end
  if value == "I" then
    return "Participant Id: Ise (I)"
  end
  if value == "J" then
    return "Participant Id: Mrx (J)"
  end
  if value == "M" then
    return "Participant Id: Miax (M)"
  end
  if value == "N" then
    return "Participant Id: Nyse (N)"
  end
  if value == "O" then
    return "Participant Id: Opra (O)"
  end
  if value == "P" then
    return "Participant Id: Pearl (P)"
  end
  if value == "Q" then
    return "Participant Id: Nasd (Q)"
  end
  if value == "S" then
    return "Participant Id: Sphr (S)"
  end
  if value == "T" then
    return "Participant Id: Bx (T)"
  end
  if value == "U" then
    return "Participant Id: Memx (U)"
  end
  if value == "W" then
    return "Participant Id: C 2 (W)"
  end
  if value == "X" then
    return "Participant Id: Phlx (X)"
  end
  if value == "Z" then
    return "Participant Id: Bats (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
siac_opra_recipient_obi_v6_2.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Reference Number
siac_opra_recipient_obi_v6_2.participant_reference_number = {}

-- Size: Participant Reference Number
siac_opra_recipient_obi_v6_2.participant_reference_number.size = 4

-- Display: Participant Reference Number
siac_opra_recipient_obi_v6_2.participant_reference_number.display = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_opra_recipient_obi_v6_2.participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Premium Price
siac_opra_recipient_obi_v6_2.premium_price = {}

-- Size: Premium Price
siac_opra_recipient_obi_v6_2.premium_price.size = 4

-- Display: Premium Price
siac_opra_recipient_obi_v6_2.premium_price.display = function(value)
  return "Premium Price: "..value
end

-- Dissect: Premium Price
siac_opra_recipient_obi_v6_2.premium_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.premium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_recipient_obi_v6_2.premium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.premium_price, range, value, display)

  return offset + length, value
end

-- Premium Price Denominator Code
siac_opra_recipient_obi_v6_2.premium_price_denominator_code = {}

-- Size: Premium Price Denominator Code
siac_opra_recipient_obi_v6_2.premium_price_denominator_code.size = 1

-- Display: Premium Price Denominator Code
siac_opra_recipient_obi_v6_2.premium_price_denominator_code.display = function(value)
  if value == "A" then
    return "Premium Price Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Premium Price Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Premium Price Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Premium Price Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Premium Price Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Premium Price Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Premium Price Denominator Code: Ten Million (G)"
  end
  if value == "I" then
    return "Premium Price Denominator Code: No Fraction (I)"
  end

  return "Premium Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Premium Price Denominator Code
siac_opra_recipient_obi_v6_2.premium_price_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.premium_price_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.premium_price_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.premium_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Reserved 1
siac_opra_recipient_obi_v6_2.reserved_1 = {}

-- Size: Reserved 1
siac_opra_recipient_obi_v6_2.reserved_1.size = 1

-- Display: Reserved 1
siac_opra_recipient_obi_v6_2.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
siac_opra_recipient_obi_v6_2.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.reserved_1.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
siac_opra_recipient_obi_v6_2.reserved_4 = {}

-- Size: Reserved 4
siac_opra_recipient_obi_v6_2.reserved_4.size = 4

-- Display: Reserved 4
siac_opra_recipient_obi_v6_2.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
siac_opra_recipient_obi_v6_2.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.reserved_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Retransmission Indicator
siac_opra_recipient_obi_v6_2.retransmission_indicator = {}

-- Size: Retransmission Indicator
siac_opra_recipient_obi_v6_2.retransmission_indicator.size = 1

-- Display: Retransmission Indicator
siac_opra_recipient_obi_v6_2.retransmission_indicator.display = function(value)
  if value == "" then
    return "Retransmission Indicator: Not Retransmitted (<whitespace>)"
  end
  if value == "V" then
    return "Retransmission Indicator: Retransmitted (V)"
  end

  return "Retransmission Indicator: Unknown("..value..")"
end

-- Dissect: Retransmission Indicator
siac_opra_recipient_obi_v6_2.retransmission_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.retransmission_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.retransmission_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.retransmission_indicator, range, value, display)

  return offset + length, value
end

-- Seconds
siac_opra_recipient_obi_v6_2.seconds = {}

-- Size: Seconds
siac_opra_recipient_obi_v6_2.seconds.size = 4

-- Display: Seconds
siac_opra_recipient_obi_v6_2.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_opra_recipient_obi_v6_2.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_opra_recipient_obi_v6_2.security_symbol = {}

-- Size: Security Symbol
siac_opra_recipient_obi_v6_2.security_symbol.size = 5

-- Display: Security Symbol
siac_opra_recipient_obi_v6_2.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_opra_recipient_obi_v6_2.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.security_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Security Symbol Short
siac_opra_recipient_obi_v6_2.security_symbol_short = {}

-- Size: Security Symbol Short
siac_opra_recipient_obi_v6_2.security_symbol_short.size = 4

-- Display: Security Symbol Short
siac_opra_recipient_obi_v6_2.security_symbol_short.display = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
siac_opra_recipient_obi_v6_2.security_symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.security_symbol_short.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.security_symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Session Indicator
siac_opra_recipient_obi_v6_2.session_indicator = {}

-- Size: Session Indicator
siac_opra_recipient_obi_v6_2.session_indicator.size = 1

-- Display: Session Indicator
siac_opra_recipient_obi_v6_2.session_indicator.display = function(value)
  if value == 0 then
    return "Session Indicator: Regular (0)"
  end
  if value == 88 then
    return "Session Indicator: Pre Market (88)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
siac_opra_recipient_obi_v6_2.session_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.session_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.session_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Short Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type = {}

-- Size: Short Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type.size = 1

-- Display: Short Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type.display = function(value)
  if value == " " then
    return "Short Equity And Index Quote Message Type: Regular Trading (<whitespace>)"
  end
  if value == "F" then
    return "Short Equity And Index Quote Message Type: Non Firm Quote (F)"
  end
  if value == "I" then
    return "Short Equity And Index Quote Message Type: Indicative Value (I)"
  end
  if value == "R" then
    return "Short Equity And Index Quote Message Type: Rotation (R)"
  end
  if value == "T" then
    return "Short Equity And Index Quote Message Type: Trading Halted (T)"
  end
  if value == "A" then
    return "Short Equity And Index Quote Message Type: Eligible For Automatic Execution (A)"
  end
  if value == "B" then
    return "Short Equity And Index Quote Message Type: Bid Contains Customer Trading Interest (B)"
  end
  if value == "O" then
    return "Short Equity And Index Quote Message Type: Offer Contains Customer Trading Interest (O)"
  end
  if value == "C" then
    return "Short Equity And Index Quote Message Type: Both Bid And Offer Contain Customer Trading Interest (C)"
  end
  if value == "X" then
    return "Short Equity And Index Quote Message Type: Offer Side Of Quote Not Firm Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Short Equity And Index Quote Message Type: Bid Side Of Quote Not Firm Offer Side Firm (Y)"
  end

  return "Short Equity And Index Quote Message Type: Unknown("..value..")"
end

-- Dissect: Short Equity And Index Quote Message Type
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.short_equity_and_index_quote_message_type, range, value, display)

  return offset + length, value
end

-- Strike Price
siac_opra_recipient_obi_v6_2.strike_price = {}

-- Size: Strike Price
siac_opra_recipient_obi_v6_2.strike_price.size = 4

-- Display: Strike Price
siac_opra_recipient_obi_v6_2.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
siac_opra_recipient_obi_v6_2.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.strike_price.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Denominator Code
siac_opra_recipient_obi_v6_2.strike_price_denominator_code = {}

-- Size: Strike Price Denominator Code
siac_opra_recipient_obi_v6_2.strike_price_denominator_code.size = 1

-- Display: Strike Price Denominator Code
siac_opra_recipient_obi_v6_2.strike_price_denominator_code.display = function(value)
  if value == "A" then
    return "Strike Price Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Strike Price Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Strike Price Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Strike Price Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Strike Price Denominator Code: Hundred Thousand (E)"
  end
  if value == "I" then
    return "Strike Price Denominator Code: No Fraction (I)"
  end

  return "Strike Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Strike Price Denominator Code
siac_opra_recipient_obi_v6_2.strike_price_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.strike_price_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.strike_price_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.strike_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Strike Price Short
siac_opra_recipient_obi_v6_2.strike_price_short = {}

-- Size: Strike Price Short
siac_opra_recipient_obi_v6_2.strike_price_short.size = 2

-- Display: Strike Price Short
siac_opra_recipient_obi_v6_2.strike_price_short.display = function(value)
  return "Strike Price Short: "..value
end

-- Translate: Strike Price Short
siac_opra_recipient_obi_v6_2.strike_price_short.translate = function(raw)
  return raw/10
end

-- Dissect: Strike Price Short
siac_opra_recipient_obi_v6_2.strike_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.strike_price_short.size
  local range = buffer(offset, length)
  local raw = range:uint()
  local value = siac_opra_recipient_obi_v6_2.strike_price_short.translate(raw)
  local display = siac_opra_recipient_obi_v6_2.strike_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.strike_price_short, range, value, display)

  return offset + length, value
end

-- Trade Identifier
siac_opra_recipient_obi_v6_2.trade_identifier = {}

-- Size: Trade Identifier
siac_opra_recipient_obi_v6_2.trade_identifier.size = 4

-- Display: Trade Identifier
siac_opra_recipient_obi_v6_2.trade_identifier.display = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
siac_opra_recipient_obi_v6_2.trade_identifier.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.trade_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.trade_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.trade_identifier, range, value, display)

  return offset + length, value
end

-- Transaction Id
siac_opra_recipient_obi_v6_2.transaction_id = {}

-- Size: Transaction Id
siac_opra_recipient_obi_v6_2.transaction_id.size = 4

-- Display: Transaction Id
siac_opra_recipient_obi_v6_2.transaction_id.display = function(value)
  return "Transaction Id: "..value
end

-- Dissect: Transaction Id
siac_opra_recipient_obi_v6_2.transaction_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.transaction_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.transaction_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Underlying Price
siac_opra_recipient_obi_v6_2.underlying_price = {}

-- Size: Underlying Price
siac_opra_recipient_obi_v6_2.underlying_price.size = 8

-- Display: Underlying Price
siac_opra_recipient_obi_v6_2.underlying_price.display = function(value)
  return "Underlying Price: "..value
end

-- Dissect: Underlying Price
siac_opra_recipient_obi_v6_2.underlying_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.underlying_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_opra_recipient_obi_v6_2.underlying_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.underlying_price, range, value, display)

  return offset + length, value
end

-- Underlying Price Denominator Code
siac_opra_recipient_obi_v6_2.underlying_price_denominator_code = {}

-- Size: Underlying Price Denominator Code
siac_opra_recipient_obi_v6_2.underlying_price_denominator_code.size = 1

-- Display: Underlying Price Denominator Code
siac_opra_recipient_obi_v6_2.underlying_price_denominator_code.display = function(value)
  if value == "A" then
    return "Underlying Price Denominator Code: Ten (A)"
  end
  if value == "B" then
    return "Underlying Price Denominator Code: Hundred (B)"
  end
  if value == "C" then
    return "Underlying Price Denominator Code: Thousand (C)"
  end
  if value == "D" then
    return "Underlying Price Denominator Code: Ten Thousand (D)"
  end
  if value == "E" then
    return "Underlying Price Denominator Code: Hundred Thousand (E)"
  end
  if value == "F" then
    return "Underlying Price Denominator Code: Million (F)"
  end
  if value == "G" then
    return "Underlying Price Denominator Code: Ten Million (G)"
  end
  if value == "H" then
    return "Underlying Price Denominator Code: Hundred Million (H)"
  end
  if value == "I" then
    return "Underlying Price Denominator Code: No Fraction (I)"
  end

  return "Underlying Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Underlying Price Denominator Code
siac_opra_recipient_obi_v6_2.underlying_price_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.underlying_price_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.underlying_price_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.underlying_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Underlying Value Message Type
siac_opra_recipient_obi_v6_2.underlying_value_message_type = {}

-- Size: Underlying Value Message Type
siac_opra_recipient_obi_v6_2.underlying_value_message_type.size = 1

-- Display: Underlying Value Message Type
siac_opra_recipient_obi_v6_2.underlying_value_message_type.display = function(value)
  if value == " " then
    return "Underlying Value Message Type: Index Based On Last Sale (<whitespace>)"
  end
  if value == "I" then
    return "Underlying Value Message Type: Index Based On Bid And Offer (I)"
  end

  return "Underlying Value Message Type: Unknown("..value..")"
end

-- Dissect: Underlying Value Message Type
siac_opra_recipient_obi_v6_2.underlying_value_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.underlying_value_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_recipient_obi_v6_2.underlying_value_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_message_type, range, value, display)

  return offset + length, value
end

-- Version
siac_opra_recipient_obi_v6_2.version = {}

-- Size: Version
siac_opra_recipient_obi_v6_2.version.size = 1

-- Display: Version
siac_opra_recipient_obi_v6_2.version.display = function(value)
  if value == 6 then
    return "Version: Opra 6"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
siac_opra_recipient_obi_v6_2.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
siac_opra_recipient_obi_v6_2.volume = {}

-- Size: Volume
siac_opra_recipient_obi_v6_2.volume.size = 4

-- Display: Volume
siac_opra_recipient_obi_v6_2.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
siac_opra_recipient_obi_v6_2.volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_recipient_obi_v6_2.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_recipient_obi_v6_2.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_recipient_obi_v6_2.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Siac Opra Recipient Obi 6.2
-----------------------------------------------------------------------

-- Underlying Value Bid And Offer Message
siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message = {}

-- Size: Underlying Value Bid And Offer Message
siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.size =
  siac_opra_recipient_obi_v6_2.message_indicator.size + 
  siac_opra_recipient_obi_v6_2.transaction_id.size + 
  siac_opra_recipient_obi_v6_2.participant_reference_number.size + 
  siac_opra_recipient_obi_v6_2.security_symbol.size + 
  siac_opra_recipient_obi_v6_2.reserved_1.size + 
  siac_opra_recipient_obi_v6_2.index_value_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.bid_index_value.size + 
  siac_opra_recipient_obi_v6_2.offer_index_value.size

-- Display: Underlying Value Bid And Offer Message
siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Value Bid And Offer Message
siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: ASCII character
  index, message_indicator = siac_opra_recipient_obi_v6_2.message_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_recipient_obi_v6_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_recipient_obi_v6_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Index Value Denominator Code: alphabetic
  index, index_value_denominator_code = siac_opra_recipient_obi_v6_2.index_value_denominator_code.dissect(buffer, index, packet, parent)

  -- Bid Index Value: signed integer
  index, bid_index_value = siac_opra_recipient_obi_v6_2.bid_index_value.dissect(buffer, index, packet, parent)

  -- Offer Index Value: signed integer
  index, offer_index_value = siac_opra_recipient_obi_v6_2.offer_index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Bid And Offer Message
siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_bid_and_offer_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Value Last Sale Message
siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message = {}

-- Size: Underlying Value Last Sale Message
siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.size =
  siac_opra_recipient_obi_v6_2.message_indicator.size + 
  siac_opra_recipient_obi_v6_2.transaction_id.size + 
  siac_opra_recipient_obi_v6_2.participant_reference_number.size + 
  siac_opra_recipient_obi_v6_2.security_symbol.size + 
  siac_opra_recipient_obi_v6_2.reserved_1.size + 
  siac_opra_recipient_obi_v6_2.index_value_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.index_value.size + 
  siac_opra_recipient_obi_v6_2.reserved_4.size

-- Display: Underlying Value Last Sale Message
siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Value Last Sale Message
siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: ASCII character
  index, message_indicator = siac_opra_recipient_obi_v6_2.message_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_recipient_obi_v6_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_recipient_obi_v6_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Index Value Denominator Code: alphabetic
  index, index_value_denominator_code = siac_opra_recipient_obi_v6_2.index_value_denominator_code.dissect(buffer, index, packet, parent)

  -- Index Value: signed integer
  index, index_value = siac_opra_recipient_obi_v6_2.index_value.dissect(buffer, index, packet, parent)

  -- Reserved 4: unsigned integer
  index, reserved_4 = siac_opra_recipient_obi_v6_2.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Last Sale Message
siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_last_sale_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Value Message Payload
siac_opra_recipient_obi_v6_2.underlying_value_message_payload = {}

-- Dissect: Underlying Value Message Payload
siac_opra_recipient_obi_v6_2.underlying_value_message_payload.dissect = function(buffer, offset, packet, parent, underlying_value_message_type)
  -- Dissect Underlying Value Last Sale Message
  if underlying_value_message_type == " " then
    return siac_opra_recipient_obi_v6_2.underlying_value_last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Bid And Offer Message
  if underlying_value_message_type == "I" then
    return siac_opra_recipient_obi_v6_2.underlying_value_bid_and_offer_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Underlying Value Category
siac_opra_recipient_obi_v6_2.underlying_value_category = {}

-- Calculate size of: Underlying Value Category
siac_opra_recipient_obi_v6_2.underlying_value_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.underlying_value_message_type.size

  -- Calculate runtime size of Underlying Value Message Payload field
  local underlying_value_message_payload_offset = offset + index
  local underlying_value_message_payload_type = buffer(underlying_value_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.underlying_value_message_payload.size(buffer, underlying_value_message_payload_offset, underlying_value_message_payload_type)

  return index
end

-- Display: Underlying Value Category
siac_opra_recipient_obi_v6_2.underlying_value_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Value Category
siac_opra_recipient_obi_v6_2.underlying_value_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Value Message Type: ASCII character
  index, underlying_value_message_type = siac_opra_recipient_obi_v6_2.underlying_value_message_type.dissect(buffer, index, packet, parent)

  -- Underlying Value Message Payload: Runtime Type with 2 branches
  index = siac_opra_recipient_obi_v6_2.underlying_value_message_payload.dissect(buffer, index, packet, parent, underlying_value_message_type)

  return index
end

-- Dissect: Underlying Value Category
siac_opra_recipient_obi_v6_2.underlying_value_category.dissect = function(buffer, offset, packet, parent)
  if show.underlying_value_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.underlying_value_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.underlying_value_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.underlying_value_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.underlying_value_category.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid And Offer Appendage
siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage = {}

-- Size: Best Bid And Offer Appendage
siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.size =
  siac_opra_recipient_obi_v6_2.best_bid_participant_id.size + 
  siac_opra_recipient_obi_v6_2.best_bid_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.best_bid_price.size + 
  siac_opra_recipient_obi_v6_2.best_bid_size.size + 
  siac_opra_recipient_obi_v6_2.best_offer_participant_id.size + 
  siac_opra_recipient_obi_v6_2.best_offer_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.best_offer_price.size + 
  siac_opra_recipient_obi_v6_2.best_offer_size.size

-- Display: Best Bid And Offer Appendage
siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid And Offer Appendage
siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: alphabetic
  index, best_bid_participant_id = siac_opra_recipient_obi_v6_2.best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- Best Bid Denominator Code: alphabetic
  index, best_bid_denominator_code = siac_opra_recipient_obi_v6_2.best_bid_denominator_code.dissect(buffer, index, packet, parent)

  -- Best Bid Price: signed integer
  index, best_bid_price = siac_opra_recipient_obi_v6_2.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: unsigned integer
  index, best_bid_size = siac_opra_recipient_obi_v6_2.best_bid_size.dissect(buffer, index, packet, parent)

  -- Best Offer Participant Id: alphabetic
  index, best_offer_participant_id = siac_opra_recipient_obi_v6_2.best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- Best Offer Denominator Code: alphabetic
  index, best_offer_denominator_code = siac_opra_recipient_obi_v6_2.best_offer_denominator_code.dissect(buffer, index, packet, parent)

  -- Best Offer Price: signed integer
  index, best_offer_price = siac_opra_recipient_obi_v6_2.best_offer_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: unsigned integer
  index, best_offer_size = siac_opra_recipient_obi_v6_2.best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Offer Appendage
siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_and_offer_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_bid_and_offer_appendage, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Best Offer Appendage
siac_opra_recipient_obi_v6_2.best_offer_appendage = {}

-- Size: Best Offer Appendage
siac_opra_recipient_obi_v6_2.best_offer_appendage.size =
  siac_opra_recipient_obi_v6_2.best_offer_participant_id.size + 
  siac_opra_recipient_obi_v6_2.best_offer_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.best_offer_price.size + 
  siac_opra_recipient_obi_v6_2.best_offer_size.size

-- Display: Best Offer Appendage
siac_opra_recipient_obi_v6_2.best_offer_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Offer Appendage
siac_opra_recipient_obi_v6_2.best_offer_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Offer Participant Id: alphabetic
  index, best_offer_participant_id = siac_opra_recipient_obi_v6_2.best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- Best Offer Denominator Code: alphabetic
  index, best_offer_denominator_code = siac_opra_recipient_obi_v6_2.best_offer_denominator_code.dissect(buffer, index, packet, parent)

  -- Best Offer Price: signed integer
  index, best_offer_price = siac_opra_recipient_obi_v6_2.best_offer_price.dissect(buffer, index, packet, parent)

  -- Best Offer Size: unsigned integer
  index, best_offer_size = siac_opra_recipient_obi_v6_2.best_offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Appendage
siac_opra_recipient_obi_v6_2.best_offer_appendage.dissect = function(buffer, offset, packet, parent)
  if show.best_offer_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_offer_appendage, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.best_offer_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.best_offer_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.best_offer_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Best Bid Appendage
siac_opra_recipient_obi_v6_2.best_bid_appendage = {}

-- Size: Best Bid Appendage
siac_opra_recipient_obi_v6_2.best_bid_appendage.size =
  siac_opra_recipient_obi_v6_2.best_bid_participant_id.size + 
  siac_opra_recipient_obi_v6_2.best_bid_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.best_bid_price.size + 
  siac_opra_recipient_obi_v6_2.best_bid_size.size

-- Display: Best Bid Appendage
siac_opra_recipient_obi_v6_2.best_bid_appendage.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Bid Appendage
siac_opra_recipient_obi_v6_2.best_bid_appendage.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: alphabetic
  index, best_bid_participant_id = siac_opra_recipient_obi_v6_2.best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- Best Bid Denominator Code: alphabetic
  index, best_bid_denominator_code = siac_opra_recipient_obi_v6_2.best_bid_denominator_code.dissect(buffer, index, packet, parent)

  -- Best Bid Price: signed integer
  index, best_bid_price = siac_opra_recipient_obi_v6_2.best_bid_price.dissect(buffer, index, packet, parent)

  -- Best Bid Size: unsigned integer
  index, best_bid_size = siac_opra_recipient_obi_v6_2.best_bid_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Appendage
siac_opra_recipient_obi_v6_2.best_bid_appendage.dissect = function(buffer, offset, packet, parent)
  if show.best_bid_appendage then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.best_bid_appendage, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.best_bid_appendage.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.best_bid_appendage.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.best_bid_appendage.fields(buffer, offset, packet, parent)
  end
end

-- Expiration Block
siac_opra_recipient_obi_v6_2.expiration_block = {}

-- Size: Expiration Block
siac_opra_recipient_obi_v6_2.expiration_block.size =
  siac_opra_recipient_obi_v6_2.expiration_month.size + 
  siac_opra_recipient_obi_v6_2.expiration_day.size + 
  siac_opra_recipient_obi_v6_2.expiration_year.size

-- Display: Expiration Block
siac_opra_recipient_obi_v6_2.expiration_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expiration Block
siac_opra_recipient_obi_v6_2.expiration_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Expiration Month: alphabetic
  index, expiration_month = siac_opra_recipient_obi_v6_2.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: unsigned integer
  index, expiration_day = siac_opra_recipient_obi_v6_2.expiration_day.dissect(buffer, index, packet, parent)

  -- Expiration Year: unsigned integer
  index, expiration_year = siac_opra_recipient_obi_v6_2.expiration_year.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expiration Block
siac_opra_recipient_obi_v6_2.expiration_block.dissect = function(buffer, offset, packet, parent)
  if show.expiration_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.expiration_block, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.expiration_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.expiration_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.expiration_block.fields(buffer, offset, packet, parent)
  end
end

-- Short Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message = {}

-- Calculate size of: Short Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.bbo_indicator.size

  index = index + siac_opra_recipient_obi_v6_2.transaction_id.size

  index = index + siac_opra_recipient_obi_v6_2.participant_reference_number.size

  index = index + siac_opra_recipient_obi_v6_2.security_symbol_short.size

  index = index + siac_opra_recipient_obi_v6_2.expiration_block.size

  index = index + siac_opra_recipient_obi_v6_2.strike_price_short.size

  index = index + siac_opra_recipient_obi_v6_2.bid_price_short.size

  index = index + siac_opra_recipient_obi_v6_2.bid_size_short.size

  index = index + siac_opra_recipient_obi_v6_2.offer_price_short.size

  index = index + siac_opra_recipient_obi_v6_2.offer_size_short.size

  local bbo_indicator = buffer(offset + index - 26, 1):string()

  if bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P" then
    index = index + siac_opra_recipient_obi_v6_2.best_bid_appendage.size

  end

  local bbo_indicator = buffer(offset + index - 36, 1):string()

  if bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K" then
    index = index + siac_opra_recipient_obi_v6_2.best_offer_appendage.size

  end

  local bbo_indicator = buffer(offset + index - 46, 1):string()

  if bbo_indicator == "O" then
    index = index + siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.size

  end

  return index
end

-- Display: Short Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bbo Indicator: alphabetic
  index, bbo_indicator = siac_opra_recipient_obi_v6_2.bbo_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol Short: Alphanumeric
  index, security_symbol_short = siac_opra_recipient_obi_v6_2.security_symbol_short.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_recipient_obi_v6_2.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Short: unsigned integer
  index, strike_price_short = siac_opra_recipient_obi_v6_2.strike_price_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: signed integer
  index, bid_price_short = siac_opra_recipient_obi_v6_2.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: unsigned integer
  index, bid_size_short = siac_opra_recipient_obi_v6_2.bid_size_short.dissect(buffer, index, packet, parent)

  -- Offer Price Short: signed integer
  index, offer_price_short = siac_opra_recipient_obi_v6_2.offer_price_short.dissect(buffer, index, packet, parent)

  -- Offer Size Short: unsigned integer
  index, offer_size_short = siac_opra_recipient_obi_v6_2.offer_size_short.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Best Bid Appendage
  local best_bid_appendage = nil

  local best_bid_appendage_exists = bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P"

  if best_bid_appendage_exists then
    index, best_bid_appendage = siac_opra_recipient_obi_v6_2.best_bid_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Best Offer Appendage
  local best_offer_appendage = nil

  local best_offer_appendage_exists = bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K"

  if best_offer_appendage_exists then
    index, best_offer_appendage = siac_opra_recipient_obi_v6_2.best_offer_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Best Bid And Offer Appendage
  local best_bid_and_offer_appendage = nil

  local best_bid_and_offer_appendage_exists = bbo_indicator == "O"

  if best_bid_and_offer_appendage_exists then
    index, best_bid_and_offer_appendage = siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Short Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.short_equity_and_index_quote_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Equity And Index Quote Message Payload
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_payload = {}

-- Dissect: Short Equity And Index Quote Message Payload
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_payload.dissect = function(buffer, offset, packet, parent, short_equity_and_index_quote_message_type)
  -- Dissect Short Equity And Index Quote Message
  if short_equity_and_index_quote_message_type == " " or short_equity_and_index_quote_message_type == "F" or short_equity_and_index_quote_message_type == "I" or short_equity_and_index_quote_message_type == "R" or short_equity_and_index_quote_message_type == "T" or short_equity_and_index_quote_message_type == "A" or short_equity_and_index_quote_message_type == "B" or short_equity_and_index_quote_message_type == "O" or short_equity_and_index_quote_message_type == "C" or short_equity_and_index_quote_message_type == "X" or short_equity_and_index_quote_message_type == "Y" then
    return siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Short Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category = {}

-- Calculate size of: Short Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type.size

  -- Calculate runtime size of Short Equity And Index Quote Message Payload field
  local short_equity_and_index_quote_message_payload_offset = offset + index
  local short_equity_and_index_quote_message_payload_type = buffer(short_equity_and_index_quote_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_payload.size(buffer, short_equity_and_index_quote_message_payload_offset, short_equity_and_index_quote_message_payload_type)

  return index
end

-- Display: Short Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Equity And Index Quote Message Type: ASCII character
  index, short_equity_and_index_quote_message_type = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_type.dissect(buffer, index, packet, parent)

  -- Short Equity And Index Quote Message Payload: Runtime Type with 1 branches
  index = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_message_payload.dissect(buffer, index, packet, parent, short_equity_and_index_quote_message_type)

  return index
end

-- Dissect: Short Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.dissect = function(buffer, offset, packet, parent)
  if show.short_equity_and_index_quote_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.short_equity_and_index_quote_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
  end
end

-- Long Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message = {}

-- Calculate size of: Long Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.bbo_indicator.size

  index = index + siac_opra_recipient_obi_v6_2.transaction_id.size

  index = index + siac_opra_recipient_obi_v6_2.participant_reference_number.size

  index = index + siac_opra_recipient_obi_v6_2.security_symbol.size

  index = index + siac_opra_recipient_obi_v6_2.reserved_1.size

  index = index + siac_opra_recipient_obi_v6_2.expiration_block.size

  index = index + siac_opra_recipient_obi_v6_2.strike_price_denominator_code.size

  index = index + siac_opra_recipient_obi_v6_2.strike_price.size

  index = index + siac_opra_recipient_obi_v6_2.premium_price_denominator_code.size

  index = index + siac_opra_recipient_obi_v6_2.bid_price.size

  index = index + siac_opra_recipient_obi_v6_2.bid_size.size

  index = index + siac_opra_recipient_obi_v6_2.offer_price.size

  index = index + siac_opra_recipient_obi_v6_2.offer_size.size

  local bbo_indicator = buffer(offset + index - 40, 1):string()

  if bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P" then
    index = index + siac_opra_recipient_obi_v6_2.best_bid_appendage.size

  end

  local bbo_indicator = buffer(offset + index - 50, 1):string()

  if bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K" then
    index = index + siac_opra_recipient_obi_v6_2.best_offer_appendage.size

  end

  local bbo_indicator = buffer(offset + index - 60, 1):string()

  if bbo_indicator == "O" then
    index = index + siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.size

  end

  return index
end

-- Display: Long Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Bbo Indicator: alphabetic
  index, bbo_indicator = siac_opra_recipient_obi_v6_2.bbo_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_recipient_obi_v6_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_recipient_obi_v6_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_recipient_obi_v6_2.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Denominator Code: alphabetic
  index, strike_price_denominator_code = siac_opra_recipient_obi_v6_2.strike_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Strike Price: unsigned integer
  index, strike_price = siac_opra_recipient_obi_v6_2.strike_price.dissect(buffer, index, packet, parent)

  -- Premium Price Denominator Code: alphabetic
  index, premium_price_denominator_code = siac_opra_recipient_obi_v6_2.premium_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Bid Price: signed integer
  index, bid_price = siac_opra_recipient_obi_v6_2.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: unsigned integer
  index, bid_size = siac_opra_recipient_obi_v6_2.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: signed integer
  index, offer_price = siac_opra_recipient_obi_v6_2.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: unsigned integer
  index, offer_size = siac_opra_recipient_obi_v6_2.offer_size.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Best Bid Appendage
  local best_bid_appendage = nil

  local best_bid_appendage_exists = bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P"

  if best_bid_appendage_exists then
    index, best_bid_appendage = siac_opra_recipient_obi_v6_2.best_bid_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Best Offer Appendage
  local best_offer_appendage = nil

  local best_offer_appendage_exists = bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K"

  if best_offer_appendage_exists then
    index, best_offer_appendage = siac_opra_recipient_obi_v6_2.best_offer_appendage.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Best Bid And Offer Appendage
  local best_bid_and_offer_appendage = nil

  local best_bid_and_offer_appendage_exists = bbo_indicator == "O"

  if best_bid_and_offer_appendage_exists then
    index, best_bid_and_offer_appendage = siac_opra_recipient_obi_v6_2.best_bid_and_offer_appendage.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Long Equity And Index Quote Message
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.long_equity_and_index_quote_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Equity And Index Quote Message Payload
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_payload = {}

-- Dissect: Long Equity And Index Quote Message Payload
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_payload.dissect = function(buffer, offset, packet, parent, long_equity_and_index_quote_message_type)
  -- Dissect Long Equity And Index Quote Message
  if long_equity_and_index_quote_message_type == " " or long_equity_and_index_quote_message_type == "F" or long_equity_and_index_quote_message_type == "I" or long_equity_and_index_quote_message_type == "R" or long_equity_and_index_quote_message_type == "T" or long_equity_and_index_quote_message_type == "A" or long_equity_and_index_quote_message_type == "B" or long_equity_and_index_quote_message_type == "O" or long_equity_and_index_quote_message_type == "C" or long_equity_and_index_quote_message_type == "X" or long_equity_and_index_quote_message_type == "Y" then
    return siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Long Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category = {}

-- Calculate size of: Long Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type.size

  -- Calculate runtime size of Long Equity And Index Quote Message Payload field
  local long_equity_and_index_quote_message_payload_offset = offset + index
  local long_equity_and_index_quote_message_payload_type = buffer(long_equity_and_index_quote_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_payload.size(buffer, long_equity_and_index_quote_message_payload_offset, long_equity_and_index_quote_message_payload_type)

  return index
end

-- Display: Long Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Equity And Index Quote Message Type: ASCII character
  index, long_equity_and_index_quote_message_type = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_type.dissect(buffer, index, packet, parent)

  -- Long Equity And Index Quote Message Payload: Runtime Type with 1 branches
  index = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_message_payload.dissect(buffer, index, packet, parent, long_equity_and_index_quote_message_type)

  return index
end

-- Dissect: Long Equity And Index Quote Category
siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.dissect = function(buffer, offset, packet, parent)
  if show.long_equity_and_index_quote_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.long_equity_and_index_quote_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index End Of Day Summary Message
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message = {}

-- Size: Equity And Index End Of Day Summary Message
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.size =
  siac_opra_recipient_obi_v6_2.message_indicator.size + 
  siac_opra_recipient_obi_v6_2.transaction_id.size + 
  siac_opra_recipient_obi_v6_2.participant_reference_number.size + 
  siac_opra_recipient_obi_v6_2.security_symbol.size + 
  siac_opra_recipient_obi_v6_2.reserved_1.size + 
  siac_opra_recipient_obi_v6_2.expiration_block.size + 
  siac_opra_recipient_obi_v6_2.strike_price_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.strike_price.size + 
  siac_opra_recipient_obi_v6_2.volume.size + 
  siac_opra_recipient_obi_v6_2.open_interest_volume.size + 
  siac_opra_recipient_obi_v6_2.premium_price_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.open_price.size + 
  siac_opra_recipient_obi_v6_2.high_price.size + 
  siac_opra_recipient_obi_v6_2.low_price.size + 
  siac_opra_recipient_obi_v6_2.last_price.size + 
  siac_opra_recipient_obi_v6_2.net_change.size + 
  siac_opra_recipient_obi_v6_2.underlying_price_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.underlying_price.size + 
  siac_opra_recipient_obi_v6_2.bid_price.size + 
  siac_opra_recipient_obi_v6_2.offer_price.size

-- Display: Equity And Index End Of Day Summary Message
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index End Of Day Summary Message
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: ASCII character
  index, message_indicator = siac_opra_recipient_obi_v6_2.message_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_recipient_obi_v6_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_recipient_obi_v6_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_recipient_obi_v6_2.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Denominator Code: alphabetic
  index, strike_price_denominator_code = siac_opra_recipient_obi_v6_2.strike_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Strike Price: unsigned integer
  index, strike_price = siac_opra_recipient_obi_v6_2.strike_price.dissect(buffer, index, packet, parent)

  -- Volume: unsigned integer
  index, volume = siac_opra_recipient_obi_v6_2.volume.dissect(buffer, index, packet, parent)

  -- Open Interest Volume: unsigned integer
  index, open_interest_volume = siac_opra_recipient_obi_v6_2.open_interest_volume.dissect(buffer, index, packet, parent)

  -- Premium Price Denominator Code: alphabetic
  index, premium_price_denominator_code = siac_opra_recipient_obi_v6_2.premium_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Open Price: signed integer
  index, open_price = siac_opra_recipient_obi_v6_2.open_price.dissect(buffer, index, packet, parent)

  -- High Price: signed integer
  index, high_price = siac_opra_recipient_obi_v6_2.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: signed integer
  index, low_price = siac_opra_recipient_obi_v6_2.low_price.dissect(buffer, index, packet, parent)

  -- Last Price: signed integer
  index, last_price = siac_opra_recipient_obi_v6_2.last_price.dissect(buffer, index, packet, parent)

  -- Net Change: signed integer
  index, net_change = siac_opra_recipient_obi_v6_2.net_change.dissect(buffer, index, packet, parent)

  -- Underlying Price Denominator Code: alphabetic
  index, underlying_price_denominator_code = siac_opra_recipient_obi_v6_2.underlying_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Underlying Price: signed integer
  index, underlying_price = siac_opra_recipient_obi_v6_2.underlying_price.dissect(buffer, index, packet, parent)

  -- Bid Price: signed integer
  index, bid_price = siac_opra_recipient_obi_v6_2.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: signed integer
  index, offer_price = siac_opra_recipient_obi_v6_2.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index End Of Day Summary Message
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index End Of Day Summary Message Payload
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_payload = {}

-- Dissect: Equity And Index End Of Day Summary Message Payload
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_payload.dissect = function(buffer, offset, packet, parent, equity_and_index_end_of_day_summary_message_type)
  -- Dissect Equity And Index End Of Day Summary Message
  if equity_and_index_end_of_day_summary_message_type == " " then
    return siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Equity And Index End Of Day Summary Category
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category = {}

-- Calculate size of: Equity And Index End Of Day Summary Category
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type.size

  -- Calculate runtime size of Equity And Index End Of Day Summary Message Payload field
  local equity_and_index_end_of_day_summary_message_payload_offset = offset + index
  local equity_and_index_end_of_day_summary_message_payload_type = buffer(equity_and_index_end_of_day_summary_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_payload.size(buffer, equity_and_index_end_of_day_summary_message_payload_offset, equity_and_index_end_of_day_summary_message_payload_type)

  return index
end

-- Display: Equity And Index End Of Day Summary Category
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index End Of Day Summary Category
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Equity And Index End Of Day Summary Message Type: ASCII character
  index, equity_and_index_end_of_day_summary_message_type = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_type.dissect(buffer, index, packet, parent)

  -- Equity And Index End Of Day Summary Message Payload: Runtime Type with 1 branches
  index = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_message_payload.dissect(buffer, index, packet, parent, equity_and_index_end_of_day_summary_message_type)

  return index
end

-- Dissect: Equity And Index End Of Day Summary Category
siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.dissect = function(buffer, offset, packet, parent)
  if show.equity_and_index_end_of_day_summary_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_end_of_day_summary_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message
siac_opra_recipient_obi_v6_2.open_interest_message = {}

-- Size: Open Interest Message
siac_opra_recipient_obi_v6_2.open_interest_message.size =
  siac_opra_recipient_obi_v6_2.message_indicator.size + 
  siac_opra_recipient_obi_v6_2.transaction_id.size + 
  siac_opra_recipient_obi_v6_2.participant_reference_number.size + 
  siac_opra_recipient_obi_v6_2.security_symbol.size + 
  siac_opra_recipient_obi_v6_2.reserved_1.size + 
  siac_opra_recipient_obi_v6_2.expiration_block.size + 
  siac_opra_recipient_obi_v6_2.strike_price_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.strike_price.size + 
  siac_opra_recipient_obi_v6_2.open_interest_volume.size

-- Display: Open Interest Message
siac_opra_recipient_obi_v6_2.open_interest_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Message
siac_opra_recipient_obi_v6_2.open_interest_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: ASCII character
  index, message_indicator = siac_opra_recipient_obi_v6_2.message_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_recipient_obi_v6_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_recipient_obi_v6_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_recipient_obi_v6_2.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Denominator Code: alphabetic
  index, strike_price_denominator_code = siac_opra_recipient_obi_v6_2.strike_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Strike Price: unsigned integer
  index, strike_price = siac_opra_recipient_obi_v6_2.strike_price.dissect(buffer, index, packet, parent)

  -- Open Interest Volume: unsigned integer
  index, open_interest_volume = siac_opra_recipient_obi_v6_2.open_interest_volume.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
siac_opra_recipient_obi_v6_2.open_interest_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.open_interest_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.open_interest_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.open_interest_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.open_interest_message.fields(buffer, offset, packet, parent)
  end
end

-- Open Interest Message Payload
siac_opra_recipient_obi_v6_2.open_interest_message_payload = {}

-- Dissect: Open Interest Message Payload
siac_opra_recipient_obi_v6_2.open_interest_message_payload.dissect = function(buffer, offset, packet, parent, open_interest_message_type)
  -- Dissect Open Interest Message
  if open_interest_message_type == " " then
    return siac_opra_recipient_obi_v6_2.open_interest_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Open Interest Category
siac_opra_recipient_obi_v6_2.open_interest_category = {}

-- Calculate size of: Open Interest Category
siac_opra_recipient_obi_v6_2.open_interest_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.open_interest_message_type.size

  -- Calculate runtime size of Open Interest Message Payload field
  local open_interest_message_payload_offset = offset + index
  local open_interest_message_payload_type = buffer(open_interest_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.open_interest_message_payload.size(buffer, open_interest_message_payload_offset, open_interest_message_payload_type)

  return index
end

-- Display: Open Interest Category
siac_opra_recipient_obi_v6_2.open_interest_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Interest Category
siac_opra_recipient_obi_v6_2.open_interest_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Open Interest Message Type: ASCII character
  index, open_interest_message_type = siac_opra_recipient_obi_v6_2.open_interest_message_type.dissect(buffer, index, packet, parent)

  -- Open Interest Message Payload: Runtime Type with 1 branches
  index = siac_opra_recipient_obi_v6_2.open_interest_message_payload.dissect(buffer, index, packet, parent, open_interest_message_type)

  return index
end

-- Dissect: Open Interest Category
siac_opra_recipient_obi_v6_2.open_interest_category.dissect = function(buffer, offset, packet, parent)
  if show.open_interest_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.open_interest_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.open_interest_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.open_interest_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.open_interest_category.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index Last Sale Message
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message = {}

-- Size: Equity And Index Last Sale Message
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.size =
  siac_opra_recipient_obi_v6_2.message_indicator.size + 
  siac_opra_recipient_obi_v6_2.transaction_id.size + 
  siac_opra_recipient_obi_v6_2.participant_reference_number.size + 
  siac_opra_recipient_obi_v6_2.security_symbol.size + 
  siac_opra_recipient_obi_v6_2.reserved_1.size + 
  siac_opra_recipient_obi_v6_2.expiration_block.size + 
  siac_opra_recipient_obi_v6_2.strike_price_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.strike_price.size + 
  siac_opra_recipient_obi_v6_2.volume.size + 
  siac_opra_recipient_obi_v6_2.premium_price_denominator_code.size + 
  siac_opra_recipient_obi_v6_2.premium_price.size + 
  siac_opra_recipient_obi_v6_2.trade_identifier.size + 
  siac_opra_recipient_obi_v6_2.reserved_4.size

-- Display: Equity And Index Last Sale Message
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index Last Sale Message
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: ASCII character
  index, message_indicator = siac_opra_recipient_obi_v6_2.message_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_recipient_obi_v6_2.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_recipient_obi_v6_2.reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_recipient_obi_v6_2.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Denominator Code: alphabetic
  index, strike_price_denominator_code = siac_opra_recipient_obi_v6_2.strike_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Strike Price: unsigned integer
  index, strike_price = siac_opra_recipient_obi_v6_2.strike_price.dissect(buffer, index, packet, parent)

  -- Volume: unsigned integer
  index, volume = siac_opra_recipient_obi_v6_2.volume.dissect(buffer, index, packet, parent)

  -- Premium Price Denominator Code: alphabetic
  index, premium_price_denominator_code = siac_opra_recipient_obi_v6_2.premium_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Premium Price: signed integer
  index, premium_price = siac_opra_recipient_obi_v6_2.premium_price.dissect(buffer, index, packet, parent)

  -- Trade Identifier: unsigned integer
  index, trade_identifier = siac_opra_recipient_obi_v6_2.trade_identifier.dissect(buffer, index, packet, parent)

  -- Reserved 4: unsigned integer
  index, reserved_4 = siac_opra_recipient_obi_v6_2.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index Last Sale Message
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_last_sale_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index Last Sale Message Payload
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_payload = {}

-- Dissect: Equity And Index Last Sale Message Payload
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_payload.dissect = function(buffer, offset, packet, parent, equity_and_index_last_sale_message_type)
  -- Dissect Equity And Index Last Sale Message
  if equity_and_index_last_sale_message_type == "A" or equity_and_index_last_sale_message_type == "B" or equity_and_index_last_sale_message_type == "C" or equity_and_index_last_sale_message_type == "D" or equity_and_index_last_sale_message_type == "E" or equity_and_index_last_sale_message_type == "F" or equity_and_index_last_sale_message_type == "G" or equity_and_index_last_sale_message_type == "H" or equity_and_index_last_sale_message_type == "I" or equity_and_index_last_sale_message_type == "J" or equity_and_index_last_sale_message_type == "K" or equity_and_index_last_sale_message_type == "L" or equity_and_index_last_sale_message_type == "M" or equity_and_index_last_sale_message_type == "N" or equity_and_index_last_sale_message_type == "O" or equity_and_index_last_sale_message_type == "P" or equity_and_index_last_sale_message_type == "Q" or equity_and_index_last_sale_message_type == "R" or equity_and_index_last_sale_message_type == "S" or equity_and_index_last_sale_message_type == "T" or equity_and_index_last_sale_message_type == "X" then
    return siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Equity And Index Last Sale Category
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category = {}

-- Calculate size of: Equity And Index Last Sale Category
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type.size

  -- Calculate runtime size of Equity And Index Last Sale Message Payload field
  local equity_and_index_last_sale_message_payload_offset = offset + index
  local equity_and_index_last_sale_message_payload_type = buffer(equity_and_index_last_sale_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_payload.size(buffer, equity_and_index_last_sale_message_payload_offset, equity_and_index_last_sale_message_payload_type)

  return index
end

-- Display: Equity And Index Last Sale Category
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index Last Sale Category
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Equity And Index Last Sale Message Type: ASCII character
  index, equity_and_index_last_sale_message_type = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_type.dissect(buffer, index, packet, parent)

  -- Equity And Index Last Sale Message Payload: Runtime Type with 1 branches
  index = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_message_payload.dissect(buffer, index, packet, parent, equity_and_index_last_sale_message_type)

  return index
end

-- Dissect: Equity And Index Last Sale Category
siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.dissect = function(buffer, offset, packet, parent)
  if show.equity_and_index_last_sale_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.equity_and_index_last_sale_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.fields(buffer, offset, packet, parent)
  end
end

-- Control Message
siac_opra_recipient_obi_v6_2.control_message = {}

-- Size: Control Message
siac_opra_recipient_obi_v6_2.control_message.size =
  siac_opra_recipient_obi_v6_2.message_indicator.size + 
  siac_opra_recipient_obi_v6_2.transaction_id.size + 
  siac_opra_recipient_obi_v6_2.participant_reference_number.size

-- Display: Control Message
siac_opra_recipient_obi_v6_2.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
siac_opra_recipient_obi_v6_2.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: ASCII character
  index, message_indicator = siac_opra_recipient_obi_v6_2.message_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message
siac_opra_recipient_obi_v6_2.control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.control_message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
siac_opra_recipient_obi_v6_2.control_message_payload = {}

-- Dissect: Control Message Payload
siac_opra_recipient_obi_v6_2.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Control Message
  if control_message_type == "C" or control_message_type == "E" or control_message_type == "F" or control_message_type == "J" or control_message_type == "K" or control_message_type == "L" or control_message_type == "M" or control_message_type == "N" or control_message_type == "P" then
    return siac_opra_recipient_obi_v6_2.control_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Category
siac_opra_recipient_obi_v6_2.control_category = {}

-- Calculate size of: Control Category
siac_opra_recipient_obi_v6_2.control_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Category
siac_opra_recipient_obi_v6_2.control_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Category
siac_opra_recipient_obi_v6_2.control_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: ASCII character
  index, control_message_type = siac_opra_recipient_obi_v6_2.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 1 branches
  index = siac_opra_recipient_obi_v6_2.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Category
siac_opra_recipient_obi_v6_2.control_category.dissect = function(buffer, offset, packet, parent)
  if show.control_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.control_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.control_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.control_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.control_category.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message
siac_opra_recipient_obi_v6_2.administrative_message = {}

-- Read runtime size of: Administrative Message
siac_opra_recipient_obi_v6_2.administrative_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Data Length
  local message_data_length = buffer(offset + 9, 2):uint()

  return message_data_length + 12
end

-- Display: Administrative Message
siac_opra_recipient_obi_v6_2.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
siac_opra_recipient_obi_v6_2.administrative_message.fields = function(buffer, offset, packet, parent, size_of_administrative_message)
  local index = offset

  -- Message Indicator: ASCII character
  index, message_indicator = siac_opra_recipient_obi_v6_2.message_indicator.dissect(buffer, index, packet, parent)

  -- Transaction Id: unsigned integer
  index, transaction_id = siac_opra_recipient_obi_v6_2.transaction_id.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_recipient_obi_v6_2.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message Data Length: unsigned integer
  index, message_data_length = siac_opra_recipient_obi_v6_2.message_data_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Message Data
  local message_data = nil

  local message_data_exists = message_data_length > 0

  if message_data_exists then

    -- Runtime Size Of: Message Data
    index, message_data = siac_opra_recipient_obi_v6_2.message_data.dissect(buffer, index, packet, parent, message_data_length)
  end

  return index
end

-- Dissect: Administrative Message
siac_opra_recipient_obi_v6_2.administrative_message.dissect = function(buffer, offset, packet, parent, size_of_administrative_message)
  local size_of_administrative_message = siac_opra_recipient_obi_v6_2.administrative_message.size(buffer, offset)
  local index = offset + size_of_administrative_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.administrative_message, buffer(offset, 0))
    local current = siac_opra_recipient_obi_v6_2.administrative_message.fields(buffer, offset, packet, parent, size_of_administrative_message)
    parent:set_len(size_of_administrative_message)
    local display = siac_opra_recipient_obi_v6_2.administrative_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    siac_opra_recipient_obi_v6_2.administrative_message.fields(buffer, offset, packet, parent, size_of_administrative_message)

    return index
  end
end

-- Administrative Message Payload
siac_opra_recipient_obi_v6_2.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
siac_opra_recipient_obi_v6_2.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Administrative Message
  if administrative_message_type == " " then
    return siac_opra_recipient_obi_v6_2.administrative_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Category
siac_opra_recipient_obi_v6_2.administrative_category = {}

-- Calculate size of: Administrative Category
siac_opra_recipient_obi_v6_2.administrative_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Category
siac_opra_recipient_obi_v6_2.administrative_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Category
siac_opra_recipient_obi_v6_2.administrative_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: ASCII character
  index, administrative_message_type = siac_opra_recipient_obi_v6_2.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 1 branches
  index = siac_opra_recipient_obi_v6_2.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Category
siac_opra_recipient_obi_v6_2.administrative_category.dissect = function(buffer, offset, packet, parent)
  if show.administrative_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.administrative_category, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.administrative_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.administrative_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.administrative_category.fields(buffer, offset, packet, parent)
  end
end

-- Payload
siac_opra_recipient_obi_v6_2.payload = {}

-- Dissect: Payload
siac_opra_recipient_obi_v6_2.payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Administrative Category
  if message_category == "C" then
    return siac_opra_recipient_obi_v6_2.administrative_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Category
  if message_category == "H" then
    return siac_opra_recipient_obi_v6_2.control_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity And Index Last Sale Category
  if message_category == "a" then
    return siac_opra_recipient_obi_v6_2.equity_and_index_last_sale_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Category
  if message_category == "d" then
    return siac_opra_recipient_obi_v6_2.open_interest_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity And Index End Of Day Summary Category
  if message_category == "f" then
    return siac_opra_recipient_obi_v6_2.equity_and_index_end_of_day_summary_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Equity And Index Quote Category
  if message_category == "k" then
    return siac_opra_recipient_obi_v6_2.long_equity_and_index_quote_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Equity And Index Quote Category
  if message_category == "q" then
    return siac_opra_recipient_obi_v6_2.short_equity_and_index_quote_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Category
  if message_category == "Y" then
    return siac_opra_recipient_obi_v6_2.underlying_value_category.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
siac_opra_recipient_obi_v6_2.message_header = {}

-- Size: Message Header
siac_opra_recipient_obi_v6_2.message_header.size =
  siac_opra_recipient_obi_v6_2.participant_id.size + 
  siac_opra_recipient_obi_v6_2.message_category.size

-- Display: Message Header
siac_opra_recipient_obi_v6_2.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
siac_opra_recipient_obi_v6_2.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: ASCII character
  index, participant_id = siac_opra_recipient_obi_v6_2.participant_id.dissect(buffer, index, packet, parent)

  -- Message Category: ASCII character
  index, message_category = siac_opra_recipient_obi_v6_2.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_opra_recipient_obi_v6_2.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.message_header, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
siac_opra_recipient_obi_v6_2.message = {}

-- Calculate size of: Message
siac_opra_recipient_obi_v6_2.message.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_recipient_obi_v6_2.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + siac_opra_recipient_obi_v6_2.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
siac_opra_recipient_obi_v6_2.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_opra_recipient_obi_v6_2.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = siac_opra_recipient_obi_v6_2.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = siac_opra_recipient_obi_v6_2.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_opra_recipient_obi_v6_2.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.message, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Block Timestamp
siac_opra_recipient_obi_v6_2.block_timestamp = {}

-- Size: Block Timestamp
siac_opra_recipient_obi_v6_2.block_timestamp.size =
  siac_opra_recipient_obi_v6_2.seconds.size + 
  siac_opra_recipient_obi_v6_2.nanoseconds.size

-- Display: Block Timestamp
siac_opra_recipient_obi_v6_2.block_timestamp.display = function(packet, parent, value)
  -- Check null value
  if value == nil then
    return "No Value"

  end

  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect Fields: Block Timestamp
siac_opra_recipient_obi_v6_2.block_timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_opra_recipient_obi_v6_2.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_opra_recipient_obi_v6_2.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local block_timestamp = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, block_timestamp
end

-- Dissect: Block Timestamp
siac_opra_recipient_obi_v6_2.block_timestamp.dissect = function(buffer, offset, packet, parent)
  if show.block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.block_timestamp, buffer(offset, 0))
    local index, value = siac_opra_recipient_obi_v6_2.block_timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.block_timestamp.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.block_timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Block Header
siac_opra_recipient_obi_v6_2.block_header = {}

-- Size: Block Header
siac_opra_recipient_obi_v6_2.block_header.size =
  siac_opra_recipient_obi_v6_2.version.size + 
  siac_opra_recipient_obi_v6_2.block_size.size + 
  siac_opra_recipient_obi_v6_2.data_feed_indicator.size + 
  siac_opra_recipient_obi_v6_2.retransmission_indicator.size + 
  siac_opra_recipient_obi_v6_2.session_indicator.size + 
  siac_opra_recipient_obi_v6_2.block_sequence_number.size + 
  siac_opra_recipient_obi_v6_2.messages_in_block.size + 
  siac_opra_recipient_obi_v6_2.block_timestamp.size + 
  siac_opra_recipient_obi_v6_2.block_checksum.size

-- Display: Block Header
siac_opra_recipient_obi_v6_2.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_opra_recipient_obi_v6_2.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: unsigned integer
  index, version = siac_opra_recipient_obi_v6_2.version.dissect(buffer, index, packet, parent)

  -- Block Size: unsigned integer
  index, block_size = siac_opra_recipient_obi_v6_2.block_size.dissect(buffer, index, packet, parent)

  -- Data Feed Indicator: ASCII character
  index, data_feed_indicator = siac_opra_recipient_obi_v6_2.data_feed_indicator.dissect(buffer, index, packet, parent)

  -- Retransmission Indicator: ASCII character
  index, retransmission_indicator = siac_opra_recipient_obi_v6_2.retransmission_indicator.dissect(buffer, index, packet, parent)

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_recipient_obi_v6_2.session_indicator.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: unsigned integer
  index, block_sequence_number = siac_opra_recipient_obi_v6_2.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: unsigned integer
  index, messages_in_block = siac_opra_recipient_obi_v6_2.messages_in_block.dissect(buffer, index, packet, parent)

  -- Block Timestamp: Struct of 2 fields
  index, block_timestamp = siac_opra_recipient_obi_v6_2.block_timestamp.dissect(buffer, index, packet, parent)

  -- Block Checksum: unsigned integer
  index, block_checksum = siac_opra_recipient_obi_v6_2.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_opra_recipient_obi_v6_2.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_recipient_obi_v6_2.fields.block_header, buffer(offset, 0))
    local index = siac_opra_recipient_obi_v6_2.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_recipient_obi_v6_2.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_recipient_obi_v6_2.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_opra_recipient_obi_v6_2.packet = {}

-- Verify required size of Udp packet
siac_opra_recipient_obi_v6_2.packet.requiredsize = function(buffer)
  return buffer:len() >= siac_opra_recipient_obi_v6_2.block_header.size
end

-- Dissect Packet
siac_opra_recipient_obi_v6_2.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 9 fields
  index, block_header = siac_opra_recipient_obi_v6_2.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do
    index, message = siac_opra_recipient_obi_v6_2.message.dissect(buffer, index, packet, parent, message_index)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_opra_recipient_obi_v6_2.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_opra_recipient_obi_v6_2.init()
end

-- Dissector for Siac Opra Recipient Obi 6.2
function omi_siac_opra_recipient_obi_v6_2.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_opra_recipient_obi_v6_2.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_opra_recipient_obi_v6_2, buffer(), omi_siac_opra_recipient_obi_v6_2.description, "("..buffer:len().." Bytes)")
  return siac_opra_recipient_obi_v6_2.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Version Field
siac_opra_recipient_obi_v6_2.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):uint()

  if value == 6 then
    return true
  end

  return false
end

-- Dissector Heuristic for Siac Opra Recipient Obi 6.2 (Udp)
local function omi_siac_opra_recipient_obi_v6_2_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_opra_recipient_obi_v6_2.packet.requiredsize(buffer) then return false end

  -- Verify Version
  if not siac_opra_recipient_obi_v6_2.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_opra_recipient_obi_v6_2
  omi_siac_opra_recipient_obi_v6_2.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Opra Recipient Obi 6.2
omi_siac_opra_recipient_obi_v6_2:register_heuristic("udp", omi_siac_opra_recipient_obi_v6_2_udp_heuristic)

-- Register Siac Opra Recipient Obi 6.2 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_opra_recipient_obi_v6_2)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The Securities Industry Automation Corporation
--   Version: 6.2
--   Date: Friday, December 6, 2024
--   Specification: OPRA_Pillar_Output_Specification.pdf
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
