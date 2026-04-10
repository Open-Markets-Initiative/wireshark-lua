-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse Equities Bqt Xdp 2.4.a Protocol
local omi_nyse_equities_bqt_xdp_v2_4_a = Proto("Nyse.Equities.Bqt.Xdp.v2.4.a.Lua", "Nyse Equities Bqt Xdp 2.4.a")

-- Protocol table
local nyse_equities_bqt_xdp_v2_4_a = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse Equities Bqt Xdp 2.4.a Fields
omi_nyse_equities_bqt_xdp_v2_4_a.fields.ask_price = ProtoField.new("Ask Price", "nyse.equities.bqt.xdp.v2.4.a.askprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.ask_quote_condition = ProtoField.new("Ask Quote Condition", "nyse.equities.bqt.xdp.v2.4.a.askquotecondition", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.ask_volume = ProtoField.new("Ask Volume", "nyse.equities.bqt.xdp.v2.4.a.askvolume", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.bid_price = ProtoField.new("Bid Price", "nyse.equities.bqt.xdp.v2.4.a.bidprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.bid_quote_condition = ProtoField.new("Bid Quote Condition", "nyse.equities.bqt.xdp.v2.4.a.bidquotecondition", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.bid_volume = ProtoField.new("Bid Volume", "nyse.equities.bqt.xdp.v2.4.a.bidvolume", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.complete = ProtoField.new("Complete", "nyse.equities.bqt.xdp.v2.4.a.complete", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_first_price = ProtoField.new("Consolidated First Price", "nyse.equities.bqt.xdp.v2.4.a.consolidatedfirstprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_high_price = ProtoField.new("Consolidated High Price", "nyse.equities.bqt.xdp.v2.4.a.consolidatedhighprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_last_price = ProtoField.new("Consolidated Last Price", "nyse.equities.bqt.xdp.v2.4.a.consolidatedlastprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_low_price = ProtoField.new("Consolidated Low Price", "nyse.equities.bqt.xdp.v2.4.a.consolidatedlowprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.delivery_flag = ProtoField.new("Delivery Flag", "nyse.equities.bqt.xdp.v2.4.a.deliveryflag", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.exec_day_time = ProtoField.new("Exec Day Time", "nyse.equities.bqt.xdp.v2.4.a.execdaytime", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.exec_day_time_ns = ProtoField.new("Exec Day Time Ns", "nyse.equities.bqt.xdp.v2.4.a.execdaytimens", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.fractional_consolidated_volume = ProtoField.new("Fractional Consolidated Volume", "nyse.equities.bqt.xdp.v2.4.a.fractionalconsolidatedvolume", ftypes.UINT64)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.fractional_nyse_group_volume = ProtoField.new("Fractional Nyse Group Volume", "nyse.equities.bqt.xdp.v2.4.a.fractionalnysegroupvolume", ftypes.UINT64)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.fractional_volume = ProtoField.new("Fractional Volume", "nyse.equities.bqt.xdp.v2.4.a.fractionalvolume", ftypes.UINT64)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id = ProtoField.new("Market Id", "nyse.equities.bqt.xdp.v2.4.a.marketid", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id_of_best_ask = ProtoField.new("Market Id Of Best Ask", "nyse.equities.bqt.xdp.v2.4.a.marketidofbestask", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id_of_best_bid = ProtoField.new("Market Id Of Best Bid", "nyse.equities.bqt.xdp.v2.4.a.marketidofbestbid", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id_of_open_price = ProtoField.new("Market Id Of Open Price", "nyse.equities.bqt.xdp.v2.4.a.marketidofopenprice", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.message = ProtoField.new("Message", "nyse.equities.bqt.xdp.v2.4.a.message", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_count = ProtoField.new("Message Count", "nyse.equities.bqt.xdp.v2.4.a.messagecount", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_header = ProtoField.new("Message Header", "nyse.equities.bqt.xdp.v2.4.a.messageheader", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_size = ProtoField.new("Message Size", "nyse.equities.bqt.xdp.v2.4.a.messagesize", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_type = ProtoField.new("Message Type", "nyse.equities.bqt.xdp.v2.4.a.messagetype", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.nanoseconds = ProtoField.new("Nanoseconds", "nyse.equities.bqt.xdp.v2.4.a.nanoseconds", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.num_close_prices = ProtoField.new("Num Close Prices", "nyse.equities.bqt.xdp.v2.4.a.numcloseprices", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_high_price = ProtoField.new("Nyse Group High Price", "nyse.equities.bqt.xdp.v2.4.a.nysegrouphighprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_low_price = ProtoField.new("Nyse Group Low Price", "nyse.equities.bqt.xdp.v2.4.a.nysegrouplowprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_high_price = ProtoField.new("Nyse Group Market Id Of High Price", "nyse.equities.bqt.xdp.v2.4.a.nysegroupmarketidofhighprice", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_low_price = ProtoField.new("Nyse Group Market Id Of Low Price", "nyse.equities.bqt.xdp.v2.4.a.nysegroupmarketidoflowprice", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_the_close = ProtoField.new("Nyse Group Market Id Of The Close", "nyse.equities.bqt.xdp.v2.4.a.nysegroupmarketidoftheclose", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.original_trade_id = ProtoField.new("Original Trade Id", "nyse.equities.bqt.xdp.v2.4.a.originaltradeid", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.packet = ProtoField.new("Packet", "nyse.equities.bqt.xdp.v2.4.a.packet", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.packet_header = ProtoField.new("Packet Header", "nyse.equities.bqt.xdp.v2.4.a.packetheader", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.packet_size = ProtoField.new("Packet Size", "nyse.equities.bqt.xdp.v2.4.a.packetsize", ftypes.UINT16)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.price = ProtoField.new("Price", "nyse.equities.bqt.xdp.v2.4.a.price", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_close_price = ProtoField.new("Primary Listing Market Official Close Price", "nyse.equities.bqt.xdp.v2.4.a.primarylistingmarketofficialcloseprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_open_price = ProtoField.new("Primary Listing Market Official Open Price", "nyse.equities.bqt.xdp.v2.4.a.primarylistingmarketofficialopenprice", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.prior_day_time = ProtoField.new("Prior Day Time", "nyse.equities.bqt.xdp.v2.4.a.priordaytime", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.prior_day_time_ns = ProtoField.new("Prior Day Time Ns", "nyse.equities.bqt.xdp.v2.4.a.priordaytimens", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.quote_condition = ProtoField.new("Quote Condition", "nyse.equities.bqt.xdp.v2.4.a.quotecondition", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.reason = ProtoField.new("Reason", "nyse.equities.bqt.xdp.v2.4.a.reason", ftypes.UINT8)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.reserved = ProtoField.new("Reserved", "nyse.equities.bqt.xdp.v2.4.a.reserved", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_ask_side = ProtoField.new("Retail Interest On The Ask Side", "nyse.equities.bqt.xdp.v2.4.a.retailinterestontheaskside", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_bid_side = ProtoField.new("Retail Interest On The Bid Side", "nyse.equities.bqt.xdp.v2.4.a.retailinterestonthebidside", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.retail_pricing_indicator = ProtoField.new("Retail Pricing Indicator", "nyse.equities.bqt.xdp.v2.4.a.retailpricingindicator", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.sequence_number = ProtoField.new("Sequence Number", "nyse.equities.bqt.xdp.v2.4.a.sequencenumber", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.side = ProtoField.new("Side", "nyse.equities.bqt.xdp.v2.4.a.side", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.source_time = ProtoField.new("Source Time", "nyse.equities.bqt.xdp.v2.4.a.sourcetime", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.source_time_ns = ProtoField.new("Source Time Ns", "nyse.equities.bqt.xdp.v2.4.a.sourcetimens", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.symbol_index = ProtoField.new("Symbol Index", "nyse.equities.bqt.xdp.v2.4.a.symbolindex", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.symbol_seq_num = ProtoField.new("Symbol Seq Num", "nyse.equities.bqt.xdp.v2.4.a.symbolseqnum", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.symbol_seq_number = ProtoField.new("Symbol Seq Number", "nyse.equities.bqt.xdp.v2.4.a.symbolseqnumber", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.timestamp = ProtoField.new("Timestamp", "nyse.equities.bqt.xdp.v2.4.a.timestamp", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_1 = ProtoField.new("Trade Cond 1", "nyse.equities.bqt.xdp.v2.4.a.tradecond1", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_2 = ProtoField.new("Trade Cond 2", "nyse.equities.bqt.xdp.v2.4.a.tradecond2", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_3 = ProtoField.new("Trade Cond 3", "nyse.equities.bqt.xdp.v2.4.a.tradecond3", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_4 = ProtoField.new("Trade Cond 4", "nyse.equities.bqt.xdp.v2.4.a.tradecond4", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_1 = ProtoField.new("Trade Condition 1", "nyse.equities.bqt.xdp.v2.4.a.tradecondition1", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_2 = ProtoField.new("Trade Condition 2", "nyse.equities.bqt.xdp.v2.4.a.tradecondition2", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_3 = ProtoField.new("Trade Condition 3", "nyse.equities.bqt.xdp.v2.4.a.tradecondition3", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_4 = ProtoField.new("Trade Condition 4", "nyse.equities.bqt.xdp.v2.4.a.tradecondition4", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_id = ProtoField.new("Trade Id", "nyse.equities.bqt.xdp.v2.4.a.tradeid", ftypes.UINT32)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.volume = ProtoField.new("Volume", "nyse.equities.bqt.xdp.v2.4.a.volume", ftypes.UINT32)

-- Nyse Equities Xdp Bqt 2.4.a Application Messages
omi_nyse_equities_bqt_xdp_v2_4_a.fields.best_quotes_message = ProtoField.new("Best Quotes Message", "nyse.equities.bqt.xdp.v2.4.a.bestquotesmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_fractional_stock_summary_message = ProtoField.new("Consolidated Fractional Stock Summary Message", "nyse.equities.bqt.xdp.v2.4.a.consolidatedfractionalstocksummarymessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_fractional_volume_message = ProtoField.new("Consolidated Fractional Volume Message", "nyse.equities.bqt.xdp.v2.4.a.consolidatedfractionalvolumemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_single_sided_quote_message = ProtoField.new("Consolidated Single Sided Quote Message", "nyse.equities.bqt.xdp.v2.4.a.consolidatedsinglesidedquotemessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_trade_cancel_message = ProtoField.new("Consolidated Trade Cancel Message", "nyse.equities.bqt.xdp.v2.4.a.consolidatedtradecancelmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_trade_correction_message = ProtoField.new("Consolidated Trade Correction Message", "nyse.equities.bqt.xdp.v2.4.a.consolidatedtradecorrectionmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_trade_message = ProtoField.new("Consolidated Trade Message", "nyse.equities.bqt.xdp.v2.4.a.consolidatedtrademessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_cancel_message = ProtoField.new("Trf Fractional Prior Day Trade Cancel Message", "nyse.equities.bqt.xdp.v2.4.a.trffractionalpriordaytradecancelmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_message = ProtoField.new("Trf Fractional Prior Day Trade Message", "nyse.equities.bqt.xdp.v2.4.a.trffractionalpriordaytrademessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_correction_message = ProtoField.new("Trf Fractional Trade Correction Message", "nyse.equities.bqt.xdp.v2.4.a.trffractionaltradecorrectionmessage", ftypes.STRING)
omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_message = ProtoField.new("Trf Fractional Trade Message", "nyse.equities.bqt.xdp.v2.4.a.trffractionaltrademessage", ftypes.STRING)

-- Nyse Equities Bqt Xdp 2.4.a generated fields
omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_index = ProtoField.new("Message Index", "nyse.equities.bqt.xdp.v2.4.a.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse Equities Bqt Xdp 2.4.a Element Dissection Options
show.application_messages = true
show.message = true
show.message_header = true
show.packet = true
show.packet_header = true
show.retail_pricing_indicator = true
show.message_index = true

-- Register Nyse Equities Bqt Xdp 2.4.a Show Options
omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_packet_header = Pref.bool("Show Packet Header", show.packet_header, "Parse and add Packet Header to protocol tree")
omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_retail_pricing_indicator = Pref.bool("Show Retail Pricing Indicator", show.retail_pricing_indicator, "Parse and add Retail Pricing Indicator to protocol tree")
omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_nyse_equities_bqt_xdp_v2_4_a.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_application_messages then
    show.application_messages = omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_application_messages
  end
  if show.message ~= omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message then
    show.message = omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message
  end
  if show.message_header ~= omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message_header then
    show.message_header = omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message_header
  end
  if show.packet ~= omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_packet then
    show.packet = omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_packet
  end
  if show.packet_header ~= omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_packet_header then
    show.packet_header = omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_packet_header
  end
  if show.retail_pricing_indicator ~= omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_retail_pricing_indicator then
    show.retail_pricing_indicator = omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_retail_pricing_indicator
  end
  if show.message_index ~= omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message_index then
    show.message_index = omi_nyse_equities_bqt_xdp_v2_4_a.prefs.show_message_index
  end
end


-----------------------------------------------------------------------
-- Nyse Equities Bqt Xdp 2.4.a Fields
-----------------------------------------------------------------------

-- Ask Price
nyse_equities_bqt_xdp_v2_4_a.ask_price = {}

-- Size: Ask Price
nyse_equities_bqt_xdp_v2_4_a.ask_price.size = 4

-- Display: Ask Price
nyse_equities_bqt_xdp_v2_4_a.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Dissect: Ask Price
nyse_equities_bqt_xdp_v2_4_a.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.ask_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Quote Condition
nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition = {}

-- Size: Ask Quote Condition
nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition.size = 1

-- Display: Ask Quote Condition
nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition.display = function(value)
  if value == "C" then
    return "Ask Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Ask Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Ask Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Ask Quote Condition: Slow On The Bid And Ask Due To Set Slow List (W)"
  end

  return "Ask Quote Condition: Unknown("..value..")"
end

-- Dissect: Ask Quote Condition
nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.ask_quote_condition, range, value, display)

  return offset + length, value
end

-- Ask Volume
nyse_equities_bqt_xdp_v2_4_a.ask_volume = {}

-- Size: Ask Volume
nyse_equities_bqt_xdp_v2_4_a.ask_volume.size = 4

-- Display: Ask Volume
nyse_equities_bqt_xdp_v2_4_a.ask_volume.display = function(value)
  return "Ask Volume: "..value
end

-- Dissect: Ask Volume
nyse_equities_bqt_xdp_v2_4_a.ask_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.ask_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.ask_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.ask_volume, range, value, display)

  return offset + length, value
end

-- Bid Price
nyse_equities_bqt_xdp_v2_4_a.bid_price = {}

-- Size: Bid Price
nyse_equities_bqt_xdp_v2_4_a.bid_price.size = 4

-- Display: Bid Price
nyse_equities_bqt_xdp_v2_4_a.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Dissect: Bid Price
nyse_equities_bqt_xdp_v2_4_a.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.bid_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Quote Condition
nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition = {}

-- Size: Bid Quote Condition
nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition.size = 1

-- Display: Bid Quote Condition
nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition.display = function(value)
  if value == "C" then
    return "Bid Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Bid Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Bid Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Bid Quote Condition: Slow On The Bid And Ask Due To Set Slow List (W)"
  end

  return "Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: Bid Quote Condition
nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Bid Volume
nyse_equities_bqt_xdp_v2_4_a.bid_volume = {}

-- Size: Bid Volume
nyse_equities_bqt_xdp_v2_4_a.bid_volume.size = 4

-- Display: Bid Volume
nyse_equities_bqt_xdp_v2_4_a.bid_volume.display = function(value)
  return "Bid Volume: "..value
end

-- Dissect: Bid Volume
nyse_equities_bqt_xdp_v2_4_a.bid_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.bid_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.bid_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.bid_volume, range, value, display)

  return offset + length, value
end

-- Complete
nyse_equities_bqt_xdp_v2_4_a.complete = {}

-- Size: Complete
nyse_equities_bqt_xdp_v2_4_a.complete.size = 1

-- Display: Complete
nyse_equities_bqt_xdp_v2_4_a.complete.display = function(value)
  if value == 0 then
    return "Complete: Normal Data Is Complete (0)"
  end
  if value == 1 then
    return "Complete: An Unrecoverable Gap Was Experienced In The Input Stream So Data May Not Be Complete (1)"
  end

  return "Complete: Unknown("..value..")"
end

-- Dissect: Complete
nyse_equities_bqt_xdp_v2_4_a.complete.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.complete.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.complete.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.complete, range, value, display)

  return offset + length, value
end

-- Consolidated First Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price = {}

-- Size: Consolidated First Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price.size = 4

-- Display: Consolidated First Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price.display = function(value)
  return "Consolidated First Price: "..value
end

-- Dissect: Consolidated First Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_first_price, range, value, display)

  return offset + length, value
end

-- Consolidated High Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price = {}

-- Size: Consolidated High Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price.size = 4

-- Display: Consolidated High Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price.display = function(value)
  return "Consolidated High Price: "..value
end

-- Dissect: Consolidated High Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_high_price, range, value, display)

  return offset + length, value
end

-- Consolidated Last Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price = {}

-- Size: Consolidated Last Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price.size = 4

-- Display: Consolidated Last Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price.display = function(value)
  return "Consolidated Last Price: "..value
end

-- Dissect: Consolidated Last Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_last_price, range, value, display)

  return offset + length, value
end

-- Consolidated Low Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price = {}

-- Size: Consolidated Low Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price.size = 4

-- Display: Consolidated Low Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price.display = function(value)
  return "Consolidated Low Price: "..value
end

-- Dissect: Consolidated Low Price
nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_low_price, range, value, display)

  return offset + length, value
end

-- Delivery Flag
nyse_equities_bqt_xdp_v2_4_a.delivery_flag = {}

-- Size: Delivery Flag
nyse_equities_bqt_xdp_v2_4_a.delivery_flag.size = 1

-- Display: Delivery Flag
nyse_equities_bqt_xdp_v2_4_a.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: Heartbeat (1)"
  end
  if value == 10 then
    return "Delivery Flag: Xdp Failover (10)"
  end
  if value == 11 then
    return "Delivery Flag: Original Message (11)"
  end
  if value == 12 then
    return "Delivery Flag: Sequence Number Reset Message (12)"
  end
  if value == 13 then
    return "Delivery Flag: One Retransmission Packet (13)"
  end
  if value == 15 then
    return "Delivery Flag: Retransmission Sequence Message (15)"
  end
  if value == 17 then
    return "Delivery Flag: One Refresh Packet (17)"
  end
  if value == 18 then
    return "Delivery Flag: Refresh Sequence Start (18)"
  end
  if value == 19 then
    return "Delivery Flag: Refresh Sequence Message (19)"
  end
  if value == 20 then
    return "Delivery Flag: Refresh Sequence End (20)"
  end
  if value == 21 then
    return "Delivery Flag: Message Unavailable (21)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
nyse_equities_bqt_xdp_v2_4_a.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Exec Day Time
nyse_equities_bqt_xdp_v2_4_a.exec_day_time = {}

-- Size: Exec Day Time
nyse_equities_bqt_xdp_v2_4_a.exec_day_time.size = 4

-- Display: Exec Day Time
nyse_equities_bqt_xdp_v2_4_a.exec_day_time.display = function(value)
  return "Exec Day Time: "..value
end

-- Dissect: Exec Day Time
nyse_equities_bqt_xdp_v2_4_a.exec_day_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.exec_day_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.exec_day_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.exec_day_time, range, value, display)

  return offset + length, value
end

-- Exec Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns = {}

-- Size: Exec Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.size = 4

-- Display: Exec Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.display = function(value)
  return "Exec Day Time Ns: "..value
end

-- Dissect: Exec Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.exec_day_time_ns, range, value, display)

  return offset + length, value
end

-- Fractional Consolidated Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume = {}

-- Size: Fractional Consolidated Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume.size = 8

-- Display: Fractional Consolidated Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume.display = function(value)
  return "Fractional Consolidated Volume: "..value
end

-- Dissect: Fractional Consolidated Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.fractional_consolidated_volume, range, value, display)

  return offset + length, value
end

-- Fractional Nyse Group Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume = {}

-- Size: Fractional Nyse Group Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.size = 8

-- Display: Fractional Nyse Group Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.display = function(value)
  return "Fractional Nyse Group Volume: "..value
end

-- Dissect: Fractional Nyse Group Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.fractional_nyse_group_volume, range, value, display)

  return offset + length, value
end

-- Fractional Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_volume = {}

-- Size: Fractional Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_volume.size = 8

-- Display: Fractional Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_volume.display = function(value)
  return "Fractional Volume: "..value
end

-- Dissect: Fractional Volume
nyse_equities_bqt_xdp_v2_4_a.fractional_volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.fractional_volume.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_equities_bqt_xdp_v2_4_a.fractional_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.fractional_volume, range, value, display)

  return offset + length, value
end

-- Market Id
nyse_equities_bqt_xdp_v2_4_a.market_id = {}

-- Size: Market Id
nyse_equities_bqt_xdp_v2_4_a.market_id.size = 2

-- Display: Market Id
nyse_equities_bqt_xdp_v2_4_a.market_id.display = function(value)
  if value == 0 then
    return "Market Id: Nyse Group Bqt (0)"
  end
  if value == 1 then
    return "Market Id: Nyse (1)"
  end
  if value == 3 then
    return "Market Id: Nyse Arca (3)"
  end
  if value == 9 then
    return "Market Id: Nyse American (9)"
  end
  if value == 10 then
    return "Market Id: Nyse National (10)"
  end
  if value == 11 then
    return "Market Id: Nyse Texas (11)"
  end
  if value == 255 then
    return "Market Id: Nyse Trf (255)"
  end

  return "Market Id: Unknown("..value..")"
end

-- Dissect: Market Id
nyse_equities_bqt_xdp_v2_4_a.market_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.market_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.market_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id, range, value, display)

  return offset + length, value
end

-- Market Id Of Best Ask
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask = {}

-- Size: Market Id Of Best Ask
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask.size = 2

-- Display: Market Id Of Best Ask
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask.display = function(value)
  return "Market Id Of Best Ask: "..value
end

-- Dissect: Market Id Of Best Ask
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id_of_best_ask, range, value, display)

  return offset + length, value
end

-- Market Id Of Best Bid
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid = {}

-- Size: Market Id Of Best Bid
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid.size = 2

-- Display: Market Id Of Best Bid
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid.display = function(value)
  return "Market Id Of Best Bid: "..value
end

-- Dissect: Market Id Of Best Bid
nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id_of_best_bid, range, value, display)

  return offset + length, value
end

-- Market Id Of Open Price
nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price = {}

-- Size: Market Id Of Open Price
nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price.size = 2

-- Display: Market Id Of Open Price
nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price.display = function(value)
  return "Market Id Of Open Price: "..value
end

-- Dissect: Market Id Of Open Price
nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.market_id_of_open_price, range, value, display)

  return offset + length, value
end

-- Message Count
nyse_equities_bqt_xdp_v2_4_a.message_count = {}

-- Size: Message Count
nyse_equities_bqt_xdp_v2_4_a.message_count.size = 1

-- Display: Message Count
nyse_equities_bqt_xdp_v2_4_a.message_count.display = function(value)
  return "Message Count: "..value
end

-- Dissect: Message Count
nyse_equities_bqt_xdp_v2_4_a.message_count.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.message_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.message_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_count, range, value, display)

  return offset + length, value
end

-- Message Size
nyse_equities_bqt_xdp_v2_4_a.message_size = {}

-- Size: Message Size
nyse_equities_bqt_xdp_v2_4_a.message_size.size = 2

-- Display: Message Size
nyse_equities_bqt_xdp_v2_4_a.message_size.display = function(value)
  return "Message Size: "..value
end

-- Dissect: Message Size
nyse_equities_bqt_xdp_v2_4_a.message_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.message_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.message_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_size, range, value, display)

  return offset + length, value
end

-- Message Type
nyse_equities_bqt_xdp_v2_4_a.message_type = {}

-- Size: Message Type
nyse_equities_bqt_xdp_v2_4_a.message_type.size = 2

-- Display: Message Type
nyse_equities_bqt_xdp_v2_4_a.message_type.display = function(value)
  if value == 142 then
    return "Message Type: Best Quotes Message (142)"
  end
  if value == 143 then
    return "Message Type: Consolidated Single Sided Quote Message (143)"
  end
  if value == 210 then
    return "Message Type: Trf Fractional Trade Message (210)"
  end
  if value == 220 then
    return "Message Type: Consolidated Trade Message (220)"
  end
  if value == 221 then
    return "Message Type: Consolidated Trade Cancel Message (221)"
  end
  if value == 212 then
    return "Message Type: Trf Fractional Trade Correction Message (212)"
  end
  if value == 222 then
    return "Message Type: Consolidated Trade Correction Message (222)"
  end
  if value == 213 then
    return "Message Type: Trf Fractional Prior Day Trade Message (213)"
  end
  if value == 214 then
    return "Message Type: Trf Fractional Prior Day Trade Cancel Message (214)"
  end
  if value == 202 then
    return "Message Type: Consolidated Fractional Stock Summary Message (202)"
  end
  if value == 201 then
    return "Message Type: Consolidated Fractional Volume Message (201)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
nyse_equities_bqt_xdp_v2_4_a.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_type, range, value, display)

  return offset + length, value
end

-- Nanoseconds
nyse_equities_bqt_xdp_v2_4_a.nanoseconds = {}

-- Size: Nanoseconds
nyse_equities_bqt_xdp_v2_4_a.nanoseconds.size = 4

-- Display: Nanoseconds
nyse_equities_bqt_xdp_v2_4_a.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
nyse_equities_bqt_xdp_v2_4_a.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Num Close Prices
nyse_equities_bqt_xdp_v2_4_a.num_close_prices = {}

-- Size: Num Close Prices
nyse_equities_bqt_xdp_v2_4_a.num_close_prices.size = 1

-- Display: Num Close Prices
nyse_equities_bqt_xdp_v2_4_a.num_close_prices.display = function(value)
  return "Num Close Prices: "..value
end

-- Dissect: Num Close Prices
nyse_equities_bqt_xdp_v2_4_a.num_close_prices.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.num_close_prices.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.num_close_prices.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.num_close_prices, range, value, display)

  return offset + length, value
end

-- Nyse Group High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price = {}

-- Size: Nyse Group High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price.size = 4

-- Display: Nyse Group High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price.display = function(value)
  return "Nyse Group High Price: "..value
end

-- Dissect: Nyse Group High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_high_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price = {}

-- Size: Nyse Group Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price.size = 4

-- Display: Nyse Group Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price.display = function(value)
  return "Nyse Group Low Price: "..value
end

-- Dissect: Nyse Group Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_low_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Market Id Of High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price = {}

-- Size: Nyse Group Market Id Of High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.size = 2

-- Display: Nyse Group Market Id Of High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.display = function(value)
  return "Nyse Group Market Id Of High Price: "..value
end

-- Dissect: Nyse Group Market Id Of High Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_high_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Market Id Of Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price = {}

-- Size: Nyse Group Market Id Of Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.size = 2

-- Display: Nyse Group Market Id Of Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.display = function(value)
  return "Nyse Group Market Id Of Low Price: "..value
end

-- Dissect: Nyse Group Market Id Of Low Price
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_low_price, range, value, display)

  return offset + length, value
end

-- Nyse Group Market Id Of The Close
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close = {}

-- Size: Nyse Group Market Id Of The Close
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.size = 2

-- Display: Nyse Group Market Id Of The Close
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.display = function(value)
  return "Nyse Group Market Id Of The Close: "..value
end

-- Dissect: Nyse Group Market Id Of The Close
nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.nyse_group_market_id_of_the_close, range, value, display)

  return offset + length, value
end

-- Original Trade Id
nyse_equities_bqt_xdp_v2_4_a.original_trade_id = {}

-- Size: Original Trade Id
nyse_equities_bqt_xdp_v2_4_a.original_trade_id.size = 4

-- Display: Original Trade Id
nyse_equities_bqt_xdp_v2_4_a.original_trade_id.display = function(value)
  return "Original Trade Id: "..value
end

-- Dissect: Original Trade Id
nyse_equities_bqt_xdp_v2_4_a.original_trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.original_trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.original_trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.original_trade_id, range, value, display)

  return offset + length, value
end

-- Packet Size
nyse_equities_bqt_xdp_v2_4_a.packet_size = {}

-- Size: Packet Size
nyse_equities_bqt_xdp_v2_4_a.packet_size.size = 2

-- Display: Packet Size
nyse_equities_bqt_xdp_v2_4_a.packet_size.display = function(value)
  return "Packet Size: "..value
end

-- Dissect: Packet Size
nyse_equities_bqt_xdp_v2_4_a.packet_size.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.packet_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.packet_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.packet_size, range, value, display)

  return offset + length, value
end

-- Price
nyse_equities_bqt_xdp_v2_4_a.price = {}

-- Size: Price
nyse_equities_bqt_xdp_v2_4_a.price.size = 4

-- Display: Price
nyse_equities_bqt_xdp_v2_4_a.price.display = function(value)
  return "Price: "..value
end

-- Dissect: Price
nyse_equities_bqt_xdp_v2_4_a.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.price, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Official Close Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price = {}

-- Size: Primary Listing Market Official Close Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.size = 4

-- Display: Primary Listing Market Official Close Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.display = function(value)
  return "Primary Listing Market Official Close Price: "..value
end

-- Dissect: Primary Listing Market Official Close Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_close_price, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Official Open Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price = {}

-- Size: Primary Listing Market Official Open Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.size = 4

-- Display: Primary Listing Market Official Open Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.display = function(value)
  return "Primary Listing Market Official Open Price: "..value
end

-- Dissect: Primary Listing Market Official Open Price
nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.primary_listing_market_official_open_price, range, value, display)

  return offset + length, value
end

-- Prior Day Time
nyse_equities_bqt_xdp_v2_4_a.prior_day_time = {}

-- Size: Prior Day Time
nyse_equities_bqt_xdp_v2_4_a.prior_day_time.size = 4

-- Display: Prior Day Time
nyse_equities_bqt_xdp_v2_4_a.prior_day_time.display = function(value)
  return "Prior Day Time: "..value
end

-- Dissect: Prior Day Time
nyse_equities_bqt_xdp_v2_4_a.prior_day_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.prior_day_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.prior_day_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.prior_day_time, range, value, display)

  return offset + length, value
end

-- Prior Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns = {}

-- Size: Prior Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.size = 4

-- Display: Prior Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.display = function(value)
  return "Prior Day Time Ns: "..value
end

-- Dissect: Prior Day Time Ns
nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.prior_day_time_ns, range, value, display)

  return offset + length, value
end

-- Quote Condition
nyse_equities_bqt_xdp_v2_4_a.quote_condition = {}

-- Size: Quote Condition
nyse_equities_bqt_xdp_v2_4_a.quote_condition.size = 1

-- Display: Quote Condition
nyse_equities_bqt_xdp_v2_4_a.quote_condition.display = function(value)
  if value == "C" then
    return "Quote Condition: Closing (C)"
  end
  if value == "O" then
    return "Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "Quote Condition: Regular Quote (R)"
  end
  if value == "W" then
    return "Quote Condition: Slow On The Bid And Ask Due To Set Slow List (W)"
  end

  return "Quote Condition: Unknown("..value..")"
end

-- Dissect: Quote Condition
nyse_equities_bqt_xdp_v2_4_a.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reason
nyse_equities_bqt_xdp_v2_4_a.reason = {}

-- Size: Reason
nyse_equities_bqt_xdp_v2_4_a.reason.size = 1

-- Display: Reason
nyse_equities_bqt_xdp_v2_4_a.reason.display = function(value)
  if value == 0 then
    return "Reason: New Trade (0)"
  end
  if value == 1 then
    return "Reason: Trade Cancellation (1)"
  end
  if value == 2 then
    return "Reason: Trade Error (2)"
  end
  if value == 3 then
    return "Reason: Trade Correction (3)"
  end
  if value == 4 then
    return "Reason: Closing End Trade Summary (4)"
  end

  return "Reason: Unknown("..value..")"
end

-- Dissect: Reason
nyse_equities_bqt_xdp_v2_4_a.reason.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.reason.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.reason, range, value, display)

  return offset + length, value
end

-- Sequence Number
nyse_equities_bqt_xdp_v2_4_a.sequence_number = {}

-- Size: Sequence Number
nyse_equities_bqt_xdp_v2_4_a.sequence_number.size = 4

-- Display: Sequence Number
nyse_equities_bqt_xdp_v2_4_a.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nyse_equities_bqt_xdp_v2_4_a.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Side
nyse_equities_bqt_xdp_v2_4_a.side = {}

-- Size: Side
nyse_equities_bqt_xdp_v2_4_a.side.size = 1

-- Display: Side
nyse_equities_bqt_xdp_v2_4_a.side.display = function(value)
  if value == "B" then
    return "Side: Buy (B)"
  end
  if value == "S" then
    return "Side: Sell Offer (S)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
nyse_equities_bqt_xdp_v2_4_a.side.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.side, range, value, display)

  return offset + length, value
end

-- Source Time
nyse_equities_bqt_xdp_v2_4_a.source_time = {}

-- Size: Source Time
nyse_equities_bqt_xdp_v2_4_a.source_time.size = 4

-- Display: Source Time
nyse_equities_bqt_xdp_v2_4_a.source_time.display = function(value)
  return "Source Time: "..value
end

-- Dissect: Source Time
nyse_equities_bqt_xdp_v2_4_a.source_time.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.source_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.source_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.source_time, range, value, display)

  return offset + length, value
end

-- Source Time Ns
nyse_equities_bqt_xdp_v2_4_a.source_time_ns = {}

-- Size: Source Time Ns
nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size = 4

-- Display: Source Time Ns
nyse_equities_bqt_xdp_v2_4_a.source_time_ns.display = function(value)
  return "Source Time Ns: "..value
end

-- Dissect: Source Time Ns
nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.source_time_ns, range, value, display)

  return offset + length, value
end

-- Symbol Index
nyse_equities_bqt_xdp_v2_4_a.symbol_index = {}

-- Size: Symbol Index
nyse_equities_bqt_xdp_v2_4_a.symbol_index.size = 4

-- Display: Symbol Index
nyse_equities_bqt_xdp_v2_4_a.symbol_index.display = function(value)
  return "Symbol Index: "..value
end

-- Dissect: Symbol Index
nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.symbol_index.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.symbol_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.symbol_index, range, value, display)

  return offset + length, value
end

-- Symbol Seq Num
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num = {}

-- Size: Symbol Seq Num
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.size = 4

-- Display: Symbol Seq Num
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.display = function(value)
  return "Symbol Seq Num: "..value
end

-- Dissect: Symbol Seq Num
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.symbol_seq_num, range, value, display)

  return offset + length, value
end

-- Symbol Seq Number
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number = {}

-- Size: Symbol Seq Number
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size = 4

-- Display: Symbol Seq Number
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.display = function(value)
  return "Symbol Seq Number: "..value
end

-- Dissect: Symbol Seq Number
nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.symbol_seq_number, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_equities_bqt_xdp_v2_4_a.timestamp = {}

-- Size: Timestamp
nyse_equities_bqt_xdp_v2_4_a.timestamp.size = 4

-- Display: Timestamp
nyse_equities_bqt_xdp_v2_4_a.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_equities_bqt_xdp_v2_4_a.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Cond 1
nyse_equities_bqt_xdp_v2_4_a.trade_cond_1 = {}

-- Size: Trade Cond 1
nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.size = 1

-- Display: Trade Cond 1
nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.display = function(value)
  if value == "@" then
    return "Trade Cond 1: Regular Sale (@)"
  end
  if value == "" then
    return "Trade Cond 1: Regular Sale Trf Only (<whitespace>)"
  end
  if value == "C" then
    return "Trade Cond 1: Cash Trf Or Texas Only (C)"
  end
  if value == "R" then
    return "Trade Cond 1: Seller Trf Only (R)"
  end

  return "Trade Cond 1: Unknown("..value..")"
end

-- Dissect: Trade Cond 1
nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_1, range, value, display)

  return offset + length, value
