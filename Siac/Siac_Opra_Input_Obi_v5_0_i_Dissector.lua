-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Opra Input Obi 5.0.i Protocol
local omi_siac_opra_input_obi_v5_0_i = Proto("Omi.Siac.Opra.Input.Obi.v5.0.i", "Siac Opra Input Obi 5.0.i")

-- Protocol table
local siac_opra_input_obi_v5_0_i = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Opra Input Obi 5.0.i Fields
omi_siac_opra_input_obi_v5_0_i.fields.administrative_category = ProtoField.new("Administrative Category", "siac.opra.input.obi.v5.0.i.administrativecategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.administrative_message_type = ProtoField.new("Administrative Message Type", "siac.opra.input.obi.v5.0.i.administrativemessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.bid_index_value = ProtoField.new("Bid Index Value", "siac.opra.input.obi.v5.0.i.bidindexvalue", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.bid_price = ProtoField.new("Bid Price", "siac.opra.input.obi.v5.0.i.bidprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.bid_price_short = ProtoField.new("Bid Price Short", "siac.opra.input.obi.v5.0.i.bidpriceshort", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.bid_size = ProtoField.new("Bid Size", "siac.opra.input.obi.v5.0.i.bidsize", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.bid_size_short = ProtoField.new("Bid Size Short", "siac.opra.input.obi.v5.0.i.bidsizeshort", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.block_checksum = ProtoField.new("Block Checksum", "siac.opra.input.obi.v5.0.i.blockchecksum", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.block_header = ProtoField.new("Block Header", "siac.opra.input.obi.v5.0.i.blockheader", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.opra.input.obi.v5.0.i.blockpadbyte", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.block_separator = ProtoField.new("Block Separator", "siac.opra.input.obi.v5.0.i.blockseparator", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.opra.input.obi.v5.0.i.blocksequencenumber", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.block_size = ProtoField.new("Block Size", "siac.opra.input.obi.v5.0.i.blocksize", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.block_timestamp = ProtoField.new("Block Timestamp", "siac.opra.input.obi.v5.0.i.blocktimestamp", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.control_category = ProtoField.new("Control Category", "siac.opra.input.obi.v5.0.i.controlcategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.control_message_type = ProtoField.new("Control Message Type", "siac.opra.input.obi.v5.0.i.controlmessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_end_of_day_summary_category = ProtoField.new("Equity And Index End Of Day Summary Category", "siac.opra.input.obi.v5.0.i.equityandindexendofdaysummarycategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_end_of_day_summary_message_type = ProtoField.new("Equity And Index End Of Day Summary Message Type", "siac.opra.input.obi.v5.0.i.equityandindexendofdaysummarymessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_last_sale_category = ProtoField.new("Equity And Index Last Sale Category", "siac.opra.input.obi.v5.0.i.equityandindexlastsalecategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_last_sale_message_type = ProtoField.new("Equity And Index Last Sale Message Type", "siac.opra.input.obi.v5.0.i.equityandindexlastsalemessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.expiration_block = ProtoField.new("Expiration Block", "siac.opra.input.obi.v5.0.i.expirationblock", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.expiration_day = ProtoField.new("Expiration Day", "siac.opra.input.obi.v5.0.i.expirationday", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.expiration_month = ProtoField.new("Expiration Month", "siac.opra.input.obi.v5.0.i.expirationmonth", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.expiration_year = ProtoField.new("Expiration Year", "siac.opra.input.obi.v5.0.i.expirationyear", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.high_price = ProtoField.new("High Price", "siac.opra.input.obi.v5.0.i.highprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.index_value = ProtoField.new("Index Value", "siac.opra.input.obi.v5.0.i.indexvalue", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.index_value_denominator_code = ProtoField.new("Index Value Denominator Code", "siac.opra.input.obi.v5.0.i.indexvaluedenominatorcode", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.last_price = ProtoField.new("Last Price", "siac.opra.input.obi.v5.0.i.lastprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.long_equity_and_index_quote_category = ProtoField.new("Long Equity And Index Quote Category", "siac.opra.input.obi.v5.0.i.longequityandindexquotecategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.long_equity_and_index_quote_message_type = ProtoField.new("Long Equity And Index Quote Message Type", "siac.opra.input.obi.v5.0.i.longequityandindexquotemessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.low_price = ProtoField.new("Low Price", "siac.opra.input.obi.v5.0.i.lowprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.message = ProtoField.new("Message", "siac.opra.input.obi.v5.0.i.message", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.message_category = ProtoField.new("Message Category", "siac.opra.input.obi.v5.0.i.messagecategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.message_count = ProtoField.new("Message Count", "siac.opra.input.obi.v5.0.i.messagecount", ftypes.UINT64)
omi_siac_opra_input_obi_v5_0_i.fields.message_data = ProtoField.new("Message Data", "siac.opra.input.obi.v5.0.i.messagedata", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.message_data_length = ProtoField.new("Message Data Length", "siac.opra.input.obi.v5.0.i.messagedatalength", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.message_header = ProtoField.new("Message Header", "siac.opra.input.obi.v5.0.i.messageheader", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.opra.input.obi.v5.0.i.messagesinblock", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.opra.input.obi.v5.0.i.nanoseconds", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.net_change = ProtoField.new("Net Change", "siac.opra.input.obi.v5.0.i.netchange", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.offer_index_value = ProtoField.new("Offer Index Value", "siac.opra.input.obi.v5.0.i.offerindexvalue", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.offer_price = ProtoField.new("Offer Price", "siac.opra.input.obi.v5.0.i.offerprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.offer_price_short = ProtoField.new("Offer Price Short", "siac.opra.input.obi.v5.0.i.offerpriceshort", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.offer_size = ProtoField.new("Offer Size", "siac.opra.input.obi.v5.0.i.offersize", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.offer_size_short = ProtoField.new("Offer Size Short", "siac.opra.input.obi.v5.0.i.offersizeshort", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.open_interest_volume = ProtoField.new("Open Interest Volume", "siac.opra.input.obi.v5.0.i.openinterestvolume", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.open_price = ProtoField.new("Open Price", "siac.opra.input.obi.v5.0.i.openprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.packet = ProtoField.new("Packet", "siac.opra.input.obi.v5.0.i.packet", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.participant_id = ProtoField.new("Participant Id", "siac.opra.input.obi.v5.0.i.participantid", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.participant_reference_number = ProtoField.new("Participant Reference Number", "siac.opra.input.obi.v5.0.i.participantreferencenumber", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.premium_price = ProtoField.new("Premium Price", "siac.opra.input.obi.v5.0.i.premiumprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.premium_price_denominator_code = ProtoField.new("Premium Price Denominator Code", "siac.opra.input.obi.v5.0.i.premiumpricedenominatorcode", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.reserved = ProtoField.new("Reserved", "siac.opra.input.obi.v5.0.i.reserved", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.reserved_1 = ProtoField.new("Reserved 1", "siac.opra.input.obi.v5.0.i.reserved1", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.reserved_4 = ProtoField.new("Reserved 4", "siac.opra.input.obi.v5.0.i.reserved4", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.reserved_8 = ProtoField.new("Reserved 8", "siac.opra.input.obi.v5.0.i.reserved8", ftypes.UINT64)
omi_siac_opra_input_obi_v5_0_i.fields.seconds = ProtoField.new("Seconds", "siac.opra.input.obi.v5.0.i.seconds", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.security_symbol = ProtoField.new("Security Symbol", "siac.opra.input.obi.v5.0.i.securitysymbol", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.security_symbol_short = ProtoField.new("Security Symbol Short", "siac.opra.input.obi.v5.0.i.securitysymbolshort", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.sequence_number_status_category = ProtoField.new("Sequence Number Status Category", "siac.opra.input.obi.v5.0.i.sequencenumberstatuscategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.sequence_number_status_message_type = ProtoField.new("Sequence Number Status Message Type", "siac.opra.input.obi.v5.0.i.sequencenumberstatusmessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.session_indicator = ProtoField.new("Session Indicator", "siac.opra.input.obi.v5.0.i.sessionindicator", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.short_equity_and_index_quote_category = ProtoField.new("Short Equity And Index Quote Category", "siac.opra.input.obi.v5.0.i.shortequityandindexquotecategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.short_equity_and_index_quote_message_type = ProtoField.new("Short Equity And Index Quote Message Type", "siac.opra.input.obi.v5.0.i.shortequityandindexquotemessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.strike_price = ProtoField.new("Strike Price", "siac.opra.input.obi.v5.0.i.strikeprice", ftypes.INT32)
omi_siac_opra_input_obi_v5_0_i.fields.strike_price_denominator_code = ProtoField.new("Strike Price Denominator Code", "siac.opra.input.obi.v5.0.i.strikepricedenominatorcode", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.strike_price_short = ProtoField.new("Strike Price Short", "siac.opra.input.obi.v5.0.i.strikepriceshort", ftypes.UINT16)
omi_siac_opra_input_obi_v5_0_i.fields.trade_identifier = ProtoField.new("Trade Identifier", "siac.opra.input.obi.v5.0.i.tradeidentifier", ftypes.UINT32)
omi_siac_opra_input_obi_v5_0_i.fields.underlying_price = ProtoField.new("Underlying Price", "siac.opra.input.obi.v5.0.i.underlyingprice", ftypes.INT64)
omi_siac_opra_input_obi_v5_0_i.fields.underlying_price_denominator_code = ProtoField.new("Underlying Price Denominator Code", "siac.opra.input.obi.v5.0.i.underlyingpricedenominatorcode", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_message_category = ProtoField.new("Underlying Value Message Category", "siac.opra.input.obi.v5.0.i.underlyingvaluemessagecategory", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_message_message_type = ProtoField.new("Underlying Value Message Message Type", "siac.opra.input.obi.v5.0.i.underlyingvaluemessagemessagetype", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.version = ProtoField.new("Version", "siac.opra.input.obi.v5.0.i.version", ftypes.UINT8)
omi_siac_opra_input_obi_v5_0_i.fields.volume = ProtoField.new("Volume", "siac.opra.input.obi.v5.0.i.volume", ftypes.UINT32)

-- Siac Opra Obi Input 5.0.i Application Messages
omi_siac_opra_input_obi_v5_0_i.fields.administrative_message = ProtoField.new("Administrative Message", "siac.opra.input.obi.v5.0.i.administrativemessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.block_sequence_number_status_inquiry_request_message = ProtoField.new("Block Sequence Number Status Inquiry Request Message", "siac.opra.input.obi.v5.0.i.blocksequencenumberstatusinquiryrequestmessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.block_sequence_number_status_response_message = ProtoField.new("Block Sequence Number Status Response Message", "siac.opra.input.obi.v5.0.i.blocksequencenumberstatusresponsemessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.control_message = ProtoField.new("Control Message", "siac.opra.input.obi.v5.0.i.controlmessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_end_of_day_summary_message = ProtoField.new("Equity And Index End Of Day Summary Message", "siac.opra.input.obi.v5.0.i.equityandindexendofdaysummarymessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_last_sale_message = ProtoField.new("Equity And Index Last Sale Message", "siac.opra.input.obi.v5.0.i.equityandindexlastsalemessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.long_equity_and_index_quote_message = ProtoField.new("Long Equity And Index Quote Message", "siac.opra.input.obi.v5.0.i.longequityandindexquotemessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.message_count_status_inquiry_request_message = ProtoField.new("Message Count Status Inquiry Request Message", "siac.opra.input.obi.v5.0.i.messagecountstatusinquiryrequestmessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.message_count_status_response_message = ProtoField.new("Message Count Status Response Message", "siac.opra.input.obi.v5.0.i.messagecountstatusresponsemessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.short_equity_and_index_quote_message = ProtoField.new("Short Equity And Index Quote Message", "siac.opra.input.obi.v5.0.i.shortequityandindexquotemessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_bid_and_offer_message = ProtoField.new("Underlying Value Bid And Offer Message", "siac.opra.input.obi.v5.0.i.underlyingvaluebidandoffermessage", ftypes.STRING)
omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_last_sale_message = ProtoField.new("Underlying Value Last Sale Message", "siac.opra.input.obi.v5.0.i.underlyingvaluelastsalemessage", ftypes.STRING)

-- Siac Opra Input Obi 5.0.i generated fields
omi_siac_opra_input_obi_v5_0_i.fields.message_index = ProtoField.new("Message Index", "siac.opra.input.obi.v5.0.i.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Opra Input Obi 5.0.i Element Dissection Options
show.administrative_category = true
show.application_messages = true
show.block_header = true
show.block_timestamp = true
show.control_category = true
show.equity_and_index_end_of_day_summary_category = true
show.equity_and_index_last_sale_category = true
show.expiration_block = true
show.long_equity_and_index_quote_category = true
show.message = true
show.message_header = true
show.packet = true
show.sequence_number_status_category = true
show.short_equity_and_index_quote_category = true
show.underlying_value_message_category = true
show.message_index = true

-- Register Siac Opra Input Obi 5.0.i Show Options
omi_siac_opra_input_obi_v5_0_i.prefs.show_administrative_category = Pref.bool("Show Administrative Category", show.administrative_category, "Parse and add Administrative Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_block_timestamp = Pref.bool("Show Block Timestamp", show.block_timestamp, "Parse and add Block Timestamp to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_control_category = Pref.bool("Show Control Category", show.control_category, "Parse and add Control Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_equity_and_index_end_of_day_summary_category = Pref.bool("Show Equity And Index End Of Day Summary Category", show.equity_and_index_end_of_day_summary_category, "Parse and add Equity And Index End Of Day Summary Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_equity_and_index_last_sale_category = Pref.bool("Show Equity And Index Last Sale Category", show.equity_and_index_last_sale_category, "Parse and add Equity And Index Last Sale Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_expiration_block = Pref.bool("Show Expiration Block", show.expiration_block, "Parse and add Expiration Block to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_long_equity_and_index_quote_category = Pref.bool("Show Long Equity And Index Quote Category", show.long_equity_and_index_quote_category, "Parse and add Long Equity And Index Quote Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_sequence_number_status_category = Pref.bool("Show Sequence Number Status Category", show.sequence_number_status_category, "Parse and add Sequence Number Status Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_short_equity_and_index_quote_category = Pref.bool("Show Short Equity And Index Quote Category", show.short_equity_and_index_quote_category, "Parse and add Short Equity And Index Quote Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_underlying_value_message_category = Pref.bool("Show Underlying Value Message Category", show.underlying_value_message_category, "Parse and add Underlying Value Message Category to protocol tree")
omi_siac_opra_input_obi_v5_0_i.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")


-- Handle changed preferences
function omi_siac_opra_input_obi_v5_0_i.prefs_changed()

  -- Check if preferences have changed
  if show.administrative_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_administrative_category then
    show.administrative_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_administrative_category
  end
  if show.application_messages ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_application_messages then
    show.application_messages = omi_siac_opra_input_obi_v5_0_i.prefs.show_application_messages
  end
  if show.block_header ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_block_header then
    show.block_header = omi_siac_opra_input_obi_v5_0_i.prefs.show_block_header
  end
  if show.block_timestamp ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_block_timestamp then
    show.block_timestamp = omi_siac_opra_input_obi_v5_0_i.prefs.show_block_timestamp
  end
  if show.control_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_control_category then
    show.control_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_control_category
  end
  if show.equity_and_index_end_of_day_summary_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_equity_and_index_end_of_day_summary_category then
    show.equity_and_index_end_of_day_summary_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_equity_and_index_end_of_day_summary_category
  end
  if show.equity_and_index_last_sale_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_equity_and_index_last_sale_category then
    show.equity_and_index_last_sale_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_equity_and_index_last_sale_category
  end
  if show.expiration_block ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_expiration_block then
    show.expiration_block = omi_siac_opra_input_obi_v5_0_i.prefs.show_expiration_block
  end
  if show.long_equity_and_index_quote_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_long_equity_and_index_quote_category then
    show.long_equity_and_index_quote_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_long_equity_and_index_quote_category
  end
  if show.message ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_message then
    show.message = omi_siac_opra_input_obi_v5_0_i.prefs.show_message
  end
  if show.message_header ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_message_header then
    show.message_header = omi_siac_opra_input_obi_v5_0_i.prefs.show_message_header
  end
  if show.packet ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_packet then
    show.packet = omi_siac_opra_input_obi_v5_0_i.prefs.show_packet
  end
  if show.sequence_number_status_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_sequence_number_status_category then
    show.sequence_number_status_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_sequence_number_status_category
  end
  if show.short_equity_and_index_quote_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_short_equity_and_index_quote_category then
    show.short_equity_and_index_quote_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_short_equity_and_index_quote_category
  end
  if show.underlying_value_message_category ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_underlying_value_message_category then
    show.underlying_value_message_category = omi_siac_opra_input_obi_v5_0_i.prefs.show_underlying_value_message_category
  end
  if show.message_index ~= omi_siac_opra_input_obi_v5_0_i.prefs.show_message_index then
    show.message_index = omi_siac_opra_input_obi_v5_0_i.prefs.show_message_index
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
-- Siac Opra Input Obi 5.0.i Fields
-----------------------------------------------------------------------

-- Administrative Message Type
siac_opra_input_obi_v5_0_i.administrative_message_type = {}

-- Size: Administrative Message Type
siac_opra_input_obi_v5_0_i.administrative_message_type.size = 1

-- Display: Administrative Message Type
siac_opra_input_obi_v5_0_i.administrative_message_type.display = function(value)
  if value == " " then
    return "Administrative Message Type: Administrative (<whitespace>)"
  end

  return "Administrative Message Type: Unknown("..value..")"
end

-- Dissect: Administrative Message Type
siac_opra_input_obi_v5_0_i.administrative_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.administrative_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.administrative_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.administrative_message_type, range, value, display)

  return offset + length, value
end

-- Bid Index Value
siac_opra_input_obi_v5_0_i.bid_index_value = {}

-- Size: Bid Index Value
siac_opra_input_obi_v5_0_i.bid_index_value.size = 4

-- Display: Bid Index Value
siac_opra_input_obi_v5_0_i.bid_index_value.display = function(value)
  return "Bid Index Value: "..value
end

-- Dissect: Bid Index Value
siac_opra_input_obi_v5_0_i.bid_index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.bid_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.bid_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.bid_index_value, range, value, display)

  return offset + length, value
end

-- Bid Price
siac_opra_input_obi_v5_0_i.bid_price = {}

-- Size: Bid Price
siac_opra_input_obi_v5_0_i.bid_price.size = 4

-- Display: Bid Price
siac_opra_input_obi_v5_0_i.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
siac_opra_input_obi_v5_0_i.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.bid_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Price Short
siac_opra_input_obi_v5_0_i.bid_price_short = {}

-- Size: Bid Price Short
siac_opra_input_obi_v5_0_i.bid_price_short.size = 2

-- Display: Bid Price Short
siac_opra_input_obi_v5_0_i.bid_price_short.display = function(value)
  return "Bid Price Short: "..value
end

-- Dissect: Bid Price Short
siac_opra_input_obi_v5_0_i.bid_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.bid_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.bid_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.bid_price_short, range, value, display)

  return offset + length, value
end

-- Bid Size
siac_opra_input_obi_v5_0_i.bid_size = {}

-- Size: Bid Size
siac_opra_input_obi_v5_0_i.bid_size.size = 4

-- Display: Bid Size
siac_opra_input_obi_v5_0_i.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
siac_opra_input_obi_v5_0_i.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Size Short
siac_opra_input_obi_v5_0_i.bid_size_short = {}

-- Size: Bid Size Short
siac_opra_input_obi_v5_0_i.bid_size_short.size = 2

-- Display: Bid Size Short
siac_opra_input_obi_v5_0_i.bid_size_short.display = function(value)
  return "Bid Size Short: "..value
end

-- Dissect: Bid Size Short
siac_opra_input_obi_v5_0_i.bid_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.bid_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.bid_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.bid_size_short, range, value, display)

  return offset + length, value
end

-- Block Checksum
siac_opra_input_obi_v5_0_i.block_checksum = {}

-- Size: Block Checksum
siac_opra_input_obi_v5_0_i.block_checksum.size = 2

-- Display: Block Checksum
siac_opra_input_obi_v5_0_i.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_opra_input_obi_v5_0_i.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Block Pad Byte
siac_opra_input_obi_v5_0_i.block_pad_byte = {}

-- Size: Block Pad Byte
siac_opra_input_obi_v5_0_i.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_opra_input_obi_v5_0_i.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_opra_input_obi_v5_0_i.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Block Separator
siac_opra_input_obi_v5_0_i.block_separator = {}

-- Size: Block Separator
siac_opra_input_obi_v5_0_i.block_separator.size = 2

-- Display: Block Separator
siac_opra_input_obi_v5_0_i.block_separator.display = function(value)
  return "Block Separator: "..value
end

-- Dissect: Block Separator
siac_opra_input_obi_v5_0_i.block_separator.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.block_separator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.block_separator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_separator, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_opra_input_obi_v5_0_i.block_sequence_number = {}

-- Size: Block Sequence Number
siac_opra_input_obi_v5_0_i.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_opra_input_obi_v5_0_i.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_opra_input_obi_v5_0_i.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_opra_input_obi_v5_0_i.block_size = {}

-- Size: Block Size
siac_opra_input_obi_v5_0_i.block_size.size = 2

-- Display: Block Size
siac_opra_input_obi_v5_0_i.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_opra_input_obi_v5_0_i.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_size, range, value, display)

  return offset + length, value
end

-- Control Message Type
siac_opra_input_obi_v5_0_i.control_message_type = {}

-- Size: Control Message Type
siac_opra_input_obi_v5_0_i.control_message_type.size = 1

-- Display: Control Message Type
siac_opra_input_obi_v5_0_i.control_message_type.display = function(value)
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
  if value == "O" then
    return "Control Message Type: Line Integrity (O)"
  end

  return "Control Message Type: Unknown("..value..")"
end

-- Dissect: Control Message Type
siac_opra_input_obi_v5_0_i.control_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.control_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.control_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.control_message_type, range, value, display)

  return offset + length, value
end

-- Equity And Index End Of Day Summary Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type = {}

-- Size: Equity And Index End Of Day Summary Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type.size = 1

-- Display: Equity And Index End Of Day Summary Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type.display = function(value)
  if value == " " then
    return "Equity And Index End Of Day Summary Message Type: End Of Day Summary (<whitespace>)"
  end

  return "Equity And Index End Of Day Summary Message Type: Unknown("..value..")"
end

-- Dissect: Equity And Index End Of Day Summary Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_end_of_day_summary_message_type, range, value, display)

  return offset + length, value
end

-- Equity And Index Last Sale Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type = {}

-- Size: Equity And Index Last Sale Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type.size = 1

-- Display: Equity And Index Last Sale Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type.display = function(value)
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
  if value == "S" then
    return "Equity And Index Last Sale Message Type: Isoi (S)"
  end
  if value == "a" then
    return "Equity And Index Last Sale Message Type: Slan (a)"
  end
  if value == "b" then
    return "Equity And Index Last Sale Message Type: Slai (b)"
  end
  if value == "c" then
    return "Equity And Index Last Sale Message Type: Slcn (c)"
  end
  if value == "d" then
    return "Equity And Index Last Sale Message Type: Scli (d)"
  end
  if value == "e" then
    return "Equity And Index Last Sale Message Type: Slft (e)"
  end
  if value == "f" then
    return "Equity And Index Last Sale Message Type: Mlet (f)"
  end
  if value == "g" then
    return "Equity And Index Last Sale Message Type: Mlat (g)"
  end
  if value == "h" then
    return "Equity And Index Last Sale Message Type: Mlct (h)"
  end
  if value == "i" then
    return "Equity And Index Last Sale Message Type: Mlft (i)"
  end
  if value == "j" then
    return "Equity And Index Last Sale Message Type: Mesl (j)"
  end
  if value == "k" then
    return "Equity And Index Last Sale Message Type: Tlat (k)"
  end
  if value == "l" then
    return "Equity And Index Last Sale Message Type: Masl (l)"
  end
  if value == "m" then
    return "Equity And Index Last Sale Message Type: Mfsl (m)"
  end
  if value == "n" then
    return "Equity And Index Last Sale Message Type: Tlet (n)"
  end
  if value == "o" then
    return "Equity And Index Last Sale Message Type: Tlct (o)"
  end
  if value == "p" then
    return "Equity And Index Last Sale Message Type: Tlft (p)"
  end
  if value == "q" then
    return "Equity And Index Last Sale Message Type: Tesl (q)"
  end
  if value == "r" then
    return "Equity And Index Last Sale Message Type: Tasl (r)"
  end
  if value == "s" then
    return "Equity And Index Last Sale Message Type: Tfsl (s)"
  end
  if value == "t" then
    return "Equity And Index Last Sale Message Type: Cbmo (t)"
  end
  if value == "u" then
    return "Equity And Index Last Sale Message Type: Mctp (u)"
  end
  if value == "v" then
    return "Equity And Index Last Sale Message Type: Exht (v)"
  end

  return "Equity And Index Last Sale Message Type: Unknown("..value..")"
end

-- Dissect: Equity And Index Last Sale Message Type
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_last_sale_message_type, range, value, display)

  return offset + length, value
end

-- Expiration Day
siac_opra_input_obi_v5_0_i.expiration_day = {}

-- Size: Expiration Day
siac_opra_input_obi_v5_0_i.expiration_day.size = 1

-- Display: Expiration Day
siac_opra_input_obi_v5_0_i.expiration_day.display = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
siac_opra_input_obi_v5_0_i.expiration_day.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.expiration_day.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.expiration_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.expiration_day, range, value, display)

  return offset + length, value
end

-- Expiration Month
siac_opra_input_obi_v5_0_i.expiration_month = {}

-- Size: Expiration Month
siac_opra_input_obi_v5_0_i.expiration_month.size = 1

-- Display: Expiration Month
siac_opra_input_obi_v5_0_i.expiration_month.display = function(value)
  if value == "A" then
    return "Expiration Month: Call January (A)"
  end
  if value == "B" then
    return "Expiration Month: Call February (B)"
  end
  if value == "C" then
    return "Expiration Month: Call March (C)"
  end
  if value == "D" then
    return "Expiration Month: Call April (D)"
  end
  if value == "E" then
    return "Expiration Month: Call May (E)"
  end
  if value == "F" then
    return "Expiration Month: Call June (F)"
  end
  if value == "G" then
    return "Expiration Month: Call July (G)"
  end
  if value == "H" then
    return "Expiration Month: Call August (H)"
  end
  if value == "I" then
    return "Expiration Month: Call September (I)"
  end
  if value == "J" then
    return "Expiration Month: Call October (J)"
  end
  if value == "K" then
    return "Expiration Month: Call November (K)"
  end
  if value == "L" then
    return "Expiration Month: Call December (L)"
  end
  if value == "M" then
    return "Expiration Month: Put January (M)"
  end
  if value == "N" then
    return "Expiration Month: Put February (N)"
  end
  if value == "O" then
    return "Expiration Month: Put March (O)"
  end
  if value == "P" then
    return "Expiration Month: Put April (P)"
  end
  if value == "Q" then
    return "Expiration Month: Put May (Q)"
  end
  if value == "R" then
    return "Expiration Month: Put June (R)"
  end
  if value == "S" then
    return "Expiration Month: Put July (S)"
  end
  if value == "T" then
    return "Expiration Month: Put August (T)"
  end
  if value == "U" then
    return "Expiration Month: Put September (U)"
  end
  if value == "V" then
    return "Expiration Month: Put October (V)"
  end
  if value == "W" then
    return "Expiration Month: Put November (W)"
  end
  if value == "X" then
    return "Expiration Month: Put December (X)"
  end

  return "Expiration Month: Unknown("..value..")"
end

-- Dissect: Expiration Month
siac_opra_input_obi_v5_0_i.expiration_month.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.expiration_month.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.expiration_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.expiration_month, range, value, display)

  return offset + length, value
end

-- Expiration Year
siac_opra_input_obi_v5_0_i.expiration_year = {}

-- Size: Expiration Year
siac_opra_input_obi_v5_0_i.expiration_year.size = 1

-- Display: Expiration Year
siac_opra_input_obi_v5_0_i.expiration_year.display = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
siac_opra_input_obi_v5_0_i.expiration_year.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.expiration_year.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.expiration_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.expiration_year, range, value, display)

  return offset + length, value
end

-- High Price
siac_opra_input_obi_v5_0_i.high_price = {}

-- Size: High Price
siac_opra_input_obi_v5_0_i.high_price.size = 4

-- Display: High Price
siac_opra_input_obi_v5_0_i.high_price.display = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
siac_opra_input_obi_v5_0_i.high_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.high_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.high_price, range, value, display)

  return offset + length, value
end

-- Index Value
siac_opra_input_obi_v5_0_i.index_value = {}

-- Size: Index Value
siac_opra_input_obi_v5_0_i.index_value.size = 4

-- Display: Index Value
siac_opra_input_obi_v5_0_i.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
siac_opra_input_obi_v5_0_i.index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.index_value, range, value, display)

  return offset + length, value
end

-- Index Value Denominator Code
siac_opra_input_obi_v5_0_i.index_value_denominator_code = {}

-- Size: Index Value Denominator Code
siac_opra_input_obi_v5_0_i.index_value_denominator_code.size = 1

-- Display: Index Value Denominator Code
siac_opra_input_obi_v5_0_i.index_value_denominator_code.display = function(value)
  if value == "A" then
    return "Index Value Denominator Code: 10 (A)"
  end
  if value == "B" then
    return "Index Value Denominator Code: 100 (B)"
  end
  if value == "C" then
    return "Index Value Denominator Code: 1000 (C)"
  end
  if value == "D" then
    return "Index Value Denominator Code: 10000 (D)"
  end
  if value == "E" then
    return "Index Value Denominator Code: 100000 (E)"
  end
  if value == "F" then
    return "Index Value Denominator Code: 1000000 (F)"
  end
  if value == "G" then
    return "Index Value Denominator Code: 10000000 (G)"
  end
  if value == "I" then
    return "Index Value Denominator Code: No Fraction (I)"
  end

  return "Index Value Denominator Code: Unknown("..value..")"
end

-- Dissect: Index Value Denominator Code
siac_opra_input_obi_v5_0_i.index_value_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.index_value_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.index_value_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.index_value_denominator_code, range, value, display)

  return offset + length, value
end

-- Last Price
siac_opra_input_obi_v5_0_i.last_price = {}

-- Size: Last Price
siac_opra_input_obi_v5_0_i.last_price.size = 4

-- Display: Last Price
siac_opra_input_obi_v5_0_i.last_price.display = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
siac_opra_input_obi_v5_0_i.last_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.last_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.last_price, range, value, display)

  return offset + length, value
end

-- Long Equity And Index Quote Message Type
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type = {}

-- Size: Long Equity And Index Quote Message Type
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type.size = 1

-- Display: Long Equity And Index Quote Message Type
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type.display = function(value)
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
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.long_equity_and_index_quote_message_type, range, value, display)

  return offset + length, value
end

-- Low Price
siac_opra_input_obi_v5_0_i.low_price = {}

-- Size: Low Price
siac_opra_input_obi_v5_0_i.low_price.size = 4

-- Display: Low Price
siac_opra_input_obi_v5_0_i.low_price.display = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
siac_opra_input_obi_v5_0_i.low_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.low_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.low_price, range, value, display)

  return offset + length, value
end

-- Message Category
siac_opra_input_obi_v5_0_i.message_category = {}

-- Size: Message Category
siac_opra_input_obi_v5_0_i.message_category.size = 1

-- Display: Message Category
siac_opra_input_obi_v5_0_i.message_category.display = function(value)
  if value == "a" then
    return "Message Category: Equity And Index Last Sale (a)"
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
  if value == "C" then
    return "Message Category: Administrative (C)"
  end
  if value == "H" then
    return "Message Category: Control (H)"
  end
  if value == "N" then
    return "Message Category: Sequence Number Status (N)"
  end
  if value == "Y" then
    return "Message Category: Underlying Value Message (Y)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_opra_input_obi_v5_0_i.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Count
siac_opra_input_obi_v5_0_i.message_count = {}

-- Size: Message Count
siac_opra_input_obi_v5_0_i.message_count.size = 8

-- Display: Message Count
siac_opra_input_obi_v5_0_i.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
siac_opra_input_obi_v5_0_i.message_count.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.message_count.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_opra_input_obi_v5_0_i.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Data
siac_opra_input_obi_v5_0_i.message_data = {}

-- Display: Message Data
siac_opra_input_obi_v5_0_i.message_data.display = function(value)
  return "Message Data: "..value
end

-- Dissect runtime sized field: Message Data
siac_opra_input_obi_v5_0_i.message_data.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.message_data.display(value, packet, parent, size)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_data, range, value, display)

  return offset + size, value
end

-- Message Data Length
siac_opra_input_obi_v5_0_i.message_data_length = {}

-- Size: Message Data Length
siac_opra_input_obi_v5_0_i.message_data_length.size = 2

-- Display: Message Data Length
siac_opra_input_obi_v5_0_i.message_data_length.display = function(value)
  return "Message Data Length: "..value
end

-- Dissect: Message Data Length
siac_opra_input_obi_v5_0_i.message_data_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.message_data_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.message_data_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_data_length, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_opra_input_obi_v5_0_i.messages_in_block = {}

-- Size: Messages In Block
siac_opra_input_obi_v5_0_i.messages_in_block.size = 1

-- Display: Messages In Block
siac_opra_input_obi_v5_0_i.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_opra_input_obi_v5_0_i.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_opra_input_obi_v5_0_i.nanoseconds = {}

-- Size: Nanoseconds
siac_opra_input_obi_v5_0_i.nanoseconds.size = 4

-- Display: Nanoseconds
siac_opra_input_obi_v5_0_i.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_opra_input_obi_v5_0_i.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Net Change
siac_opra_input_obi_v5_0_i.net_change = {}

-- Size: Net Change
siac_opra_input_obi_v5_0_i.net_change.size = 4

-- Display: Net Change
siac_opra_input_obi_v5_0_i.net_change.display = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
siac_opra_input_obi_v5_0_i.net_change.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.net_change.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.net_change.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.net_change, range, value, display)

  return offset + length, value
end

-- Offer Index Value
siac_opra_input_obi_v5_0_i.offer_index_value = {}

-- Size: Offer Index Value
siac_opra_input_obi_v5_0_i.offer_index_value.size = 4

-- Display: Offer Index Value
siac_opra_input_obi_v5_0_i.offer_index_value.display = function(value)
  return "Offer Index Value: "..value
end

-- Dissect: Offer Index Value
siac_opra_input_obi_v5_0_i.offer_index_value.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.offer_index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.offer_index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.offer_index_value, range, value, display)

  return offset + length, value
end

-- Offer Price
siac_opra_input_obi_v5_0_i.offer_price = {}

-- Size: Offer Price
siac_opra_input_obi_v5_0_i.offer_price.size = 4

-- Display: Offer Price
siac_opra_input_obi_v5_0_i.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Dissect: Offer Price
siac_opra_input_obi_v5_0_i.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.offer_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Price Short
siac_opra_input_obi_v5_0_i.offer_price_short = {}

-- Size: Offer Price Short
siac_opra_input_obi_v5_0_i.offer_price_short.size = 2

-- Display: Offer Price Short
siac_opra_input_obi_v5_0_i.offer_price_short.display = function(value)
  return "Offer Price Short: "..value
end

-- Dissect: Offer Price Short
siac_opra_input_obi_v5_0_i.offer_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.offer_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.offer_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.offer_price_short, range, value, display)

  return offset + length, value
end

-- Offer Size
siac_opra_input_obi_v5_0_i.offer_size = {}

-- Size: Offer Size
siac_opra_input_obi_v5_0_i.offer_size.size = 4

-- Display: Offer Size
siac_opra_input_obi_v5_0_i.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
siac_opra_input_obi_v5_0_i.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Offer Size Short
siac_opra_input_obi_v5_0_i.offer_size_short = {}

-- Size: Offer Size Short
siac_opra_input_obi_v5_0_i.offer_size_short.size = 2

-- Display: Offer Size Short
siac_opra_input_obi_v5_0_i.offer_size_short.display = function(value)
  return "Offer Size Short: "..value
end

-- Dissect: Offer Size Short
siac_opra_input_obi_v5_0_i.offer_size_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.offer_size_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.offer_size_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.offer_size_short, range, value, display)

  return offset + length, value
end

-- Open Interest Volume
siac_opra_input_obi_v5_0_i.open_interest_volume = {}

-- Size: Open Interest Volume
siac_opra_input_obi_v5_0_i.open_interest_volume.size = 4

-- Display: Open Interest Volume
siac_opra_input_obi_v5_0_i.open_interest_volume.display = function(value)
  return "Open Interest Volume: "..value
end

-- Dissect: Open Interest Volume
siac_opra_input_obi_v5_0_i.open_interest_volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.open_interest_volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.open_interest_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.open_interest_volume, range, value, display)

  return offset + length, value
end

-- Open Price
siac_opra_input_obi_v5_0_i.open_price = {}

-- Size: Open Price
siac_opra_input_obi_v5_0_i.open_price.size = 4

-- Display: Open Price
siac_opra_input_obi_v5_0_i.open_price.display = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
siac_opra_input_obi_v5_0_i.open_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.open_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.open_price, range, value, display)

  return offset + length, value
end

-- Participant Id
siac_opra_input_obi_v5_0_i.participant_id = {}

-- Size: Participant Id
siac_opra_input_obi_v5_0_i.participant_id.size = 1

-- Display: Participant Id
siac_opra_input_obi_v5_0_i.participant_id.display = function(value)
  if value == "A" then
    return "Participant Id: AMEX (A)"
  end
  if value == "B" then
    return "Participant Id: BOX (B)"
  end
  if value == "C" then
    return "Participant Id: CBOE (C)"
  end
  if value == "D" then
    return "Participant Id: EMERALD (D)"
  end
  if value == "E" then
    return "Participant Id: EDGX (E)"
  end
  if value == "G" then
    return "Participant Id: MX2 (G)"
  end
  if value == "H" then
    return "Participant Id: GEMX (H)"
  end
  if value == "I" then
    return "Participant Id: ISE (I)"
  end
  if value == "J" then
    return "Participant Id: MRX (J)"
  end
  if value == "M" then
    return "Participant Id: MIAX (M)"
  end
  if value == "N" then
    return "Participant Id: NYSE (N)"
  end
  if value == "O" then
    return "Participant Id: OPRA (O)"
  end
  if value == "P" then
    return "Participant Id: PEARL (P)"
  end
  if value == "Q" then
    return "Participant Id: NASD (Q)"
  end
  if value == "S" then
    return "Participant Id: SPHR (S)"
  end
  if value == "T" then
    return "Participant Id: BX (T)"
  end
  if value == "U" then
    return "Participant Id: MEMX (U)"
  end
  if value == "V" then
    return "Participant Id: IEX (V)"
  end
  if value == "W" then
    return "Participant Id: C2 (W)"
  end
  if value == "X" then
    return "Participant Id: PHLX (X)"
  end
  if value == "Z" then
    return "Participant Id: BATS (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
siac_opra_input_obi_v5_0_i.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Participant Reference Number
siac_opra_input_obi_v5_0_i.participant_reference_number = {}

-- Size: Participant Reference Number
siac_opra_input_obi_v5_0_i.participant_reference_number.size = 4

-- Display: Participant Reference Number
siac_opra_input_obi_v5_0_i.participant_reference_number.display = function(value)
  return "Participant Reference Number: "..value
end

-- Dissect: Participant Reference Number
siac_opra_input_obi_v5_0_i.participant_reference_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.participant_reference_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.participant_reference_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.participant_reference_number, range, value, display)

  return offset + length, value
end

-- Premium Price
siac_opra_input_obi_v5_0_i.premium_price = {}

-- Size: Premium Price
siac_opra_input_obi_v5_0_i.premium_price.size = 4

-- Display: Premium Price
siac_opra_input_obi_v5_0_i.premium_price.display = function(value)
  return "Premium Price: "..value
end

-- Dissect: Premium Price
siac_opra_input_obi_v5_0_i.premium_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.premium_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.premium_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.premium_price, range, value, display)

  return offset + length, value
end

-- Premium Price Denominator Code
siac_opra_input_obi_v5_0_i.premium_price_denominator_code = {}

-- Size: Premium Price Denominator Code
siac_opra_input_obi_v5_0_i.premium_price_denominator_code.size = 1

-- Display: Premium Price Denominator Code
siac_opra_input_obi_v5_0_i.premium_price_denominator_code.display = function(value)
  if value == "A" then
    return "Premium Price Denominator Code: 10 (A)"
  end
  if value == "B" then
    return "Premium Price Denominator Code: 100 (B)"
  end
  if value == "C" then
    return "Premium Price Denominator Code: 1000 (C)"
  end
  if value == "D" then
    return "Premium Price Denominator Code: 10000 (D)"
  end
  if value == "E" then
    return "Premium Price Denominator Code: 100000 (E)"
  end
  if value == "F" then
    return "Premium Price Denominator Code: 1000000 (F)"
  end
  if value == "G" then
    return "Premium Price Denominator Code: 10000000 (G)"
  end
  if value == "I" then
    return "Premium Price Denominator Code: No Fraction (I)"
  end

  return "Premium Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Premium Price Denominator Code
siac_opra_input_obi_v5_0_i.premium_price_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.premium_price_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.premium_price_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.premium_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Reserved
siac_opra_input_obi_v5_0_i.reserved = {}

-- Size: Reserved
siac_opra_input_obi_v5_0_i.reserved.size = 1

-- Display: Reserved
siac_opra_input_obi_v5_0_i.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_opra_input_obi_v5_0_i.reserved.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.reserved, range, value, display)

  return offset + length, value
end

-- Reserved 1
siac_opra_input_obi_v5_0_i.reserved_1 = {}

-- Size: Reserved 1
siac_opra_input_obi_v5_0_i.reserved_1.size = 1

-- Display: Reserved 1
siac_opra_input_obi_v5_0_i.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
siac_opra_input_obi_v5_0_i.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.reserved_1.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 4
siac_opra_input_obi_v5_0_i.reserved_4 = {}

-- Size: Reserved 4
siac_opra_input_obi_v5_0_i.reserved_4.size = 4

-- Display: Reserved 4
siac_opra_input_obi_v5_0_i.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
siac_opra_input_obi_v5_0_i.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.reserved_4.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 8
siac_opra_input_obi_v5_0_i.reserved_8 = {}

-- Size: Reserved 8
siac_opra_input_obi_v5_0_i.reserved_8.size = 8

-- Display: Reserved 8
siac_opra_input_obi_v5_0_i.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
siac_opra_input_obi_v5_0_i.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.reserved_8.size
  local range = buffer(offset, length)
  local value = range:uint64()
  local display = siac_opra_input_obi_v5_0_i.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Seconds
siac_opra_input_obi_v5_0_i.seconds = {}

-- Size: Seconds
siac_opra_input_obi_v5_0_i.seconds.size = 4

-- Display: Seconds
siac_opra_input_obi_v5_0_i.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_opra_input_obi_v5_0_i.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_opra_input_obi_v5_0_i.security_symbol = {}

-- Size: Security Symbol
siac_opra_input_obi_v5_0_i.security_symbol.size = 5

-- Display: Security Symbol
siac_opra_input_obi_v5_0_i.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_opra_input_obi_v5_0_i.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.security_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Security Symbol Short
siac_opra_input_obi_v5_0_i.security_symbol_short = {}

-- Size: Security Symbol Short
siac_opra_input_obi_v5_0_i.security_symbol_short.size = 4

-- Display: Security Symbol Short
siac_opra_input_obi_v5_0_i.security_symbol_short.display = function(value)
  return "Security Symbol Short: "..value
end

-- Dissect: Security Symbol Short
siac_opra_input_obi_v5_0_i.security_symbol_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.security_symbol_short.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.security_symbol_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.security_symbol_short, range, value, display)

  return offset + length, value
end

-- Sequence Number Status Message Type
siac_opra_input_obi_v5_0_i.sequence_number_status_message_type = {}

-- Size: Sequence Number Status Message Type
siac_opra_input_obi_v5_0_i.sequence_number_status_message_type.size = 1

-- Display: Sequence Number Status Message Type
siac_opra_input_obi_v5_0_i.sequence_number_status_message_type.display = function(value)
  return "Sequence Number Status Message Type: "..value
end

-- Dissect: Sequence Number Status Message Type
siac_opra_input_obi_v5_0_i.sequence_number_status_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.sequence_number_status_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.sequence_number_status_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.sequence_number_status_message_type, range, value, display)

  return offset + length, value
end

-- Session Indicator
siac_opra_input_obi_v5_0_i.session_indicator = {}

-- Size: Session Indicator
siac_opra_input_obi_v5_0_i.session_indicator.size = 1

-- Display: Session Indicator
siac_opra_input_obi_v5_0_i.session_indicator.display = function(value)
  if value == 0 then
    return "Session Indicator: Regular (0)"
  end
  if value == 1 then
    return "Session Indicator: Gth Monday (1)"
  end
  if value == 2 then
    return "Session Indicator: Gth Tuesday (2)"
  end
  if value == 3 then
    return "Session Indicator: Gth Wednesday (3)"
  end
  if value == 4 then
    return "Session Indicator: Gth Thursday (4)"
  end
  if value == 5 then
    return "Session Indicator: Gth Friday (5)"
  end

  return "Session Indicator: Unknown("..value..")"
end

-- Dissect: Session Indicator
siac_opra_input_obi_v5_0_i.session_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.session_indicator.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.session_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.session_indicator, range, value, display)

  return offset + length, value
end

-- Short Equity And Index Quote Message Type
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type = {}

-- Size: Short Equity And Index Quote Message Type
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type.size = 1

-- Display: Short Equity And Index Quote Message Type
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type.display = function(value)
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
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.short_equity_and_index_quote_message_type, range, value, display)

  return offset + length, value
end

-- Strike Price
siac_opra_input_obi_v5_0_i.strike_price = {}

-- Size: Strike Price
siac_opra_input_obi_v5_0_i.strike_price.size = 4

-- Display: Strike Price
siac_opra_input_obi_v5_0_i.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Dissect: Strike Price
siac_opra_input_obi_v5_0_i.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.strike_price.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = siac_opra_input_obi_v5_0_i.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strike Price Denominator Code
siac_opra_input_obi_v5_0_i.strike_price_denominator_code = {}

-- Size: Strike Price Denominator Code
siac_opra_input_obi_v5_0_i.strike_price_denominator_code.size = 1

-- Display: Strike Price Denominator Code
siac_opra_input_obi_v5_0_i.strike_price_denominator_code.display = function(value)
  if value == "A" then
    return "Strike Price Denominator Code: 10 (A)"
  end
  if value == "B" then
    return "Strike Price Denominator Code: 100 (B)"
  end
  if value == "C" then
    return "Strike Price Denominator Code: 1000 (C)"
  end
  if value == "D" then
    return "Strike Price Denominator Code: 10000 (D)"
  end
  if value == "E" then
    return "Strike Price Denominator Code: 100000 (E)"
  end
  if value == "I" then
    return "Strike Price Denominator Code: No Fraction (I)"
  end

  return "Strike Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Strike Price Denominator Code
siac_opra_input_obi_v5_0_i.strike_price_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.strike_price_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.strike_price_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.strike_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Strike Price Short
siac_opra_input_obi_v5_0_i.strike_price_short = {}

-- Size: Strike Price Short
siac_opra_input_obi_v5_0_i.strike_price_short.size = 2

-- Display: Strike Price Short
siac_opra_input_obi_v5_0_i.strike_price_short.display = function(value)
  return "Strike Price Short: "..value
end

-- Dissect: Strike Price Short
siac_opra_input_obi_v5_0_i.strike_price_short.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.strike_price_short.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.strike_price_short.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.strike_price_short, range, value, display)

  return offset + length, value
end

-- Trade Identifier
siac_opra_input_obi_v5_0_i.trade_identifier = {}

-- Size: Trade Identifier
siac_opra_input_obi_v5_0_i.trade_identifier.size = 4

-- Display: Trade Identifier
siac_opra_input_obi_v5_0_i.trade_identifier.display = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
siac_opra_input_obi_v5_0_i.trade_identifier.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.trade_identifier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.trade_identifier.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.trade_identifier, range, value, display)

  return offset + length, value
end

-- Underlying Price
siac_opra_input_obi_v5_0_i.underlying_price = {}

-- Size: Underlying Price
siac_opra_input_obi_v5_0_i.underlying_price.size = 8

-- Display: Underlying Price
siac_opra_input_obi_v5_0_i.underlying_price.display = function(value)
  return "Underlying Price: "..value
end

-- Dissect: Underlying Price
siac_opra_input_obi_v5_0_i.underlying_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.underlying_price.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_opra_input_obi_v5_0_i.underlying_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.underlying_price, range, value, display)

  return offset + length, value
end

-- Underlying Price Denominator Code
siac_opra_input_obi_v5_0_i.underlying_price_denominator_code = {}

-- Size: Underlying Price Denominator Code
siac_opra_input_obi_v5_0_i.underlying_price_denominator_code.size = 1

-- Display: Underlying Price Denominator Code
siac_opra_input_obi_v5_0_i.underlying_price_denominator_code.display = function(value)
  if value == "A" then
    return "Underlying Price Denominator Code: 10 (A)"
  end
  if value == "B" then
    return "Underlying Price Denominator Code: 100 (B)"
  end
  if value == "C" then
    return "Underlying Price Denominator Code: 1000 (C)"
  end
  if value == "D" then
    return "Underlying Price Denominator Code: 10000 (D)"
  end
  if value == "E" then
    return "Underlying Price Denominator Code: 100000 (E)"
  end
  if value == "F" then
    return "Underlying Price Denominator Code: 1000000 (F)"
  end
  if value == "G" then
    return "Underlying Price Denominator Code: 10000000 (G)"
  end
  if value == "H" then
    return "Underlying Price Denominator Code: 100000000 (H)"
  end
  if value == "I" then
    return "Underlying Price Denominator Code: No Fraction (I)"
  end

  return "Underlying Price Denominator Code: Unknown("..value..")"
end

-- Dissect: Underlying Price Denominator Code
siac_opra_input_obi_v5_0_i.underlying_price_denominator_code.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.underlying_price_denominator_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.underlying_price_denominator_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.underlying_price_denominator_code, range, value, display)

  return offset + length, value
end

-- Underlying Value Message Message Type
siac_opra_input_obi_v5_0_i.underlying_value_message_message_type = {}

-- Size: Underlying Value Message Message Type
siac_opra_input_obi_v5_0_i.underlying_value_message_message_type.size = 1

-- Display: Underlying Value Message Message Type
siac_opra_input_obi_v5_0_i.underlying_value_message_message_type.display = function(value)
  return "Underlying Value Message Message Type: "..value
end

-- Dissect: Underlying Value Message Message Type
siac_opra_input_obi_v5_0_i.underlying_value_message_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.underlying_value_message_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_opra_input_obi_v5_0_i.underlying_value_message_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_message_message_type, range, value, display)

  return offset + length, value
end

-- Version
siac_opra_input_obi_v5_0_i.version = {}

-- Size: Version
siac_opra_input_obi_v5_0_i.version.size = 1

-- Display: Version
siac_opra_input_obi_v5_0_i.version.display = function(value)
  if value == 4 then
    return "Version: Opra 4"
  end

  return "Version: Unknown("..value..")"
end

-- Dissect: Version
siac_opra_input_obi_v5_0_i.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.version, range, value, display)

  return offset + length, value
end

-- Volume
siac_opra_input_obi_v5_0_i.volume = {}

-- Size: Volume
siac_opra_input_obi_v5_0_i.volume.size = 4

-- Display: Volume
siac_opra_input_obi_v5_0_i.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
siac_opra_input_obi_v5_0_i.volume.dissect = function(buffer, offset, packet, parent)
  local length = siac_opra_input_obi_v5_0_i.volume.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_opra_input_obi_v5_0_i.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_opra_input_obi_v5_0_i.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Siac Opra Input Obi 5.0.i
-----------------------------------------------------------------------

-- Underlying Value Bid And Offer Message
siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message = {}

-- Size: Underlying Value Bid And Offer Message
siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.security_symbol.size + 
  siac_opra_input_obi_v5_0_i.reserved_1.size + 
  siac_opra_input_obi_v5_0_i.index_value_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.bid_index_value.size + 
  siac_opra_input_obi_v5_0_i.offer_index_value.size

-- Display: Underlying Value Bid And Offer Message
siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Value Bid And Offer Message
siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_input_obi_v5_0_i.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_input_obi_v5_0_i.reserved_1.dissect(buffer, index, packet, parent)

  -- Index Value Denominator Code: Alphanumeric
  index, index_value_denominator_code = siac_opra_input_obi_v5_0_i.index_value_denominator_code.dissect(buffer, index, packet, parent)

  -- Bid Index Value: signed integer
  index, bid_index_value = siac_opra_input_obi_v5_0_i.bid_index_value.dissect(buffer, index, packet, parent)

  -- Offer Index Value: signed integer
  index, offer_index_value = siac_opra_input_obi_v5_0_i.offer_index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Bid And Offer Message
siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_bid_and_offer_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Value Last Sale Message
siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message = {}

-- Size: Underlying Value Last Sale Message
siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.security_symbol.size + 
  siac_opra_input_obi_v5_0_i.reserved_1.size + 
  siac_opra_input_obi_v5_0_i.index_value_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.index_value.size + 
  siac_opra_input_obi_v5_0_i.reserved_4.size

-- Display: Underlying Value Last Sale Message
siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Value Last Sale Message
siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_input_obi_v5_0_i.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_input_obi_v5_0_i.reserved_1.dissect(buffer, index, packet, parent)

  -- Index Value Denominator Code: Alphanumeric
  index, index_value_denominator_code = siac_opra_input_obi_v5_0_i.index_value_denominator_code.dissect(buffer, index, packet, parent)

  -- Index Value: signed integer
  index, index_value = siac_opra_input_obi_v5_0_i.index_value.dissect(buffer, index, packet, parent)

  -- Reserved 4: unsigned integer
  index, reserved_4 = siac_opra_input_obi_v5_0_i.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Last Sale Message
siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_last_sale_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Underlying Value Message Message Payload
siac_opra_input_obi_v5_0_i.underlying_value_message_message_payload = {}

-- Dissect: Underlying Value Message Message Payload
siac_opra_input_obi_v5_0_i.underlying_value_message_message_payload.dissect = function(buffer, offset, packet, parent, underlying_value_message_message_type)
  -- Dissect Underlying Value Last Sale Message
  if underlying_value_message_message_type == " " then
    return siac_opra_input_obi_v5_0_i.underlying_value_last_sale_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Bid And Offer Message
  if underlying_value_message_message_type == "I" then
    return siac_opra_input_obi_v5_0_i.underlying_value_bid_and_offer_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Underlying Value Message Category
siac_opra_input_obi_v5_0_i.underlying_value_message_category = {}

-- Calculate size of: Underlying Value Message Category
siac_opra_input_obi_v5_0_i.underlying_value_message_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.underlying_value_message_message_type.size

  -- Calculate runtime size of Underlying Value Message Message Payload field
  local underlying_value_message_message_payload_offset = offset + index
  local underlying_value_message_message_payload_type = buffer(underlying_value_message_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.underlying_value_message_message_payload.size(buffer, underlying_value_message_message_payload_offset, underlying_value_message_message_payload_type)

  return index
end

-- Display: Underlying Value Message Category
siac_opra_input_obi_v5_0_i.underlying_value_message_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Underlying Value Message Category
siac_opra_input_obi_v5_0_i.underlying_value_message_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Underlying Value Message Message Type: 1 Byte Ascii String
  index, underlying_value_message_message_type = siac_opra_input_obi_v5_0_i.underlying_value_message_message_type.dissect(buffer, index, packet, parent)

  -- Underlying Value Message Message Payload: Runtime Type with 2 branches
  index = siac_opra_input_obi_v5_0_i.underlying_value_message_message_payload.dissect(buffer, index, packet, parent, underlying_value_message_message_type)

  return index
end

-- Dissect: Underlying Value Message Category
siac_opra_input_obi_v5_0_i.underlying_value_message_category.dissect = function(buffer, offset, packet, parent)
  if show.underlying_value_message_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.underlying_value_message_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.underlying_value_message_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.underlying_value_message_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.underlying_value_message_category.fields(buffer, offset, packet, parent)
  end
end

-- Message Count Status Response Message
siac_opra_input_obi_v5_0_i.message_count_status_response_message = {}

-- Size: Message Count Status Response Message
siac_opra_input_obi_v5_0_i.message_count_status_response_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.message_count.size

-- Display: Message Count Status Response Message
siac_opra_input_obi_v5_0_i.message_count_status_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Count Status Response Message
siac_opra_input_obi_v5_0_i.message_count_status_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message Count: unsigned integer
  index, message_count = siac_opra_input_obi_v5_0_i.message_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Count Status Response Message
siac_opra_input_obi_v5_0_i.message_count_status_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_count_status_response_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.message_count_status_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.message_count_status_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.message_count_status_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Count Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message = {}

-- Size: Message Count Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.reserved_8.size

-- Display: Message Count Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Count Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Reserved 8: unsigned integer
  index, reserved_8 = siac_opra_input_obi_v5_0_i.reserved_8.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Count Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_count_status_inquiry_request_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Block Sequence Number Status Response Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message = {}

-- Size: Block Sequence Number Status Response Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.block_sequence_number.size + 
  siac_opra_input_obi_v5_0_i.reserved_4.size

-- Display: Block Sequence Number Status Response Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Sequence Number Status Response Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: unsigned integer
  index, block_sequence_number = siac_opra_input_obi_v5_0_i.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Reserved 4: unsigned integer
  index, reserved_4 = siac_opra_input_obi_v5_0_i.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Sequence Number Status Response Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_sequence_number_status_response_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Block Sequence Number Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message = {}

-- Size: Block Sequence Number Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.reserved_4.size + 
  siac_opra_input_obi_v5_0_i.reserved_4.size

-- Display: Block Sequence Number Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Sequence Number Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Reserved 4: unsigned integer
  index, reserved_4 = siac_opra_input_obi_v5_0_i.reserved_4.dissect(buffer, index, packet, parent)

  -- Reserved 4: unsigned integer
  index, reserved_4 = siac_opra_input_obi_v5_0_i.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Sequence Number Status Inquiry Request Message
siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_sequence_number_status_inquiry_request_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequence Number Status Message Payload
siac_opra_input_obi_v5_0_i.sequence_number_status_message_payload = {}

-- Dissect: Sequence Number Status Message Payload
siac_opra_input_obi_v5_0_i.sequence_number_status_message_payload.dissect = function(buffer, offset, packet, parent, sequence_number_status_message_type)
  -- Dissect Block Sequence Number Status Inquiry Request Message
  if sequence_number_status_message_type == "L" then
    return siac_opra_input_obi_v5_0_i.block_sequence_number_status_inquiry_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Block Sequence Number Status Response Message
  if sequence_number_status_message_type == "M" then
    return siac_opra_input_obi_v5_0_i.block_sequence_number_status_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Count Status Inquiry Request Message
  if sequence_number_status_message_type == "R" then
    return siac_opra_input_obi_v5_0_i.message_count_status_inquiry_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Message Count Status Response Message
  if sequence_number_status_message_type == "S" then
    return siac_opra_input_obi_v5_0_i.message_count_status_response_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Sequence Number Status Category
siac_opra_input_obi_v5_0_i.sequence_number_status_category = {}

-- Calculate size of: Sequence Number Status Category
siac_opra_input_obi_v5_0_i.sequence_number_status_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.sequence_number_status_message_type.size

  -- Calculate runtime size of Sequence Number Status Message Payload field
  local sequence_number_status_message_payload_offset = offset + index
  local sequence_number_status_message_payload_type = buffer(sequence_number_status_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.sequence_number_status_message_payload.size(buffer, sequence_number_status_message_payload_offset, sequence_number_status_message_payload_type)

  return index
end

-- Display: Sequence Number Status Category
siac_opra_input_obi_v5_0_i.sequence_number_status_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sequence Number Status Category
siac_opra_input_obi_v5_0_i.sequence_number_status_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number Status Message Type: 1 Byte Ascii String
  index, sequence_number_status_message_type = siac_opra_input_obi_v5_0_i.sequence_number_status_message_type.dissect(buffer, index, packet, parent)

  -- Sequence Number Status Message Payload: Runtime Type with 4 branches
  index = siac_opra_input_obi_v5_0_i.sequence_number_status_message_payload.dissect(buffer, index, packet, parent, sequence_number_status_message_type)

  return index
end

-- Dissect: Sequence Number Status Category
siac_opra_input_obi_v5_0_i.sequence_number_status_category.dissect = function(buffer, offset, packet, parent)
  if show.sequence_number_status_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.sequence_number_status_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.sequence_number_status_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.sequence_number_status_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.sequence_number_status_category.fields(buffer, offset, packet, parent)
  end
end

-- Control Message
siac_opra_input_obi_v5_0_i.control_message = {}

-- Size: Control Message
siac_opra_input_obi_v5_0_i.control_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size

-- Display: Control Message
siac_opra_input_obi_v5_0_i.control_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message
siac_opra_input_obi_v5_0_i.control_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message
siac_opra_input_obi_v5_0_i.control_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.control_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.control_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.control_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.control_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message Payload
siac_opra_input_obi_v5_0_i.control_message_payload = {}

-- Dissect: Control Message Payload
siac_opra_input_obi_v5_0_i.control_message_payload.dissect = function(buffer, offset, packet, parent, control_message_type)
  -- Dissect Control Message
  if control_message_type == "C" or control_message_type == "E" or control_message_type == "F" or control_message_type == "J" or control_message_type == "O" then
    return siac_opra_input_obi_v5_0_i.control_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Control Category
siac_opra_input_obi_v5_0_i.control_category = {}

-- Calculate size of: Control Category
siac_opra_input_obi_v5_0_i.control_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.control_message_type.size

  -- Calculate runtime size of Control Message Payload field
  local control_message_payload_offset = offset + index
  local control_message_payload_type = buffer(control_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.control_message_payload.size(buffer, control_message_payload_offset, control_message_payload_type)

  return index
end

-- Display: Control Category
siac_opra_input_obi_v5_0_i.control_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Category
siac_opra_input_obi_v5_0_i.control_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Control Message Type: 1 Byte Ascii String Enum with 5 values
  index, control_message_type = siac_opra_input_obi_v5_0_i.control_message_type.dissect(buffer, index, packet, parent)

  -- Control Message Payload: Runtime Type with 1 branches
  index = siac_opra_input_obi_v5_0_i.control_message_payload.dissect(buffer, index, packet, parent, control_message_type)

  return index
end

-- Dissect: Control Category
siac_opra_input_obi_v5_0_i.control_category.dissect = function(buffer, offset, packet, parent)
  if show.control_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.control_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.control_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.control_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.control_category.fields(buffer, offset, packet, parent)
  end
end

-- Administrative Message
siac_opra_input_obi_v5_0_i.administrative_message = {}

-- Read runtime size of: Administrative Message
siac_opra_input_obi_v5_0_i.administrative_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Data Length
  local message_data_length = buffer(offset + 5, 2):uint()

  return message_data_length + 8
end

-- Display: Administrative Message
siac_opra_input_obi_v5_0_i.administrative_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Message
siac_opra_input_obi_v5_0_i.administrative_message.fields = function(buffer, offset, packet, parent, size_of_administrative_message)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Message Data Length: unsigned integer
  index, message_data_length = siac_opra_input_obi_v5_0_i.message_data_length.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Message Data
  local message_data = nil

  local message_data_exists = message_data_length > 0

  if message_data_exists then

    -- Runtime Size Of: Message Data
    index, message_data = siac_opra_input_obi_v5_0_i.message_data.dissect(buffer, index, packet, parent, message_data_length)
  end

  return index
end

-- Dissect: Administrative Message
siac_opra_input_obi_v5_0_i.administrative_message.dissect = function(buffer, offset, packet, parent, size_of_administrative_message)
  local size_of_administrative_message = siac_opra_input_obi_v5_0_i.administrative_message.size(buffer, offset)
  local index = offset + size_of_administrative_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.administrative_message, buffer(offset, 0))
    local current = siac_opra_input_obi_v5_0_i.administrative_message.fields(buffer, offset, packet, parent, size_of_administrative_message)
    parent:set_len(size_of_administrative_message)
    local display = siac_opra_input_obi_v5_0_i.administrative_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    siac_opra_input_obi_v5_0_i.administrative_message.fields(buffer, offset, packet, parent, size_of_administrative_message)

    return index
  end
end

-- Administrative Message Payload
siac_opra_input_obi_v5_0_i.administrative_message_payload = {}

-- Dissect: Administrative Message Payload
siac_opra_input_obi_v5_0_i.administrative_message_payload.dissect = function(buffer, offset, packet, parent, administrative_message_type)
  -- Dissect Administrative Message
  if administrative_message_type == " " then
    return siac_opra_input_obi_v5_0_i.administrative_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Administrative Category
siac_opra_input_obi_v5_0_i.administrative_category = {}

-- Calculate size of: Administrative Category
siac_opra_input_obi_v5_0_i.administrative_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.administrative_message_type.size

  -- Calculate runtime size of Administrative Message Payload field
  local administrative_message_payload_offset = offset + index
  local administrative_message_payload_type = buffer(administrative_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.administrative_message_payload.size(buffer, administrative_message_payload_offset, administrative_message_payload_type)

  return index
end

-- Display: Administrative Category
siac_opra_input_obi_v5_0_i.administrative_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Administrative Category
siac_opra_input_obi_v5_0_i.administrative_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type: 1 Byte Ascii String Enum with 1 values
  index, administrative_message_type = siac_opra_input_obi_v5_0_i.administrative_message_type.dissect(buffer, index, packet, parent)

  -- Administrative Message Payload: Runtime Type with 1 branches
  index = siac_opra_input_obi_v5_0_i.administrative_message_payload.dissect(buffer, index, packet, parent, administrative_message_type)

  return index
end

-- Dissect: Administrative Category
siac_opra_input_obi_v5_0_i.administrative_category.dissect = function(buffer, offset, packet, parent)
  if show.administrative_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.administrative_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.administrative_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.administrative_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.administrative_category.fields(buffer, offset, packet, parent)
  end
end

-- Expiration Block
siac_opra_input_obi_v5_0_i.expiration_block = {}

-- Size: Expiration Block
siac_opra_input_obi_v5_0_i.expiration_block.size =
  siac_opra_input_obi_v5_0_i.expiration_month.size + 
  siac_opra_input_obi_v5_0_i.expiration_day.size + 
  siac_opra_input_obi_v5_0_i.expiration_year.size

-- Display: Expiration Block
siac_opra_input_obi_v5_0_i.expiration_block.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Expiration Block
siac_opra_input_obi_v5_0_i.expiration_block.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Expiration Month: Alphanumeric
  index, expiration_month = siac_opra_input_obi_v5_0_i.expiration_month.dissect(buffer, index, packet, parent)

  -- Expiration Day: unsigned integer
  index, expiration_day = siac_opra_input_obi_v5_0_i.expiration_day.dissect(buffer, index, packet, parent)

  -- Expiration Year: unsigned integer
  index, expiration_year = siac_opra_input_obi_v5_0_i.expiration_year.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Expiration Block
siac_opra_input_obi_v5_0_i.expiration_block.dissect = function(buffer, offset, packet, parent)
  if show.expiration_block then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.expiration_block, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.expiration_block.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.expiration_block.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.expiration_block.fields(buffer, offset, packet, parent)
  end
end

-- Short Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message = {}

-- Size: Short Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.security_symbol_short.size + 
  siac_opra_input_obi_v5_0_i.expiration_block.size + 
  siac_opra_input_obi_v5_0_i.strike_price_short.size + 
  siac_opra_input_obi_v5_0_i.bid_price_short.size + 
  siac_opra_input_obi_v5_0_i.bid_size_short.size + 
  siac_opra_input_obi_v5_0_i.offer_price_short.size + 
  siac_opra_input_obi_v5_0_i.offer_size_short.size

-- Display: Short Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol Short: Alphanumeric
  index, security_symbol_short = siac_opra_input_obi_v5_0_i.security_symbol_short.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_input_obi_v5_0_i.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Short: unsigned integer
  index, strike_price_short = siac_opra_input_obi_v5_0_i.strike_price_short.dissect(buffer, index, packet, parent)

  -- Bid Price Short: unsigned integer
  index, bid_price_short = siac_opra_input_obi_v5_0_i.bid_price_short.dissect(buffer, index, packet, parent)

  -- Bid Size Short: unsigned integer
  index, bid_size_short = siac_opra_input_obi_v5_0_i.bid_size_short.dissect(buffer, index, packet, parent)

  -- Offer Price Short: unsigned integer
  index, offer_price_short = siac_opra_input_obi_v5_0_i.offer_price_short.dissect(buffer, index, packet, parent)

  -- Offer Size Short: unsigned integer
  index, offer_size_short = siac_opra_input_obi_v5_0_i.offer_size_short.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.short_equity_and_index_quote_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Equity And Index Quote Message Payload
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_payload = {}

-- Dissect: Short Equity And Index Quote Message Payload
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_payload.dissect = function(buffer, offset, packet, parent, short_equity_and_index_quote_message_type)
  -- Dissect Short Equity And Index Quote Message
  if short_equity_and_index_quote_message_type == " " or short_equity_and_index_quote_message_type == "F" or short_equity_and_index_quote_message_type == "I" or short_equity_and_index_quote_message_type == "R" or short_equity_and_index_quote_message_type == "T" or short_equity_and_index_quote_message_type == "A" or short_equity_and_index_quote_message_type == "B" or short_equity_and_index_quote_message_type == "O" or short_equity_and_index_quote_message_type == "C" or short_equity_and_index_quote_message_type == "X" or short_equity_and_index_quote_message_type == "Y" then
    return siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Short Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category = {}

-- Calculate size of: Short Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type.size

  -- Calculate runtime size of Short Equity And Index Quote Message Payload field
  local short_equity_and_index_quote_message_payload_offset = offset + index
  local short_equity_and_index_quote_message_payload_type = buffer(short_equity_and_index_quote_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_payload.size(buffer, short_equity_and_index_quote_message_payload_offset, short_equity_and_index_quote_message_payload_type)

  return index
end

-- Display: Short Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Equity And Index Quote Message Type: 1 Byte Ascii String Enum with 11 values
  index, short_equity_and_index_quote_message_type = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_type.dissect(buffer, index, packet, parent)

  -- Short Equity And Index Quote Message Payload: Runtime Type with 1 branches
  index = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_message_payload.dissect(buffer, index, packet, parent, short_equity_and_index_quote_message_type)

  return index
end

-- Dissect: Short Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.dissect = function(buffer, offset, packet, parent)
  if show.short_equity_and_index_quote_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.short_equity_and_index_quote_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
  end
end

-- Long Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message = {}

-- Size: Long Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.security_symbol.size + 
  siac_opra_input_obi_v5_0_i.reserved_1.size + 
  siac_opra_input_obi_v5_0_i.expiration_block.size + 
  siac_opra_input_obi_v5_0_i.strike_price_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.strike_price.size + 
  siac_opra_input_obi_v5_0_i.premium_price_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.bid_price.size + 
  siac_opra_input_obi_v5_0_i.bid_size.size + 
  siac_opra_input_obi_v5_0_i.offer_price.size + 
  siac_opra_input_obi_v5_0_i.offer_size.size

-- Display: Long Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_input_obi_v5_0_i.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_input_obi_v5_0_i.reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_input_obi_v5_0_i.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Denominator Code: Alphanumeric
  index, strike_price_denominator_code = siac_opra_input_obi_v5_0_i.strike_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Strike Price: signed integer
  index, strike_price = siac_opra_input_obi_v5_0_i.strike_price.dissect(buffer, index, packet, parent)

  -- Premium Price Denominator Code: Alphanumeric
  index, premium_price_denominator_code = siac_opra_input_obi_v5_0_i.premium_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Bid Price: signed integer
  index, bid_price = siac_opra_input_obi_v5_0_i.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: unsigned integer
  index, bid_size = siac_opra_input_obi_v5_0_i.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: signed integer
  index, offer_price = siac_opra_input_obi_v5_0_i.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: unsigned integer
  index, offer_size = siac_opra_input_obi_v5_0_i.offer_size.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Equity And Index Quote Message
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.long_equity_and_index_quote_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Long Equity And Index Quote Message Payload
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_payload = {}

-- Dissect: Long Equity And Index Quote Message Payload
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_payload.dissect = function(buffer, offset, packet, parent, long_equity_and_index_quote_message_type)
  -- Dissect Long Equity And Index Quote Message
  if long_equity_and_index_quote_message_type == " " or long_equity_and_index_quote_message_type == "F" or long_equity_and_index_quote_message_type == "I" or long_equity_and_index_quote_message_type == "R" or long_equity_and_index_quote_message_type == "T" or long_equity_and_index_quote_message_type == "A" or long_equity_and_index_quote_message_type == "B" or long_equity_and_index_quote_message_type == "O" or long_equity_and_index_quote_message_type == "C" or long_equity_and_index_quote_message_type == "X" or long_equity_and_index_quote_message_type == "Y" then
    return siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Long Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category = {}

-- Calculate size of: Long Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type.size

  -- Calculate runtime size of Long Equity And Index Quote Message Payload field
  local long_equity_and_index_quote_message_payload_offset = offset + index
  local long_equity_and_index_quote_message_payload_type = buffer(long_equity_and_index_quote_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_payload.size(buffer, long_equity_and_index_quote_message_payload_offset, long_equity_and_index_quote_message_payload_type)

  return index
end

-- Display: Long Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Long Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Equity And Index Quote Message Type: 1 Byte Ascii String Enum with 11 values
  index, long_equity_and_index_quote_message_type = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_type.dissect(buffer, index, packet, parent)

  -- Long Equity And Index Quote Message Payload: Runtime Type with 1 branches
  index = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_message_payload.dissect(buffer, index, packet, parent, long_equity_and_index_quote_message_type)

  return index
end

-- Dissect: Long Equity And Index Quote Category
siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.dissect = function(buffer, offset, packet, parent)
  if show.long_equity_and_index_quote_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.long_equity_and_index_quote_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index End Of Day Summary Message
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message = {}

-- Size: Equity And Index End Of Day Summary Message
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.security_symbol.size + 
  siac_opra_input_obi_v5_0_i.reserved_1.size + 
  siac_opra_input_obi_v5_0_i.expiration_block.size + 
  siac_opra_input_obi_v5_0_i.strike_price_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.strike_price.size + 
  siac_opra_input_obi_v5_0_i.volume.size + 
  siac_opra_input_obi_v5_0_i.open_interest_volume.size + 
  siac_opra_input_obi_v5_0_i.premium_price_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.open_price.size + 
  siac_opra_input_obi_v5_0_i.high_price.size + 
  siac_opra_input_obi_v5_0_i.low_price.size + 
  siac_opra_input_obi_v5_0_i.last_price.size + 
  siac_opra_input_obi_v5_0_i.net_change.size + 
  siac_opra_input_obi_v5_0_i.underlying_price_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.underlying_price.size + 
  siac_opra_input_obi_v5_0_i.bid_price.size + 
  siac_opra_input_obi_v5_0_i.offer_price.size

-- Display: Equity And Index End Of Day Summary Message
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index End Of Day Summary Message
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_input_obi_v5_0_i.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_input_obi_v5_0_i.reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_input_obi_v5_0_i.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Denominator Code: Alphanumeric
  index, strike_price_denominator_code = siac_opra_input_obi_v5_0_i.strike_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Strike Price: signed integer
  index, strike_price = siac_opra_input_obi_v5_0_i.strike_price.dissect(buffer, index, packet, parent)

  -- Volume: unsigned integer
  index, volume = siac_opra_input_obi_v5_0_i.volume.dissect(buffer, index, packet, parent)

  -- Open Interest Volume: unsigned integer
  index, open_interest_volume = siac_opra_input_obi_v5_0_i.open_interest_volume.dissect(buffer, index, packet, parent)

  -- Premium Price Denominator Code: Alphanumeric
  index, premium_price_denominator_code = siac_opra_input_obi_v5_0_i.premium_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Open Price: signed integer
  index, open_price = siac_opra_input_obi_v5_0_i.open_price.dissect(buffer, index, packet, parent)

  -- High Price: signed integer
  index, high_price = siac_opra_input_obi_v5_0_i.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: signed integer
  index, low_price = siac_opra_input_obi_v5_0_i.low_price.dissect(buffer, index, packet, parent)

  -- Last Price: signed integer
  index, last_price = siac_opra_input_obi_v5_0_i.last_price.dissect(buffer, index, packet, parent)

  -- Net Change: signed integer
  index, net_change = siac_opra_input_obi_v5_0_i.net_change.dissect(buffer, index, packet, parent)

  -- Underlying Price Denominator Code: Alphanumeric
  index, underlying_price_denominator_code = siac_opra_input_obi_v5_0_i.underlying_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Underlying Price: signed integer
  index, underlying_price = siac_opra_input_obi_v5_0_i.underlying_price.dissect(buffer, index, packet, parent)

  -- Bid Price: signed integer
  index, bid_price = siac_opra_input_obi_v5_0_i.bid_price.dissect(buffer, index, packet, parent)

  -- Offer Price: signed integer
  index, offer_price = siac_opra_input_obi_v5_0_i.offer_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index End Of Day Summary Message
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_end_of_day_summary_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index End Of Day Summary Message Payload
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_payload = {}

-- Dissect: Equity And Index End Of Day Summary Message Payload
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_payload.dissect = function(buffer, offset, packet, parent, equity_and_index_end_of_day_summary_message_type)
  -- Dissect Equity And Index End Of Day Summary Message
  if equity_and_index_end_of_day_summary_message_type == " " then
    return siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Equity And Index End Of Day Summary Category
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category = {}

-- Calculate size of: Equity And Index End Of Day Summary Category
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type.size

  -- Calculate runtime size of Equity And Index End Of Day Summary Message Payload field
  local equity_and_index_end_of_day_summary_message_payload_offset = offset + index
  local equity_and_index_end_of_day_summary_message_payload_type = buffer(equity_and_index_end_of_day_summary_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_payload.size(buffer, equity_and_index_end_of_day_summary_message_payload_offset, equity_and_index_end_of_day_summary_message_payload_type)

  return index
end

-- Display: Equity And Index End Of Day Summary Category
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index End Of Day Summary Category
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Equity And Index End Of Day Summary Message Type: 1 Byte Ascii String Enum with 1 values
  index, equity_and_index_end_of_day_summary_message_type = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_type.dissect(buffer, index, packet, parent)

  -- Equity And Index End Of Day Summary Message Payload: Runtime Type with 1 branches
  index = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_message_payload.dissect(buffer, index, packet, parent, equity_and_index_end_of_day_summary_message_type)

  return index
end

-- Dissect: Equity And Index End Of Day Summary Category
siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.dissect = function(buffer, offset, packet, parent)
  if show.equity_and_index_end_of_day_summary_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_end_of_day_summary_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index Last Sale Message
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message = {}

-- Size: Equity And Index Last Sale Message
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.size =
  siac_opra_input_obi_v5_0_i.session_indicator.size + 
  siac_opra_input_obi_v5_0_i.participant_reference_number.size + 
  siac_opra_input_obi_v5_0_i.security_symbol.size + 
  siac_opra_input_obi_v5_0_i.reserved_1.size + 
  siac_opra_input_obi_v5_0_i.expiration_block.size + 
  siac_opra_input_obi_v5_0_i.strike_price_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.strike_price.size + 
  siac_opra_input_obi_v5_0_i.volume.size + 
  siac_opra_input_obi_v5_0_i.premium_price_denominator_code.size + 
  siac_opra_input_obi_v5_0_i.premium_price.size + 
  siac_opra_input_obi_v5_0_i.trade_identifier.size + 
  siac_opra_input_obi_v5_0_i.reserved_4.size

-- Display: Equity And Index Last Sale Message
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index Last Sale Message
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session Indicator: unsigned integer
  index, session_indicator = siac_opra_input_obi_v5_0_i.session_indicator.dissect(buffer, index, packet, parent)

  -- Participant Reference Number: unsigned integer
  index, participant_reference_number = siac_opra_input_obi_v5_0_i.participant_reference_number.dissect(buffer, index, packet, parent)

  -- Security Symbol: Alphanumeric
  index, security_symbol = siac_opra_input_obi_v5_0_i.security_symbol.dissect(buffer, index, packet, parent)

  -- Reserved 1: unsigned integer
  index, reserved_1 = siac_opra_input_obi_v5_0_i.reserved_1.dissect(buffer, index, packet, parent)

  -- Expiration Block: Struct of 3 fields
  index, expiration_block = siac_opra_input_obi_v5_0_i.expiration_block.dissect(buffer, index, packet, parent)

  -- Strike Price Denominator Code: Alphanumeric
  index, strike_price_denominator_code = siac_opra_input_obi_v5_0_i.strike_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Strike Price: signed integer
  index, strike_price = siac_opra_input_obi_v5_0_i.strike_price.dissect(buffer, index, packet, parent)

  -- Volume: unsigned integer
  index, volume = siac_opra_input_obi_v5_0_i.volume.dissect(buffer, index, packet, parent)

  -- Premium Price Denominator Code: Alphanumeric
  index, premium_price_denominator_code = siac_opra_input_obi_v5_0_i.premium_price_denominator_code.dissect(buffer, index, packet, parent)

  -- Premium Price: signed integer
  index, premium_price = siac_opra_input_obi_v5_0_i.premium_price.dissect(buffer, index, packet, parent)

  -- Trade Identifier: unsigned integer
  index, trade_identifier = siac_opra_input_obi_v5_0_i.trade_identifier.dissect(buffer, index, packet, parent)

  -- Reserved 4: unsigned integer
  index, reserved_4 = siac_opra_input_obi_v5_0_i.reserved_4.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index Last Sale Message
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_last_sale_message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.fields(buffer, offset, packet, parent)
  end
end

-- Equity And Index Last Sale Message Payload
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_payload = {}

-- Dissect: Equity And Index Last Sale Message Payload
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_payload.dissect = function(buffer, offset, packet, parent, equity_and_index_last_sale_message_type)
  -- Dissect Equity And Index Last Sale Message
  if equity_and_index_last_sale_message_type == "A" or equity_and_index_last_sale_message_type == "B" or equity_and_index_last_sale_message_type == "C" or equity_and_index_last_sale_message_type == "D" or equity_and_index_last_sale_message_type == "E" or equity_and_index_last_sale_message_type == "F" or equity_and_index_last_sale_message_type == "G" or equity_and_index_last_sale_message_type == "H" or equity_and_index_last_sale_message_type == "I" or equity_and_index_last_sale_message_type == "J" or equity_and_index_last_sale_message_type == "S" or equity_and_index_last_sale_message_type == "a" or equity_and_index_last_sale_message_type == "b" or equity_and_index_last_sale_message_type == "c" or equity_and_index_last_sale_message_type == "d" or equity_and_index_last_sale_message_type == "e" or equity_and_index_last_sale_message_type == "f" or equity_and_index_last_sale_message_type == "g" or equity_and_index_last_sale_message_type == "h" or equity_and_index_last_sale_message_type == "i" or equity_and_index_last_sale_message_type == "j" or equity_and_index_last_sale_message_type == "k" or equity_and_index_last_sale_message_type == "l" or equity_and_index_last_sale_message_type == "m" or equity_and_index_last_sale_message_type == "n" or equity_and_index_last_sale_message_type == "o" or equity_and_index_last_sale_message_type == "p" or equity_and_index_last_sale_message_type == "q" or equity_and_index_last_sale_message_type == "r" or equity_and_index_last_sale_message_type == "s" or equity_and_index_last_sale_message_type == "t" or equity_and_index_last_sale_message_type == "u" or equity_and_index_last_sale_message_type == "v" then
    return siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Equity And Index Last Sale Category
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category = {}

-- Calculate size of: Equity And Index Last Sale Category
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type.size

  -- Calculate runtime size of Equity And Index Last Sale Message Payload field
  local equity_and_index_last_sale_message_payload_offset = offset + index
  local equity_and_index_last_sale_message_payload_type = buffer(equity_and_index_last_sale_message_payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_payload.size(buffer, equity_and_index_last_sale_message_payload_offset, equity_and_index_last_sale_message_payload_type)

  return index
end

-- Display: Equity And Index Last Sale Category
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Equity And Index Last Sale Category
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Equity And Index Last Sale Message Type: 1 Byte Ascii String Enum with 33 values
  index, equity_and_index_last_sale_message_type = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_type.dissect(buffer, index, packet, parent)

  -- Equity And Index Last Sale Message Payload: Runtime Type with 1 branches
  index = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_message_payload.dissect(buffer, index, packet, parent, equity_and_index_last_sale_message_type)

  return index
end

-- Dissect: Equity And Index Last Sale Category
siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.dissect = function(buffer, offset, packet, parent)
  if show.equity_and_index_last_sale_category then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.equity_and_index_last_sale_category, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.fields(buffer, offset, packet, parent)
  end
end

-- Payload
siac_opra_input_obi_v5_0_i.payload = {}

-- Dissect: Payload
siac_opra_input_obi_v5_0_i.payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Equity And Index Last Sale Category
  if message_category == "a" then
    return siac_opra_input_obi_v5_0_i.equity_and_index_last_sale_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Equity And Index End Of Day Summary Category
  if message_category == "f" then
    return siac_opra_input_obi_v5_0_i.equity_and_index_end_of_day_summary_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Long Equity And Index Quote Category
  if message_category == "k" then
    return siac_opra_input_obi_v5_0_i.long_equity_and_index_quote_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Equity And Index Quote Category
  if message_category == "q" then
    return siac_opra_input_obi_v5_0_i.short_equity_and_index_quote_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Administrative Category
  if message_category == "C" then
    return siac_opra_input_obi_v5_0_i.administrative_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Category
  if message_category == "H" then
    return siac_opra_input_obi_v5_0_i.control_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sequence Number Status Category
  if message_category == "N" then
    return siac_opra_input_obi_v5_0_i.sequence_number_status_category.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Underlying Value Message Category
  if message_category == "Y" then
    return siac_opra_input_obi_v5_0_i.underlying_value_message_category.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
siac_opra_input_obi_v5_0_i.message_header = {}

-- Size: Message Header
siac_opra_input_obi_v5_0_i.message_header.size =
  siac_opra_input_obi_v5_0_i.participant_id.size + 
  siac_opra_input_obi_v5_0_i.message_category.size

-- Display: Message Header
siac_opra_input_obi_v5_0_i.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
siac_opra_input_obi_v5_0_i.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: ASCII character
  index, participant_id = siac_opra_input_obi_v5_0_i.participant_id.dissect(buffer, index, packet, parent)

  -- Message Category: ASCII character
  index, message_category = siac_opra_input_obi_v5_0_i.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_opra_input_obi_v5_0_i.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_header, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
siac_opra_input_obi_v5_0_i.message = {}

-- Calculate size of: Message
siac_opra_input_obi_v5_0_i.message.size = function(buffer, offset)
  local index = 0

  index = index + siac_opra_input_obi_v5_0_i.message_header.size

  -- Calculate runtime size of Payload field
  local payload_offset = offset + index
  local payload_type = buffer(payload_offset - 1, 1):string()
  index = index + siac_opra_input_obi_v5_0_i.payload.size(buffer, payload_offset, payload_type)

  return index
end

-- Display: Message
siac_opra_input_obi_v5_0_i.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_opra_input_obi_v5_0_i.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = siac_opra_input_obi_v5_0_i.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 8 branches
  index = siac_opra_input_obi_v5_0_i.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_opra_input_obi_v5_0_i.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.message, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Block Timestamp
siac_opra_input_obi_v5_0_i.block_timestamp = {}

-- Size: Block Timestamp
siac_opra_input_obi_v5_0_i.block_timestamp.size =
  siac_opra_input_obi_v5_0_i.seconds.size + 
  siac_opra_input_obi_v5_0_i.nanoseconds.size

-- Display: Block Timestamp
siac_opra_input_obi_v5_0_i.block_timestamp.display = function(packet, parent, value)
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
siac_opra_input_obi_v5_0_i.block_timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_opra_input_obi_v5_0_i.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_opra_input_obi_v5_0_i.nanoseconds.dissect(buffer, index, packet, parent)

  -- Composite value
  local block_timestamp = UInt64.new(seconds * 1000000000 + nanoseconds)

  return index, block_timestamp
end

-- Dissect: Block Timestamp
siac_opra_input_obi_v5_0_i.block_timestamp.dissect = function(buffer, offset, packet, parent)
  if show.block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_timestamp, buffer(offset, 0))
    local index, value = siac_opra_input_obi_v5_0_i.block_timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.block_timestamp.display(packet, parent, value, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.block_timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Block Header
siac_opra_input_obi_v5_0_i.block_header = {}

-- Size: Block Header
siac_opra_input_obi_v5_0_i.block_header.size =
  siac_opra_input_obi_v5_0_i.version.size + 
  siac_opra_input_obi_v5_0_i.block_size.size + 
  siac_opra_input_obi_v5_0_i.reserved.size + 
  siac_opra_input_obi_v5_0_i.reserved.size + 
  siac_opra_input_obi_v5_0_i.reserved.size + 
  siac_opra_input_obi_v5_0_i.block_sequence_number.size + 
  siac_opra_input_obi_v5_0_i.messages_in_block.size + 
  siac_opra_input_obi_v5_0_i.block_timestamp.size + 
  siac_opra_input_obi_v5_0_i.block_checksum.size

-- Display: Block Header
siac_opra_input_obi_v5_0_i.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_opra_input_obi_v5_0_i.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: unsigned integer
  index, version = siac_opra_input_obi_v5_0_i.version.dissect(buffer, index, packet, parent)

  -- Block Size: unsigned integer
  index, block_size = siac_opra_input_obi_v5_0_i.block_size.dissect(buffer, index, packet, parent)

  -- Reserved: unsigned integer
  index, reserved = siac_opra_input_obi_v5_0_i.reserved.dissect(buffer, index, packet, parent)

  -- Reserved: unsigned integer
  index, reserved = siac_opra_input_obi_v5_0_i.reserved.dissect(buffer, index, packet, parent)

  -- Reserved: unsigned integer
  index, reserved = siac_opra_input_obi_v5_0_i.reserved.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: unsigned integer
  index, block_sequence_number = siac_opra_input_obi_v5_0_i.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: unsigned integer
  index, messages_in_block = siac_opra_input_obi_v5_0_i.messages_in_block.dissect(buffer, index, packet, parent)

  -- Block Timestamp: Struct of 2 fields
  index, block_timestamp = siac_opra_input_obi_v5_0_i.block_timestamp.dissect(buffer, index, packet, parent)

  -- Block Checksum: unsigned integer
  index, block_checksum = siac_opra_input_obi_v5_0_i.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_opra_input_obi_v5_0_i.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_opra_input_obi_v5_0_i.fields.block_header, buffer(offset, 0))
    local index = siac_opra_input_obi_v5_0_i.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_opra_input_obi_v5_0_i.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_opra_input_obi_v5_0_i.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_opra_input_obi_v5_0_i.packet = {}

-- Verify required size of Tcp packet
siac_opra_input_obi_v5_0_i.packet.requiredsize = function(buffer)
  return buffer:len() >= siac_opra_input_obi_v5_0_i.block_separator.size + siac_opra_input_obi_v5_0_i.block_header.size
end

-- Dissect Packet
siac_opra_input_obi_v5_0_i.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Separator: unsigned integer
  index, block_separator = siac_opra_input_obi_v5_0_i.block_separator.dissect(buffer, index, packet, parent)

  -- Block Header: Struct of 9 fields
  index, block_header = siac_opra_input_obi_v5_0_i.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 11, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do
    index, message = siac_opra_input_obi_v5_0_i.message.dissect(buffer, index, packet, parent, message_index)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_opra_input_obi_v5_0_i.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_opra_input_obi_v5_0_i.init()
end

-- Dissector for Siac Opra Input Obi 5.0.i
function omi_siac_opra_input_obi_v5_0_i.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_opra_input_obi_v5_0_i.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_opra_input_obi_v5_0_i, buffer(), omi_siac_opra_input_obi_v5_0_i.description, "("..buffer:len().." Bytes)")
  return siac_opra_input_obi_v5_0_i.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify Version Field
siac_opra_input_obi_v5_0_i.version.verify = function(buffer)
  -- Attempt to read field
  local value = buffer(2, 1):uint()

  if value == 4 then
    return true
  end

  return false
end

-- Dissector Heuristic for Siac Opra Input Obi 5.0.i (Tcp)
local function omi_siac_opra_input_obi_v5_0_i_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_opra_input_obi_v5_0_i.packet.requiredsize(buffer) then return false end

  -- Verify Version
  if not siac_opra_input_obi_v5_0_i.version.verify(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_opra_input_obi_v5_0_i
  omi_siac_opra_input_obi_v5_0_i.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Opra Input Obi 5.0.i
omi_siac_opra_input_obi_v5_0_i:register_heuristic("tcp", omi_siac_opra_input_obi_v5_0_i_tcp_heuristic)

-- Register Siac Opra Input Obi 5.0.i for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_siac_opra_input_obi_v5_0_i)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: The Securities Industry Automation Corporation
--   Version: 5.0.i
--   Date: Friday, February 20, 2026
--   Specification: OPRA_Pillar_Input_Specification.pdf
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
