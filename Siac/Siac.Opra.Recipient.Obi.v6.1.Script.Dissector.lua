-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 6.1 Protocol
local siac_opra_recipient_obi_v6_1 = Proto("Siac.Opra.Recipient.Obi.v6.1.Lua", "Siac Opra Recipient Obi 6.1")

-- Component Tables
local show = {}
local format = {}
local display = {}
local dissect = {}
local size_of = {}
local verify = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 6.1 Fields
siac_opra_recipient_obi_v6_1.fields.administrative_message = ProtoField.new("Administrative Message", "siac.opra.recipient.obi.v6.1.administrativemessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.bbo_indicator = ProtoField.new("Bbo Indicator", "siac.opra.recipient.obi.v6.1.bboindicator", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_bid_and_offer_appendage = ProtoField.new("Best Bid And Offer Appendage", "siac.opra.recipient.obi.v6.1.bestbidandofferappendage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_bid_appendage = ProtoField.new("Best Bid Appendage", "siac.opra.recipient.obi.v6.1.bestbidappendage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_bid_denominator_code = ProtoField.new("Best Bid Denominator Code", "siac.opra.recipient.obi.v6.1.bestbiddenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_bid_participant_id = ProtoField.new("Best Bid Participant Id", "siac.opra.recipient.obi.v6.1.bestbidparticipantid", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_bid_price = ProtoField.new("Best Bid Price", "siac.opra.recipient.obi.v6.1.bestbidprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.best_bid_size = ProtoField.new("Best Bid Size", "siac.opra.recipient.obi.v6.1.bestbidsize", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.best_offer_appendage = ProtoField.new("Best Offer Appendage", "siac.opra.recipient.obi.v6.1.bestofferappendage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_offer_denominator_code = ProtoField.new("Best Offer Denominator Code", "siac.opra.recipient.obi.v6.1.bestofferdenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_offer_participant_id = ProtoField.new("Best Offer Participant Id", "siac.opra.recipient.obi.v6.1.bestofferparticipantid", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.best_offer_price = ProtoField.new("Best Offer Price", "siac.opra.recipient.obi.v6.1.bestofferprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.best_offer_size = ProtoField.new("Best Offer Size", "siac.opra.recipient.obi.v6.1.bestoffersize", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.bid_index_value = ProtoField.new("Bid Index Value", "siac.opra.recipient.obi.v6.1.bidindexvalue", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.bid_price = ProtoField.new("Bid Price", "siac.opra.recipient.obi.v6.1.bidprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.bid_price_short = ProtoField.new("Bid Price Short", "siac.opra.recipient.obi.v6.1.bidpriceshort", ftypes.INT16)
siac_opra_recipient_obi_v6_1.fields.bid_size = ProtoField.new("Bid Size", "siac.opra.recipient.obi.v6.1.bidsize", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.bid_size_short = ProtoField.new("Bid Size Short", "siac.opra.recipient.obi.v6.1.bidsizeshort", ftypes.UINT16)
siac_opra_recipient_obi_v6_1.fields.block_checksum = ProtoField.new("Block Checksum", "siac.opra.recipient.obi.v6.1.blockchecksum", ftypes.UINT16)
siac_opra_recipient_obi_v6_1.fields.block_header = ProtoField.new("Block Header", "siac.opra.recipient.obi.v6.1.blockheader", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.opra.recipient.obi.v6.1.blockpadbyte", ftypes.UINT8)
siac_opra_recipient_obi_v6_1.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.opra.recipient.obi.v6.1.blocksequencenumber", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.block_size = ProtoField.new("Block Size", "siac.opra.recipient.obi.v6.1.blocksize", ftypes.UINT16)
siac_opra_recipient_obi_v6_1.fields.block_timestamp = ProtoField.new("Block Timestamp", "siac.opra.recipient.obi.v6.1.blocktimestamp", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.control_message = ProtoField.new("Control Message", "siac.opra.recipient.obi.v6.1.controlmessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.control_message_type = ProtoField.new("Control Message Type", "siac.opra.recipient.obi.v6.1.controlmessagetype", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "siac.opra.recipient.obi.v6.1.datafeedindicator", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.denominator_code = ProtoField.new("Denominator Code", "siac.opra.recipient.obi.v6.1.denominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.equity_and_index_end_of_day_summary_message = ProtoField.new("Equity And Index End Of Day Summary Message", "siac.opra.recipient.obi.v6.1.equityandindexendofdaysummarymessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.equity_and_index_last_sale_message = ProtoField.new("Equity And Index Last Sale Message", "siac.opra.recipient.obi.v6.1.equityandindexlastsalemessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.expiration_block = ProtoField.new("Expiration Block", "siac.opra.recipient.obi.v6.1.expirationblock", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.expiration_day = ProtoField.new("Expiration Day", "siac.opra.recipient.obi.v6.1.expirationday", ftypes.UINT8)
siac_opra_recipient_obi_v6_1.fields.expiration_month = ProtoField.new("Expiration Month", "siac.opra.recipient.obi.v6.1.expirationmonth", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.expiration_year = ProtoField.new("Expiration Year", "siac.opra.recipient.obi.v6.1.expirationyear", ftypes.UINT8)
siac_opra_recipient_obi_v6_1.fields.high_price = ProtoField.new("High Price", "siac.opra.recipient.obi.v6.1.highprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.index_value = ProtoField.new("Index Value", "siac.opra.recipient.obi.v6.1.indexvalue", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.index_value_denominator_code = ProtoField.new("Index Value Denominator Code", "siac.opra.recipient.obi.v6.1.indexvaluedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.last_price = ProtoField.new("Last Price", "siac.opra.recipient.obi.v6.1.lastprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.long_equity_and_index_quote_message = ProtoField.new("Long Equity And Index Quote Message", "siac.opra.recipient.obi.v6.1.longequityandindexquotemessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.low_price = ProtoField.new("Low Price", "siac.opra.recipient.obi.v6.1.lowprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.message = ProtoField.new("Message", "siac.opra.recipient.obi.v6.1.message", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.message_category = ProtoField.new("Message Category", "siac.opra.recipient.obi.v6.1.messagecategory", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.message_data = ProtoField.new("Message Data", "siac.opra.recipient.obi.v6.1.messagedata", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.message_data_length = ProtoField.new("Message Data Length", "siac.opra.recipient.obi.v6.1.messagedatalength", ftypes.UINT16)
siac_opra_recipient_obi_v6_1.fields.message_indicator = ProtoField.new("Message Indicator", "siac.opra.recipient.obi.v6.1.messageindicator", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.message_type = ProtoField.new("Message Type", "siac.opra.recipient.obi.v6.1.messagetype", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.opra.recipient.obi.v6.1.messagesinblock", ftypes.UINT8)
siac_opra_recipient_obi_v6_1.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.opra.recipient.obi.v6.1.nanoseconds", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.net_change = ProtoField.new("Net Change", "siac.opra.recipient.obi.v6.1.netchange", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.offer_index_value = ProtoField.new("Offer Index Value", "siac.opra.recipient.obi.v6.1.offerindexvalue", ftypes.INT64)
siac_opra_recipient_obi_v6_1.fields.offer_price = ProtoField.new("Offer Price", "siac.opra.recipient.obi.v6.1.offerprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.offer_price_short = ProtoField.new("Offer Price Short", "siac.opra.recipient.obi.v6.1.offerpriceshort", ftypes.INT16)
siac_opra_recipient_obi_v6_1.fields.offer_size = ProtoField.new("Offer Size", "siac.opra.recipient.obi.v6.1.offersize", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.offer_size_short = ProtoField.new("Offer Size Short", "siac.opra.recipient.obi.v6.1.offersizeshort", ftypes.UINT16)
siac_opra_recipient_obi_v6_1.fields.open_interest_message = ProtoField.new("Open Interest Message", "siac.opra.recipient.obi.v6.1.openinterestmessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.open_interest_volume = ProtoField.new("Open Interest Volume", "siac.opra.recipient.obi.v6.1.openinterestvolume", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.open_price = ProtoField.new("Open Price", "siac.opra.recipient.obi.v6.1.openprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.packet = ProtoField.new("Packet", "siac.opra.recipient.obi.v6.1.packet", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.participant_id = ProtoField.new("Participant Id", "siac.opra.recipient.obi.v6.1.participantid", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.opra.recipient.obi.v6.1.participantreferencenumber", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.payload = ProtoField.new("Payload", "siac.opra.recipient.obi.v6.1.payload", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.premium_price = ProtoField.new("Premium Price", "siac.opra.recipient.obi.v6.1.premiumprice", ftypes.INT32)
siac_opra_recipient_obi_v6_1.fields.premium_price_denominator_code = ProtoField.new("Premium Price Denominator Code", "siac.opra.recipient.obi.v6.1.premiumpricedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.price = ProtoField.new("Price", "siac.opra.recipient.obi.v6.1.price", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.quote_message_type = ProtoField.new("Quote Message Type", "siac.opra.recipient.obi.v6.1.quotemessagetype", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.reserved_1 = ProtoField.new("Reserved 1", "siac.opra.recipient.obi.v6.1.reserved1", ftypes.BYTES)
siac_opra_recipient_obi_v6_1.fields.reserved_4 = ProtoField.new("Reserved 4", "siac.opra.recipient.obi.v6.1.reserved4", ftypes.BYTES)
siac_opra_recipient_obi_v6_1.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "siac.opra.recipient.obi.v6.1.retransmissionindicator", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.seconds = ProtoField.new("Seconds", "siac.opra.recipient.obi.v6.1.seconds", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.security_symbol = ProtoField.new("Security Symbol", "siac.opra.recipient.obi.v6.1.securitysymbol", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "siac.opra.recipient.obi.v6.1.securitysymbolshort", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.session_indicator = ProtoField.new("Session Indicator", "siac.opra.recipient.obi.v6.1.sessionindicator", ftypes.UINT8)
siac_opra_recipient_obi_v6_1.fields.short_equity_and_index_quote_message = ProtoField.new("Short Equity And Index Quote Message", "siac.opra.recipient.obi.v6.1.shortequityandindexquotemessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.strike_price = ProtoField.new("Strike Price", "siac.opra.recipient.obi.v6.1.strikeprice", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.strike_price_denominator_code = ProtoField.new("Strike Price Denominator Code", "siac.opra.recipient.obi.v6.1.strikepricedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.strike_price_short = ProtoField.new("Strike Price Short", "siac.opra.recipient.obi.v6.1.strikepriceshort", ftypes.UINT16)
siac_opra_recipient_obi_v6_1.fields.trade_identifier = ProtoField.new("Trade Identifier", "siac.opra.recipient.obi.v6.1.tradeidentifier", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.trade_message_type = ProtoField.new("Trade Message Type", "siac.opra.recipient.obi.v6.1.trademessagetype", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.transaction_id = ProtoField.new("Transaction Id", "siac.opra.recipient.obi.v6.1.transactionid", ftypes.UINT32)
siac_opra_recipient_obi_v6_1.fields.underlying_price = ProtoField.new("Underlying Price", "siac.opra.recipient.obi.v6.1.underlyingprice", ftypes.INT64)
siac_opra_recipient_obi_v6_1.fields.underlying_price_denominator_code = ProtoField.new("Underlying Price Denominator Code", "siac.opra.recipient.obi.v6.1.underlyingpricedenominatorcode", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.underlying_value_bid_and_offer_message = ProtoField.new("Underlying Value Bid And Offer Message", "siac.opra.recipient.obi.v6.1.underlyingvaluebidandoffermessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.underlying_value_last_sale_message = ProtoField.new("Underlying Value Last Sale Message", "siac.opra.recipient.obi.v6.1.underlyingvaluelastsalemessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.underlying_value_message = ProtoField.new("Underlying Value Message", "siac.opra.recipient.obi.v6.1.underlyingvaluemessage", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.underlying_value_message_payload = ProtoField.new("Underlying Value Message Payload", "siac.opra.recipient.obi.v6.1.underlyingvaluemessagepayload", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.underlying_value_message_type = ProtoField.new("Underlying Value Message Type", "siac.opra.recipient.obi.v6.1.underlyingvaluemessagetype", ftypes.STRING)
siac_opra_recipient_obi_v6_1.fields.version = ProtoField.new("Version", "siac.opra.recipient.obi.v6.1.version", ftypes.UINT8)
siac_opra_recipient_obi_v6_1.fields.volume = ProtoField.new("Volume", "siac.opra.recipient.obi.v6.1.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Siac Opra Recipient Obi 6.1 Element Dissection Options
show.administrative_message = true
show.best_bid_and_offer_appendage = true
show.best_bid_appendage = true
show.best_offer_appendage = true
show.block_header = true
show.block_timestamp = true
show.control_message = true
show.equity_and_index_end_of_day_summary_message = true
show.equity_and_index_last_sale_message = true
show.expiration_block = true
show.long_equity_and_index_quote_message = true
show.message = true
show.open_interest_message = true
show.packet = true
show.short_equity_and_index_quote_message = true
show.underlying_value_bid_and_offer_message = true
show.underlying_value_last_sale_message = true
show.underlying_value_message = true
show.payload = false
show.underlying_value_message_payload = false

-- Register Siac Opra Recipient Obi 6.1 Show Options
siac_opra_recipient_obi_v6_1.prefs.show_administrative_message = Pref.bool("Show Administrative Message", show.administrative_message, "Parse and add Administrative Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_best_bid_and_offer_appendage = Pref.bool("Show Best Bid And Offer Appendage", show.best_bid_and_offer_appendage, "Parse and add Best Bid And Offer Appendage to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_best_bid_appendage = Pref.bool("Show Best Bid Appendage", show.best_bid_appendage, "Parse and add Best Bid Appendage to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_best_offer_appendage = Pref.bool("Show Best Offer Appendage", show.best_offer_appendage, "Parse and add Best Offer Appendage to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_block_timestamp = Pref.bool("Show Block Timestamp", show.block_timestamp, "Parse and add Block Timestamp to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_control_message = Pref.bool("Show Control Message", show.control_message, "Parse and add Control Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_equity_and_index_end_of_day_summary_message = Pref.bool("Show Equity And Index End Of Day Summary Message", show.equity_and_index_end_of_day_summary_message, "Parse and add Equity And Index End Of Day Summary Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_equity_and_index_last_sale_message = Pref.bool("Show Equity And Index Last Sale Message", show.equity_and_index_last_sale_message, "Parse and add Equity And Index Last Sale Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_expiration_block = Pref.bool("Show Expiration Block", show.expiration_block, "Parse and add Expiration Block to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_long_equity_and_index_quote_message = Pref.bool("Show Long Equity And Index Quote Message", show.long_equity_and_index_quote_message, "Parse and add Long Equity And Index Quote Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_short_equity_and_index_quote_message = Pref.bool("Show Short Equity And Index Quote Message", show.short_equity_and_index_quote_message, "Parse and add Short Equity And Index Quote Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_bid_and_offer_message = Pref.bool("Show Underlying Value Bid And Offer Message", show.underlying_value_bid_and_offer_message, "Parse and add Underlying Value Bid And Offer Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_last_sale_message = Pref.bool("Show Underlying Value Last Sale Message", show.underlying_value_last_sale_message, "Parse and add Underlying Value Last Sale Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_message = Pref.bool("Show Underlying Value Message", show.underlying_value_message, "Parse and add Underlying Value Message to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_message_payload = Pref.bool("Show Underlying Value Message Payload", show.underlying_value_message_payload, "Parse and add Underlying Value Message Payload to protocol tree")

-- Handle changed preferences
function siac_opra_recipient_obi_v6_1.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.administrative_message ~= siac_opra_recipient_obi_v6_1.prefs.show_administrative_message then
    show.administrative_message = siac_opra_recipient_obi_v6_1.prefs.show_administrative_message
    changed = true
  end
  if show.best_bid_and_offer_appendage ~= siac_opra_recipient_obi_v6_1.prefs.show_best_bid_and_offer_appendage then
    show.best_bid_and_offer_appendage = siac_opra_recipient_obi_v6_1.prefs.show_best_bid_and_offer_appendage
    changed = true
  end
  if show.best_bid_appendage ~= siac_opra_recipient_obi_v6_1.prefs.show_best_bid_appendage then
    show.best_bid_appendage = siac_opra_recipient_obi_v6_1.prefs.show_best_bid_appendage
    changed = true
  end
  if show.best_offer_appendage ~= siac_opra_recipient_obi_v6_1.prefs.show_best_offer_appendage then
    show.best_offer_appendage = siac_opra_recipient_obi_v6_1.prefs.show_best_offer_appendage
    changed = true
  end
  if show.block_header ~= siac_opra_recipient_obi_v6_1.prefs.show_block_header then
    show.block_header = siac_opra_recipient_obi_v6_1.prefs.show_block_header
    changed = true
  end
  if show.block_timestamp ~= siac_opra_recipient_obi_v6_1.prefs.show_block_timestamp then
    show.block_timestamp = siac_opra_recipient_obi_v6_1.prefs.show_block_timestamp
    changed = true
  end
  if show.control_message ~= siac_opra_recipient_obi_v6_1.prefs.show_control_message then
    show.control_message = siac_opra_recipient_obi_v6_1.prefs.show_control_message
    changed = true
  end
  if show.equity_and_index_end_of_day_summary_message ~= siac_opra_recipient_obi_v6_1.prefs.show_equity_and_index_end_of_day_summary_message then
    show.equity_and_index_end_of_day_summary_message = siac_opra_recipient_obi_v6_1.prefs.show_equity_and_index_end_of_day_summary_message
    changed = true
  end
  if show.equity_and_index_last_sale_message ~= siac_opra_recipient_obi_v6_1.prefs.show_equity_and_index_last_sale_message then
    show.equity_and_index_last_sale_message = siac_opra_recipient_obi_v6_1.prefs.show_equity_and_index_last_sale_message
    changed = true
  end
  if show.expiration_block ~= siac_opra_recipient_obi_v6_1.prefs.show_expiration_block then
    show.expiration_block = siac_opra_recipient_obi_v6_1.prefs.show_expiration_block
    changed = true
  end
  if show.long_equity_and_index_quote_message ~= siac_opra_recipient_obi_v6_1.prefs.show_long_equity_and_index_quote_message then
    show.long_equity_and_index_quote_message = siac_opra_recipient_obi_v6_1.prefs.show_long_equity_and_index_quote_message
    changed = true
  end
  if show.message ~= siac_opra_recipient_obi_v6_1.prefs.show_message then
    show.message = siac_opra_recipient_obi_v6_1.prefs.show_message
    changed = true
  end
  if show.open_interest_message ~= siac_opra_recipient_obi_v6_1.prefs.show_open_interest_message then
    show.open_interest_message = siac_opra_recipient_obi_v6_1.prefs.show_open_interest_message
    changed = true
  end
  if show.packet ~= siac_opra_recipient_obi_v6_1.prefs.show_packet then
    show.packet = siac_opra_recipient_obi_v6_1.prefs.show_packet
    changed = true
  end
  if show.short_equity_and_index_quote_message ~= siac_opra_recipient_obi_v6_1.prefs.show_short_equity_and_index_quote_message then
    show.short_equity_and_index_quote_message = siac_opra_recipient_obi_v6_1.prefs.show_short_equity_and_index_quote_message
    changed = true
  end
  if show.underlying_value_bid_and_offer_message ~= siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_bid_and_offer_message then
    show.underlying_value_bid_and_offer_message = siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_bid_and_offer_message
    changed = true
  end
  if show.underlying_value_last_sale_message ~= siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_last_sale_message then
    show.underlying_value_last_sale_message = siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_last_sale_message
    changed = true
  end
  if show.underlying_value_message ~= siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_message then
    show.underlying_value_message = siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_message
    changed = true
  end
  if show.payload ~= siac_opra_recipient_obi_v6_1.prefs.show_payload then
    show.payload = siac_opra_recipient_obi_v6_1.prefs.show_payload
    changed = true
  end
  if show.underlying_value_message_payload ~= siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_message_payload then
    show.underlying_value_message_payload = siac_opra_recipient_obi_v6_1.prefs.show_underlying_value_message_payload
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
-- Dissect Siac Opra Recipient Obi 6.1
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

  parent:add(siac_opra_recipient_obi_v6_1.fields.block_pad_byte, range, value, display)

  return offset + length, value
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

  parent:add(siac_opra_recipient_obi_v6_1.fields.offer_index_value, range, value, display)

  return offset + length, value
end

-- Size: Bid Index Value
size_of.bid_index_value = 4

-- Display: Bid Index Value
display.bid_index_value = function(value)
  return "Bid Index Value: "..value
end

-- Dissect: Bid Index Value
dissect.bid_index_value = function(buffer, offset, packet, parent)
  local length = size_of.bid_index_value
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.bid_index_value(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.bid_index_value, range, value, display)

  return offset + length, value
end

-- Size: Index Value Denominator Code
size_of.index_value_denominator_code = 1

-- Display: Index Value Denominator Code
display.index_value_denominator_code = function(value)
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
dissect.index_value_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.index_value_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.index_value_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.index_value_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local length = size_of.reserved_1
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Size: Security Symbol
size_of.security_symbol = 5

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Size: Participant Reference Number
size_of.participant_reference_number = 4

-- Display: Participant Reference Number
display.participant_reference_number = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
dissect.participant_reference_number = function(buffer, offset, packet, parent)
  local length = size_of.participant_reference_number
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.participant_reference_number(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.participant_reference_number, range, value, display)

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.transaction_id, range, value, display)

  return offset + length, value
end

-- Size: Message Indicator
size_of.message_indicator = 1

-- Display: Message Indicator
display.message_indicator = function(value)
  return "Message Indicator: "..value
end

-- Dissect: Message Indicator
dissect.message_indicator = function(buffer, offset, packet, parent)
  local length = size_of.message_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.message_indicator, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Value Bid And Offer Message
size_of.underlying_value_bid_and_offer_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.security_symbol

  index = index + size_of.reserved_1

  index = index + size_of.index_value_denominator_code

  index = index + size_of.bid_index_value

  index = index + size_of.offer_index_value

  return index
end

-- Display: Underlying Value Bid And Offer Message
display.underlying_value_bid_and_offer_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Value Bid And Offer Message
dissect.underlying_value_bid_and_offer_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Index Value Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, index_value_denominator_code = dissect.index_value_denominator_code(buffer, index, packet, parent)

  -- Bid Index Value: 4 Byte Signed Fixed Width Integer
  index, bid_index_value = dissect.bid_index_value(buffer, index, packet, parent)

  -- Offer Index Value: 8 Byte Signed Fixed Width Integer
  index, offer_index_value = dissect.offer_index_value(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Bid And Offer Message
dissect.underlying_value_bid_and_offer_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_value_bid_and_offer_message then
    local length = size_of.underlying_value_bid_and_offer_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_value_bid_and_offer_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.underlying_value_bid_and_offer_message, range, display)
  end

  return dissect.underlying_value_bid_and_offer_message_fields(buffer, offset, packet, parent)
end

-- Size: Reserved 4
size_of.reserved_4 = 4

-- Display: Reserved 4
display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
dissect.reserved_4 = function(buffer, offset, packet, parent)
  local length = size_of.reserved_4
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Size: Index Value
size_of.index_value = 4

-- Display: Index Value
display.index_value = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
dissect.index_value = function(buffer, offset, packet, parent)
  local length = size_of.index_value
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.index_value(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.index_value, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Value Last Sale Message
size_of.underlying_value_last_sale_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.security_symbol

  index = index + size_of.reserved_1

  index = index + size_of.index_value_denominator_code

  index = index + size_of.index_value

  index = index + size_of.reserved_4

  return index
end

-- Display: Underlying Value Last Sale Message
display.underlying_value_last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Value Last Sale Message
dissect.underlying_value_last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Index Value Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, index_value_denominator_code = dissect.index_value_denominator_code(buffer, index, packet, parent)

  -- Index Value: 4 Byte Signed Fixed Width Integer
  index, index_value = dissect.index_value(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Last Sale Message
dissect.underlying_value_last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_value_last_sale_message then
    local length = size_of.underlying_value_last_sale_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_value_last_sale_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.underlying_value_last_sale_message, range, display)
  end

  return dissect.underlying_value_last_sale_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Underlying Value Message Payload
size_of.underlying_value_message_payload = function(buffer, offset, underlying_value_message_type)
  -- Size of Underlying Value Last Sale Message
  if underlying_value_message_type == " " then
    return size_of.underlying_value_last_sale_message(buffer, offset)
  end
  -- Size of Underlying Value Bid And Offer Message
  if underlying_value_message_type == "I" then
    return size_of.underlying_value_bid_and_offer_message(buffer, offset)
  end

  return 0
end

-- Display: Underlying Value Message Payload
display.underlying_value_message_payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Underlying Value Message Payload
dissect.underlying_value_message_payload_branches = function(buffer, offset, packet, parent, underlying_value_message_type)
  -- Dissect Underlying Value Last Sale Message
  if underlying_value_message_type == " " then
    return dissect.underlying_value_last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Bid And Offer Message
  if underlying_value_message_type == "I" then
    return dissect.underlying_value_bid_and_offer_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Underlying Value Message Payload
dissect.underlying_value_message_payload = function(buffer, offset, packet, parent, underlying_value_message_type)
  if not show.underlying_value_message_payload then
    return dissect.underlying_value_message_payload_branches(buffer, offset, packet, parent, underlying_value_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.underlying_value_message_payload(buffer, offset, underlying_value_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.underlying_value_message_payload(buffer, packet, parent)
  local element = parent:add(siac_opra_recipient_obi_v6_1.fields.underlying_value_message_payload, range, display)

  return dissect.underlying_value_message_payload_branches(buffer, offset, packet, parent, underlying_value_message_type)
end

-- Size: Underlying Value Message Type
size_of.underlying_value_message_type = 1

-- Display: Underlying Value Message Type
display.underlying_value_message_type = function(value)
  if value == " " then
    return "Underlying Value Message Type: Underlying Value Last Sale Message (<whitespace>)"
  end
  if value == "I" then
    return "Underlying Value Message Type: Underlying Value Bid And Offer Message (I)"
  end

  return "Underlying Value Message Type: Unknown("..value..")"
end

-- Dissect: Underlying Value Message Type
dissect.underlying_value_message_type = function(buffer, offset, packet, parent)
  local length = size_of.underlying_value_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_value_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.underlying_value_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Underlying Value Message
size_of.underlying_value_message = function(buffer, offset)
  local index = 0

  index = index + size_of.underlying_value_message_type

  -- Calculate runtime size of Underlying Value Message Payload field
  local underlying_value_message_payload_offset = offset + index
  local underlying_value_message_payload_type = buffer(underlying_value_message_payload_offset - 1, 1):string()
  index = index + size_of.underlying_value_message_payload(buffer, underlying_value_message_payload_offset, underlying_value_message_payload_type)

  return index
end

-- Display: Underlying Value Message
display.underlying_value_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Value Message
dissect.underlying_value_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Value Message Type: 1 Byte Ascii String Enum with 2 values
  index, underlying_value_message_type = dissect.underlying_value_message_type(buffer, index, packet, parent)

  -- Underlying Value Message Payload: Runtime Type with 2 branches
  index = dissect.underlying_value_message_payload(buffer, index, packet, parent, underlying_value_message_type)

  return index
end

-- Dissect: Underlying Value Message
dissect.underlying_value_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_value_message then
    local length = size_of.underlying_value_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_value_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.underlying_value_message, range, display)
  end

  return dissect.underlying_value_message_fields(buffer, offset, packet, parent)
end

-- Display: Message Data
display.message_data = function(value)
  return "Message Data: "..value
end

-- Dissect runtime sized field: Message Data
dissect.message_data = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = display.message_data(value, buffer, offset, packet, parent, size)

  parent:add(siac_opra_recipient_obi_v6_1.fields.message_data, range, value, display)

  return offset + size
end

-- Size: Message Data Length
size_of.message_data_length = 2

-- Display: Message Data Length
display.message_data_length = function(value)
  return "Message Data Length: "..value
end

-- Dissect: Message Data Length
dissect.message_data_length = function(buffer, offset, packet, parent)
  local length = size_of.message_data_length
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.message_data_length(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.message_data_length, range, value, display)

  return offset + length, value
end

-- Size: Control Message Type
size_of.control_message_type = 1

-- Display: Control Message Type
display.control_message_type = function(value)
  if value == "A" then
    return "Control Message Type: Start Of Test Cycle (A)"
  end
  if value == "B" then
    return "Control Message Type: End Of Test Cycle (B)"
  end
  if value == "C" then
    return "Control Message Type: Start Of Day (C)"
  end
  if value == "D" then
    return "Control Message Type: Good Morning (D)"
  end
  if value == "E" then
    return "Control Message Type: Start Of Summary (E)"
  end
  if value == "F" then
    return "Control Message Type: End Of Summary (F)"
  end
  if value == "G" then
    return "Control Message Type: Early Market Close (G)"
  end
  if value == "H" then
    return "Control Message Type: End Of Transaction Reporting (H)"
  end
  if value == "I" then
    return "Control Message Type: Good Night (I)"
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
dissect.control_message_type = function(buffer, offset, packet, parent)
  local length = size_of.control_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.control_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Control Message
size_of.control_message = function(buffer, offset)
  local index = 0

  index = index + size_of.control_message_type

  index = index + size_of.message_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.message_data_length

  -- Parse runtime size of: Message Data
  index = index + buffer(offset + index - 2, 2):uint()

  return index
end

-- Display: Control Message
display.control_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control Message
dissect.control_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 15 values
  index, control_message_type = dissect.control_message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Message Data Length: 2 Byte Unsigned Fixed Width Integer
  index, message_data_length = dissect.message_data_length(buffer, index, packet, parent)

  -- Message Data: 1 Byte Ascii String
  index = dissect.message_data(buffer, index, packet, parent, message_data_length)

  return index
end

-- Dissect: Control Message
dissect.control_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control_message then
    local length = size_of.control_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.control_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.control_message, range, display)
  end

  return dissect.control_message_fields(buffer, offset, packet, parent)
end

-- Size: Message Type
size_of.message_type = 1

-- Display: Message Type
display.message_type = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
dissect.message_type = function(buffer, offset, packet, parent)
  local length = size_of.message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_type(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Administrative Message
size_of.administrative_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  index = index + size_of.message_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.message_data_length

  -- Parse runtime size of: Message Data
  index = index + buffer(offset + index - 2, 2):uint()

  return index
end

-- Display: Administrative Message
display.administrative_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative Message
dissect.administrative_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Message Data Length: 2 Byte Unsigned Fixed Width Integer
  index, message_data_length = dissect.message_data_length(buffer, index, packet, parent)

  -- Message Data: 1 Byte Ascii String
  index = dissect.message_data(buffer, index, packet, parent, message_data_length)

  return index
end

-- Dissect: Administrative Message
dissect.administrative_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative_message then
    local length = size_of.administrative_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.administrative_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.administrative_message, range, display)
  end

  return dissect.administrative_message_fields(buffer, offset, packet, parent)
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local length = size_of.price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.price, range, value, display)

  return offset + length, value
end

-- Size: Denominator Code
size_of.denominator_code = 1

-- Display: Denominator Code
display.denominator_code = function(value)
  return "Denominator Code: "..value
end

-- Dissect: Denominator Code
dissect.denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Participant Id
size_of.participant_id = 1

-- Display: Participant Id
display.participant_id = function(value)
  if value == "A" then
    return "Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "Participant Id: Boston Options Exchange (B)"
  end
  if value == "C" then
    return "Participant Id: Cboe Options Exchange (C)"
  end
  if value == "D" then
    return "Participant Id: Miax Emerald (D)"
  end
  if value == "E" then
    return "Participant Id: Cboe Edgx Options (E)"
  end
  if value == "H" then
    return "Participant Id: Nasdaq Gemx (H)"
  end
  if value == "I" then
    return "Participant Id: Nasdaq Ise (I)"
  end
  if value == "J" then
    return "Participant Id: Nasdaq Mrx (J)"
  end
  if value == "M" then
    return "Participant Id: Miami International Securities Exchange (M)"
  end
  if value == "N" then
    return "Participant Id: Nyse Arca (N)"
  end
  if value == "O" then
    return "Participant Id: Options Price Reporting Authority (O)"
  end
  if value == "P" then
    return "Participant Id: Miax Pearl (P)"
  end
  if value == "Q" then
    return "Participant Id: Nasdaq Options Market (Q)"
  end
  if value == "T" then
    return "Participant Id: Nasdaq Bx Options (T)"
  end
  if value == "W" then
    return "Participant Id: Cboe C 2 Options (W)"
  end
  if value == "X" then
    return "Participant Id: Nasdaq Phlx (X)"
  end
  if value == "Z" then
    return "Participant Id: Cboe Bzx Options Exchange (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local length = size_of.participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Offer Appendage
size_of.best_offer_appendage = function(buffer, offset)
  local index = 0

  index = index + size_of.participant_id

  index = index + size_of.denominator_code

  index = index + size_of.price

  index = index + size_of.size

  return index
end

-- Display: Best Offer Appendage
display.best_offer_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Offer Appendage
dissect.best_offer_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index, denominator_code = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size
  index, size = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Offer Appendage
dissect.best_offer_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_offer_appendage then
    local length = size_of.best_offer_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_offer_appendage(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.best_offer_appendage, range, display)
  end

  return dissect.best_offer_appendage_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Best Bid Appendage
size_of.best_bid_appendage = function(buffer, offset)
  local index = 0

  index = index + size_of.participant_id

  index = index + size_of.denominator_code

  index = index + size_of.price

  index = index + size_of.size

  return index
end

-- Display: Best Bid Appendage
display.best_bid_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid Appendage
dissect.best_bid_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index, denominator_code = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index, price = dissect.price(buffer, index, packet, parent)

  -- Size
  index, size = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid Appendage
dissect.best_bid_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_appendage then
    local length = size_of.best_bid_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_appendage(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.best_bid_appendage, range, display)
  end

  return dissect.best_bid_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size Short
size_of.offer_size_short = 2

-- Display: Offer Size Short
display.offer_size_short = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
dissect.offer_size_short = function(buffer, offset, packet, parent)
  local length = size_of.offer_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.offer_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Size: Offer Price Short
size_of.offer_price_short = 2

-- Display: Offer Price Short
display.offer_price_short = function(value)
  return "Offer Price Short: "..value
end

-- Dissect: Offer Price Short
dissect.offer_price_short = function(buffer, offset, packet, parent)
  local length = size_of.offer_price_short
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.offer_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Size Short
size_of.bid_size_short = 2

-- Display: Bid Size Short
display.bid_size_short = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
dissect.bid_size_short = function(buffer, offset, packet, parent)
  local length = size_of.bid_size_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_size_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Size: Bid Price Short
size_of.bid_price_short = 2

-- Display: Bid Price Short
display.bid_price_short = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
dissect.bid_price_short = function(buffer, offset, packet, parent)
  local length = size_of.bid_price_short
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.bid_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Short
size_of.strike_price_short = 2

-- Display: Strike Price Short
display.strike_price_short = function(value)
  return "Strike Price Short: "..value
end

-- Dissect: Strike Price Short
dissect.strike_price_short = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_short
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.strike_price_short(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.strike_price_short, range, value, display)

  return offset + length, value
end

-- Size: Expiration Year
size_of.expiration_year = 1

-- Display: Expiration Year
display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
dissect.expiration_year = function(buffer, offset, packet, parent)
  local length = size_of.expiration_year
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- Size: Expiration Day
size_of.expiration_day = 1

-- Display: Expiration Day
display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
dissect.expiration_day = function(buffer, offset, packet, parent)
  local length = size_of.expiration_day
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Size: Expiration Month
size_of.expiration_month = 1

-- Display: Expiration Month
display.expiration_month = function(value)
  if value == "A" then
    return "Expiration Month: January (A)"
  end
  if value == "M" then
    return "Expiration Month: January (M)"
  end
  if value == "B" then
    return "Expiration Month: February (B)"
  end
  if value == "N" then
    return "Expiration Month: February (N)"
  end
  if value == "C" then
    return "Expiration Month: March (C)"
  end
  if value == "O" then
    return "Expiration Month: March (O)"
  end
  if value == "D" then
    return "Expiration Month: April (D)"
  end
  if value == "P" then
    return "Expiration Month: April (P)"
  end
  if value == "E" then
    return "Expiration Month: May (E)"
  end
  if value == "Q" then
    return "Expiration Month: May (Q)"
  end
  if value == "F" then
    return "Expiration Month: June (F)"
  end
  if value == "R" then
    return "Expiration Month: June (R)"
  end
  if value == "G" then
    return "Expiration Month: July (G)"
  end
  if value == "S" then
    return "Expiration Month: July (S)"
  end
  if value == "H" then
    return "Expiration Month: August (H)"
  end
  if value == "T" then
    return "Expiration Month: August (T)"
  end
  if value == "I" then
    return "Expiration Month: September (I)"
  end
  if value == "U" then
    return "Expiration Month: September (U)"
  end
  if value == "J" then
    return "Expiration Month: October (J)"
  end
  if value == "V" then
    return "Expiration Month: October (V)"
  end
  if value == "K" then
    return "Expiration Month: November (K)"
  end
  if value == "W" then
    return "Expiration Month: November (W)"
  end
  if value == "L" then
    return "Expiration Month: December (L)"
  end
  if value == "X" then
    return "Expiration Month: December (X)"
  end

  return "Expiration Month: Unknown("..value..")"
end

-- Dissect: Expiration Month
dissect.expiration_month = function(buffer, offset, packet, parent)
  local length = size_of.expiration_month
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Calculate size of: Expiration Block
size_of.expiration_block = function(buffer, offset)
  local index = 0

  index = index + size_of.expiration_month

  index = index + size_of.expiration_day

  index = index + size_of.expiration_year

  return index
end

-- Display: Expiration Block
display.expiration_block = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Expiration Block
dissect.expiration_block_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index, expiration_month = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index, expiration_day = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index, expiration_year = dissect.expiration_year(buffer, index, packet, parent)

  return index
end

-- Dissect: Expiration Block
dissect.expiration_block = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.expiration_block then
    local length = size_of.expiration_block(buffer, offset)
    local range = buffer(offset, length)
    local display = display.expiration_block(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.expiration_block, range, display)
  end

  return dissect.expiration_block_fields(buffer, offset, packet, parent)
end

-- Size: Security Symbol Short
size_of.security_symbol_short = 4

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Size: Bbo Indicator
size_of.bbo_indicator = 1

-- Display: Bbo Indicator
display.bbo_indicator = function(value)
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
dissect.bbo_indicator = function(buffer, offset, packet, parent)
  local length = size_of.bbo_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.bbo_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.bbo_indicator, range, value, display)

  return offset + length, value
end

-- Size: Quote Message Type
size_of.quote_message_type = 1

-- Display: Quote Message Type
display.quote_message_type = function(value)
  if value == " " then
    return "Quote Message Type: Regular Trading (<whitespace>)"
  end
  if value == "F" then
    return "Quote Message Type: Non Firm Quote (F)"
  end
  if value == "I" then
    return "Quote Message Type: Indicative Value (I)"
  end
  if value == "R" then
    return "Quote Message Type: Rotation (R)"
  end
  if value == "T" then
    return "Quote Message Type: Trading Halted (T)"
  end
  if value == "A" then
    return "Quote Message Type: Eligible For Automatic Execution (A)"
  end
  if value == "B" then
    return "Quote Message Type: Bid Contains Customer Trading Interest (B)"
  end
  if value == "O" then
    return "Quote Message Type: Offer Contains Customer Trading Interest (O)"
  end
  if value == "C" then
    return "Quote Message Type: Both Bid And Offer Contain Customer Trading Interest (C)"
  end
  if value == "X" then
    return "Quote Message Type: Offer Side Of Quote Not Firm Bid Side Firm (X)"
  end
  if value == "Y" then
    return "Quote Message Type: Bid Side Of Quote Not Firm Offer Side Firm (Y)"
  end

  return "Quote Message Type: Unknown("..value..")"
end

-- Dissect: Quote Message Type
dissect.quote_message_type = function(buffer, offset, packet, parent)
  local length = size_of.quote_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.quote_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.quote_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Short Equity And Index Quote Message
size_of.short_equity_and_index_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.quote_message_type

  index = index + size_of.bbo_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.security_symbol_short

  index = index + size_of.expiration_block(buffer, offset + index)

  index = index + size_of.strike_price_short

  index = index + size_of.bid_price_short

  index = index + size_of.bid_size_short

  index = index + size_of.offer_price_short

  index = index + size_of.offer_size_short

  if bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P" then
    index = index + size_of.best_bid_appendage(buffer, offset + index)

  end

  if bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K" then
    index = index + size_of.best_offer_appendage(buffer, offset + index)

  end

  return index
end

-- Display: Short Equity And Index Quote Message
display.short_equity_and_index_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Equity And Index Quote Message
dissect.short_equity_and_index_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String Enum with 11 values
  index, quote_message_type = dissect.quote_message_type(buffer, index, packet, parent)

  -- Bbo Indicator: 1 Byte Ascii String Enum with 17 values
  index, bbo_indicator = dissect.bbo_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol Short: 4 Byte Ascii String
  index, security_symbol_short = dissect.security_symbol_short(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Short: 2 Byte Unsigned Fixed Width Integer
  index, strike_price_short = dissect.strike_price_short(buffer, index, packet, parent)

  -- Bid Price Short: 2 Byte Signed Fixed Width Integer
  index, bid_price_short = dissect.bid_price_short(buffer, index, packet, parent)

  -- Bid Size Short: 2 Byte Unsigned Fixed Width Integer
  index, bid_size_short = dissect.bid_size_short(buffer, index, packet, parent)

  -- Offer Price Short: 2 Byte Signed Fixed Width Integer
  index, offer_price_short = dissect.offer_price_short(buffer, index, packet, parent)

  -- Offer Size Short: 2 Byte Unsigned Fixed Width Integer
  index, offer_size_short = dissect.offer_size_short(buffer, index, packet, parent)

  -- Runtime optional field exists: Best Bid Appendage
  local best_bid_appendage_exists = bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P"

  -- Runtime optional field: Best Bid Appendage
  if best_bid_appendage_exists then
    index = dissect.best_bid_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: Best Offer Appendage
  local best_offer_appendage_exists = bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K"

  -- Runtime optional field: Best Offer Appendage
  if best_offer_appendage_exists then
    index = dissect.best_offer_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Short Equity And Index Quote Message
dissect.short_equity_and_index_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.short_equity_and_index_quote_message then
    local length = size_of.short_equity_and_index_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.short_equity_and_index_quote_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.short_equity_and_index_quote_message, range, display)
  end

  return dissect.short_equity_and_index_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Best Offer Size
size_of.best_offer_size = 4

-- Display: Best Offer Size
display.best_offer_size = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
dissect.best_offer_size = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.best_offer_size(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_offer_size, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Price
size_of.best_offer_price = 4

-- Display: Best Offer Price
display.best_offer_price = function(value)
  return "Best Offer Price: "..value
end

-- Dissect: Best Offer Price
dissect.best_offer_price = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.best_offer_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_offer_price, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Denominator Code
size_of.best_offer_denominator_code = 1

-- Display: Best Offer Denominator Code
display.best_offer_denominator_code = function(value)
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
dissect.best_offer_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.best_offer_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_offer_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Best Offer Participant Id
size_of.best_offer_participant_id = 1

-- Display: Best Offer Participant Id
display.best_offer_participant_id = function(value)
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
dissect.best_offer_participant_id = function(buffer, offset, packet, parent)
  local length = size_of.best_offer_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.best_offer_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_offer_participant_id, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Size
size_of.best_bid_size = 4

-- Display: Best Bid Size
display.best_bid_size = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
dissect.best_bid_size = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.best_bid_size(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_bid_size, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Price
size_of.best_bid_price = 4

-- Display: Best Bid Price
display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
dissect.best_bid_price = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_bid_price, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Denominator Code
size_of.best_bid_denominator_code = 1

-- Display: Best Bid Denominator Code
display.best_bid_denominator_code = function(value)
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
dissect.best_bid_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.best_bid_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_bid_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Best Bid Participant Id
size_of.best_bid_participant_id = 1

-- Display: Best Bid Participant Id
display.best_bid_participant_id = function(value)
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
dissect.best_bid_participant_id = function(buffer, offset, packet, parent)
  local length = size_of.best_bid_participant_id
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.best_bid_participant_id(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- Calculate size of: Best Bid And Offer Appendage
size_of.best_bid_and_offer_appendage = function(buffer, offset)
  local index = 0

  index = index + size_of.best_bid_participant_id

  index = index + size_of.best_bid_denominator_code

  index = index + size_of.best_bid_price

  index = index + size_of.best_bid_size

  index = index + size_of.best_offer_participant_id

  index = index + size_of.best_offer_denominator_code

  index = index + size_of.best_offer_price

  index = index + size_of.best_offer_size

  return index
end

-- Display: Best Bid And Offer Appendage
display.best_bid_and_offer_appendage = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Best Bid And Offer Appendage
dissect.best_bid_and_offer_appendage_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Best Bid Participant Id: 1 Byte Ascii String Enum with 17 values
  index, best_bid_participant_id = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Denominator Code: 1 Byte Ascii String Enum with 9 values
  index, best_bid_denominator_code = dissect.best_bid_denominator_code(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index, best_bid_price = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, best_bid_size = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Participant Id: 1 Byte Ascii String Enum with 17 values
  index, best_offer_participant_id = dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Denominator Code: 1 Byte Ascii String Enum with 9 values
  index, best_offer_denominator_code = dissect.best_offer_denominator_code(buffer, index, packet, parent)

  -- Best Offer Price: 4 Byte Signed Fixed Width Integer
  index, best_offer_price = dissect.best_offer_price(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, best_offer_size = dissect.best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Bid And Offer Appendage
dissect.best_bid_and_offer_appendage = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.best_bid_and_offer_appendage then
    local length = size_of.best_bid_and_offer_appendage(buffer, offset)
    local range = buffer(offset, length)
    local display = display.best_bid_and_offer_appendage(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.best_bid_and_offer_appendage, range, display)
  end

  return dissect.best_bid_and_offer_appendage_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size
size_of.offer_size = 4

-- Display: Offer Size
display.offer_size = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
dissect.offer_size = function(buffer, offset, packet, parent)
  local length = size_of.offer_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.offer_size(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Size: Offer Price
size_of.offer_price = 4

-- Display: Offer Price
display.offer_price = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
dissect.offer_price = function(buffer, offset, packet, parent)
  local length = size_of.offer_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.offer_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Size: Bid Size
size_of.bid_size = 4

-- Display: Bid Size
display.bid_size = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
dissect.bid_size = function(buffer, offset, packet, parent)
  local length = size_of.bid_size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.bid_size(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Size: Bid Price
size_of.bid_price = 4

-- Display: Bid Price
display.bid_price = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
dissect.bid_price = function(buffer, offset, packet, parent)
  local length = size_of.bid_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.bid_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Size: Premium Price Denominator Code
size_of.premium_price_denominator_code = 1

-- Display: Premium Price Denominator Code
display.premium_price_denominator_code = function(value)
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
dissect.premium_price_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.premium_price_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.premium_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.premium_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Strike Price
size_of.strike_price = 4

-- Display: Strike Price
display.strike_price = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
dissect.strike_price = function(buffer, offset, packet, parent)
  local length = size_of.strike_price
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.strike_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Size: Strike Price Denominator Code
size_of.strike_price_denominator_code = 1

-- Display: Strike Price Denominator Code
display.strike_price_denominator_code = function(value)
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
dissect.strike_price_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.strike_price_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.strike_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.strike_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Calculate size of: Long Equity And Index Quote Message
size_of.long_equity_and_index_quote_message = function(buffer, offset)
  local index = 0

  index = index + size_of.quote_message_type

  index = index + size_of.bbo_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.security_symbol

  index = index + size_of.reserved_1

  index = index + size_of.expiration_block(buffer, offset + index)

  index = index + size_of.strike_price_denominator_code

  index = index + size_of.strike_price

  index = index + size_of.premium_price_denominator_code

  index = index + size_of.bid_price

  index = index + size_of.bid_size

  index = index + size_of.offer_price

  index = index + size_of.offer_size

  if bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P" then
    index = index + size_of.best_bid_appendage(buffer, offset + index)

  end

  if bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K" then
    index = index + size_of.best_offer_appendage(buffer, offset + index)

  end

  if bbo_indicator == "O" then
    index = index + size_of.best_bid_and_offer_appendage(buffer, offset + index)

  end

  return index
end

-- Display: Long Equity And Index Quote Message
display.long_equity_and_index_quote_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Equity And Index Quote Message
dissect.long_equity_and_index_quote_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Quote Message Type: 1 Byte Ascii String Enum with 11 values
  index, quote_message_type = dissect.quote_message_type(buffer, index, packet, parent)

  -- Bbo Indicator: 1 Byte Ascii String Enum with 17 values
  index, bbo_indicator = dissect.bbo_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, premium_price_denominator_code = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = dissect.bid_size(buffer, index, packet, parent)

  -- Offer Price: 4 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = dissect.offer_size(buffer, index, packet, parent)

  -- Runtime optional field exists: Best Bid Appendage
  local best_bid_appendage_exists = bbo_indicator == "M" or bbo_indicator == "N" or bbo_indicator == "P"

  -- Runtime optional field: Best Bid Appendage
  if best_bid_appendage_exists then
    index = dissect.best_bid_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: Best Offer Appendage
  local best_offer_appendage_exists = bbo_indicator == "C" or bbo_indicator == "G" or bbo_indicator == "K"

  -- Runtime optional field: Best Offer Appendage
  if best_offer_appendage_exists then
    index = dissect.best_offer_appendage(buffer, index, packet, parent)
  end

  -- Runtime optional field exists: Best Bid And Offer Appendage
  local best_bid_and_offer_appendage_exists = bbo_indicator == "O"

  -- Runtime optional field: Best Bid And Offer Appendage
  if best_bid_and_offer_appendage_exists then
    index = dissect.best_bid_and_offer_appendage(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Long Equity And Index Quote Message
dissect.long_equity_and_index_quote_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_equity_and_index_quote_message then
    local length = size_of.long_equity_and_index_quote_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.long_equity_and_index_quote_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.long_equity_and_index_quote_message, range, display)
  end

  return dissect.long_equity_and_index_quote_message_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Price
size_of.underlying_price = 8

-- Display: Underlying Price
display.underlying_price = function(value)
  return "Underlying Price: "..value
end

-- Dissect: Underlying Price
dissect.underlying_price = function(buffer, offset, packet, parent)
  local length = size_of.underlying_price
  local range = buffer(offset, length)
  local value = range:int64()
  local display = display.underlying_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.underlying_price, range, value, display)

  return offset + length, value
end

-- Size: Underlying Price Denominator Code
size_of.underlying_price_denominator_code = 1

-- Display: Underlying Price Denominator Code
display.underlying_price_denominator_code = function(value)
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
dissect.underlying_price_denominator_code = function(buffer, offset, packet, parent)
  local length = size_of.underlying_price_denominator_code
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.underlying_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.underlying_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Size: Net Change
size_of.net_change = 4

-- Display: Net Change
display.net_change = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
dissect.net_change = function(buffer, offset, packet, parent)
  local length = size_of.net_change
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.net_change(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.net_change, range, value, display)

  return offset + length, value
end

-- Size: Last Price
size_of.last_price = 4

-- Display: Last Price
display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
dissect.last_price = function(buffer, offset, packet, parent)
  local length = size_of.last_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.last_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.last_price, range, value, display)

  return offset + length, value
end

-- Size: Low Price
size_of.low_price = 4

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local length = size_of.low_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.low_price, range, value, display)

  return offset + length, value
end

-- Size: High Price
size_of.high_price = 4

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local length = size_of.high_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.high_price, range, value, display)

  return offset + length, value
end

-- Size: Open Price
size_of.open_price = 4

-- Display: Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
dissect.open_price = function(buffer, offset, packet, parent)
  local length = size_of.open_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.open_price, range, value, display)

  return offset + length, value
end

-- Size: Open Interest Volume
size_of.open_interest_volume = 4

-- Display: Open Interest Volume
display.open_interest_volume = function(value)
  return "Open Interest Volume: "..value
end

-- Dissect: Open Interest Volume
dissect.open_interest_volume = function(buffer, offset, packet, parent)
  local length = size_of.open_interest_volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.open_interest_volume(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.open_interest_volume, range, value, display)

  return offset + length, value
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local length = size_of.volume
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.volume, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equity And Index End Of Day Summary Message
size_of.equity_and_index_end_of_day_summary_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  index = index + size_of.message_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.security_symbol

  index = index + size_of.reserved_1

  index = index + size_of.expiration_block(buffer, offset + index)

  index = index + size_of.strike_price_denominator_code

  index = index + size_of.strike_price

  index = index + size_of.volume

  index = index + size_of.open_interest_volume

  index = index + size_of.premium_price_denominator_code

  index = index + size_of.open_price

  index = index + size_of.high_price

  index = index + size_of.low_price

  index = index + size_of.last_price

  index = index + size_of.net_change

  index = index + size_of.underlying_price_denominator_code

  index = index + size_of.underlying_price

  index = index + size_of.bid_price

  index = index + size_of.offer_price

  return index
end

-- Display: Equity And Index End Of Day Summary Message
display.equity_and_index_end_of_day_summary_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity And Index End Of Day Summary Message
dissect.equity_and_index_end_of_day_summary_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Open Interest Volume: 4 Byte Unsigned Fixed Width Integer
  index, open_interest_volume = dissect.open_interest_volume(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, premium_price_denominator_code = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Open Price: 4 Byte Signed Fixed Width Integer
  index, open_price = dissect.open_price(buffer, index, packet, parent)

  -- High Price: 4 Byte Signed Fixed Width Integer
  index, high_price = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Signed Fixed Width Integer
  index, low_price = dissect.low_price(buffer, index, packet, parent)

  -- Last Price: 4 Byte Signed Fixed Width Integer
  index, last_price = dissect.last_price(buffer, index, packet, parent)

  -- Net Change: 4 Byte Signed Fixed Width Integer
  index, net_change = dissect.net_change(buffer, index, packet, parent)

  -- Underlying Price Denominator Code: 1 Byte Ascii String Enum with 9 values
  index, underlying_price_denominator_code = dissect.underlying_price_denominator_code(buffer, index, packet, parent)

  -- Underlying Price: 8 Byte Signed Fixed Width Integer
  index, underlying_price = dissect.underlying_price(buffer, index, packet, parent)

  -- Bid Price: 4 Byte Signed Fixed Width Integer
  index, bid_price = dissect.bid_price(buffer, index, packet, parent)

  -- Offer Price: 4 Byte Signed Fixed Width Integer
  index, offer_price = dissect.offer_price(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index End Of Day Summary Message
dissect.equity_and_index_end_of_day_summary_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_and_index_end_of_day_summary_message then
    local length = size_of.equity_and_index_end_of_day_summary_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.equity_and_index_end_of_day_summary_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.equity_and_index_end_of_day_summary_message, range, display)
  end

  return dissect.equity_and_index_end_of_day_summary_message_fields(buffer, offset, packet, parent)
end

-- Calculate size of: Open Interest Message
size_of.open_interest_message = function(buffer, offset)
  local index = 0

  index = index + size_of.message_type

  index = index + size_of.message_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.security_symbol

  index = index + size_of.reserved_1

  index = index + size_of.expiration_block(buffer, offset + index)

  index = index + size_of.strike_price_denominator_code

  index = index + size_of.strike_price

  index = index + size_of.open_interest_volume

  return index
end

-- Display: Open Interest Message
display.open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Interest Message
dissect.open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: 1 Byte Ascii String
  index, message_type = dissect.message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Open Interest Volume: 4 Byte Unsigned Fixed Width Integer
  index, open_interest_volume = dissect.open_interest_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
dissect.open_interest_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_interest_message then
    local length = size_of.open_interest_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.open_interest_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.open_interest_message, range, display)
  end

  return dissect.open_interest_message_fields(buffer, offset, packet, parent)
end

-- Size: Trade Identifier
size_of.trade_identifier = 4

-- Display: Trade Identifier
display.trade_identifier = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
dissect.trade_identifier = function(buffer, offset, packet, parent)
  local length = size_of.trade_identifier
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.trade_identifier(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.trade_identifier, range, value, display)

  return offset + length, value
end

-- Size: Premium Price
size_of.premium_price = 4

-- Display: Premium Price
display.premium_price = function(value)
  return "Premium Price: "..value
end

-- Dissect: Premium Price
dissect.premium_price = function(buffer, offset, packet, parent)
  local length = size_of.premium_price
  local range = buffer(offset, length)
  local value = range:int()
  local display = display.premium_price(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.premium_price, range, value, display)

  return offset + length, value
end

-- Size: Trade Message Type
size_of.trade_message_type = 1

-- Display: Trade Message Type
display.trade_message_type = function(value)
  if value == " " then
    return "Trade Message Type: Regular (<whitespace>)"
  end
  if value == "A" then
    return "Trade Message Type: Canc (A)"
  end
  if value == "B" then
    return "Trade Message Type: Oseq (B)"
  end
  if value == "C" then
    return "Trade Message Type: Cncl (C)"
  end
  if value == "D" then
    return "Trade Message Type: Late (D)"
  end
  if value == "E" then
    return "Trade Message Type: Cnco (E)"
  end
  if value == "F" then
    return "Trade Message Type: Open (F)"
  end
  if value == "G" then
    return "Trade Message Type: Cnol (G)"
  end
  if value == "H" then
    return "Trade Message Type: Opnl (H)"
  end
  if value == "I" then
    return "Trade Message Type: Auto (I)"
  end
  if value == "J" then
    return "Trade Message Type: Reop (J)"
  end
  if value == "K" then
    return "Trade Message Type: Ajst (K)"
  end
  if value == "L" then
    return "Trade Message Type: Sprd (L)"
  end
  if value == "M" then
    return "Trade Message Type: Stdl (M)"
  end
  if value == "N" then
    return "Trade Message Type: Stpd (N)"
  end
  if value == "O" then
    return "Trade Message Type: Cstp (O)"
  end
  if value == "P" then
    return "Trade Message Type: Bwrt (P)"
  end
  if value == "Q" then
    return "Trade Message Type: Cmbo (Q)"
  end
  if value == "R" then
    return "Trade Message Type: Spim (R)"
  end
  if value == "S" then
    return "Trade Message Type: Isoi (S)"
  end
  if value == "T" then
    return "Trade Message Type: Bnmt (T)"
  end
  if value == "X" then
    return "Trade Message Type: Xmpt (X)"
  end

  return "Trade Message Type: Unknown("..value..")"
end

-- Dissect: Trade Message Type
dissect.trade_message_type = function(buffer, offset, packet, parent)
  local length = size_of.trade_message_type
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.trade_message_type(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.trade_message_type, range, value, display)

  return offset + length, value
end

-- Calculate size of: Equity And Index Last Sale Message
size_of.equity_and_index_last_sale_message = function(buffer, offset)
  local index = 0

  index = index + size_of.trade_message_type

  index = index + size_of.message_indicator

  index = index + size_of.transaction_id

  index = index + size_of.participant_reference_number

  index = index + size_of.security_symbol

  index = index + size_of.reserved_1

  index = index + size_of.expiration_block(buffer, offset + index)

  index = index + size_of.strike_price_denominator_code

  index = index + size_of.strike_price

  index = index + size_of.volume

  index = index + size_of.premium_price_denominator_code

  index = index + size_of.premium_price

  index = index + size_of.trade_identifier

  index = index + size_of.reserved_4

  return index
end

-- Display: Equity And Index Last Sale Message
display.equity_and_index_last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity And Index Last Sale Message
dissect.equity_and_index_last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trade Message Type: 1 Byte Ascii String Enum with 22 values
  index, trade_message_type = dissect.trade_message_type(buffer, index, packet, parent)

  -- Message Indicator: 1 Byte Ascii String
  index, message_indicator = dissect.message_indicator(buffer, index, packet, parent)

  -- Transaction Id: 4 Byte Unsigned Fixed Width Integer
  index, transaction_id = dissect.transaction_id(buffer, index, packet, parent)

  -- Participant Reference Number: 4 Byte Unsigned Fixed Width Integer
  index, participant_reference_number = dissect.participant_reference_number(buffer, index, packet, parent)

  -- Security Symbol: 5 Byte Ascii String
  index, security_symbol = dissect.security_symbol(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index, reserved_1 = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = dissect.expiration_block(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String Enum with 6 values
  index, strike_price_denominator_code = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price: 4 Byte Unsigned Fixed Width Integer
  index, strike_price = dissect.strike_price(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer
  index, volume = dissect.volume(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String Enum with 8 values
  index, premium_price_denominator_code = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Premium Price: 4 Byte Signed Fixed Width Integer
  index, premium_price = dissect.premium_price(buffer, index, packet, parent)

  -- Trade Identifier: 4 Byte Unsigned Fixed Width Integer
  index, trade_identifier = dissect.trade_identifier(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index Last Sale Message
dissect.equity_and_index_last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_and_index_last_sale_message then
    local length = size_of.equity_and_index_last_sale_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.equity_and_index_last_sale_message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.equity_and_index_last_sale_message, range, display)
  end

  return dissect.equity_and_index_last_sale_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Payload
size_of.payload = function(buffer, offset, message_category)
  -- Size of Equity And Index Last Sale Message
  if message_category == "a" then
    return size_of.equity_and_index_last_sale_message(buffer, offset)
  end
  -- Size of Open Interest Message
  if message_category == "d" then
    return size_of.open_interest_message(buffer, offset)
  end
  -- Size of Equity And Index End Of Day Summary Message
  if message_category == "f" then
    return size_of.equity_and_index_end_of_day_summary_message(buffer, offset)
  end
  -- Size of Long Equity And Index Quote Message
  if message_category == "k" then
    return size_of.long_equity_and_index_quote_message(buffer, offset)
  end
  -- Size of Short Equity And Index Quote Message
  if message_category == "q" then
    return size_of.short_equity_and_index_quote_message(buffer, offset)
  end
  -- Size of Administrative Message
  if message_category == "C" then
    return size_of.administrative_message(buffer, offset)
  end
  -- Size of Control Message
  if message_category == "H" then
    return size_of.control_message(buffer, offset)
  end
  -- Size of Underlying Value Message
  if message_category == "Y" then
    return size_of.underlying_value_message(buffer, offset)
  end

  return 0
end

-- Display: Payload
display.payload = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
dissect.payload_branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Equity And Index Last Sale Message
  if message_category == "a" then
    return dissect.equity_and_index_last_sale_message(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Message
  if message_category == "d" then
    return dissect.open_interest_message(buffer, offset, packet, parent)
  end
  -- Dissect Equity And Index End Of Day Summary Message
  if message_category == "f" then
    return dissect.equity_and_index_end_of_day_summary_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Equity And Index Quote Message
  if message_category == "k" then
    return dissect.long_equity_and_index_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Equity And Index Quote Message
  if message_category == "q" then
    return dissect.short_equity_and_index_quote_message(buffer, offset, packet, parent)
  end
  -- Dissect Administrative Message
  if message_category == "C" then
    return dissect.administrative_message(buffer, offset, packet, parent)
  end
  -- Dissect Control Message
  if message_category == "H" then
    return dissect.control_message(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Message
  if message_category == "Y" then
    return dissect.underlying_value_message(buffer, offset, packet, parent)
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
  local element = parent:add(siac_opra_recipient_obi_v6_1.fields.payload, range, display)

  return dissect.payload_branches(buffer, offset, packet, parent, message_category)
end

-- Size: Message Category
size_of.message_category = 1

-- Display: Message Category
display.message_category = function(value)
  if value == "a" then
    return "Message Category: Equity And Index Last Sale Message (a)"
  end
  if value == "d" then
    return "Message Category: Open Interest Message (d)"
  end
  if value == "f" then
    return "Message Category: Equity And Index End Of Day Summary Message (f)"
  end
  if value == "k" then
    return "Message Category: Long Equity And Index Quote Message (k)"
  end
  if value == "q" then
    return "Message Category: Short Equity And Index Quote Message (q)"
  end
  if value == "C" then
    return "Message Category: Administrative Message (C)"
  end
  if value == "H" then
    return "Message Category: Control Message (H)"
  end
  if value == "Y" then
    return "Message Category: Underlying Value Message (Y)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
dissect.message_category = function(buffer, offset, packet, parent)
  local length = size_of.message_category
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.message_category(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.message_category, range, value, display)

  return offset + length, value
end

-- Calculate size of: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + size_of.participant_id

  index = index + size_of.message_category

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
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

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index, participant_id = dissect.participant_id(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 8 values
  index, message_category = dissect.message_category(buffer, index, packet, parent)

  -- Payload: Runtime Type with 8 branches
  index = dissect.payload(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
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

  parent:add(siac_opra_recipient_obi_v6_1.fields.block_checksum, range, value, display)

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.nanoseconds, range, value, display)

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.seconds, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Timestamp
size_of.block_timestamp = function(buffer, offset)
  local index = 0

  index = index + size_of.seconds

  index = index + size_of.nanoseconds

  return index
end

-- Display: Block Timestamp
display.block_timestamp = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Block Timestamp
dissect.block_timestamp_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = dissect.seconds(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = dissect.nanoseconds(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Timestamp
dissect.block_timestamp = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.block_timestamp then
    local length = size_of.block_timestamp(buffer, offset)
    local range = buffer(offset, length)
    local display = display.block_timestamp(buffer, packet, parent)
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.block_timestamp, range, display)
  end

  return dissect.block_timestamp_fields(buffer, offset, packet, parent)
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

  parent:add(siac_opra_recipient_obi_v6_1.fields.messages_in_block, range, value, display)

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Size: Session Indicator
size_of.session_indicator = 1

-- Display: Session Indicator
display.session_indicator = function(value)
  if value == 0 then
    return "Session Indicator: Regular (0)"
  end
  if value == 88 then
    return "Session Indicator: Pre Market (88)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
dissect.session_indicator = function(buffer, offset, packet, parent)
  local length = size_of.session_indicator
  local range = buffer(offset, length)
  local value = range:uint()
  local display = display.session_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Size: Retransmission Indicator
size_of.retransmission_indicator = 1

-- Display: Retransmission Indicator
display.retransmission_indicator = function(value)
  return "Retransmission Indicator: "..value
end

-- Dissect: Retransmission Indicator
dissect.retransmission_indicator = function(buffer, offset, packet, parent)
  local length = size_of.retransmission_indicator
  local range = buffer(offset, length)
  local value = range:string()
  local display = display.retransmission_indicator(value, buffer, offset, packet, parent)

  parent:add(siac_opra_recipient_obi_v6_1.fields.retransmission_indicator, range, value, display)

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.data_feed_indicator, range, value, display)

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.block_size, range, value, display)

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

  parent:add(siac_opra_recipient_obi_v6_1.fields.version, range, value, display)

  return offset + length, value
end

-- Calculate size of: Block Header
size_of.block_header = function(buffer, offset)
  local index = 0

  index = index + size_of.version

  index = index + size_of.block_size

  index = index + size_of.data_feed_indicator

  index = index + size_of.retransmission_indicator

  index = index + size_of.session_indicator

  index = index + size_of.block_sequence_number

  index = index + size_of.messages_in_block

  index = index + size_of.block_timestamp(buffer, offset + index)

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

  -- Version: 1 Byte Unsigned Fixed Width Integer Static
  index, version = dissect.version(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = dissect.block_size(buffer, index, packet, parent)

  -- Data Feed Indicator: 1 Byte Ascii String
  index, data_feed_indicator = dissect.data_feed_indicator(buffer, index, packet, parent)

  -- Retransmission Indicator: 1 Byte Ascii String
  index, retransmission_indicator = dissect.retransmission_indicator(buffer, index, packet, parent)

  -- Session Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, session_indicator = dissect.session_indicator(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = dissect.block_sequence_number(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = dissect.messages_in_block(buffer, index, packet, parent)

  -- Block Timestamp: Struct of 2 fields
  index, block_timestamp = dissect.block_timestamp(buffer, index, packet, parent)

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
    parent = parent:add(siac_opra_recipient_obi_v6_1.fields.block_header, range, display)
  end

  return dissect.block_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 9 fields
  index, block_header = dissect.block_header(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Message: Struct of 3 fields
  for i = 1, messages_in_block do
    index = dissect.message(buffer, index, packet, parent)
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
function siac_opra_recipient_obi_v6_1.init()
end

-- Dissector for Siac Opra Recipient Obi 6.1
function siac_opra_recipient_obi_v6_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = siac_opra_recipient_obi_v6_1.name

  -- Dissect protocol
  local protocol = parent:add(siac_opra_recipient_obi_v6_1, buffer(), siac_opra_recipient_obi_v6_1.description, "("..buffer:len().." Bytes)")
  return dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, siac_opra_recipient_obi_v6_1)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.siac_opra_recipient_obi_v6_1_packet_size = function(buffer)

  return true
end

-- Verify Version Field
verify.version = function(buffer)
  -- Attempt to read field
  local value = buffer(0, 1):uint()

  if value == 6 then
    return true
  end

  return false
end

-- Dissector Heuristic for Siac Opra Recipient Obi 6.1
local function siac_opra_recipient_obi_v6_1_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.siac_opra_recipient_obi_v6_1_packet_size(buffer) then return false end

  -- Verify Version
  if not verify.version(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = siac_opra_recipient_obi_v6_1
  siac_opra_recipient_obi_v6_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Opra Recipient Obi 6.1
siac_opra_recipient_obi_v6_1:register_heuristic("udp", siac_opra_recipient_obi_v6_1_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 6.1
--   Date: Friday, March 25, 2022
--   Specification: 624057bbf5a8f4821840340e_OPRA Pillar Output Specification.pdf
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