end

-- Trade Cond 2
nyse_equities_bqt_xdp_v2_4_a.trade_cond_2 = {}

-- Size: Trade Cond 2
nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.size = 1

-- Display: Trade Cond 2
nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.display = function(value)
  if value == "" then
    return "Trade Cond 2: Na (<whitespace>)"
  end
  if value == "F" then
    return "Trade Cond 2: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Trade Cond 2: Market Center Opening Trade (O)"
  end
  if value == "4" then
    return "Trade Cond 2: Derivatively Priced Trf Only (4)"
  end
  if value == "5" then
    return "Trade Cond 2: Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Cond 2: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Trade Cond 2: Qualified Contingent Trade Trf Or Texas Only (7)"
  end
  if value == "9" then
    return "Trade Cond 2: Corrected Consolidated Close (9)"
  end

  return "Trade Cond 2: Unknown("..value..")"
end

-- Dissect: Trade Cond 2
nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_2, range, value, display)

  return offset + length, value
end

-- Trade Cond 3
nyse_equities_bqt_xdp_v2_4_a.trade_cond_3 = {}

-- Size: Trade Cond 3
nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.size = 1

-- Display: Trade Cond 3
nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.display = function(value)
  if value == "" then
    return "Trade Cond 3: Na (<whitespace>)"
  end
  if value == "T" then
    return "Trade Cond 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Trade Cond 3: Extended Hours Sold Out Of Sequence (U)"
  end
  if value == "Z" then
    return "Trade Cond 3: Sold (Z)"
  end

  return "Trade Cond 3: Unknown("..value..")"
