-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Opra Options Recipient Obdi 2.9 Protocol
local opra_options_recipient_obdi_v2_9 = Proto("Opra.Options.Recipient.Obdi.v2.9.Lua", "Opra Options Recipient Obdi 2.9")

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

-- Opra Options Recipient Obdi 2.9 Fields
opra_options_recipient_obdi_v2_9.fields.administrative_category = ProtoField.new("ADMINISTRATIVE Category", "opra.options.recipient.obdi.v2.9.administrativecategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.administrative_message = ProtoField.new("Administrative Message", "opra.options.recipient.obdi.v2.9.administrativemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.administrative_payload_ = ProtoField.new("Administrative Payload ", "opra.options.recipient.obdi.v2.9.administrativepayload", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.best_bid_denominator_code = ProtoField.new("Best Bid Denominator Code", "opra.options.recipient.obdi.v2.9.bestbiddenominatorcode", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.best_bid_participant_id = ProtoField.new("Best Bid Participant Id", "opra.options.recipient.obdi.v2.9.bestbidparticipantid", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.best_bid_price = ProtoField.new("Best Bid Price", "opra.options.recipient.obdi.v2.9.bestbidprice", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.best_bid_size = ProtoField.new("Best Bid Size", "opra.options.recipient.obdi.v2.9.bestbidsize", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.best_offer_denominator_code = ProtoField.new("Best Offer Denominator Code", "opra.options.recipient.obdi.v2.9.bestofferdenominatorcode", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.best_offer_participant_id = ProtoField.new("Best Offer Participant Id", "opra.options.recipient.obdi.v2.9.bestofferparticipantid", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.best_offer_price = ProtoField.new("Best Offer Price", "opra.options.recipient.obdi.v2.9.bestofferprice", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.best_offer_size = ProtoField.new("Best Offer Size", "opra.options.recipient.obdi.v2.9.bestoffersize", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.bid_price_2 = ProtoField.new("Bid Price 2", "opra.options.recipient.obdi.v2.9.bidprice2", ftypes.INT16)
opra_options_recipient_obdi_v2_9.fields.bid_price_4 = ProtoField.new("Bid Price 4", "opra.options.recipient.obdi.v2.9.bidprice4", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.bid_size_2 = ProtoField.new("Bid Size 2", "opra.options.recipient.obdi.v2.9.bidsize2", ftypes.UINT16)
opra_options_recipient_obdi_v2_9.fields.bid_size_4 = ProtoField.new("Bid Size 4", "opra.options.recipient.obdi.v2.9.bidsize4", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.block_seq_num = ProtoField.new("Block Seq Num", "opra.options.recipient.obdi.v2.9.blockseqnum", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.category_data = ProtoField.new("Category Data", "opra.options.recipient.obdi.v2.9.categorydata", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.checksum = ProtoField.new("Checksum", "opra.options.recipient.obdi.v2.9.checksum", ftypes.UINT16)
opra_options_recipient_obdi_v2_9.fields.control_category = ProtoField.new("CONTROL Category", "opra.options.recipient.obdi.v2.9.controlcategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.control_message = ProtoField.new("Control Message", "opra.options.recipient.obdi.v2.9.controlmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.control_payload_ = ProtoField.new("CONTROL Payload ", "opra.options.recipient.obdi.v2.9.controlpayload", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.data_feed_indicator = ProtoField.new("Data Feed Indicator", "opra.options.recipient.obdi.v2.9.datafeedindicator", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.denominator_code = ProtoField.new("Denominator Code", "opra.options.recipient.obdi.v2.9.denominatorcode", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.equity_and_index_last_sale_message = ProtoField.new("Equity And Index Last Sale Message", "opra.options.recipient.obdi.v2.9.equityandindexlastsalemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.equity_eod_category = ProtoField.new("Equity EOD Category", "opra.options.recipient.obdi.v2.9.equityeodcategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.equity_eod_message = ProtoField.new("Equity Eod Message", "opra.options.recipient.obdi.v2.9.equityeodmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.equity_eod_payload_ = ProtoField.new("Equity EOD Payload ", "opra.options.recipient.obdi.v2.9.equityeodpayload", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.equity_index_last_sale_category = ProtoField.new("Equity Index Last Sale Category", "opra.options.recipient.obdi.v2.9.equityindexlastsalecategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.equity_index_last_sale_payload_ = ProtoField.new("Equity Index Last Sale Payload ", "opra.options.recipient.obdi.v2.9.equityindexlastsalepayload", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.expiration_day = ProtoField.new("Expiration Day", "opra.options.recipient.obdi.v2.9.expirationday", ftypes.UINT8)
opra_options_recipient_obdi_v2_9.fields.expiration_month = ProtoField.new("Expiration Month", "opra.options.recipient.obdi.v2.9.expirationmonth", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.expiration_year = ProtoField.new("Expiration Year", "opra.options.recipient.obdi.v2.9.expirationyear", ftypes.UINT8)
opra_options_recipient_obdi_v2_9.fields.high_price = ProtoField.new("High Price", "opra.options.recipient.obdi.v2.9.highprice", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.index_value = ProtoField.new("Index Value", "opra.options.recipient.obdi.v2.9.indexvalue", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.index_value_denominator_code = ProtoField.new("Index Value Denominator Code", "opra.options.recipient.obdi.v2.9.indexvaluedenominatorcode", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.last_price = ProtoField.new("Last Price", "opra.options.recipient.obdi.v2.9.lastprice", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.long_quote_a_message = ProtoField.new("Long Quote A Message", "opra.options.recipient.obdi.v2.9.longquoteamessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_b_message = ProtoField.new("Long Quote B Message", "opra.options.recipient.obdi.v2.9.longquotebmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_c_message = ProtoField.new("Long Quote C Message", "opra.options.recipient.obdi.v2.9.longquotecmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_category = ProtoField.new("Long Quote Category", "opra.options.recipient.obdi.v2.9.longquotecategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_d_message = ProtoField.new("Long Quote D Message", "opra.options.recipient.obdi.v2.9.longquotedmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_e_message = ProtoField.new("Long Quote E Message", "opra.options.recipient.obdi.v2.9.longquoteemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_f_message = ProtoField.new("Long Quote F Message", "opra.options.recipient.obdi.v2.9.longquotefmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_g_message = ProtoField.new("Long Quote G Message", "opra.options.recipient.obdi.v2.9.longquotegmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_h_message = ProtoField.new("Long Quote H Message", "opra.options.recipient.obdi.v2.9.longquotehmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_i_message = ProtoField.new("Long Quote I Message", "opra.options.recipient.obdi.v2.9.longquoteimessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_j_message = ProtoField.new("Long Quote J Message", "opra.options.recipient.obdi.v2.9.longquotejmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_k_message = ProtoField.new("Long Quote K Message", "opra.options.recipient.obdi.v2.9.longquotekmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_l_message = ProtoField.new("Long Quote L Message", "opra.options.recipient.obdi.v2.9.longquotelmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_m_message = ProtoField.new("Long Quote M Message", "opra.options.recipient.obdi.v2.9.longquotemmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_message_ = ProtoField.new("Long Quote Message ", "opra.options.recipient.obdi.v2.9.longquotemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_n_message = ProtoField.new("Long Quote N Message", "opra.options.recipient.obdi.v2.9.longquotenmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_o_message = ProtoField.new("Long Quote O Message", "opra.options.recipient.obdi.v2.9.longquoteomessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_p_message = ProtoField.new("Long Quote P Message", "opra.options.recipient.obdi.v2.9.longquotepmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.long_quote_space_message = ProtoField.new("Long Quote Space Message", "opra.options.recipient.obdi.v2.9.longquotespacemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.low_price = ProtoField.new("Low Price", "opra.options.recipient.obdi.v2.9.lowprice", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.message = ProtoField.new("Message", "opra.options.recipient.obdi.v2.9.message", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.message_category = ProtoField.new("Message Category", "opra.options.recipient.obdi.v2.9.messagecategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.message_count = ProtoField.new("Message Count", "opra.options.recipient.obdi.v2.9.messagecount", ftypes.UINT8)
opra_options_recipient_obdi_v2_9.fields.message_data = ProtoField.new("Message Data", "opra.options.recipient.obdi.v2.9.messagedata", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.message_data_length = ProtoField.new("Message Data Length", "opra.options.recipient.obdi.v2.9.messagedatalength", ftypes.UINT16)
opra_options_recipient_obdi_v2_9.fields.message_header = ProtoField.new("Message Header", "opra.options.recipient.obdi.v2.9.messageheader", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.net_change = ProtoField.new("Net Change", "opra.options.recipient.obdi.v2.9.netchange", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.offer_price_2 = ProtoField.new("Offer Price 2", "opra.options.recipient.obdi.v2.9.offerprice2", ftypes.INT16)
opra_options_recipient_obdi_v2_9.fields.offer_price_4 = ProtoField.new("Offer Price 4", "opra.options.recipient.obdi.v2.9.offerprice4", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.offer_size_2 = ProtoField.new("Offer Size 2", "opra.options.recipient.obdi.v2.9.offersize2", ftypes.UINT16)
opra_options_recipient_obdi_v2_9.fields.offer_size_4 = ProtoField.new("Offer Size 4", "opra.options.recipient.obdi.v2.9.offersize4", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.open_interest_category = ProtoField.new("Open Interest Category", "opra.options.recipient.obdi.v2.9.openinterestcategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.open_interest_message = ProtoField.new("Open Interest Message", "opra.options.recipient.obdi.v2.9.openinterestmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.open_interest_payload_ = ProtoField.new("Open Interest Payload ", "opra.options.recipient.obdi.v2.9.openinterestpayload", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.open_interest_volume = ProtoField.new("Open Interest Volume", "opra.options.recipient.obdi.v2.9.openinterestvolume", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.open_price = ProtoField.new("Open Price", "opra.options.recipient.obdi.v2.9.openprice", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.packet = ProtoField.new("Packet", "opra.options.recipient.obdi.v2.9.packet", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.packet_header = ProtoField.new("Packet Header", "opra.options.recipient.obdi.v2.9.packetheader", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.participant_id = ProtoField.new("Participant Id", "opra.options.recipient.obdi.v2.9.participantid", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.premium_price = ProtoField.new("Premium Price", "opra.options.recipient.obdi.v2.9.premiumprice", ftypes.INT32)
opra_options_recipient_obdi_v2_9.fields.premium_price_denominator_code = ProtoField.new("Premium Price Denominator Code", "opra.options.recipient.obdi.v2.9.premiumpricedenominatorcode", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.price = ProtoField.new("Price", "opra.options.recipient.obdi.v2.9.price", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.reserved_1 = ProtoField.new("Reserved 1", "opra.options.recipient.obdi.v2.9.reserved1", ftypes.BYTES)
opra_options_recipient_obdi_v2_9.fields.reserved_4 = ProtoField.new("Reserved 4", "opra.options.recipient.obdi.v2.9.reserved4", ftypes.BYTES)
opra_options_recipient_obdi_v2_9.fields.retransmission_indicator = ProtoField.new("Retransmission Indicator", "opra.options.recipient.obdi.v2.9.retransmissionindicator", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.security_symbol_4 = ProtoField.new("Security Symbol 4", "opra.options.recipient.obdi.v2.9.securitysymbol4", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.security_symbol_5 = ProtoField.new("Security Symbol 5", "opra.options.recipient.obdi.v2.9.securitysymbol5", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.session_indicator = ProtoField.new("Session Indicator", "opra.options.recipient.obdi.v2.9.sessionindicator", ftypes.UINT8)
opra_options_recipient_obdi_v2_9.fields.short_quote_a_message = ProtoField.new("Short Quote A Message", "opra.options.recipient.obdi.v2.9.shortquoteamessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_b_message = ProtoField.new("Short Quote B Message", "opra.options.recipient.obdi.v2.9.shortquotebmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_c_message = ProtoField.new("Short Quote C Message", "opra.options.recipient.obdi.v2.9.shortquotecmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_category = ProtoField.new("Short Quote Category", "opra.options.recipient.obdi.v2.9.shortquotecategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_d_message = ProtoField.new("Short Quote D Message", "opra.options.recipient.obdi.v2.9.shortquotedmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_e_message = ProtoField.new("Short Quote E Message", "opra.options.recipient.obdi.v2.9.shortquoteemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_f_message = ProtoField.new("Short Quote F Message", "opra.options.recipient.obdi.v2.9.shortquotefmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_g_message = ProtoField.new("Short Quote G Message", "opra.options.recipient.obdi.v2.9.shortquotegmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_h_message = ProtoField.new("Short Quote H Message", "opra.options.recipient.obdi.v2.9.shortquotehmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_i_message = ProtoField.new("Short Quote I Message", "opra.options.recipient.obdi.v2.9.shortquoteimessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_j_message = ProtoField.new("Short Quote J Message", "opra.options.recipient.obdi.v2.9.shortquotejmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_k_message = ProtoField.new("Short Quote K Message", "opra.options.recipient.obdi.v2.9.shortquotekmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_l_message = ProtoField.new("Short Quote L Message", "opra.options.recipient.obdi.v2.9.shortquotelmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_m_message = ProtoField.new("Short Quote M Message", "opra.options.recipient.obdi.v2.9.shortquotemmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_message_ = ProtoField.new("Short Quote Message ", "opra.options.recipient.obdi.v2.9.shortquotemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_n_message = ProtoField.new("Short Quote N Message", "opra.options.recipient.obdi.v2.9.shortquotenmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_o_message = ProtoField.new("Short Quote O Message", "opra.options.recipient.obdi.v2.9.shortquoteomessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_p_message = ProtoField.new("Short Quote P Message", "opra.options.recipient.obdi.v2.9.shortquotepmessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.short_quote_space_message = ProtoField.new("Short Quote Space Message", "opra.options.recipient.obdi.v2.9.shortquotespacemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.size = ProtoField.new("Size", "opra.options.recipient.obdi.v2.9.size", ftypes.UINT16)
opra_options_recipient_obdi_v2_9.fields.strike_price_2 = ProtoField.new("Strike Price 2", "opra.options.recipient.obdi.v2.9.strikeprice2", ftypes.UINT16)
opra_options_recipient_obdi_v2_9.fields.strike_price_4 = ProtoField.new("Strike Price 4", "opra.options.recipient.obdi.v2.9.strikeprice4", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.strike_price_denominator_code = ProtoField.new("Strike Price Denominator Code", "opra.options.recipient.obdi.v2.9.strikepricedenominatorcode", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.trade_identifier = ProtoField.new("Trade Identifier", "opra.options.recipient.obdi.v2.9.tradeidentifier", ftypes.UINT32)
opra_options_recipient_obdi_v2_9.fields.transaction_id_ = ProtoField.new("Transaction ID ", "opra.options.recipient.obdi.v2.9.transactionid", ftypes.UINT64)
opra_options_recipient_obdi_v2_9.fields.underlying_price = ProtoField.new("Underlying Price", "opra.options.recipient.obdi.v2.9.underlyingprice", ftypes.INT64)
opra_options_recipient_obdi_v2_9.fields.underlying_price_denominator_code = ProtoField.new("Underlying Price Denominator Code", "opra.options.recipient.obdi.v2.9.underlyingpricedenominatorcode", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.underlying_value_category = ProtoField.new("UNDERLYING VALUE Category", "opra.options.recipient.obdi.v2.9.underlyingvaluecategory", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.underlying_value_message = ProtoField.new("Underlying Value Message", "opra.options.recipient.obdi.v2.9.underlyingvaluemessage", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.underlying_value_payload_ = ProtoField.new("UNDERLYING VALUE Payload ", "opra.options.recipient.obdi.v2.9.underlyingvaluepayload", ftypes.STRING)
opra_options_recipient_obdi_v2_9.fields.version = ProtoField.new("Version", "opra.options.recipient.obdi.v2.9.version", ftypes.UINT8)
opra_options_recipient_obdi_v2_9.fields.volume = ProtoField.new("Volume", "opra.options.recipient.obdi.v2.9.volume", ftypes.UINT32)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

-- Opra Options Recipient Obdi 2.9 Element Dissection Options
show.administrative_category = true
show.administrative_message = true
show.control_category = true
show.control_message = true
show.equity_and_index_last_sale_message = true
show.equity_eod_category = true
show.equity_eod_message = true
show.equity_index_last_sale_category = true
show.long_quote_a_message = true
show.long_quote_b_message = true
show.long_quote_c_message = true
show.long_quote_category = true
show.long_quote_d_message = true
show.long_quote_e_message = true
show.long_quote_f_message = true
show.long_quote_g_message = true
show.long_quote_h_message = true
show.long_quote_i_message = true
show.long_quote_j_message = true
show.long_quote_k_message = true
show.long_quote_l_message = true
show.long_quote_m_message = true
show.long_quote_n_message = true
show.long_quote_o_message = true
show.long_quote_p_message = true
show.long_quote_space_message = true
show.message = true
show.message_header = true
show.open_interest_category = true
show.open_interest_message = true
show.packet = true
show.packet_header = true
show.short_quote_a_message = true
show.short_quote_b_message = true
show.short_quote_c_message = true
show.short_quote_category = true
show.short_quote_d_message = true
show.short_quote_e_message = true
show.short_quote_f_message = true
show.short_quote_g_message = true
show.short_quote_h_message = true
show.short_quote_i_message = true
show.short_quote_j_message = true
show.short_quote_k_message = true
show.short_quote_l_message = true
show.short_quote_m_message = true
show.short_quote_n_message = true
show.short_quote_o_message = true
show.short_quote_p_message = true
show.short_quote_space_message = true
show.underlying_value_category = true
show.underlying_value_message = true
show.administrative_payload_ = false
show.category_data = false
show.control_payload_ = false
show.equity_eod_payload_ = false
show.equity_index_last_sale_payload_ = false
show.long_quote_message_ = false
show.open_interest_payload_ = false
show.short_quote_message_ = false
show.underlying_value_payload_ = false

-- Register Opra Options Recipient Obdi 2.9 Show Options
opra_options_recipient_obdi_v2_9.prefs.show_administrative_category = Pref.bool("Show ADMINISTRATIVE Category", show.administrative_category, "Parse and add ADMINISTRATIVE Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_administrative_message = Pref.bool("Show Administrative Message", show.administrative_message, "Parse and add Administrative Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_control_category = Pref.bool("Show CONTROL Category", show.control_category, "Parse and add CONTROL Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_control_message = Pref.bool("Show Control Message", show.control_message, "Parse and add Control Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_equity_and_index_last_sale_message = Pref.bool("Show Equity And Index Last Sale Message", show.equity_and_index_last_sale_message, "Parse and add Equity And Index Last Sale Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_category = Pref.bool("Show Equity EOD Category", show.equity_eod_category, "Parse and add Equity EOD Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_message = Pref.bool("Show Equity Eod Message", show.equity_eod_message, "Parse and add Equity Eod Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_equity_index_last_sale_category = Pref.bool("Show Equity Index Last Sale Category", show.equity_index_last_sale_category, "Parse and add Equity Index Last Sale Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_a_message = Pref.bool("Show Long Quote A Message", show.long_quote_a_message, "Parse and add Long Quote A Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_b_message = Pref.bool("Show Long Quote B Message", show.long_quote_b_message, "Parse and add Long Quote B Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_c_message = Pref.bool("Show Long Quote C Message", show.long_quote_c_message, "Parse and add Long Quote C Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_category = Pref.bool("Show Long Quote Category", show.long_quote_category, "Parse and add Long Quote Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_d_message = Pref.bool("Show Long Quote D Message", show.long_quote_d_message, "Parse and add Long Quote D Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_e_message = Pref.bool("Show Long Quote E Message", show.long_quote_e_message, "Parse and add Long Quote E Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_f_message = Pref.bool("Show Long Quote F Message", show.long_quote_f_message, "Parse and add Long Quote F Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_g_message = Pref.bool("Show Long Quote G Message", show.long_quote_g_message, "Parse and add Long Quote G Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_h_message = Pref.bool("Show Long Quote H Message", show.long_quote_h_message, "Parse and add Long Quote H Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_i_message = Pref.bool("Show Long Quote I Message", show.long_quote_i_message, "Parse and add Long Quote I Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_j_message = Pref.bool("Show Long Quote J Message", show.long_quote_j_message, "Parse and add Long Quote J Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_k_message = Pref.bool("Show Long Quote K Message", show.long_quote_k_message, "Parse and add Long Quote K Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_l_message = Pref.bool("Show Long Quote L Message", show.long_quote_l_message, "Parse and add Long Quote L Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_m_message = Pref.bool("Show Long Quote M Message", show.long_quote_m_message, "Parse and add Long Quote M Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_n_message = Pref.bool("Show Long Quote N Message", show.long_quote_n_message, "Parse and add Long Quote N Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_o_message = Pref.bool("Show Long Quote O Message", show.long_quote_o_message, "Parse and add Long Quote O Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_p_message = Pref.bool("Show Long Quote P Message", show.long_quote_p_message, "Parse and add Long Quote P Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_space_message = Pref.bool("Show Long Quote Space Message", show.long_quote_space_message, "Parse and add Long Quote Space Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_open_interest_category = Pref.bool("Show Open Interest Category", show.open_interest_category, "Parse and add Open Interest Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_open_interest_message = Pref.bool("Show Open Interest Message", show.open_interest_message, "Parse and add Open Interest Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_a_message = Pref.bool("Show Short Quote A Message", show.short_quote_a_message, "Parse and add Short Quote A Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_b_message = Pref.bool("Show Short Quote B Message", show.short_quote_b_message, "Parse and add Short Quote B Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_c_message = Pref.bool("Show Short Quote C Message", show.short_quote_c_message, "Parse and add Short Quote C Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_category = Pref.bool("Show Short Quote Category", show.short_quote_category, "Parse and add Short Quote Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_d_message = Pref.bool("Show Short Quote D Message", show.short_quote_d_message, "Parse and add Short Quote D Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_e_message = Pref.bool("Show Short Quote E Message", show.short_quote_e_message, "Parse and add Short Quote E Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_f_message = Pref.bool("Show Short Quote F Message", show.short_quote_f_message, "Parse and add Short Quote F Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_g_message = Pref.bool("Show Short Quote G Message", show.short_quote_g_message, "Parse and add Short Quote G Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_h_message = Pref.bool("Show Short Quote H Message", show.short_quote_h_message, "Parse and add Short Quote H Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_i_message = Pref.bool("Show Short Quote I Message", show.short_quote_i_message, "Parse and add Short Quote I Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_j_message = Pref.bool("Show Short Quote J Message", show.short_quote_j_message, "Parse and add Short Quote J Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_k_message = Pref.bool("Show Short Quote K Message", show.short_quote_k_message, "Parse and add Short Quote K Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_l_message = Pref.bool("Show Short Quote L Message", show.short_quote_l_message, "Parse and add Short Quote L Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_m_message = Pref.bool("Show Short Quote M Message", show.short_quote_m_message, "Parse and add Short Quote M Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_n_message = Pref.bool("Show Short Quote N Message", show.short_quote_n_message, "Parse and add Short Quote N Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_o_message = Pref.bool("Show Short Quote O Message", show.short_quote_o_message, "Parse and add Short Quote O Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_p_message = Pref.bool("Show Short Quote P Message", show.short_quote_p_message, "Parse and add Short Quote P Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_space_message = Pref.bool("Show Short Quote Space Message", show.short_quote_space_message, "Parse and add Short Quote Space Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_category = Pref.bool("Show UNDERLYING VALUE Category", show.underlying_value_category, "Parse and add UNDERLYING VALUE Category to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_message = Pref.bool("Show Underlying Value Message", show.underlying_value_message, "Parse and add Underlying Value Message to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_administrative_payload_ = Pref.bool("Show Administrative Payload ", show.administrative_payload_, "Parse and add Administrative Payload  to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_category_data = Pref.bool("Show Category Data", show.category_data, "Parse and add Category Data to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_control_payload_ = Pref.bool("Show CONTROL Payload ", show.control_payload_, "Parse and add CONTROL Payload  to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_payload_ = Pref.bool("Show Equity EOD Payload ", show.equity_eod_payload_, "Parse and add Equity EOD Payload  to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_equity_index_last_sale_payload_ = Pref.bool("Show Equity Index Last Sale Payload ", show.equity_index_last_sale_payload_, "Parse and add Equity Index Last Sale Payload  to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_long_quote_message_ = Pref.bool("Show Long Quote Message ", show.long_quote_message_, "Parse and add Long Quote Message  to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_open_interest_payload_ = Pref.bool("Show Open Interest Payload ", show.open_interest_payload_, "Parse and add Open Interest Payload  to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_short_quote_message_ = Pref.bool("Show Short Quote Message ", show.short_quote_message_, "Parse and add Short Quote Message  to protocol tree")
opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_payload_ = Pref.bool("Show UNDERLYING VALUE Payload ", show.underlying_value_payload_, "Parse and add UNDERLYING VALUE Payload  to protocol tree")

-- Handle changed preferences
function opra_options_recipient_obdi_v2_9.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.administrative_category ~= opra_options_recipient_obdi_v2_9.prefs.show_administrative_category then
    show.administrative_category = opra_options_recipient_obdi_v2_9.prefs.show_administrative_category
    changed = true
  end
  if show.administrative_message ~= opra_options_recipient_obdi_v2_9.prefs.show_administrative_message then
    show.administrative_message = opra_options_recipient_obdi_v2_9.prefs.show_administrative_message
    changed = true
  end
  if show.control_category ~= opra_options_recipient_obdi_v2_9.prefs.show_control_category then
    show.control_category = opra_options_recipient_obdi_v2_9.prefs.show_control_category
    changed = true
  end
  if show.control_message ~= opra_options_recipient_obdi_v2_9.prefs.show_control_message then
    show.control_message = opra_options_recipient_obdi_v2_9.prefs.show_control_message
    changed = true
  end
  if show.equity_and_index_last_sale_message ~= opra_options_recipient_obdi_v2_9.prefs.show_equity_and_index_last_sale_message then
    show.equity_and_index_last_sale_message = opra_options_recipient_obdi_v2_9.prefs.show_equity_and_index_last_sale_message
    changed = true
  end
  if show.equity_eod_category ~= opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_category then
    show.equity_eod_category = opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_category
    changed = true
  end
  if show.equity_eod_message ~= opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_message then
    show.equity_eod_message = opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_message
    changed = true
  end
  if show.equity_index_last_sale_category ~= opra_options_recipient_obdi_v2_9.prefs.show_equity_index_last_sale_category then
    show.equity_index_last_sale_category = opra_options_recipient_obdi_v2_9.prefs.show_equity_index_last_sale_category
    changed = true
  end
  if show.long_quote_a_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_a_message then
    show.long_quote_a_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_a_message
    changed = true
  end
  if show.long_quote_b_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_b_message then
    show.long_quote_b_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_b_message
    changed = true
  end
  if show.long_quote_c_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_c_message then
    show.long_quote_c_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_c_message
    changed = true
  end
  if show.long_quote_category ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_category then
    show.long_quote_category = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_category
    changed = true
  end
  if show.long_quote_d_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_d_message then
    show.long_quote_d_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_d_message
    changed = true
  end
  if show.long_quote_e_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_e_message then
    show.long_quote_e_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_e_message
    changed = true
  end
  if show.long_quote_f_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_f_message then
    show.long_quote_f_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_f_message
    changed = true
  end
  if show.long_quote_g_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_g_message then
    show.long_quote_g_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_g_message
    changed = true
  end
  if show.long_quote_h_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_h_message then
    show.long_quote_h_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_h_message
    changed = true
  end
  if show.long_quote_i_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_i_message then
    show.long_quote_i_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_i_message
    changed = true
  end
  if show.long_quote_j_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_j_message then
    show.long_quote_j_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_j_message
    changed = true
  end
  if show.long_quote_k_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_k_message then
    show.long_quote_k_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_k_message
    changed = true
  end
  if show.long_quote_l_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_l_message then
    show.long_quote_l_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_l_message
    changed = true
  end
  if show.long_quote_m_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_m_message then
    show.long_quote_m_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_m_message
    changed = true
  end
  if show.long_quote_n_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_n_message then
    show.long_quote_n_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_n_message
    changed = true
  end
  if show.long_quote_o_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_o_message then
    show.long_quote_o_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_o_message
    changed = true
  end
  if show.long_quote_p_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_p_message then
    show.long_quote_p_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_p_message
    changed = true
  end
  if show.long_quote_space_message ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_space_message then
    show.long_quote_space_message = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_space_message
    changed = true
  end
  if show.message ~= opra_options_recipient_obdi_v2_9.prefs.show_message then
    show.message = opra_options_recipient_obdi_v2_9.prefs.show_message
    changed = true
  end
  if show.message_header ~= opra_options_recipient_obdi_v2_9.prefs.show_message_header then
    show.message_header = opra_options_recipient_obdi_v2_9.prefs.show_message_header
    changed = true
  end
  if show.open_interest_category ~= opra_options_recipient_obdi_v2_9.prefs.show_open_interest_category then
    show.open_interest_category = opra_options_recipient_obdi_v2_9.prefs.show_open_interest_category
    changed = true
  end
  if show.open_interest_message ~= opra_options_recipient_obdi_v2_9.prefs.show_open_interest_message then
    show.open_interest_message = opra_options_recipient_obdi_v2_9.prefs.show_open_interest_message
    changed = true
  end
  if show.packet ~= opra_options_recipient_obdi_v2_9.prefs.show_packet then
    show.packet = opra_options_recipient_obdi_v2_9.prefs.show_packet
    changed = true
  end
  if show.packet_header ~= opra_options_recipient_obdi_v2_9.prefs.show_packet_header then
    show.packet_header = opra_options_recipient_obdi_v2_9.prefs.show_packet_header
    changed = true
  end
  if show.short_quote_a_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_a_message then
    show.short_quote_a_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_a_message
    changed = true
  end
  if show.short_quote_b_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_b_message then
    show.short_quote_b_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_b_message
    changed = true
  end
  if show.short_quote_c_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_c_message then
    show.short_quote_c_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_c_message
    changed = true
  end
  if show.short_quote_category ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_category then
    show.short_quote_category = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_category
    changed = true
  end
  if show.short_quote_d_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_d_message then
    show.short_quote_d_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_d_message
    changed = true
  end
  if show.short_quote_e_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_e_message then
    show.short_quote_e_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_e_message
    changed = true
  end
  if show.short_quote_f_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_f_message then
    show.short_quote_f_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_f_message
    changed = true
  end
  if show.short_quote_g_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_g_message then
    show.short_quote_g_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_g_message
    changed = true
  end
  if show.short_quote_h_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_h_message then
    show.short_quote_h_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_h_message
    changed = true
  end
  if show.short_quote_i_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_i_message then
    show.short_quote_i_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_i_message
    changed = true
  end
  if show.short_quote_j_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_j_message then
    show.short_quote_j_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_j_message
    changed = true
  end
  if show.short_quote_k_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_k_message then
    show.short_quote_k_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_k_message
    changed = true
  end
  if show.short_quote_l_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_l_message then
    show.short_quote_l_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_l_message
    changed = true
  end
  if show.short_quote_m_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_m_message then
    show.short_quote_m_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_m_message
    changed = true
  end
  if show.short_quote_n_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_n_message then
    show.short_quote_n_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_n_message
    changed = true
  end
  if show.short_quote_o_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_o_message then
    show.short_quote_o_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_o_message
    changed = true
  end
  if show.short_quote_p_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_p_message then
    show.short_quote_p_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_p_message
    changed = true
  end
  if show.short_quote_space_message ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_space_message then
    show.short_quote_space_message = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_space_message
    changed = true
  end
  if show.underlying_value_category ~= opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_category then
    show.underlying_value_category = opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_category
    changed = true
  end
  if show.underlying_value_message ~= opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_message then
    show.underlying_value_message = opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_message
    changed = true
  end
  if show.administrative_payload_ ~= opra_options_recipient_obdi_v2_9.prefs.show_administrative_payload_ then
    show.administrative_payload_ = opra_options_recipient_obdi_v2_9.prefs.show_administrative_payload_
    changed = true
  end
  if show.category_data ~= opra_options_recipient_obdi_v2_9.prefs.show_category_data then
    show.category_data = opra_options_recipient_obdi_v2_9.prefs.show_category_data
    changed = true
  end
  if show.control_payload_ ~= opra_options_recipient_obdi_v2_9.prefs.show_control_payload_ then
    show.control_payload_ = opra_options_recipient_obdi_v2_9.prefs.show_control_payload_
    changed = true
  end
  if show.equity_eod_payload_ ~= opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_payload_ then
    show.equity_eod_payload_ = opra_options_recipient_obdi_v2_9.prefs.show_equity_eod_payload_
    changed = true
  end
  if show.equity_index_last_sale_payload_ ~= opra_options_recipient_obdi_v2_9.prefs.show_equity_index_last_sale_payload_ then
    show.equity_index_last_sale_payload_ = opra_options_recipient_obdi_v2_9.prefs.show_equity_index_last_sale_payload_
    changed = true
  end
  if show.long_quote_message_ ~= opra_options_recipient_obdi_v2_9.prefs.show_long_quote_message_ then
    show.long_quote_message_ = opra_options_recipient_obdi_v2_9.prefs.show_long_quote_message_
    changed = true
  end
  if show.open_interest_payload_ ~= opra_options_recipient_obdi_v2_9.prefs.show_open_interest_payload_ then
    show.open_interest_payload_ = opra_options_recipient_obdi_v2_9.prefs.show_open_interest_payload_
    changed = true
  end
  if show.short_quote_message_ ~= opra_options_recipient_obdi_v2_9.prefs.show_short_quote_message_ then
    show.short_quote_message_ = opra_options_recipient_obdi_v2_9.prefs.show_short_quote_message_
    changed = true
  end
  if show.underlying_value_payload_ ~= opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_payload_ then
    show.underlying_value_payload_ = opra_options_recipient_obdi_v2_9.prefs.show_underlying_value_payload_
    changed = true
  end

  -- Reload on changed preference
  if changed then
    reload()
  end
end


-----------------------------------------------------------------------
-- Dissect Opra Options Recipient Obdi 2.9
-----------------------------------------------------------------------

-- Size: Reserved 4
size_of.reserved_4 = 4

-- Display: Reserved 4
display.reserved_4 = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
dissect.reserved_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_4)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_4(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.reserved_4, range, value, display)

  return offset + size_of.reserved_4
end

-- Size: Index Value
size_of.index_value = 4

-- Display: Index Value
display.index_value = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
dissect.index_value = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.index_value)
  local value = range:le_int()
  local display = display.index_value(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.index_value, range, value, display)

  return offset + size_of.index_value
end

-- Size: Index Value Denominator Code
size_of.index_value_denominator_code = 1

-- Display: Index Value Denominator Code
display.index_value_denominator_code = function(value)
  return "Index Value Denominator Code: "..value
end

-- Dissect: Index Value Denominator Code
dissect.index_value_denominator_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.index_value_denominator_code)
  local value = range:string()
  local display = display.index_value_denominator_code(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.index_value_denominator_code, range, value, display)

  return offset + size_of.index_value_denominator_code
end

-- Size: Reserved 1
size_of.reserved_1 = 1

-- Display: Reserved 1
display.reserved_1 = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
dissect.reserved_1 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.reserved_1)
  local value = range:bytes():tohex(false, " ")
  local display = display.reserved_1(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.reserved_1, range, value, display)

  return offset + size_of.reserved_1
end

-- Size: Security Symbol 5
size_of.security_symbol_5 = 5

-- Display: Security Symbol 5
display.security_symbol_5 = function(value)
  return "Security Symbol 5: "..value
end

-- Dissect: Security Symbol 5
dissect.security_symbol_5 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_symbol_5)
  local value = range:string()
  local display = display.security_symbol_5(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.security_symbol_5, range, value, display)

  return offset + size_of.security_symbol_5
end

-- Display: Underlying Value Message
display.underlying_value_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Underlying Value Message
dissect.underlying_value_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Index Value Denominator Code: 1 Byte Ascii String
  index = dissect.index_value_denominator_code(buffer, index, packet, parent)

  -- Index Value: 4 Byte Signed Fixed Width Integer
  index = dissect.index_value(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index = dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Underlying Value Message
dissect.underlying_value_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.underlying_value_message then
    local range = buffer(offset, 15)
    local display = display.underlying_value_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.underlying_value_message, range, display)
  end

  return dissect.underlying_value_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: UNDERLYING VALUE Payload
size_of.underlying_value_payload_ = function(buffer, offset, underlyingvaluemessageindicator)
  -- Size of Underlying Value Message
  if underlyingvaluemessageindicator == " " then
    return 15
  end

  return 0
end

-- Display: UNDERLYING VALUE Payload
display.underlying_value_payload_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: UNDERLYING VALUE Payload
dissect.underlying_value_payload__branches = function(buffer, offset, packet, parent, underlyingvaluemessageindicator)
  -- Dissect Underlying Value Message
  if underlyingvaluemessageindicator == " " then
    return dissect.underlying_value_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: UNDERLYING VALUE Payload
dissect.underlying_value_payload_ = function(buffer, offset, packet, parent, code)
  if not show.underlying_value_payload_ then
    return dissect.underlying_value_payload__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.underlying_value_payload_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.underlying_value_payload_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.underlying_value_payload_, range, display)

  return dissect.underlying_value_payload__branches(buffer, offset, packet, parent, code)
end

-- Size: Transaction ID
size_of.transaction_id_ = 8

-- Display: Transaction ID
display.transaction_id_ = function(value)
  return "Transaction ID : "..value
end

-- Dissect: Transaction ID
dissect.transaction_id_ = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.transaction_id_)
  local value = range:uint64()
  local display = display.transaction_id_(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.transaction_id_, range, value, display)

  return offset + size_of.transaction_id_
end

-- Calculate runtime size: UNDERLYING VALUE Category
size_of.underlying_value_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of UNDERLYING VALUE Payload  field
  local underlying_value_payload__offset = offset + index
  local underlying_value_payload__type = buffer(underlying_value_payload__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.underlying_value_payload_(buffer, underlying_value_payload__offset, underlying_value_payload__type)

  return index
end

-- Display: UNDERLYING VALUE Category
display.underlying_value_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: UNDERLYING VALUE Category
dissect.underlying_value_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- UNDERLYING VALUE Message Type
  index = dissect.underlying_value_message_type(buffer, index, packet, parent)

  -- UNDERLYING VALUE Message Indicator
  index = dissect.underlying_value_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: UNDERLYING VALUE Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- UNDERLYING VALUE Payload : Runtime Type with 1 branches
  index = dissect.underlying_value_payload_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: UNDERLYING VALUE Category
dissect.underlying_value_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.underlying_value_category then
    local length = size_of.underlying_value_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.underlying_value_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.underlying_value_category, range, display)
  end

  return dissect.underlying_value_category_fields(buffer, offset, packet, parent)
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

  parent:add(opra_options_recipient_obdi_v2_9.fields.message_data, range, value, display)

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
  local range = buffer(offset, size_of.message_data_length)
  local value = range:le_uint()
  local display = display.message_data_length(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.message_data_length, range, value, display)

  return offset + size_of.message_data_length
end

-- Calculate runtime size: Control Message
size_of.control_message = function(buffer, offset)
  local index = 0

  index = index + 2

  -- Parse runtime size of: Message Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Control Message
display.control_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Control Message
dissect.control_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Data Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.message_data_length(buffer, index, packet, parent)

  -- Dependency element: Message Data Length
  local message_data_count = buffer(index - 2, 2):le_uint()

  -- Message Data: 4 Byte Ascii String
  index = dissect.message_data(buffer, index, packet, parent, length)

  return index
end

-- Dissect: Control Message
dissect.control_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control_message then
    local length = size_of.control_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.control_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.control_message, range, display)
  end

  return dissect.control_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: CONTROL Payload
size_of.control_payload_ = function(buffer, offset, controlmessageindicator)
  -- Size of Control Message
  if controlmessageindicator == " " then
    return size_of.control_message(buffer, offset)
  end

  return 0
end

-- Display: CONTROL Payload
display.control_payload_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: CONTROL Payload
dissect.control_payload__branches = function(buffer, offset, packet, parent, controlmessageindicator)
  -- Dissect Control Message
  if controlmessageindicator == " " then
    return dissect.control_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: CONTROL Payload
dissect.control_payload_ = function(buffer, offset, packet, parent, code)
  if not show.control_payload_ then
    return dissect.control_payload__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.control_payload_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.control_payload_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.control_payload_, range, display)

  return dissect.control_payload__branches(buffer, offset, packet, parent, code)
end

-- Calculate runtime size: CONTROL Category
size_of.control_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of CONTROL Payload  field
  local control_payload__offset = offset + index
  local control_payload__type = buffer(control_payload__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.control_payload_(buffer, control_payload__offset, control_payload__type)

  return index
end

-- Display: CONTROL Category
display.control_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: CONTROL Category
dissect.control_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- CONTROL Message Type
  index = dissect.control_message_type(buffer, index, packet, parent)

  -- CONTROL Message Indicator
  index = dissect.control_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: CONTROL Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- CONTROL Payload : Runtime Type with 1 branches
  index = dissect.control_payload_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: CONTROL Category
dissect.control_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.control_category then
    local length = size_of.control_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.control_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.control_category, range, display)
  end

  return dissect.control_category_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Administrative Message
size_of.administrative_message = function(buffer, offset)
  local index = 0

  index = index + 2

  -- Parse runtime size of: Message Data
  index = index + buffer(offset + index - 2, 2):le_uint()

  return index
end

-- Display: Administrative Message
display.administrative_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Administrative Message
dissect.administrative_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Data Length: 2 Byte Unsigned Fixed Width Integer
  index = dissect.message_data_length(buffer, index, packet, parent)

  -- Dependency element: Message Data Length
  local message_data_count = buffer(index - 2, 2):le_uint()

  -- Message Data: 4 Byte Ascii String
  index = dissect.message_data(buffer, index, packet, parent, length)

  return index
end

-- Dissect: Administrative Message
dissect.administrative_message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative_message then
    local length = size_of.administrative_message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.administrative_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.administrative_message, range, display)
  end

  return dissect.administrative_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Administrative Payload
size_of.administrative_payload_ = function(buffer, offset, administrativemessageindicator)
  -- Size of Administrative Message
  if administrativemessageindicator == " " then
    return size_of.administrative_message(buffer, offset)
  end

  return 0
end

-- Display: Administrative Payload
display.administrative_payload_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Administrative Payload
dissect.administrative_payload__branches = function(buffer, offset, packet, parent, administrativemessageindicator)
  -- Dissect Administrative Message
  if administrativemessageindicator == " " then
    return dissect.administrative_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Administrative Payload
dissect.administrative_payload_ = function(buffer, offset, packet, parent, code)
  if not show.administrative_payload_ then
    return dissect.administrative_payload__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.administrative_payload_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.administrative_payload_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.administrative_payload_, range, display)

  return dissect.administrative_payload__branches(buffer, offset, packet, parent, code)
end

-- Calculate runtime size: ADMINISTRATIVE Category
size_of.administrative_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of Administrative Payload  field
  local administrative_payload__offset = offset + index
  local administrative_payload__type = buffer(administrative_payload__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.administrative_payload_(buffer, administrative_payload__offset, administrative_payload__type)

  return index
end

-- Display: ADMINISTRATIVE Category
display.administrative_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: ADMINISTRATIVE Category
dissect.administrative_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Administrative Message Type
  index = dissect.administrative_message_type(buffer, index, packet, parent)

  -- Administrative Message Indicator
  index = dissect.administrative_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: Administrative Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- Administrative Payload : Runtime Type with 1 branches
  index = dissect.administrative_payload_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: ADMINISTRATIVE Category
dissect.administrative_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.administrative_category then
    local length = size_of.administrative_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.administrative_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.administrative_category, range, display)
  end

  return dissect.administrative_category_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size 2
size_of.offer_size_2 = 2

-- Display: Offer Size 2
display.offer_size_2 = function(value)
  return "Offer Size 2: "..value
end

-- Dissect: Offer Size 2
dissect.offer_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_size_2)
  local value = range:le_uint()
  local display = display.offer_size_2(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.offer_size_2, range, value, display)

  return offset + size_of.offer_size_2
end

-- Size: Offer Price 2
size_of.offer_price_2 = 2

-- Display: Offer Price 2
display.offer_price_2 = function(value)
  return "Offer Price 2: "..value
end

-- Dissect: Offer Price 2
dissect.offer_price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_price_2)
  local value = range:le_int()
  local display = display.offer_price_2(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.offer_price_2, range, value, display)

  return offset + size_of.offer_price_2
end

-- Size: Bid Size 2
size_of.bid_size_2 = 2

-- Display: Bid Size 2
display.bid_size_2 = function(value)
  return "Bid Size 2: "..value
end

-- Dissect: Bid Size 2
dissect.bid_size_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size_2)
  local value = range:le_uint()
  local display = display.bid_size_2(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.bid_size_2, range, value, display)

  return offset + size_of.bid_size_2
end

-- Size: Bid Price 2
size_of.bid_price_2 = 2

-- Display: Bid Price 2
display.bid_price_2 = function(value)
  return "Bid Price 2: "..value
end

-- Dissect: Bid Price 2
dissect.bid_price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price_2)
  local value = range:le_int()
  local display = display.bid_price_2(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.bid_price_2, range, value, display)

  return offset + size_of.bid_price_2
end

-- Size: Strike Price 2
size_of.strike_price_2 = 2

-- Display: Strike Price 2
display.strike_price_2 = function(value)
  return "Strike Price 2: "..value
end

-- Dissect: Strike Price 2
dissect.strike_price_2 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price_2)
  local value = range:le_uint()
  local display = display.strike_price_2(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.strike_price_2, range, value, display)

  return offset + size_of.strike_price_2
end

-- Size: Expiration Year
size_of.expiration_year = 1

-- Display: Expiration Year
display.expiration_year = function(value)
  return "Expiration Year: "..value
end

-- Dissect: Expiration Year
dissect.expiration_year = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_year)
  local value = range:le_uint()
  local display = display.expiration_year(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.expiration_year, range, value, display)

  return offset + size_of.expiration_year
end

-- Size: Expiration Day
size_of.expiration_day = 1

-- Display: Expiration Day
display.expiration_day = function(value)
  return "Expiration Day: "..value
end

-- Dissect: Expiration Day
dissect.expiration_day = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.expiration_day)
  local value = range:le_uint()
  local display = display.expiration_day(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.expiration_day, range, value, display)

  return offset + size_of.expiration_day
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
  local range = buffer(offset, size_of.expiration_month)
  local value = range:string()
  local display = display.expiration_month(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.expiration_month, range, value, display)

  return offset + size_of.expiration_month
end

-- Size: Security Symbol 4
size_of.security_symbol_4 = 4

-- Display: Security Symbol 4
display.security_symbol_4 = function(value)
  return "Security Symbol 4: "..value
end

-- Dissect: Security Symbol 4
dissect.security_symbol_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.security_symbol_4)
  local value = range:string()
  local display = display.security_symbol_4(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.security_symbol_4, range, value, display)

  return offset + size_of.security_symbol_4
end

-- Display: Short Quote Space Message
display.short_quote_space_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote Space Message
dissect.short_quote_space_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote Space Message
dissect.short_quote_space_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_space_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_space_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_space_message, range, display)
  end

  return dissect.short_quote_space_message_fields(buffer, offset, packet, parent)
end

-- Size: Best Offer Size
size_of.best_offer_size = 4

-- Display: Best Offer Size
display.best_offer_size = function(value)
  return "Best Offer Size: "..value
end

-- Dissect: Best Offer Size
dissect.best_offer_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_offer_size)
  local value = range:le_uint()
  local display = display.best_offer_size(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_offer_size, range, value, display)

  return offset + size_of.best_offer_size
end

-- Size: Best Offer Price
size_of.best_offer_price = 4

-- Display: Best Offer Price
display.best_offer_price = function(value)
  return "Best Offer Price: "..value
end

-- Dissect: Best Offer Price
dissect.best_offer_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_offer_price)
  local value = range:le_int()
  local display = display.best_offer_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_offer_price, range, value, display)

  return offset + size_of.best_offer_price
end

-- Size: Best Offer Denominator Code
size_of.best_offer_denominator_code = 1

-- Display: Best Offer Denominator Code
display.best_offer_denominator_code = function(value)
  return "Best Offer Denominator Code: "..value
end

-- Dissect: Best Offer Denominator Code
dissect.best_offer_denominator_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_offer_denominator_code)
  local value = range:string()
  local display = display.best_offer_denominator_code(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_offer_denominator_code, range, value, display)

  return offset + size_of.best_offer_denominator_code
end

-- Size: Best Offer Participant Id
size_of.best_offer_participant_id = 1

-- Display: Best Offer Participant Id
display.best_offer_participant_id = function(value)
  return "Best Offer Participant Id: "..value
end

-- Dissect: Best Offer Participant Id
dissect.best_offer_participant_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_offer_participant_id)
  local value = range:string()
  local display = display.best_offer_participant_id(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_offer_participant_id, range, value, display)

  return offset + size_of.best_offer_participant_id
end

-- Size: Best Bid Size
size_of.best_bid_size = 4

-- Display: Best Bid Size
display.best_bid_size = function(value)
  return "Best Bid Size: "..value
end

-- Dissect: Best Bid Size
dissect.best_bid_size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_bid_size)
  local value = range:le_uint()
  local display = display.best_bid_size(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_bid_size, range, value, display)

  return offset + size_of.best_bid_size
end

-- Size: Best Bid Price
size_of.best_bid_price = 4

-- Display: Best Bid Price
display.best_bid_price = function(value)
  return "Best Bid Price: "..value
end

-- Dissect: Best Bid Price
dissect.best_bid_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_bid_price)
  local value = range:le_int()
  local display = display.best_bid_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_bid_price, range, value, display)

  return offset + size_of.best_bid_price
end

-- Size: Best Bid Denominator Code
size_of.best_bid_denominator_code = 1

-- Display: Best Bid Denominator Code
display.best_bid_denominator_code = function(value)
  return "Best Bid Denominator Code: "..value
end

-- Dissect: Best Bid Denominator Code
dissect.best_bid_denominator_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_bid_denominator_code)
  local value = range:string()
  local display = display.best_bid_denominator_code(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_bid_denominator_code, range, value, display)

  return offset + size_of.best_bid_denominator_code
end

-- Size: Best Bid Participant Id
size_of.best_bid_participant_id = 1

-- Display: Best Bid Participant Id
display.best_bid_participant_id = function(value)
  return "Best Bid Participant Id: "..value
end

-- Dissect: Best Bid Participant Id
dissect.best_bid_participant_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.best_bid_participant_id)
  local value = range:string()
  local display = display.best_bid_participant_id(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.best_bid_participant_id, range, value, display)

  return offset + size_of.best_bid_participant_id
end

-- Display: Short Quote P Message
display.short_quote_p_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote P Message
dissect.short_quote_p_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Best Bid Participant Id: 1 Byte Ascii String
  index = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Denominator Code: 1 Byte Ascii String
  index = dissect.best_bid_denominator_code(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Participant Id: 1 Byte Ascii String
  index = dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Denominator Code: 1 Byte Ascii String
  index = dissect.best_offer_denominator_code(buffer, index, packet, parent)

  -- Best Offer Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_offer_price(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote P Message
dissect.short_quote_p_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_p_message then
    local range = buffer(offset, 37)
    local display = display.short_quote_p_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_p_message, range, display)
  end

  return dissect.short_quote_p_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote O Message
display.short_quote_o_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote O Message
dissect.short_quote_o_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote O Message
dissect.short_quote_o_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_o_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_o_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_o_message, range, display)
  end

  return dissect.short_quote_o_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote N Message
display.short_quote_n_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote N Message
dissect.short_quote_n_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price
  index = dissect.bid_price(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Best Bid Participant Id: 1 Byte Ascii String
  index = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Denominator Code: 1 Byte Ascii String
  index = dissect.best_bid_denominator_code(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Participant Id: 1 Byte Ascii String
  index = dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Denominator Code: 1 Byte Ascii String
  index = dissect.best_offer_denominator_code(buffer, index, packet, parent)

  -- Best Offer Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_offer_price(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote N Message
dissect.short_quote_n_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_n_message then
    local range = buffer(offset, 35)
    local display = display.short_quote_n_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_n_message, range, display)
  end

  return dissect.short_quote_n_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote M Message
display.short_quote_m_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote M Message
dissect.short_quote_m_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Best Bid Participant Id: 1 Byte Ascii String
  index = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Denominator Code: 1 Byte Ascii String
  index = dissect.best_bid_denominator_code(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Participant Id: 1 Byte Ascii String
  index = dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Denominator Code: 1 Byte Ascii String
  index = dissect.best_offer_denominator_code(buffer, index, packet, parent)

  -- Best Offer Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_offer_price(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote M Message
dissect.short_quote_m_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_m_message then
    local range = buffer(offset, 37)
    local display = display.short_quote_m_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_m_message, range, display)
  end

  return dissect.short_quote_m_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote L Message
display.short_quote_l_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote L Message
dissect.short_quote_l_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote L Message
dissect.short_quote_l_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_l_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_l_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_l_message, range, display)
  end

  return dissect.short_quote_l_message_fields(buffer, offset, packet, parent)
end

-- Size: Size
size_of.size = 2

-- Display: Size
display.size = function(value)
  return "Size: "..value
end

-- Dissect: Size
dissect.size = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.size)
  local value = range:uint()
  local display = display.size(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.size, range, value, display)

  return offset + size_of.size
end

-- Size: Price
size_of.price = 4

-- Display: Price
display.price = function(value)
  return "Price: "..value
end

-- Dissect: Price
dissect.price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.price)
  local value = range:le_uint()
  local display = display.price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.price, range, value, display)

  return offset + size_of.price
end

-- Size: Denominator Code
size_of.denominator_code = 1

-- Display: Denominator Code
display.denominator_code = function(value)
  return "Denominator Code: "..value
end

-- Dissect: Denominator Code
dissect.denominator_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.denominator_code)
  local value = range:string()
  local display = display.denominator_code(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.denominator_code, range, value, display)

  return offset + size_of.denominator_code
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
    return "Participant Id: Chicago Board Options Exchange (C)"
  end
  if value == "D" then
    return "Participant Id: Miax Emerald (D)"
  end
  if value == "E" then
    return "Participant Id: Edgx Options (E)"
  end
  if value == "H" then
    return "Participant Id: Ise Gemini (H)"
  end
  if value == "I" then
    return "Participant Id: International Securities Exchange (I)"
  end
  if value == "J" then
    return "Participant Id: Ise Mercury Exchange (J)"
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
    return "Participant Id: Nasdaq Stock Market (Q)"
  end
  if value == "T" then
    return "Participant Id: Nasdaq Omx Bx Options (T)"
  end
  if value == "W" then
    return "Participant Id: C 2 (W)"
  end
  if value == "X" then
    return "Participant Id: Nasdaq Omx Phlx (X)"
  end
  if value == "Z" then
    return "Participant Id: Bats (Z)"
  end

  return "Participant Id: Unknown("..value..")"
end

-- Dissect: Participant Id
dissect.participant_id = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.participant_id)
  local value = range:string()
  local display = display.participant_id(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.participant_id, range, value, display)

  return offset + size_of.participant_id
end

-- Display: Short Quote K Message
display.short_quote_k_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote K Message
dissect.short_quote_k_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote K Message
dissect.short_quote_k_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_k_message then
    local range = buffer(offset, 25)
    local display = display.short_quote_k_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_k_message, range, display)
  end

  return dissect.short_quote_k_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote J Message
display.short_quote_j_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote J Message
dissect.short_quote_j_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote J Message
dissect.short_quote_j_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_j_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_j_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_j_message, range, display)
  end

  return dissect.short_quote_j_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote I Message
display.short_quote_i_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote I Message
dissect.short_quote_i_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote I Message
dissect.short_quote_i_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_i_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_i_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_i_message, range, display)
  end

  return dissect.short_quote_i_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote H Message
display.short_quote_h_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote H Message
dissect.short_quote_h_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote H Message
dissect.short_quote_h_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_h_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_h_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_h_message, range, display)
  end

  return dissect.short_quote_h_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote G Message
display.short_quote_g_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote G Message
dissect.short_quote_g_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote G Message
dissect.short_quote_g_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_g_message then
    local range = buffer(offset, 25)
    local display = display.short_quote_g_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_g_message, range, display)
  end

  return dissect.short_quote_g_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote F Message
display.short_quote_f_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote F Message
dissect.short_quote_f_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote F Message
dissect.short_quote_f_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_f_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_f_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_f_message, range, display)
  end

  return dissect.short_quote_f_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote E Message
display.short_quote_e_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote E Message
dissect.short_quote_e_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote E Message
dissect.short_quote_e_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_e_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_e_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_e_message, range, display)
  end

  return dissect.short_quote_e_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote D Message
display.short_quote_d_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote D Message
dissect.short_quote_d_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote D Message
dissect.short_quote_d_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_d_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_d_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_d_message, range, display)
  end

  return dissect.short_quote_d_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote C Message
display.short_quote_c_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote C Message
dissect.short_quote_c_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote C Message
dissect.short_quote_c_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_c_message then
    local range = buffer(offset, 25)
    local display = display.short_quote_c_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_c_message, range, display)
  end

  return dissect.short_quote_c_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote B Message
display.short_quote_b_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote B Message
dissect.short_quote_b_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote B Message
dissect.short_quote_b_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_b_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_b_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_b_message, range, display)
  end

  return dissect.short_quote_b_message_fields(buffer, offset, packet, parent)
end

-- Display: Short Quote A Message
display.short_quote_a_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote A Message
dissect.short_quote_a_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 4: 4 Byte Ascii String
  index = dissect.security_symbol_4(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_2(buffer, index, packet, parent)

  -- Bid Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.bid_price_2(buffer, index, packet, parent)

  -- Bid Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_2(buffer, index, packet, parent)

  -- Offer Price 2: 2 Byte Signed Fixed Width Integer
  index = dissect.offer_price_2(buffer, index, packet, parent)

  -- Offer Size 2: 2 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_2(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Quote A Message
dissect.short_quote_a_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.short_quote_a_message then
    local range = buffer(offset, 17)
    local display = display.short_quote_a_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_a_message, range, display)
  end

  return dissect.short_quote_a_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Short Quote Message
size_of.short_quote_message_ = function(buffer, offset, shortquotemessageindicator)
  -- Size of Short Quote A Message
  if shortquotemessageindicator == A then
    return 17
  end
  -- Size of Short Quote B Message
  if shortquotemessageindicator == B then
    return 17
  end
  -- Size of Short Quote C Message
  if shortquotemessageindicator == C then
    return 25
  end
  -- Size of Short Quote D Message
  if shortquotemessageindicator == D then
    return 17
  end
  -- Size of Short Quote E Message
  if shortquotemessageindicator == E then
    return 17
  end
  -- Size of Short Quote F Message
  if shortquotemessageindicator == F then
    return 17
  end
  -- Size of Short Quote G Message
  if shortquotemessageindicator == G then
    return 25
  end
  -- Size of Short Quote H Message
  if shortquotemessageindicator == H then
    return 17
  end
  -- Size of Short Quote I Message
  if shortquotemessageindicator == I then
    return 17
  end
  -- Size of Short Quote J Message
  if shortquotemessageindicator == J then
    return 17
  end
  -- Size of Short Quote K Message
  if shortquotemessageindicator == K then
    return 25
  end
  -- Size of Short Quote L Message
  if shortquotemessageindicator == L then
    return 17
  end
  -- Size of Short Quote M Message
  if shortquotemessageindicator == M then
    return 37
  end
  -- Size of Short Quote N Message
  if shortquotemessageindicator == N then
    return 35
  end
  -- Size of Short Quote O Message
  if shortquotemessageindicator == O then
    return 17
  end
  -- Size of Short Quote P Message
  if shortquotemessageindicator == P then
    return 37
  end
  -- Size of Short Quote Space Message
  if shortquotemessageindicator == " " then
    return 17
  end

  return 0
end

-- Display: Short Quote Message
display.short_quote_message_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Short Quote Message
dissect.short_quote_message__branches = function(buffer, offset, packet, parent, shortquotemessageindicator)
  -- Dissect Short Quote A Message
  if shortquotemessageindicator == A then
    return dissect.short_quote_a_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote B Message
  if shortquotemessageindicator == B then
    return dissect.short_quote_b_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote C Message
  if shortquotemessageindicator == C then
    return dissect.short_quote_c_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote D Message
  if shortquotemessageindicator == D then
    return dissect.short_quote_d_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote E Message
  if shortquotemessageindicator == E then
    return dissect.short_quote_e_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote F Message
  if shortquotemessageindicator == F then
    return dissect.short_quote_f_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote G Message
  if shortquotemessageindicator == G then
    return dissect.short_quote_g_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote H Message
  if shortquotemessageindicator == H then
    return dissect.short_quote_h_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote I Message
  if shortquotemessageindicator == I then
    return dissect.short_quote_i_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote J Message
  if shortquotemessageindicator == J then
    return dissect.short_quote_j_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote K Message
  if shortquotemessageindicator == K then
    return dissect.short_quote_k_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote L Message
  if shortquotemessageindicator == L then
    return dissect.short_quote_l_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote M Message
  if shortquotemessageindicator == M then
    return dissect.short_quote_m_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote N Message
  if shortquotemessageindicator == N then
    return dissect.short_quote_n_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote O Message
  if shortquotemessageindicator == O then
    return dissect.short_quote_o_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote P Message
  if shortquotemessageindicator == P then
    return dissect.short_quote_p_message(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote Space Message
  if shortquotemessageindicator == " " then
    return dissect.short_quote_space_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Short Quote Message
dissect.short_quote_message_ = function(buffer, offset, packet, parent, code)
  if not show.short_quote_message_ then
    return dissect.short_quote_message__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.short_quote_message_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.short_quote_message_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_message_, range, display)

  return dissect.short_quote_message__branches(buffer, offset, packet, parent, code)
end

-- Calculate runtime size: Short Quote Category
size_of.short_quote_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of Short Quote Message  field
  local short_quote_message__offset = offset + index
  local short_quote_message__type = buffer(short_quote_message__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.short_quote_message_(buffer, short_quote_message__offset, short_quote_message__type)

  return index
end

-- Display: Short Quote Category
display.short_quote_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Short Quote Category
dissect.short_quote_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Quote Message Type
  index = dissect.short_quote_message_type(buffer, index, packet, parent)

  -- Short Quote Message Indicator
  index = dissect.short_quote_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: Short Quote Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- Short Quote Message : Runtime Type with 17 branches
  index = dissect.short_quote_message_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Short Quote Category
dissect.short_quote_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.short_quote_category then
    local length = size_of.short_quote_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.short_quote_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.short_quote_category, range, display)
  end

  return dissect.short_quote_category_fields(buffer, offset, packet, parent)
end

-- Size: Offer Size 4
size_of.offer_size_4 = 4

-- Display: Offer Size 4
display.offer_size_4 = function(value)
  return "Offer Size 4: "..value
end

-- Dissect: Offer Size 4
dissect.offer_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_size_4)
  local value = range:le_uint()
  local display = display.offer_size_4(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.offer_size_4, range, value, display)

  return offset + size_of.offer_size_4
end

-- Size: Offer Price 4
size_of.offer_price_4 = 4

-- Display: Offer Price 4
display.offer_price_4 = function(value)
  return "Offer Price 4: "..value
end

-- Dissect: Offer Price 4
dissect.offer_price_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.offer_price_4)
  local value = range:le_int()
  local display = display.offer_price_4(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.offer_price_4, range, value, display)

  return offset + size_of.offer_price_4
end

-- Size: Bid Size 4
size_of.bid_size_4 = 4

-- Display: Bid Size 4
display.bid_size_4 = function(value)
  return "Bid Size 4: "..value
end

-- Dissect: Bid Size 4
dissect.bid_size_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_size_4)
  local value = range:le_uint()
  local display = display.bid_size_4(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.bid_size_4, range, value, display)

  return offset + size_of.bid_size_4
end

-- Size: Bid Price 4
size_of.bid_price_4 = 4

-- Display: Bid Price 4
display.bid_price_4 = function(value)
  return "Bid Price 4: "..value
end

-- Dissect: Bid Price 4
dissect.bid_price_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.bid_price_4)
  local value = range:le_int()
  local display = display.bid_price_4(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.bid_price_4, range, value, display)

  return offset + size_of.bid_price_4
end

-- Size: Premium Price Denominator Code
size_of.premium_price_denominator_code = 1

-- Display: Premium Price Denominator Code
display.premium_price_denominator_code = function(value)
  return "Premium Price Denominator Code: "..value
end

-- Dissect: Premium Price Denominator Code
dissect.premium_price_denominator_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.premium_price_denominator_code)
  local value = range:string()
  local display = display.premium_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.premium_price_denominator_code, range, value, display)

  return offset + size_of.premium_price_denominator_code
end

-- Size: Strike Price 4
size_of.strike_price_4 = 4

-- Display: Strike Price 4
display.strike_price_4 = function(value)
  return "Strike Price 4: "..value
end

-- Dissect: Strike Price 4
dissect.strike_price_4 = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price_4)
  local value = range:le_uint()
  local display = display.strike_price_4(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.strike_price_4, range, value, display)

  return offset + size_of.strike_price_4
end

-- Size: Strike Price Denominator Code
size_of.strike_price_denominator_code = 1

-- Display: Strike Price Denominator Code
display.strike_price_denominator_code = function(value)
  return "Strike Price Denominator Code: "..value
end

-- Dissect: Strike Price Denominator Code
dissect.strike_price_denominator_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.strike_price_denominator_code)
  local value = range:string()
  local display = display.strike_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.strike_price_denominator_code, range, value, display)

  return offset + size_of.strike_price_denominator_code
end

-- Display: Long Quote Space Message
display.long_quote_space_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote Space Message
dissect.long_quote_space_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote Space Message
dissect.long_quote_space_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_space_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_space_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_space_message, range, display)
  end

  return dissect.long_quote_space_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote P Message
display.long_quote_p_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote P Message
dissect.long_quote_p_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Best Bid Participant Id: 1 Byte Ascii String
  index = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Denominator Code: 1 Byte Ascii String
  index = dissect.best_bid_denominator_code(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Participant Id: 1 Byte Ascii String
  index = dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Denominator Code: 1 Byte Ascii String
  index = dissect.best_offer_denominator_code(buffer, index, packet, parent)

  -- Best Offer Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_offer_price(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote P Message
dissect.long_quote_p_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_p_message then
    local range = buffer(offset, 51)
    local display = display.long_quote_p_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_p_message, range, display)
  end

  return dissect.long_quote_p_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote O Message
display.long_quote_o_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote O Message
dissect.long_quote_o_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote O Message
dissect.long_quote_o_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_o_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_o_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_o_message, range, display)
  end

  return dissect.long_quote_o_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote N Message
display.long_quote_n_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote N Message
dissect.long_quote_n_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Best Bid Participant Id: 1 Byte Ascii String
  index = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Denominator Code: 1 Byte Ascii String
  index = dissect.best_bid_denominator_code(buffer, index, packet, parent)

  -- Best Bid Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_bid_price(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Participant Id: 1 Byte Ascii String
  index = dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Denominator Code: 1 Byte Ascii String
  index = dissect.best_offer_denominator_code(buffer, index, packet, parent)

  -- Best Offer Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_offer_price(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote N Message
dissect.long_quote_n_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_n_message then
    local range = buffer(offset, 51)
    local display = display.long_quote_n_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_n_message, range, display)
  end

  return dissect.long_quote_n_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote M Message
display.long_quote_m_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote M Message
dissect.long_quote_m_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Best Bid Participant Id: 1 Byte Ascii String
  index = dissect.best_bid_participant_id(buffer, index, packet, parent)

  -- Best Bid Denominator Code: 1 Byte Ascii String
  index = dissect.best_bid_denominator_code(buffer, index, packet, parent)

  -- Best Bid Price 4
  index = dissect.best_bid_price_4(buffer, index, packet, parent)

  -- Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_bid_size(buffer, index, packet, parent)

  -- Best Offer Participant Id: 1 Byte Ascii String
  index = dissect.best_offer_participant_id(buffer, index, packet, parent)

  -- Best Offer Denominator Code: 1 Byte Ascii String
  index = dissect.best_offer_denominator_code(buffer, index, packet, parent)

  -- Best Offer Price: 4 Byte Signed Fixed Width Integer
  index = dissect.best_offer_price(buffer, index, packet, parent)

  -- Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index = dissect.best_offer_size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote M Message
dissect.long_quote_m_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_m_message then
    local range = buffer(offset, 47)
    local display = display.long_quote_m_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_m_message, range, display)
  end

  return dissect.long_quote_m_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote L Message
display.long_quote_l_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote L Message
dissect.long_quote_l_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote L Message
dissect.long_quote_l_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_l_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_l_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_l_message, range, display)
  end

  return dissect.long_quote_l_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote K Message
display.long_quote_k_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote K Message
dissect.long_quote_k_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote K Message
dissect.long_quote_k_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_k_message then
    local range = buffer(offset, 39)
    local display = display.long_quote_k_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_k_message, range, display)
  end

  return dissect.long_quote_k_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote J Message
display.long_quote_j_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote J Message
dissect.long_quote_j_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote J Message
dissect.long_quote_j_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_j_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_j_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_j_message, range, display)
  end

  return dissect.long_quote_j_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote I Message
display.long_quote_i_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote I Message
dissect.long_quote_i_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote I Message
dissect.long_quote_i_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_i_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_i_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_i_message, range, display)
  end

  return dissect.long_quote_i_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote H Message
display.long_quote_h_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote H Message
dissect.long_quote_h_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote H Message
dissect.long_quote_h_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_h_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_h_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_h_message, range, display)
  end

  return dissect.long_quote_h_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote G Message
display.long_quote_g_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote G Message
dissect.long_quote_g_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote G Message
dissect.long_quote_g_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_g_message then
    local range = buffer(offset, 39)
    local display = display.long_quote_g_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_g_message, range, display)
  end

  return dissect.long_quote_g_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote F Message
display.long_quote_f_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote F Message
dissect.long_quote_f_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote F Message
dissect.long_quote_f_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_f_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_f_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_f_message, range, display)
  end

  return dissect.long_quote_f_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote E Message
display.long_quote_e_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote E Message
dissect.long_quote_e_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote E Message
dissect.long_quote_e_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_e_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_e_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_e_message, range, display)
  end

  return dissect.long_quote_e_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote D Message
display.long_quote_d_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote D Message
dissect.long_quote_d_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote D Message
dissect.long_quote_d_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_d_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_d_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_d_message, range, display)
  end

  return dissect.long_quote_d_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote C Message
display.long_quote_c_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote C Message
dissect.long_quote_c_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Denominator Code: 1 Byte Ascii String
  index = dissect.denominator_code(buffer, index, packet, parent)

  -- Price: 4 Byte Unsigned Fixed Width Integer
  index = dissect.price(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote C Message
dissect.long_quote_c_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_c_message then
    local range = buffer(offset, 39)
    local display = display.long_quote_c_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_c_message, range, display)
  end

  return dissect.long_quote_c_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote B Message
display.long_quote_b_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote B Message
dissect.long_quote_b_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote B Message
dissect.long_quote_b_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_b_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_b_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_b_message, range, display)
  end

  return dissect.long_quote_b_message_fields(buffer, offset, packet, parent)
end

-- Display: Long Quote A Message
display.long_quote_a_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote A Message
dissect.long_quote_a_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Bid Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.bid_size_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  -- Offer Size 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.offer_size_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Long Quote A Message
dissect.long_quote_a_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.long_quote_a_message then
    local range = buffer(offset, 31)
    local display = display.long_quote_a_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_a_message, range, display)
  end

  return dissect.long_quote_a_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Long Quote Message
size_of.long_quote_message_ = function(buffer, offset, longquotemessageindicator)
  -- Size of Long Quote A Message
  if longquotemessageindicator == A then
    return 31
  end
  -- Size of Long Quote B Message
  if longquotemessageindicator == B then
    return 31
  end
  -- Size of Long Quote C Message
  if longquotemessageindicator == C then
    return 39
  end
  -- Size of Long Quote D Message
  if longquotemessageindicator == D then
    return 31
  end
  -- Size of Long Quote E Message
  if longquotemessageindicator == E then
    return 31
  end
  -- Size of Long Quote F Message
  if longquotemessageindicator == F then
    return 31
  end
  -- Size of Long Quote G Message
  if longquotemessageindicator == G then
    return 39
  end
  -- Size of Long Quote H Message
  if longquotemessageindicator == H then
    return 31
  end
  -- Size of Long Quote I Message
  if longquotemessageindicator == I then
    return 31
  end
  -- Size of Long Quote J Message
  if longquotemessageindicator == J then
    return 31
  end
  -- Size of Long Quote K Message
  if longquotemessageindicator == K then
    return 39
  end
  -- Size of Long Quote L Message
  if longquotemessageindicator == L then
    return 31
  end
  -- Size of Long Quote M Message
  if longquotemessageindicator == M then
    return 47
  end
  -- Size of Long Quote N Message
  if longquotemessageindicator == N then
    return 51
  end
  -- Size of Long Quote O Message
  if longquotemessageindicator == O then
    return 31
  end
  -- Size of Long Quote P Message
  if longquotemessageindicator == P then
    return 51
  end
  -- Size of Long Quote Space Message
  if longquotemessageindicator == " " then
    return 31
  end

  return 0
end

-- Display: Long Quote Message
display.long_quote_message_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Long Quote Message
dissect.long_quote_message__branches = function(buffer, offset, packet, parent, longquotemessageindicator)
  -- Dissect Long Quote A Message
  if longquotemessageindicator == A then
    return dissect.long_quote_a_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote B Message
  if longquotemessageindicator == B then
    return dissect.long_quote_b_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote C Message
  if longquotemessageindicator == C then
    return dissect.long_quote_c_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote D Message
  if longquotemessageindicator == D then
    return dissect.long_quote_d_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote E Message
  if longquotemessageindicator == E then
    return dissect.long_quote_e_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote F Message
  if longquotemessageindicator == F then
    return dissect.long_quote_f_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote G Message
  if longquotemessageindicator == G then
    return dissect.long_quote_g_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote H Message
  if longquotemessageindicator == H then
    return dissect.long_quote_h_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote I Message
  if longquotemessageindicator == I then
    return dissect.long_quote_i_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote J Message
  if longquotemessageindicator == J then
    return dissect.long_quote_j_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote K Message
  if longquotemessageindicator == K then
    return dissect.long_quote_k_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote L Message
  if longquotemessageindicator == L then
    return dissect.long_quote_l_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote M Message
  if longquotemessageindicator == M then
    return dissect.long_quote_m_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote N Message
  if longquotemessageindicator == N then
    return dissect.long_quote_n_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote O Message
  if longquotemessageindicator == O then
    return dissect.long_quote_o_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote P Message
  if longquotemessageindicator == P then
    return dissect.long_quote_p_message(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote Space Message
  if longquotemessageindicator == " " then
    return dissect.long_quote_space_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Long Quote Message
dissect.long_quote_message_ = function(buffer, offset, packet, parent, code)
  if not show.long_quote_message_ then
    return dissect.long_quote_message__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.long_quote_message_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.long_quote_message_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_message_, range, display)

  return dissect.long_quote_message__branches(buffer, offset, packet, parent, code)
end

-- Calculate runtime size: Long Quote Category
size_of.long_quote_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of Long Quote Message  field
  local long_quote_message__offset = offset + index
  local long_quote_message__type = buffer(long_quote_message__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.long_quote_message_(buffer, long_quote_message__offset, long_quote_message__type)

  return index
end

-- Display: Long Quote Category
display.long_quote_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Long Quote Category
dissect.long_quote_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Long Quote Message Type
  index = dissect.long_quote_message_type(buffer, index, packet, parent)

  -- Long Quote Message Indicator
  index = dissect.long_quote_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: Long Quote Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- Long Quote Message : Runtime Type with 17 branches
  index = dissect.long_quote_message_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Long Quote Category
dissect.long_quote_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.long_quote_category then
    local length = size_of.long_quote_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.long_quote_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.long_quote_category, range, display)
  end

  return dissect.long_quote_category_fields(buffer, offset, packet, parent)
end

-- Size: Underlying Price
size_of.underlying_price = 8

-- Display: Underlying Price
display.underlying_price = function(value)
  return "Underlying Price: "..value
end

-- Dissect: Underlying Price
dissect.underlying_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_price)
  local value = range:le_int64()
  local display = display.underlying_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.underlying_price, range, value, display)

  return offset + size_of.underlying_price
end

-- Size: Underlying Price Denominator Code
size_of.underlying_price_denominator_code = 1

-- Display: Underlying Price Denominator Code
display.underlying_price_denominator_code = function(value)
  return "Underlying Price Denominator Code: "..value
end

-- Dissect: Underlying Price Denominator Code
dissect.underlying_price_denominator_code = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.underlying_price_denominator_code)
  local value = range:string()
  local display = display.underlying_price_denominator_code(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.underlying_price_denominator_code, range, value, display)

  return offset + size_of.underlying_price_denominator_code
end

-- Size: Net Change
size_of.net_change = 4

-- Display: Net Change
display.net_change = function(value)
  return "Net Change: "..value
end

-- Dissect: Net Change
dissect.net_change = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.net_change)
  local value = range:le_int()
  local display = display.net_change(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.net_change, range, value, display)

  return offset + size_of.net_change
end

-- Size: Last Price
size_of.last_price = 4

-- Display: Last Price
display.last_price = function(value)
  return "Last Price: "..value
end

-- Dissect: Last Price
dissect.last_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.last_price)
  local value = range:le_int()
  local display = display.last_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.last_price, range, value, display)

  return offset + size_of.last_price
end

-- Size: Low Price
size_of.low_price = 4

-- Display: Low Price
display.low_price = function(value)
  return "Low Price: "..value
end

-- Dissect: Low Price
dissect.low_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.low_price)
  local value = range:le_int()
  local display = display.low_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.low_price, range, value, display)

  return offset + size_of.low_price
end

-- Size: High Price
size_of.high_price = 4

-- Display: High Price
display.high_price = function(value)
  return "High Price: "..value
end

-- Dissect: High Price
dissect.high_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.high_price)
  local value = range:le_int()
  local display = display.high_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.high_price, range, value, display)

  return offset + size_of.high_price
end

-- Size: Open Price
size_of.open_price = 4

-- Display: Open Price
display.open_price = function(value)
  return "Open Price: "..value
end

-- Dissect: Open Price
dissect.open_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_price)
  local value = range:le_int()
  local display = display.open_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.open_price, range, value, display)

  return offset + size_of.open_price
end

-- Size: Open Interest Volume
size_of.open_interest_volume = 4

-- Display: Open Interest Volume
display.open_interest_volume = function(value)
  return "Open Interest Volume: "..value
end

-- Dissect: Open Interest Volume
dissect.open_interest_volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.open_interest_volume)
  local value = range:le_uint()
  local display = display.open_interest_volume(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.open_interest_volume, range, value, display)

  return offset + size_of.open_interest_volume
end

-- Size: Volume
size_of.volume = 4

-- Display: Volume
display.volume = function(value)
  if value == A then
    return "Volume: Nyse American (A)"
  end
  if value == B then
    return "Volume: Box (B)"
  end
  if value == C then
    return "Volume: Cboe (C)"
  end
  if value == E then
    return "Volume: Edgx (E)"
  end
  if value == H then
    return "Volume: Gemini (H)"
  end
  if value == I then
    return "Volume: Ise (I)"
  end
  if value == J then
    return "Volume: Mercury (J)"
  end
  if value == M then
    return "Volume: Miax (M)"
  end
  if value == N then
    return "Volume: Nyse Arca (N)"
  end
  if value == O then
    return "Volume: Opra (O)"
  end
  if value == P then
    return "Volume: Miax Pearl (P)"
  end
  if value == Q then
    return "Volume: Nasdaq (Q)"
  end
  if value == W then
    return "Volume: C 2 (W)"
  end
  if value == T then
    return "Volume: Nasdaq Bx (T)"
  end
  if value == X then
    return "Volume: Nasdaq Phlx (X)"
  end
  if value == Z then
    return "Volume: Bats (Z)"
  end

  return "Volume: Unknown("..value..")"
end

-- Dissect: Volume
dissect.volume = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.volume)
  local value = range:le_uint()
  local display = display.volume(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.volume, range, value, display)

  return offset + size_of.volume
end

-- Display: Equity Eod Message
display.equity_eod_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity Eod Message
dissect.equity_eod_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Enum with 16 values
  index = dissect.volume(buffer, index, packet, parent)

  -- Open Interest Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.open_interest_volume(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Open Price: 4 Byte Signed Fixed Width Integer
  index = dissect.open_price(buffer, index, packet, parent)

  -- High Price: 4 Byte Signed Fixed Width Integer
  index = dissect.high_price(buffer, index, packet, parent)

  -- Low Price: 4 Byte Signed Fixed Width Integer
  index = dissect.low_price(buffer, index, packet, parent)

  -- Last Price: 4 Byte Signed Fixed Width Integer
  index = dissect.last_price(buffer, index, packet, parent)

  -- Net Change: 4 Byte Signed Fixed Width Integer
  index = dissect.net_change(buffer, index, packet, parent)

  -- Underlying Price Denominator Code: 1 Byte Ascii String
  index = dissect.underlying_price_denominator_code(buffer, index, packet, parent)

  -- Underlying Price: 8 Byte Signed Fixed Width Integer
  index = dissect.underlying_price(buffer, index, packet, parent)

  -- Bid Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.bid_price_4(buffer, index, packet, parent)

  -- Offer Price 4: 4 Byte Signed Fixed Width Integer
  index = dissect.offer_price_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity Eod Message
dissect.equity_eod_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_eod_message then
    local range = buffer(offset, 60)
    local display = display.equity_eod_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.equity_eod_message, range, display)
  end

  return dissect.equity_eod_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Equity EOD Payload
size_of.equity_eod_payload_ = function(buffer, offset, equityeodmessageindicator)
  -- Size of Equity Eod Message
  if equityeodmessageindicator == " " then
    return 60
  end

  return 0
end

-- Display: Equity EOD Payload
display.equity_eod_payload_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Equity EOD Payload
dissect.equity_eod_payload__branches = function(buffer, offset, packet, parent, equityeodmessageindicator)
  -- Dissect Equity Eod Message
  if equityeodmessageindicator == " " then
    return dissect.equity_eod_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Equity EOD Payload
dissect.equity_eod_payload_ = function(buffer, offset, packet, parent, code)
  if not show.equity_eod_payload_ then
    return dissect.equity_eod_payload__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.equity_eod_payload_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.equity_eod_payload_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.equity_eod_payload_, range, display)

  return dissect.equity_eod_payload__branches(buffer, offset, packet, parent, code)
end

-- Calculate runtime size: Equity EOD Category
size_of.equity_eod_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of Equity EOD Payload  field
  local equity_eod_payload__offset = offset + index
  local equity_eod_payload__type = buffer(equity_eod_payload__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.equity_eod_payload_(buffer, equity_eod_payload__offset, equity_eod_payload__type)

  return index
end

-- Display: Equity EOD Category
display.equity_eod_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity EOD Category
dissect.equity_eod_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Equity EOD Message Type
  index = dissect.equity_eod_message_type(buffer, index, packet, parent)

  -- Equity EOD Message Indicator
  index = dissect.equity_eod_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: Equity EOD Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- Equity EOD Payload : Runtime Type with 1 branches
  index = dissect.equity_eod_payload_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Equity EOD Category
dissect.equity_eod_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.equity_eod_category then
    local length = size_of.equity_eod_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.equity_eod_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.equity_eod_category, range, display)
  end

  return dissect.equity_eod_category_fields(buffer, offset, packet, parent)
end

-- Display: Open Interest Message
display.open_interest_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Interest Message
dissect.open_interest_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Open Interest Volume: 4 Byte Unsigned Fixed Width Integer
  index = dissect.open_interest_volume(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Interest Message
dissect.open_interest_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.open_interest_message then
    local range = buffer(offset, 18)
    local display = display.open_interest_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.open_interest_message, range, display)
  end

  return dissect.open_interest_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Open Interest Payload
size_of.open_interest_payload_ = function(buffer, offset, openinterestmessageindicator)
  -- Size of Open Interest Message
  if openinterestmessageindicator == " " then
    return 18
  end

  return 0
end

-- Display: Open Interest Payload
display.open_interest_payload_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Open Interest Payload
dissect.open_interest_payload__branches = function(buffer, offset, packet, parent, openinterestmessageindicator)
  -- Dissect Open Interest Message
  if openinterestmessageindicator == " " then
    return dissect.open_interest_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Open Interest Payload
dissect.open_interest_payload_ = function(buffer, offset, packet, parent, code)
  if not show.open_interest_payload_ then
    return dissect.open_interest_payload__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.open_interest_payload_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.open_interest_payload_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.open_interest_payload_, range, display)

  return dissect.open_interest_payload__branches(buffer, offset, packet, parent, code)
end

-- Calculate runtime size: Open Interest Category
size_of.open_interest_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of Open Interest Payload  field
  local open_interest_payload__offset = offset + index
  local open_interest_payload__type = buffer(open_interest_payload__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.open_interest_payload_(buffer, open_interest_payload__offset, open_interest_payload__type)

  return index
end

-- Display: Open Interest Category
display.open_interest_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Open Interest Category
dissect.open_interest_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Open Interest Message Type
  index = dissect.open_interest_message_type(buffer, index, packet, parent)

  -- Open Interest Message Indicator
  index = dissect.open_interest_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: Open Interest Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- Open Interest Payload : Runtime Type with 1 branches
  index = dissect.open_interest_payload_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Open Interest Category
dissect.open_interest_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.open_interest_category then
    local length = size_of.open_interest_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.open_interest_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.open_interest_category, range, display)
  end

  return dissect.open_interest_category_fields(buffer, offset, packet, parent)
end

-- Size: Trade Identifier
size_of.trade_identifier = 4

-- Display: Trade Identifier
display.trade_identifier = function(value)
  return "Trade Identifier: "..value
end

-- Dissect: Trade Identifier
dissect.trade_identifier = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.trade_identifier)
  local value = range:le_uint()
  local display = display.trade_identifier(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.trade_identifier, range, value, display)

  return offset + size_of.trade_identifier
end

-- Size: Premium Price
size_of.premium_price = 4

-- Display: Premium Price
display.premium_price = function(value)
  return "Premium Price: "..value
end

-- Dissect: Premium Price
dissect.premium_price = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.premium_price)
  local value = range:le_int()
  local display = display.premium_price(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.premium_price, range, value, display)

  return offset + size_of.premium_price
end

-- Display: Equity And Index Last Sale Message
display.equity_and_index_last_sale_message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity And Index Last Sale Message
dissect.equity_and_index_last_sale_message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Symbol 5: 5 Byte Ascii String
  index = dissect.security_symbol_5(buffer, index, packet, parent)

  -- Reserved 1: 1 Byte
  index = dissect.reserved_1(buffer, index, packet, parent)

  -- Expiration Month: 1 Byte Ascii String Enum with 24 values
  index = dissect.expiration_month(buffer, index, packet, parent)

  -- Expiration Day: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_day(buffer, index, packet, parent)

  -- Expiration Year: 1 Byte Unsigned Fixed Width Integer
  index = dissect.expiration_year(buffer, index, packet, parent)

  -- Strike Price Denominator Code: 1 Byte Ascii String
  index = dissect.strike_price_denominator_code(buffer, index, packet, parent)

  -- Strike Price 4: 4 Byte Unsigned Fixed Width Integer
  index = dissect.strike_price_4(buffer, index, packet, parent)

  -- Volume: 4 Byte Unsigned Fixed Width Integer Enum with 16 values
  index = dissect.volume(buffer, index, packet, parent)

  -- Premium Price Denominator Code: 1 Byte Ascii String
  index = dissect.premium_price_denominator_code(buffer, index, packet, parent)

  -- Premium Price: 4 Byte Signed Fixed Width Integer
  index = dissect.premium_price(buffer, index, packet, parent)

  -- Trade Identifier: 4 Byte Unsigned Fixed Width Integer
  index = dissect.trade_identifier(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index = dissect.reserved_4(buffer, index, packet, parent)

  return index
end

-- Dissect: Equity And Index Last Sale Message
dissect.equity_and_index_last_sale_message = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.equity_and_index_last_sale_message then
    local range = buffer(offset, 31)
    local display = display.equity_and_index_last_sale_message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.equity_and_index_last_sale_message, range, display)
  end

  return dissect.equity_and_index_last_sale_message_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Equity Index Last Sale Payload
size_of.equity_index_last_sale_payload_ = function(buffer, offset, equityindexlastsalemessageindicator)
  -- Size of Equity And Index Last Sale Message
  if equityindexlastsalemessageindicator == " " then
    return 31
  end

  return 0
end

-- Display: Equity Index Last Sale Payload
display.equity_index_last_sale_payload_ = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Equity Index Last Sale Payload
dissect.equity_index_last_sale_payload__branches = function(buffer, offset, packet, parent, equityindexlastsalemessageindicator)
  -- Dissect Equity And Index Last Sale Message
  if equityindexlastsalemessageindicator == " " then
    return dissect.equity_and_index_last_sale_message(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Equity Index Last Sale Payload
dissect.equity_index_last_sale_payload_ = function(buffer, offset, packet, parent, code)
  if not show.equity_index_last_sale_payload_ then
    return dissect.equity_index_last_sale_payload__branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.equity_index_last_sale_payload_(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.equity_index_last_sale_payload_(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.equity_index_last_sale_payload_, range, display)

  return dissect.equity_index_last_sale_payload__branches(buffer, offset, packet, parent, code)
end

-- Calculate runtime size: Equity Index Last Sale Category
size_of.equity_index_last_sale_category = function(buffer, offset)
  local index = 0

  index = index + 8

  -- Calculate runtime size of Equity Index Last Sale Payload  field
  local equity_index_last_sale_payload__offset = offset + index
  local equity_index_last_sale_payload__type = buffer(equity_index_last_sale_payload__offset - 8, 0):bytes():tohex(false, " ")
  index = index + size_of.equity_index_last_sale_payload_(buffer, equity_index_last_sale_payload__offset, equity_index_last_sale_payload__type)

  return index
end

-- Display: Equity Index Last Sale Category
display.equity_index_last_sale_category = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Equity Index Last Sale Category
dissect.equity_index_last_sale_category_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Equity Index Last Sale Message Type
  index = dissect.equity_index_last_sale_message_type(buffer, index, packet, parent)

  -- Equity Index Last Sale Message Indicator
  index = dissect.equity_index_last_sale_message_indicator_(buffer, index, packet, parent)

  -- Transaction ID : 8 Byte Unsigned Fixed Width Integer
  index = dissect.transaction_id_(buffer, index, packet, parent)

  -- Dependency element: Equity Index Last Sale Message Indicator
  local code = buffer(index - 8, 0):bytes():tohex(false, " ")

  -- Equity Index Last Sale Payload : Runtime Type with 1 branches
  index = dissect.equity_index_last_sale_payload_(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Equity Index Last Sale Category
dissect.equity_index_last_sale_category = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.equity_index_last_sale_category then
    local length = size_of.equity_index_last_sale_category(buffer, offset)
    local range = buffer(offset, length)
    local display = display.equity_index_last_sale_category(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.equity_index_last_sale_category, range, display)
  end

  return dissect.equity_index_last_sale_category_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size of: Category Data
size_of.category_data = function(buffer, offset, messagecategory)
  -- Size of Equity Index Last Sale Category
  if messagecategory == "a" then
    return size_of.equity_index_last_sale_category(buffer, offset)
  end
  -- Size of Open Interest Category
  if messagecategory == "d" then
    return size_of.open_interest_category(buffer, offset)
  end
  -- Size of Equity EOD Category
  if messagecategory == "f" then
    return size_of.equity_eod_category(buffer, offset)
  end
  -- Size of Long Quote Category
  if messagecategory == "k" then
    return size_of.long_quote_category(buffer, offset)
  end
  -- Size of Short Quote Category
  if messagecategory == "q" then
    return size_of.short_quote_category(buffer, offset)
  end
  -- Size of ADMINISTRATIVE Category
  if messagecategory == "C" then
    return size_of.administrative_category(buffer, offset)
  end
  -- Size of CONTROL Category
  if messagecategory == "H" then
    return size_of.control_category(buffer, offset)
  end
  -- Size of UNDERLYING VALUE Category
  if messagecategory == "Y" then
    return size_of.underlying_value_category(buffer, offset)
  end

  return 0
end

-- Display: Category Data
display.category_data = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Category Data
dissect.category_data_branches = function(buffer, offset, packet, parent, messagecategory)
  -- Dissect Equity Index Last Sale Category
  if messagecategory == "a" then
    return dissect.equity_index_last_sale_category(buffer, offset, packet, parent)
  end
  -- Dissect Open Interest Category
  if messagecategory == "d" then
    return dissect.open_interest_category(buffer, offset, packet, parent)
  end
  -- Dissect Equity EOD Category
  if messagecategory == "f" then
    return dissect.equity_eod_category(buffer, offset, packet, parent)
  end
  -- Dissect Long Quote Category
  if messagecategory == "k" then
    return dissect.long_quote_category(buffer, offset, packet, parent)
  end
  -- Dissect Short Quote Category
  if messagecategory == "q" then
    return dissect.short_quote_category(buffer, offset, packet, parent)
  end
  -- Dissect ADMINISTRATIVE Category
  if messagecategory == "C" then
    return dissect.administrative_category(buffer, offset, packet, parent)
  end
  -- Dissect CONTROL Category
  if messagecategory == "H" then
    return dissect.control_category(buffer, offset, packet, parent)
  end
  -- Dissect UNDERLYING VALUE Category
  if messagecategory == "Y" then
    return dissect.underlying_value_category(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Category Data
dissect.category_data = function(buffer, offset, packet, parent, code)
  if not show.category_data then
    return dissect.category_data_branches(buffer, offset, packet, parent, code)
  end

  -- Calculate size and check that branch is not empty
  local size = size_of.category_data(buffer, offset, code)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = display.category_data(buffer, packet, parent)
  local element = parent:add(opra_options_recipient_obdi_v2_9.fields.category_data, range, display)

  return dissect.category_data_branches(buffer, offset, packet, parent, code)
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
    return "Message Category: Equity Eod Message (f)"
  end
  if value == "k" then
    return "Message Category: Long Quote A Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote B Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote C Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote D Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote E Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote F Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote G Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote H Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote I Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote J Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote K Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote L Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote M Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote N Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote O Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote P Message (k)"
  end
  if value == "k" then
    return "Message Category: Long Quote Space Message (k)"
  end
  if value == "q" then
    return "Message Category: Short Quote A Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote B Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote C Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote D Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote E Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote F Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote G Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote H Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote I Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote J Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote K Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote L Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote M Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote N Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote O Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote P Message (q)"
  end
  if value == "q" then
    return "Message Category: Short Quote Space Message (q)"
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
  local range = buffer(offset, size_of.message_category)
  local value = range:string()
  local display = display.message_category(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.message_category, range, value, display)

  return offset + size_of.message_category
end

-- Display: Message Header
display.message_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message Header
dissect.message_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 17 values
  index = dissect.participant_id(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 40 values
  index = dissect.message_category(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
dissect.message_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.message_header then
    local range = buffer(offset, 2)
    local display = display.message_header(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.message_header, range, display)
  end

  return dissect.message_header_fields(buffer, offset, packet, parent)
end

-- Calculate runtime size: Message
size_of.message = function(buffer, offset)
  local index = 0

  index = index + 2

  -- Calculate runtime size of Category Data field
  local category_data_offset = offset + index
  local category_data_type = buffer(category_data_offset - 1, 1):string()
  index = index + size_of.category_data(buffer, category_data_offset, category_data_type)

  return index
end

-- Display: Message
display.message = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Message
dissect.message_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Header: Struct of 2 fields
  index = dissect.message_header(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local code = buffer(index - 1, 1):string()

  -- Category Data: Runtime Type with 8 branches
  index = dissect.category_data(buffer, index, packet, parent, code)

  return index
end

-- Dissect: Message
dissect.message = function(buffer, offset, packet, parent)
  -- Optionally add dynamic struct element to protocol tree
  if show.message then
    local length = size_of.message(buffer, offset)
    local range = buffer(offset, length)
    local display = display.message(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.message, range, display)
  end

  return dissect.message_fields(buffer, offset, packet, parent)
end

-- Size: Checksum
size_of.checksum = 2

-- Display: Checksum
display.checksum = function(value)
  return "Checksum: "..value
end

-- Dissect: Checksum
dissect.checksum = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.checksum)
  local value = range:uint()
  local display = display.checksum(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.checksum, range, value, display)

  return offset + size_of.checksum
end

-- Size: Message Count
size_of.message_count = 1

-- Display: Message Count
display.message_count = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
dissect.message_count = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.message_count)
  local value = range:uint()
  local display = display.message_count(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.message_count, range, value, display)

  return offset + size_of.message_count
end

-- Size: Block Seq Num
size_of.block_seq_num = 4

-- Display: Block Seq Num
display.block_seq_num = function(value)
  return "Block Seq Num: "..value
end

-- Dissect: Block Seq Num
dissect.block_seq_num = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.block_seq_num)
  local value = range:uint()
  local display = display.block_seq_num(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.block_seq_num, range, value, display)

  return offset + size_of.block_seq_num
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
  local range = buffer(offset, size_of.session_indicator)
  local value = range:uint()
  local display = display.session_indicator(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.session_indicator, range, value, display)

  return offset + size_of.session_indicator
end

-- Size: Retransmission Indicator
size_of.retransmission_indicator = 1

-- Display: Retransmission Indicator
display.retransmission_indicator = function(value)
  return "Retransmission Indicator: "..value
end

-- Dissect: Retransmission Indicator
dissect.retransmission_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.retransmission_indicator)
  local value = range:string()
  local display = display.retransmission_indicator(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.retransmission_indicator, range, value, display)

  return offset + size_of.retransmission_indicator
end

-- Size: Data Feed Indicator
size_of.data_feed_indicator = 1

-- Display: Data Feed Indicator
display.data_feed_indicator = function(value)
  return "Data Feed Indicator: "..value
end

-- Dissect: Data Feed Indicator
dissect.data_feed_indicator = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.data_feed_indicator)
  local value = range:string()
  local display = display.data_feed_indicator(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.data_feed_indicator, range, value, display)

  return offset + size_of.data_feed_indicator
end

-- Size: Version
size_of.version = 1

-- Display: Version
display.version = function(value)
  return "Version: "..value
end

-- Dissect: Version
dissect.version = function(buffer, offset, packet, parent)
  local range = buffer(offset, size_of.version)
  local value = range:uint()
  local display = display.version(value, buffer, offset, packet, parent)

  parent:add(opra_options_recipient_obdi_v2_9.fields.version, range, value, display)

  return offset + size_of.version
end

-- Display: Packet Header
display.packet_header = function(buffer, offset, size, packet, parent)
  return ""
end

-- Dissect Fields: Packet Header
dissect.packet_header_fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index = dissect.version(buffer, index, packet, parent)

  -- Size: 2 Byte Unsigned Fixed Width Integer
  index = dissect.size(buffer, index, packet, parent)

  -- Data Feed Indicator: 1 Byte Ascii String
  index = dissect.data_feed_indicator(buffer, index, packet, parent)

  -- Retransmission Indicator: 1 Byte Ascii String
  index = dissect.retransmission_indicator(buffer, index, packet, parent)

  -- Session Indicator: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index = dissect.session_indicator(buffer, index, packet, parent)

  -- Block Seq Num: 4 Byte Unsigned Fixed Width Integer
  index = dissect.block_seq_num(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index = dissect.message_count(buffer, index, packet, parent)

  -- Block Timestamp
  index = dissect.block_timestamp(buffer, index, packet, parent)

  -- Checksum: 2 Byte Unsigned Fixed Width Integer
  index = dissect.checksum(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
dissect.packet_header = function(buffer, offset, packet, parent)
  -- Optionally add struct element to protocol tree
  if show.packet_header then
    local range = buffer(offset, 13)
    local display = display.packet_header(buffer, packet, parent)
    parent = parent:add(opra_options_recipient_obdi_v2_9.fields.packet_header, range, display)
  end

  return dissect.packet_header_fields(buffer, offset, packet, parent)
end

-- Dissect Packet
dissect.packet = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 9 fields
  index = dissect.packet_header(buffer, index, packet, parent)

  -- Dependency element: Message Count
  local message_count = buffer(index - 3, 1):uint()

  -- Message: Struct of 2 fields
  for i = 1, message_count do
    index = dissect.message(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function opra_options_recipient_obdi_v2_9.init()
end

-- Dissector for Opra Options Recipient Obdi 2.9
function opra_options_recipient_obdi_v2_9.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = opra_options_recipient_obdi_v2_9.name

  -- Dissect protocol
  local protocol = parent:add(opra_options_recipient_obdi_v2_9, buffer(), opra_options_recipient_obdi_v2_9.description, "("..buffer:len().." Bytes)")
  local protocol_size = dissect.packet(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, opra_options_recipient_obdi_v2_9)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
verify.opra_options_recipient_obdi_v2_9_packet_size = function(buffer)

  return true
end

-- Dissector Heuristic for Opra Options Recipient Obdi 2.9
local function opra_options_recipient_obdi_v2_9_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not verify.opra_options_recipient_obdi_v2_9_packet_size(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = opra_options_recipient_obdi_v2_9
  opra_options_recipient_obdi_v2_9.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Opra Options Recipient Obdi 2.9
opra_options_recipient_obdi_v2_9:register_heuristic("udp", opra_options_recipient_obdi_v2_9_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Options Price Reporting Authority
--   Version: 2.9
--   Date: Wednesday, October 24, 2018
--   Specification: opra_output_binary_dr_spec.pdf
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