end

-- Dissect: Trade Cond 3
nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_3, range, value, display)

  return offset + length, value
end

-- Trade Cond 4
nyse_equities_bqt_xdp_v2_4_a.trade_cond_4 = {}

-- Size: Trade Cond 4
nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.size = 1

-- Display: Trade Cond 4
nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.display = function(value)
  if value == "" then
    return "Trade Cond 4: Na (<whitespace>)"
  end
  if value == "I" then
    return "Trade Cond 4: Odd Lot Trade (I)"
  end
  if value == "M" then
    return "Trade Cond 4: Official Closing Price (M)"
  end
  if value == "Q" then
    return "Trade Cond 4: Official Open Price (Q)"
  end
  if value == "V" then
    return "Trade Cond 4: Contingent Trade Trf Or Texas Only (V)"
  end
  if value == "P" then
    return "Trade Cond 4: Prior Reference Price Trf Only (P)"
  end
  if value == "W" then
    return "Trade Cond 4: Weighted Average Price Trf Only (W)"
  end

  return "Trade Cond 4: Unknown("..value..")"
end

-- Dissect: Trade Cond 4
nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_cond_4, range, value, display)

  return offset + length, value
end

-- Trade Condition 1
nyse_equities_bqt_xdp_v2_4_a.trade_condition_1 = {}

-- Size: Trade Condition 1
nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.size = 1

-- Display: Trade Condition 1
nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.display = function(value)
  if value == "@" then
    return "Trade Condition 1: Regular Sale (@)"
  end
  if value == "" then
    return "Trade Condition 1: Regular Sale For Trf (<whitespace>)"
  end
  if value == "C" then
    return "Trade Condition 1: Cash Trf Or Texas Only (C)"
  end
  if value == "R" then
    return "Trade Condition 1: Seller Trf Only (R)"
  end

  return "Trade Condition 1: Unknown("..value..")"
end

-- Dissect: Trade Condition 1
nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_1, range, value, display)

  return offset + length, value
end

-- Trade Condition 2
nyse_equities_bqt_xdp_v2_4_a.trade_condition_2 = {}

-- Size: Trade Condition 2
nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.size = 1

-- Display: Trade Condition 2
nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.display = function(value)
  if value == "" then
    return "Trade Condition 2: Na (<whitespace>)"
  end
  if value == "F" then
    return "Trade Condition 2: Intermarket Sweep Order (F)"
  end
  if value == "O" then
    return "Trade Condition 2: Market Center Opening Trade (O)"
  end
  if value == "4" then
    return "Trade Condition 2: Derivatively Priced Trf Only (4)"
  end
  if value == "5" then
    return "Trade Condition 2: Market Center Reopening Trade (5)"
  end
  if value == "6" then
    return "Trade Condition 2: Market Center Closing Trade (6)"
  end
  if value == "7" then
    return "Trade Condition 2: Qualified Contingent Trade Trf Or Texas Only (7)"
  end
  if value == "9" then
    return "Trade Condition 2: Corrected Last Sale Price (9)"
  end

  return "Trade Condition 2: Unknown("..value..")"
end

-- Dissect: Trade Condition 2
nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_2, range, value, display)

  return offset + length, value
end

-- Trade Condition 3
nyse_equities_bqt_xdp_v2_4_a.trade_condition_3 = {}

-- Size: Trade Condition 3
nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.size = 1

-- Display: Trade Condition 3
nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.display = function(value)
  if value == "" then
    return "Trade Condition 3: Na (<whitespace>)"
  end
  if value == "T" then
    return "Trade Condition 3: Extended Hours Trade (T)"
  end
  if value == "U" then
    return "Trade Condition 3: Extended Hours Sold Out Of Sequence (U)"
  end
  if value == "Z" then
    return "Trade Condition 3: Sold (Z)"
  end

  return "Trade Condition 3: Unknown("..value..")"
end

-- Dissect: Trade Condition 3
nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_3, range, value, display)

  return offset + length, value
end

-- Trade Condition 4
nyse_equities_bqt_xdp_v2_4_a.trade_condition_4 = {}

-- Size: Trade Condition 4
nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.size = 1

-- Display: Trade Condition 4
nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.display = function(value)
  if value == "@" then
    return "Trade Condition 4: Regular Sale (@)"
  end
  if value == "" then
    return "Trade Condition 4: Na (<whitespace>)"
  end
  if value == "I" then
    return "Trade Condition 4: Odd Lot Trade (I)"
  end
  if value == "M" then
    return "Trade Condition 4: Official Closing Price (M)"
  end
  if value == "Q" then
    return "Trade Condition 4: Official Open Price (Q)"
  end
  if value == "V" then
    return "Trade Condition 4: Contingent Trade Trf Or Texas Only (V)"
  end
  if value == "P" then
    return "Trade Condition 4: Prior Reference Price Trf Only (P)"
  end
  if value == "W" then
    return "Trade Condition 4: Weighted Average Price Trf Only (W)"
  end

  return "Trade Condition 4: Unknown("..value..")"
end

-- Dissect: Trade Condition 4
nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_condition_4, range, value, display)

  return offset + length, value
end

-- Trade Id
nyse_equities_bqt_xdp_v2_4_a.trade_id = {}

-- Size: Trade Id
nyse_equities_bqt_xdp_v2_4_a.trade_id.size = 4

-- Display: Trade Id
nyse_equities_bqt_xdp_v2_4_a.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
nyse_equities_bqt_xdp_v2_4_a.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Volume
nyse_equities_bqt_xdp_v2_4_a.volume = {}

-- Size: Volume
nyse_equities_bqt_xdp_v2_4_a.volume.size = 4

-- Display: Volume
nyse_equities_bqt_xdp_v2_4_a.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nyse_equities_bqt_xdp_v2_4_a.volume.dissect = function(buffer, offset, packet, parent)
  local length = nyse_equities_bqt_xdp_v2_4_a.volume.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.volume, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse Equities Bqt Xdp 2.4.a
-----------------------------------------------------------------------

-- Consolidated Fractional Volume Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message = {}

-- Size: Consolidated Fractional Volume Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.size =
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.reason.size + 
  nyse_equities_bqt_xdp_v2_4_a.complete.size

-- Display: Consolidated Fractional Volume Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Fractional Volume Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Fractional Consolidated Volume: Binary
  index, fractional_consolidated_volume = nyse_equities_bqt_xdp_v2_4_a.fractional_consolidated_volume.dissect(buffer, index, packet, parent)

  -- Reason: Binary
  index, reason = nyse_equities_bqt_xdp_v2_4_a.reason.dissect(buffer, index, packet, parent)

  -- Complete: Binary
  index, complete = nyse_equities_bqt_xdp_v2_4_a.complete.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Fractional Volume Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_fractional_volume_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Fractional Stock Summary Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message = {}

-- Size: Consolidated Fractional Stock Summary Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.num_close_prices.size + 
  nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.size + 
  nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.complete.size

-- Display: Consolidated Fractional Stock Summary Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Fractional Stock Summary Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Nyse Group High Price: Binary
  index, nyse_group_high_price = nyse_equities_bqt_xdp_v2_4_a.nyse_group_high_price.dissect(buffer, index, packet, parent)

  -- Nyse Group Low Price: Binary
  index, nyse_group_low_price = nyse_equities_bqt_xdp_v2_4_a.nyse_group_low_price.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Official Open Price: Binary
  index, primary_listing_market_official_open_price = nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_open_price.dissect(buffer, index, packet, parent)

  -- Fractional Nyse Group Volume: Binary
  index, fractional_nyse_group_volume = nyse_equities_bqt_xdp_v2_4_a.fractional_nyse_group_volume.dissect(buffer, index, packet, parent)

  -- Nyse Group Market Id Of High Price: Binary
  index, nyse_group_market_id_of_high_price = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_high_price.dissect(buffer, index, packet, parent)

  -- Nyse Group Market Id Of Low Price: Binary
  index, nyse_group_market_id_of_low_price = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_low_price.dissect(buffer, index, packet, parent)

  -- Market Id Of Open Price: Binary
  index, market_id_of_open_price = nyse_equities_bqt_xdp_v2_4_a.market_id_of_open_price.dissect(buffer, index, packet, parent)

  -- Num Close Prices: Binary
  index, num_close_prices = nyse_equities_bqt_xdp_v2_4_a.num_close_prices.dissect(buffer, index, packet, parent)

  -- Nyse Group Market Id Of The Close: Binary
  index, nyse_group_market_id_of_the_close = nyse_equities_bqt_xdp_v2_4_a.nyse_group_market_id_of_the_close.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Official Close Price: Binary
  index, primary_listing_market_official_close_price = nyse_equities_bqt_xdp_v2_4_a.primary_listing_market_official_close_price.dissect(buffer, index, packet, parent)

  -- Consolidated High Price: Binary
  index, consolidated_high_price = nyse_equities_bqt_xdp_v2_4_a.consolidated_high_price.dissect(buffer, index, packet, parent)

  -- Consolidated Low Price: Binary
  index, consolidated_low_price = nyse_equities_bqt_xdp_v2_4_a.consolidated_low_price.dissect(buffer, index, packet, parent)

  -- Consolidated First Price: Binary
  index, consolidated_first_price = nyse_equities_bqt_xdp_v2_4_a.consolidated_first_price.dissect(buffer, index, packet, parent)

  -- Consolidated Last Price: Binary
  index, consolidated_last_price = nyse_equities_bqt_xdp_v2_4_a.consolidated_last_price.dissect(buffer, index, packet, parent)

  -- Complete: Binary
  index, complete = nyse_equities_bqt_xdp_v2_4_a.complete.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Fractional Stock Summary Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_fractional_stock_summary_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Prior Day Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message = {}

-- Size: Trf Fractional Prior Day Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.price.size + 
  nyse_equities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.prior_day_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.size

-- Display: Trf Fractional Prior Day Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Prior Day Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_equities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_equities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_equities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Prior Day Time: Binary
  index, prior_day_time = nyse_equities_bqt_xdp_v2_4_a.prior_day_time.dissect(buffer, index, packet, parent)

  -- Prior Day Time Ns: Binary
  index, prior_day_time_ns = nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Prior Day Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_cancel_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Prior Day Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message = {}

-- Size: Trf Fractional Prior Day Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.price.size + 
  nyse_equities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.size + 
  nyse_equities_bqt_xdp_v2_4_a.prior_day_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.size

-- Display: Trf Fractional Prior Day Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Prior Day Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_equities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_equities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_equities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.dissect(buffer, index, packet, parent)

  -- Prior Day Time: Binary
  index, prior_day_time = nyse_equities_bqt_xdp_v2_4_a.prior_day_time.dissect(buffer, index, packet, parent)

  -- Prior Day Time Ns: Binary
  index, prior_day_time_ns = nyse_equities_bqt_xdp_v2_4_a.prior_day_time_ns.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Prior Day Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_prior_day_trade_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message = {}

-- Size: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v2_4_a.original_trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.price.size + 
  nyse_equities_bqt_xdp_v2_4_a.volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_equities_bqt_xdp_v2_4_a.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_equities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_equities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_equities_bqt_xdp_v2_4_a.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition 1: ASCII
  index, trade_condition_1 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.dissect(buffer, index, packet, parent)

  -- Trade Condition 2: ASCII
  index, trade_condition_2 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.dissect(buffer, index, packet, parent)

  -- Trade Condition 3: ASCII
  index, trade_condition_3 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.dissect(buffer, index, packet, parent)

  -- Trade Condition 4: ASCII
  index, trade_condition_4 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_equities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_trade_correction_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message = {}

-- Size: Trf Fractional Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_equities_bqt_xdp_v2_4_a.original_trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.price.size + 
  nyse_equities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.size + 
  nyse_equities_bqt_xdp_v2_4_a.exec_day_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id.size

-- Display: Trf Fractional Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_equities_bqt_xdp_v2_4_a.original_trade_id.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_equities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_equities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_equities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.dissect(buffer, index, packet, parent)

  -- Exec Day Time: Binary
  index, exec_day_time = nyse_equities_bqt_xdp_v2_4_a.exec_day_time.dissect(buffer, index, packet, parent)

  -- Exec Day Time Ns: Binary
  index, exec_day_time_ns = nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_equities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Trade Correction Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_correction_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message = {}

-- Size: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v2_4_a.original_trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Original Trade Id: Binary
  index, original_trade_id = nyse_equities_bqt_xdp_v2_4_a.original_trade_id.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_equities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Cancel Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_trade_cancel_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Trade Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message = {}

-- Size: Consolidated Trade Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.price.size + 
  nyse_equities_bqt_xdp_v2_4_a.volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Trade Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Trade Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_equities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_equities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_equities_bqt_xdp_v2_4_a.volume.dissect(buffer, index, packet, parent)

  -- Trade Condition 1: ASCII
  index, trade_condition_1 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_1.dissect(buffer, index, packet, parent)

  -- Trade Condition 2: ASCII
  index, trade_condition_2 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_2.dissect(buffer, index, packet, parent)

  -- Trade Condition 3: ASCII
  index, trade_condition_3 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_3.dissect(buffer, index, packet, parent)

  -- Trade Condition 4: ASCII
  index, trade_condition_4 = nyse_equities_bqt_xdp_v2_4_a.trade_condition_4.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_equities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Trade Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_trade_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Trf Fractional Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message = {}

-- Size: Trf Fractional Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.size =
  nyse_equities_bqt_xdp_v2_4_a.source_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.source_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_id.size + 
  nyse_equities_bqt_xdp_v2_4_a.price.size + 
  nyse_equities_bqt_xdp_v2_4_a.fractional_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.size + 
  nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.size + 
  nyse_equities_bqt_xdp_v2_4_a.exec_day_time.size + 
  nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id.size

-- Display: Trf Fractional Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trf Fractional Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Source Time: Binary
  index, source_time = nyse_equities_bqt_xdp_v2_4_a.source_time.dissect(buffer, index, packet, parent)

  -- Source Time Ns: Binary
  index, source_time_ns = nyse_equities_bqt_xdp_v2_4_a.source_time_ns.dissect(buffer, index, packet, parent)

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Num: Binary
  index, symbol_seq_num = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_num.dissect(buffer, index, packet, parent)

  -- Trade Id: Binary
  index, trade_id = nyse_equities_bqt_xdp_v2_4_a.trade_id.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_equities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Fractional Volume: Binary
  index, fractional_volume = nyse_equities_bqt_xdp_v2_4_a.fractional_volume.dissect(buffer, index, packet, parent)

  -- Trade Cond 1: ASCII
  index, trade_cond_1 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_1.dissect(buffer, index, packet, parent)

  -- Trade Cond 2: ASCII
  index, trade_cond_2 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_2.dissect(buffer, index, packet, parent)

  -- Trade Cond 3: ASCII
  index, trade_cond_3 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_3.dissect(buffer, index, packet, parent)

  -- Trade Cond 4: ASCII
  index, trade_cond_4 = nyse_equities_bqt_xdp_v2_4_a.trade_cond_4.dissect(buffer, index, packet, parent)

  -- Exec Day Time: Binary
  index, exec_day_time = nyse_equities_bqt_xdp_v2_4_a.exec_day_time.dissect(buffer, index, packet, parent)

  -- Exec Day Time Ns: Binary
  index, exec_day_time_ns = nyse_equities_bqt_xdp_v2_4_a.exec_day_time_ns.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_equities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trf Fractional Trade Message
nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.trf_fractional_trade_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Pricing Indicator
nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator = {}

-- Size: Retail Pricing Indicator
nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.size = 1

-- Display: Retail Pricing Indicator
nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Retail Interest On The Bid Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Retail Interest On The Bid Side"
  end
  -- Is Retail Interest On The Ask Side flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Retail Interest On The Ask Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Retail Pricing Indicator
nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.bits = function(range, value, packet, parent)

  -- Retail Interest On The Bid Side: 1 Bit
  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_bid_side, range, value)

  -- Retail Interest On The Ask Side: 1 Bit
  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.retail_interest_on_the_ask_side, range, value)

  -- Reserved: 6 Bit
  parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.reserved, range, value)
end

-- Dissect: Retail Pricing Indicator
nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.dissect = function(buffer, offset, packet, parent)
  local size = nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.display(range, value, packet, parent)
  local element = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.retail_pricing_indicator, range, display)

  if show.retail_pricing_indicator then
    nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message = {}

-- Size: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.size =
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v2_4_a.side.size + 
  nyse_equities_bqt_xdp_v2_4_a.price.size + 
  nyse_equities_bqt_xdp_v2_4_a.volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.quote_condition.size + 
  nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id.size

-- Display: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Side: ASCII
  index, side = nyse_equities_bqt_xdp_v2_4_a.side.dissect(buffer, index, packet, parent)

  -- Price: Binary
  index, price = nyse_equities_bqt_xdp_v2_4_a.price.dissect(buffer, index, packet, parent)

  -- Volume: Binary
  index, volume = nyse_equities_bqt_xdp_v2_4_a.volume.dissect(buffer, index, packet, parent)

  -- Quote Condition: ASCII
  index, quote_condition = nyse_equities_bqt_xdp_v2_4_a.quote_condition.dissect(buffer, index, packet, parent)

  -- Retail Pricing Indicator: Struct of 3 fields
  index, retail_pricing_indicator = nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.dissect(buffer, index, packet, parent)

  -- Market Id: Binary
  index, market_id = nyse_equities_bqt_xdp_v2_4_a.market_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Single Sided Quote Message
nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.consolidated_single_sided_quote_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.fields(buffer, offset, packet, parent)
  end
end

-- Best Quotes Message
nyse_equities_bqt_xdp_v2_4_a.best_quotes_message = {}

-- Size: Best Quotes Message
nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.size =
  nyse_equities_bqt_xdp_v2_4_a.symbol_index.size + 
  nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.size + 
  nyse_equities_bqt_xdp_v2_4_a.ask_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.ask_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.bid_price.size + 
  nyse_equities_bqt_xdp_v2_4_a.bid_volume.size + 
  nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition.size + 
  nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition.size + 
  nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask.size + 
  nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid.size

-- Display: Best Quotes Message
nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Best Quotes Message
nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Index: Binary
  index, symbol_index = nyse_equities_bqt_xdp_v2_4_a.symbol_index.dissect(buffer, index, packet, parent)

  -- Symbol Seq Number: Binary
  index, symbol_seq_number = nyse_equities_bqt_xdp_v2_4_a.symbol_seq_number.dissect(buffer, index, packet, parent)

  -- Ask Price: Binary
  index, ask_price = nyse_equities_bqt_xdp_v2_4_a.ask_price.dissect(buffer, index, packet, parent)

  -- Ask Volume: Binary
  index, ask_volume = nyse_equities_bqt_xdp_v2_4_a.ask_volume.dissect(buffer, index, packet, parent)

  -- Bid Price: Binary
  index, bid_price = nyse_equities_bqt_xdp_v2_4_a.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Volume: Binary
  index, bid_volume = nyse_equities_bqt_xdp_v2_4_a.bid_volume.dissect(buffer, index, packet, parent)

  -- Ask Quote Condition: ASCII
  index, ask_quote_condition = nyse_equities_bqt_xdp_v2_4_a.ask_quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Quote Condition: ASCII
  index, bid_quote_condition = nyse_equities_bqt_xdp_v2_4_a.bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Retail Pricing Indicator: Struct of 3 fields
  index, retail_pricing_indicator = nyse_equities_bqt_xdp_v2_4_a.retail_pricing_indicator.dissect(buffer, index, packet, parent)

  -- Market Id Of Best Ask: Binary
  index, market_id_of_best_ask = nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_ask.dissect(buffer, index, packet, parent)

  -- Market Id Of Best Bid: Binary
  index, market_id_of_best_bid = nyse_equities_bqt_xdp_v2_4_a.market_id_of_best_bid.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Best Quotes Message
nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.best_quotes_message, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.fields(buffer, offset, packet, parent)
  end
end

-- Payload
nyse_equities_bqt_xdp_v2_4_a.payload = {}

-- Dissect: Payload
nyse_equities_bqt_xdp_v2_4_a.payload.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Best Quotes Message
  if message_type == 142 then
    return nyse_equities_bqt_xdp_v2_4_a.best_quotes_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Single Sided Quote Message
  if message_type == 143 then
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_single_sided_quote_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Trade Message
  if message_type == 210 then
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Message
  if message_type == 220 then
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Cancel Message
  if message_type == 221 then
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Trade Correction Message
  if message_type == 212 then
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Trade Correction Message
  if message_type == 222 then
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_trade_correction_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Prior Day Trade Message
  if message_type == 213 then
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trf Fractional Prior Day Trade Cancel Message
  if message_type == 214 then
    return nyse_equities_bqt_xdp_v2_4_a.trf_fractional_prior_day_trade_cancel_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Fractional Stock Summary Message
  if message_type == 202 then
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_stock_summary_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Fractional Volume Message
  if message_type == 201 then
    return nyse_equities_bqt_xdp_v2_4_a.consolidated_fractional_volume_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nyse_equities_bqt_xdp_v2_4_a.message_header = {}

-- Size: Message Header
nyse_equities_bqt_xdp_v2_4_a.message_header.size =
  nyse_equities_bqt_xdp_v2_4_a.message_size.size + 
  nyse_equities_bqt_xdp_v2_4_a.message_type.size

-- Display: Message Header
nyse_equities_bqt_xdp_v2_4_a.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nyse_equities_bqt_xdp_v2_4_a.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Size: 2 Byte Unsigned Fixed Width Integer
  index, message_size = nyse_equities_bqt_xdp_v2_4_a.message_size.dissect(buffer, index, packet, parent)

  -- Message Type: 2 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, message_type = nyse_equities_bqt_xdp_v2_4_a.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nyse_equities_bqt_xdp_v2_4_a.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_header, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nyse_equities_bqt_xdp_v2_4_a.message = {}

-- Display: Message
nyse_equities_bqt_xdp_v2_4_a.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nyse_equities_bqt_xdp_v2_4_a.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = nyse_equities_bqt_xdp_v2_4_a.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 2, 2):le_uint()

  -- Payload: Runtime Type with 11 branches
  index = nyse_equities_bqt_xdp_v2_4_a.payload.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
nyse_equities_bqt_xdp_v2_4_a.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.message, buffer(offset, 0))
    local current = nyse_equities_bqt_xdp_v2_4_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = nyse_equities_bqt_xdp_v2_4_a.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_equities_bqt_xdp_v2_4_a.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Packet Header
nyse_equities_bqt_xdp_v2_4_a.packet_header = {}

-- Size: Packet Header
nyse_equities_bqt_xdp_v2_4_a.packet_header.size =
  nyse_equities_bqt_xdp_v2_4_a.packet_size.size + 
  nyse_equities_bqt_xdp_v2_4_a.delivery_flag.size + 
  nyse_equities_bqt_xdp_v2_4_a.message_count.size + 
  nyse_equities_bqt_xdp_v2_4_a.sequence_number.size + 
  nyse_equities_bqt_xdp_v2_4_a.timestamp.size + 
  nyse_equities_bqt_xdp_v2_4_a.nanoseconds.size

-- Display: Packet Header
nyse_equities_bqt_xdp_v2_4_a.packet_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Packet Header
nyse_equities_bqt_xdp_v2_4_a.packet_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Packet Size: 2 Byte Unsigned Fixed Width Integer
  index, packet_size = nyse_equities_bqt_xdp_v2_4_a.packet_size.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 11 values
  index, delivery_flag = nyse_equities_bqt_xdp_v2_4_a.delivery_flag.dissect(buffer, index, packet, parent)

  -- Message Count: 1 Byte Unsigned Fixed Width Integer
  index, message_count = nyse_equities_bqt_xdp_v2_4_a.message_count.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = nyse_equities_bqt_xdp_v2_4_a.sequence_number.dissect(buffer, index, packet, parent)

  -- Timestamp: 4 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_equities_bqt_xdp_v2_4_a.timestamp.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = nyse_equities_bqt_xdp_v2_4_a.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Packet Header
nyse_equities_bqt_xdp_v2_4_a.packet_header.dissect = function(buffer, offset, packet, parent)
  if show.packet_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a.fields.packet_header, buffer(offset, 0))
    local index = nyse_equities_bqt_xdp_v2_4_a.packet_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_equities_bqt_xdp_v2_4_a.packet_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_equities_bqt_xdp_v2_4_a.packet_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nyse_equities_bqt_xdp_v2_4_a.packet = {}

-- Dissect Packet
nyse_equities_bqt_xdp_v2_4_a.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Packet Header: Struct of 6 fields
  index, packet_header = nyse_equities_bqt_xdp_v2_4_a.packet_header.dissect(buffer, index, packet, parent)

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1

    -- Dependency element: Message Size
    local message_size = buffer(index, 2):le_uint()

    -- Runtime Size Of: Message
    index, message = nyse_equities_bqt_xdp_v2_4_a.message.dissect(buffer, index, packet, parent, message_size, message_index)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_equities_bqt_xdp_v2_4_a.init()
end

-- Dissector for Nyse Equities Bqt Xdp 2.4.a
function omi_nyse_equities_bqt_xdp_v2_4_a.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_equities_bqt_xdp_v2_4_a.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_equities_bqt_xdp_v2_4_a, buffer(), omi_nyse_equities_bqt_xdp_v2_4_a.description, "("..buffer:len().." Bytes)")
  return nyse_equities_bqt_xdp_v2_4_a.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_nyse_equities_bqt_xdp_v2_4_a)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
nyse_equities_bqt_xdp_v2_4_a.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Nyse Equities Bqt Xdp 2.4.a
local function omi_nyse_equities_bqt_xdp_v2_4_a_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_equities_bqt_xdp_v2_4_a.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_equities_bqt_xdp_v2_4_a
  omi_nyse_equities_bqt_xdp_v2_4_a.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse Equities Bqt Xdp 2.4.a
omi_nyse_equities_bqt_xdp_v2_4_a:register_heuristic("udp", omi_nyse_equities_bqt_xdp_v2_4_a_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 2.4.a
--   Date: Thursday, March 5, 2026
--   Specification: NYSE_BQT_Client_Specification.pdf
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
