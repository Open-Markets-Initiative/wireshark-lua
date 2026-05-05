-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cqs Snapshot Cta 2.1 Protocol
local omi_siac_cqs_snapshot_cta_v2_1 = Proto("Siac.Cqs.Snapshot.Cta.v2.1.Lua", "Siac Cqs Snapshot Cta 2.1")

-- Protocol table
local siac_cqs_snapshot_cta_v2_1 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cqs Snapshot Cta 2.1 Fields
omi_siac_cqs_snapshot_cta_v2_1.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cqs.snapshot.cta.v2.1.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cqs.snapshot.cta.v2.1.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cqs.snapshot.cta.v2.1.auctioncollarupperthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.bid_price = ProtoField.new("Bid Price", "siac.cqs.snapshot.cta.v2.1.bidprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.bid_size = ProtoField.new("Bid Size", "siac.cqs.snapshot.cta.v2.1.bidsize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cqs.snapshot.cta.v2.1.blockchecksum", ftypes.UINT16)
omi_siac_cqs_snapshot_cta_v2_1.fields.block_header = ProtoField.new("Block Header", "siac.cqs.snapshot.cta.v2.1.blockheader", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cqs.snapshot.cta.v2.1.blockpadbyte", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v2_1.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cqs.snapshot.cta.v2.1.blocksequencenumber", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.block_size = ProtoField.new("Block Size", "siac.cqs.snapshot.cta.v2.1.blocksize", ftypes.UINT16)
omi_siac_cqs_snapshot_cta_v2_1.fields.consolidated_closing_price = ProtoField.new("Consolidated Closing Price", "siac.cqs.snapshot.cta.v2.1.consolidatedclosingprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.deliveryflag = ProtoField.new("Deliveryflag", "siac.cqs.snapshot.cta.v2.1.deliveryflag", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v2_1.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cqs.snapshot.cta.v2.1.financialstatusindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_bbo_luld_indicator = ProtoField.new("Finra Bbo Luld Indicator", "siac.cqs.snapshot.cta.v2.1.finrabboluldindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_market_maker_id = ProtoField.new("Finra Best Bid Market Maker Id", "siac.cqs.snapshot.cta.v2.1.finrabestbidmarketmakerid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_price = ProtoField.new("Finra Best Bid Price", "siac.cqs.snapshot.cta.v2.1.finrabestbidprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_quote_condition = ProtoField.new("Finra Best Bid Quote Condition", "siac.cqs.snapshot.cta.v2.1.finrabestbidquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_size = ProtoField.new("Finra Best Bid Size", "siac.cqs.snapshot.cta.v2.1.finrabestbidsize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_market_maker_id = ProtoField.new("Finra Best Offer Market Maker Id", "siac.cqs.snapshot.cta.v2.1.finrabestoffermarketmakerid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_price = ProtoField.new("Finra Best Offer Price", "siac.cqs.snapshot.cta.v2.1.finrabestofferprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_quote_condition = ProtoField.new("Finra Best Offer Quote Condition", "siac.cqs.snapshot.cta.v2.1.finrabestofferquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_size = ProtoField.new("Finra Best Offer Size", "siac.cqs.snapshot.cta.v2.1.finrabestoffersize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cqs.snapshot.cta.v2.1.haltreason", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.high_indication_price = ProtoField.new("High Indication Price", "siac.cqs.snapshot.cta.v2.1.highindicationprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cqs.snapshot.cta.v2.1.instrumenttype", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.ipo = ProtoField.new("Ipo", "siac.cqs.snapshot.cta.v2.1.ipo", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.lastseqnum = ProtoField.new("Lastseqnum", "siac.cqs.snapshot.cta.v2.1.lastseqnum", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.limit_up_limit_down_luld_indicator = ProtoField.new("Limit Up Limit Down Luld Indicator", "siac.cqs.snapshot.cta.v2.1.limituplimitdownluldindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.low_indication_price = ProtoField.new("Low Indication Price", "siac.cqs.snapshot.cta.v2.1.lowindicationprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.lower_limit_price_band = ProtoField.new("Lower Limit Price Band", "siac.cqs.snapshot.cta.v2.1.lowerlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.luld_leverage_ratio = ProtoField.new("Luld Leverage Ratio", "siac.cqs.snapshot.cta.v2.1.luldleverageratio", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.luld_tier = ProtoField.new("Luld Tier", "siac.cqs.snapshot.cta.v2.1.luldtier", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.market_condition = ProtoField.new("Market Condition", "siac.cqs.snapshot.cta.v2.1.marketcondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.message = ProtoField.new("Message", "siac.cqs.snapshot.cta.v2.1.message", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.message_category = ProtoField.new("Message Category", "siac.cqs.snapshot.cta.v2.1.messagecategory", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.message_length = ProtoField.new("Message Length", "siac.cqs.snapshot.cta.v2.1.messagelength", ftypes.UINT16)
omi_siac_cqs_snapshot_cta_v2_1.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cqs.snapshot.cta.v2.1.messagesinblock", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v2_1.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "siac.cqs.snapshot.cta.v2.1.mwcblevel1", ftypes.INT64)
omi_siac_cqs_snapshot_cta_v2_1.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cqs.snapshot.cta.v2.1.mwcblevel2", ftypes.INT64)
omi_siac_cqs_snapshot_cta_v2_1.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cqs.snapshot.cta.v2.1.mwcblevel3", ftypes.INT64)
omi_siac_cqs_snapshot_cta_v2_1.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cqs.snapshot.cta.v2.1.nanoseconds", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_bbo_luld_indicator = ProtoField.new("National Bbo Luld Indicator", "siac.cqs.snapshot.cta.v2.1.nationalbboluldindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_participant_id = ProtoField.new("National Best Bid Participant Id", "siac.cqs.snapshot.cta.v2.1.nationalbestbidparticipantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "siac.cqs.snapshot.cta.v2.1.nationalbestbidprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_quote_condition = ProtoField.new("National Best Bid Quote Condition", "siac.cqs.snapshot.cta.v2.1.nationalbestbidquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "siac.cqs.snapshot.cta.v2.1.nationalbestbidsize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_participant_id = ProtoField.new("National Best Offer Participant Id", "siac.cqs.snapshot.cta.v2.1.nationalbestofferparticipantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_price = ProtoField.new("National Best Offer Price", "siac.cqs.snapshot.cta.v2.1.nationalbestofferprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_quote_condition = ProtoField.new("National Best Offer Quote Condition", "siac.cqs.snapshot.cta.v2.1.nationalbestofferquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_size = ProtoField.new("National Best Offer Size", "siac.cqs.snapshot.cta.v2.1.nationalbestoffersize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cqs.snapshot.cta.v2.1.numberofextensions", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v2_1.fields.offer_price = ProtoField.new("Offer Price", "siac.cqs.snapshot.cta.v2.1.offerprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.offer_size = ProtoField.new("Offer Size", "siac.cqs.snapshot.cta.v2.1.offersize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.packet = ProtoField.new("Packet", "siac.cqs.snapshot.cta.v2.1.packet", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.participant_id = ProtoField.new("Participant Id", "siac.cqs.snapshot.cta.v2.1.participantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cqs.snapshot.cta.v2.1.primarylistingmarketparticipantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.primary_listing_market_previous_closing_price = ProtoField.new("Primary Listing Market Previous Closing Price", "siac.cqs.snapshot.cta.v2.1.primarylistingmarketpreviousclosingprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.prior_security_symbol = ProtoField.new("Prior Security Symbol", "siac.cqs.snapshot.cta.v2.1.priorsecuritysymbol", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.quote_condition = ProtoField.new("Quote Condition", "siac.cqs.snapshot.cta.v2.1.quotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.reserved = ProtoField.new("Reserved", "siac.cqs.snapshot.cta.v2.1.reserved", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "siac.cqs.snapshot.cta.v2.1.retailinterestindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.round_lot_size = ProtoField.new("Round Lot Size", "siac.cqs.snapshot.cta.v2.1.roundlotsize", ftypes.UINT16)
omi_siac_cqs_snapshot_cta_v2_1.fields.seconds = ProtoField.new("Seconds", "siac.cqs.snapshot.cta.v2.1.seconds", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v2_1.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cqs.snapshot.cta.v2.1.securitysymbol", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.settlement_condition = ProtoField.new("Settlement Condition", "siac.cqs.snapshot.cta.v2.1.settlementcondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cqs.snapshot.cta.v2.1.shortsalerestrictionindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.sip_block_timestamp = ProtoField.new("Sip Block Timestamp", "siac.cqs.snapshot.cta.v2.1.sipblocktimestamp", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.snapshot = ProtoField.new("Snapshot", "siac.cqs.snapshot.cta.v2.1.snapshot", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.snapshot_message_type = ProtoField.new("Snapshot Message Type", "siac.cqs.snapshot.cta.v2.1.snapshotmessagetype", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.test = ProtoField.new("Test", "siac.cqs.snapshot.cta.v2.1.test", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.totpubseqrollover = ProtoField.new("Totpubseqrollover", "siac.cqs.snapshot.cta.v2.1.totpubseqrollover", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v2_1.fields.upper_limit_price_band = ProtoField.new("Upper Limit Price Band", "siac.cqs.snapshot.cta.v2.1.upperlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v2_1.fields.version = ProtoField.new("Version", "siac.cqs.snapshot.cta.v2.1.version", ftypes.UINT8)

-- Siac Cqs Cta Snapshot 2.1 Application Messages
omi_siac_cqs_snapshot_cta_v2_1.fields.consolidated_snapshot_message = ProtoField.new("Consolidated Snapshot Message", "siac.cqs.snapshot.cta.v2.1.consolidatedsnapshotmessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.finra_snapshot_message = ProtoField.new("Finra Snapshot Message", "siac.cqs.snapshot.cta.v2.1.finrasnapshotmessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cqs.snapshot.cta.v2.1.lineintegritymessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.market_wide_circuit_breaker_decline_level_status_snapshot_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Snapshot Message", "siac.cqs.snapshot.cta.v2.1.marketwidecircuitbreakerdeclinelevelstatussnapshotmessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.participant_snapshot_message = ProtoField.new("Participant Snapshot Message", "siac.cqs.snapshot.cta.v2.1.participantsnapshotmessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v2_1.fields.symbol_reference_data_message = ProtoField.new("Symbol Reference Data Message", "siac.cqs.snapshot.cta.v2.1.symbolreferencedatamessage", ftypes.STRING)

-- Siac Cqs Snapshot Cta 2.1 generated fields
omi_siac_cqs_snapshot_cta_v2_1.fields.message_index = ProtoField.new("Message Index", "siac.cqs.snapshot.cta.v2.1.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Cqs Snapshot Cta 2.1 Element Dissection Options
show.block_header = true
show.application_messages = true
show.message = true
show.packet = true
show.sip_block_timestamp = true
show.snapshot = true
show.message_index = true

-- Register Siac Cqs Snapshot Cta 2.1 Show Options
omi_siac_cqs_snapshot_cta_v2_1.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_cqs_snapshot_cta_v2_1.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_siac_cqs_snapshot_cta_v2_1.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_cqs_snapshot_cta_v2_1.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_cqs_snapshot_cta_v2_1.prefs.show_sip_block_timestamp = Pref.bool("Show Sip Block Timestamp", show.sip_block_timestamp, "Parse and add Sip Block Timestamp to protocol tree")
omi_siac_cqs_snapshot_cta_v2_1.prefs.show_snapshot = Pref.bool("Show Snapshot", show.snapshot, "Parse and add Snapshot to protocol tree")
omi_siac_cqs_snapshot_cta_v2_1.prefs.show_message_index = Pref.bool("Show Message Index", show.message_index, "Show generated message index in protocol tree")

-- Handle changed preferences
function omi_siac_cqs_snapshot_cta_v2_1.prefs_changed()

  -- Check if show options have changed
  if show.application_messages ~= omi_siac_cqs_snapshot_cta_v2_1.prefs.show_application_messages then
    show.application_messages = omi_siac_cqs_snapshot_cta_v2_1.prefs.show_application_messages
  end
  if show.block_header ~= omi_siac_cqs_snapshot_cta_v2_1.prefs.show_block_header then
    show.block_header = omi_siac_cqs_snapshot_cta_v2_1.prefs.show_block_header
  end
  if show.message ~= omi_siac_cqs_snapshot_cta_v2_1.prefs.show_message then
    show.message = omi_siac_cqs_snapshot_cta_v2_1.prefs.show_message
  end
  if show.packet ~= omi_siac_cqs_snapshot_cta_v2_1.prefs.show_packet then
    show.packet = omi_siac_cqs_snapshot_cta_v2_1.prefs.show_packet
  end
  if show.sip_block_timestamp ~= omi_siac_cqs_snapshot_cta_v2_1.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = omi_siac_cqs_snapshot_cta_v2_1.prefs.show_sip_block_timestamp
  end
  if show.snapshot ~= omi_siac_cqs_snapshot_cta_v2_1.prefs.show_snapshot then
    show.snapshot = omi_siac_cqs_snapshot_cta_v2_1.prefs.show_snapshot
  end
  if show.message_index ~= omi_siac_cqs_snapshot_cta_v2_1.prefs.show_message_index then
    show.message_index = omi_siac_cqs_snapshot_cta_v2_1.prefs.show_message_index
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
-- Siac Cqs Snapshot Cta 2.1 Fields
-----------------------------------------------------------------------

-- Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price = {}

-- Size: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.size = 8

-- Display: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.display = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.size = 8

-- Display: Auction Collar Reference Price
siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price = {}

-- Size: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.size = 8

-- Display: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.display = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Bid Price
siac_cqs_snapshot_cta_v2_1.bid_price = {}

-- Size: Bid Price
siac_cqs_snapshot_cta_v2_1.bid_price.size = 8

-- Display: Bid Price
siac_cqs_snapshot_cta_v2_1.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
siac_cqs_snapshot_cta_v2_1.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
siac_cqs_snapshot_cta_v2_1.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.bid_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
siac_cqs_snapshot_cta_v2_1.bid_size = {}

-- Size: Bid Size
siac_cqs_snapshot_cta_v2_1.bid_size.size = 4

-- Display: Bid Size
siac_cqs_snapshot_cta_v2_1.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
siac_cqs_snapshot_cta_v2_1.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Block Checksum
siac_cqs_snapshot_cta_v2_1.block_checksum = {}

-- Size: Block Checksum
siac_cqs_snapshot_cta_v2_1.block_checksum.size = 2

-- Display: Block Checksum
siac_cqs_snapshot_cta_v2_1.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cqs_snapshot_cta_v2_1.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Block Pad Byte
siac_cqs_snapshot_cta_v2_1.block_pad_byte = {}

-- Size: Block Pad Byte
siac_cqs_snapshot_cta_v2_1.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_cqs_snapshot_cta_v2_1.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cqs_snapshot_cta_v2_1.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_cqs_snapshot_cta_v2_1.block_sequence_number = {}

-- Size: Block Sequence Number
siac_cqs_snapshot_cta_v2_1.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_cqs_snapshot_cta_v2_1.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cqs_snapshot_cta_v2_1.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_cqs_snapshot_cta_v2_1.block_size = {}

-- Size: Block Size
siac_cqs_snapshot_cta_v2_1.block_size.size = 2

-- Display: Block Size
siac_cqs_snapshot_cta_v2_1.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cqs_snapshot_cta_v2_1.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.block_size, range, value, display)

  return offset + length, value
end

-- Consolidated Closing Price
siac_cqs_snapshot_cta_v2_1.consolidated_closing_price = {}

-- Size: Consolidated Closing Price
siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.size = 8

-- Display: Consolidated Closing Price
siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.display = function(value)
  return "Consolidated Closing Price: "..value
end

-- Translate: Consolidated Closing Price
siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Consolidated Closing Price
siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.consolidated_closing_price, range, value, display)

  return offset + length, value
end

-- Deliveryflag
siac_cqs_snapshot_cta_v2_1.deliveryflag = {}

-- Size: Deliveryflag
siac_cqs_snapshot_cta_v2_1.deliveryflag.size = 1

-- Display: Deliveryflag
siac_cqs_snapshot_cta_v2_1.deliveryflag.display = function(value)
  if value == 1 then
    return "Deliveryflag: First Block (1)"
  end
  if value == 2 then
    return "Deliveryflag: Intermediate Block (2)"
  end
  if value == 3 then
    return "Deliveryflag: Last Block (3)"
  end
  if value == 4 then
    return "Deliveryflag: Only One Block (4)"
  end

  return "Deliveryflag: Unknown("..value..")"
end

-- Dissect: Deliveryflag
siac_cqs_snapshot_cta_v2_1.deliveryflag.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.deliveryflag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.deliveryflag.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.deliveryflag, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
siac_cqs_snapshot_cta_v2_1.financial_status_indicator = {}

-- Size: Financial Status Indicator
siac_cqs_snapshot_cta_v2_1.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
siac_cqs_snapshot_cta_v2_1.financial_status_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator = {}

-- Size: Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator.size = 1

-- Display: Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator.display = function(value)
  if value == " " then
    return "Finra Bbo Luld Indicator: Limit Up Limit Down Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Finra Bbo Luld Indicator: Finra Best Bid Andor Finra Best Offer Are Executable (A)"
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
siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id = {}

-- Size: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.size = 4

-- Display: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.display = function(value)
  return "Finra Best Bid Market Maker Id: "..value
end

-- Dissect: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Price
siac_cqs_snapshot_cta_v2_1.finra_best_bid_price = {}

-- Size: Finra Best Bid Price
siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.size = 8

-- Display: Finra Best Bid Price
siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.display = function(value)
  return "Finra Best Bid Price: "..value
end

-- Translate: Finra Best Bid Price
siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Bid Price
siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_price, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition = {}

-- Size: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition.size = 1

-- Display: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition.display = function(value)
  return "Finra Best Bid Quote Condition: "..value
end

-- Dissect: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Size
siac_cqs_snapshot_cta_v2_1.finra_best_bid_size = {}

-- Size: Finra Best Bid Size
siac_cqs_snapshot_cta_v2_1.finra_best_bid_size.size = 4

-- Display: Finra Best Bid Size
siac_cqs_snapshot_cta_v2_1.finra_best_bid_size.display = function(value)
  return "Finra Best Bid Size: "..value
end

-- Dissect: Finra Best Bid Size
siac_cqs_snapshot_cta_v2_1.finra_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_bid_size, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id = {}

-- Size: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.size = 4

-- Display: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.display = function(value)
  return "Finra Best Offer Market Maker Id: "..value
end

-- Dissect: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Price
siac_cqs_snapshot_cta_v2_1.finra_best_offer_price = {}

-- Size: Finra Best Offer Price
siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.size = 8

-- Display: Finra Best Offer Price
siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.display = function(value)
  return "Finra Best Offer Price: "..value
end

-- Translate: Finra Best Offer Price
siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Offer Price
siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_price, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition = {}

-- Size: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition.size = 1

-- Display: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition.display = function(value)
  return "Finra Best Offer Quote Condition: "..value
end

-- Dissect: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Size
siac_cqs_snapshot_cta_v2_1.finra_best_offer_size = {}

-- Size: Finra Best Offer Size
siac_cqs_snapshot_cta_v2_1.finra_best_offer_size.size = 4

-- Display: Finra Best Offer Size
siac_cqs_snapshot_cta_v2_1.finra_best_offer_size.display = function(value)
  return "Finra Best Offer Size: "..value
end

-- Dissect: Finra Best Offer Size
siac_cqs_snapshot_cta_v2_1.finra_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.finra_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.finra_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_best_offer_size, range, value, display)

  return offset + length, value
end

-- Halt Reason
siac_cqs_snapshot_cta_v2_1.halt_reason = {}

-- Size: Halt Reason
siac_cqs_snapshot_cta_v2_1.halt_reason.size = 1

-- Display: Halt Reason
siac_cqs_snapshot_cta_v2_1.halt_reason.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- High Indication Price
siac_cqs_snapshot_cta_v2_1.high_indication_price = {}

-- Size: High Indication Price
siac_cqs_snapshot_cta_v2_1.high_indication_price.size = 8

-- Display: High Indication Price
siac_cqs_snapshot_cta_v2_1.high_indication_price.display = function(value)
  return "High Indication Price: "..value
end

-- Translate: High Indication Price
siac_cqs_snapshot_cta_v2_1.high_indication_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price
siac_cqs_snapshot_cta_v2_1.high_indication_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.high_indication_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.high_indication_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.high_indication_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.high_indication_price, range, value, display)

  return offset + length, value
end

-- Instrument Type
siac_cqs_snapshot_cta_v2_1.instrument_type = {}

-- Size: Instrument Type
siac_cqs_snapshot_cta_v2_1.instrument_type.size = 1

-- Display: Instrument Type
siac_cqs_snapshot_cta_v2_1.instrument_type.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Ipo
siac_cqs_snapshot_cta_v2_1.ipo = {}

-- Size: Ipo
siac_cqs_snapshot_cta_v2_1.ipo.size = 1

-- Display: Ipo
siac_cqs_snapshot_cta_v2_1.ipo.display = function(value)
  if value == "0" then
    return "Ipo: Not An Ipo Symbol (0)"
  end
  if value == "1" then
    return "Ipo: Ipo Symbol (1)"
  end

  return "Ipo: Unknown("..value..")"
end

-- Dissect: Ipo
siac_cqs_snapshot_cta_v2_1.ipo.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.ipo.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.ipo.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.ipo, range, value, display)

  return offset + length, value
end

-- Lastseqnum
siac_cqs_snapshot_cta_v2_1.lastseqnum = {}

-- Size: Lastseqnum
siac_cqs_snapshot_cta_v2_1.lastseqnum.size = 4

-- Display: Lastseqnum
siac_cqs_snapshot_cta_v2_1.lastseqnum.display = function(value)
  return "Lastseqnum: "..value
end

-- Dissect: Lastseqnum
siac_cqs_snapshot_cta_v2_1.lastseqnum.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.lastseqnum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.lastseqnum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.lastseqnum, range, value, display)

  return offset + length, value
end

-- Limit Up Limit Down Luld Indicator
siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator = {}

-- Size: Limit Up Limit Down Luld Indicator
siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator.size = 1

-- Display: Limit Up Limit Down Luld Indicator
siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.limit_up_limit_down_luld_indicator, range, value, display)

  return offset + length, value
end

-- Low Indication Price
siac_cqs_snapshot_cta_v2_1.low_indication_price = {}

-- Size: Low Indication Price
siac_cqs_snapshot_cta_v2_1.low_indication_price.size = 8

-- Display: Low Indication Price
siac_cqs_snapshot_cta_v2_1.low_indication_price.display = function(value)
  return "Low Indication Price: "..value
end

-- Translate: Low Indication Price
siac_cqs_snapshot_cta_v2_1.low_indication_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price
siac_cqs_snapshot_cta_v2_1.low_indication_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.low_indication_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.low_indication_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.low_indication_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.low_indication_price, range, value, display)

  return offset + length, value
end

-- Lower Limit Price Band
siac_cqs_snapshot_cta_v2_1.lower_limit_price_band = {}

-- Size: Lower Limit Price Band
siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.size = 8

-- Display: Lower Limit Price Band
siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.display = function(value)
  return "Lower Limit Price Band: "..value
end

-- Translate: Lower Limit Price Band
siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Lower Limit Price Band
siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Luld Leverage Ratio
siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio = {}

-- Size: Luld Leverage Ratio
siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio.size = 4

-- Display: Luld Leverage Ratio
siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio.display = function(value)
  return "Luld Leverage Ratio: "..value
end

-- Dissect: Luld Leverage Ratio
siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.luld_leverage_ratio, range, value, display)

  return offset + length, value
end

-- Luld Tier
siac_cqs_snapshot_cta_v2_1.luld_tier = {}

-- Size: Luld Tier
siac_cqs_snapshot_cta_v2_1.luld_tier.size = 1

-- Display: Luld Tier
siac_cqs_snapshot_cta_v2_1.luld_tier.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.luld_tier.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.luld_tier.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.luld_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Market Condition
siac_cqs_snapshot_cta_v2_1.market_condition = {}

-- Size: Market Condition
siac_cqs_snapshot_cta_v2_1.market_condition.size = 1

-- Display: Market Condition
siac_cqs_snapshot_cta_v2_1.market_condition.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.market_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.market_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.market_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Message Category
siac_cqs_snapshot_cta_v2_1.message_category = {}

-- Size: Message Category
siac_cqs_snapshot_cta_v2_1.message_category.size = 1

-- Display: Message Category
siac_cqs_snapshot_cta_v2_1.message_category.display = function(value)
  if value == "R" then
    return "Message Category: Snapshot (R)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_cqs_snapshot_cta_v2_1.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Length
siac_cqs_snapshot_cta_v2_1.message_length = {}

-- Size: Message Length
siac_cqs_snapshot_cta_v2_1.message_length.size = 2

-- Display: Message Length
siac_cqs_snapshot_cta_v2_1.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cqs_snapshot_cta_v2_1.message_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.message_length, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_cqs_snapshot_cta_v2_1.messages_in_block = {}

-- Size: Messages In Block
siac_cqs_snapshot_cta_v2_1.messages_in_block.size = 1

-- Display: Messages In Block
siac_cqs_snapshot_cta_v2_1.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cqs_snapshot_cta_v2_1.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
siac_cqs_snapshot_cta_v2_1.mwcb_level_1 = {}

-- Size: Mwcb Level 1
siac_cqs_snapshot_cta_v2_1.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
siac_cqs_snapshot_cta_v2_1.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
siac_cqs_snapshot_cta_v2_1.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v2_1.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
siac_cqs_snapshot_cta_v2_1.mwcb_level_2 = {}

-- Size: Mwcb Level 2
siac_cqs_snapshot_cta_v2_1.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
siac_cqs_snapshot_cta_v2_1.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
siac_cqs_snapshot_cta_v2_1.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v2_1.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
siac_cqs_snapshot_cta_v2_1.mwcb_level_3 = {}

-- Size: Mwcb Level 3
siac_cqs_snapshot_cta_v2_1.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
siac_cqs_snapshot_cta_v2_1.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
siac_cqs_snapshot_cta_v2_1.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v2_1.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_cqs_snapshot_cta_v2_1.nanoseconds = {}

-- Size: Nanoseconds
siac_cqs_snapshot_cta_v2_1.nanoseconds.size = 4

-- Display: Nanoseconds
siac_cqs_snapshot_cta_v2_1.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cqs_snapshot_cta_v2_1.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- National Bbo Luld Indicator
siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator = {}

-- Size: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator.size = 1

-- Display: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator.display = function(value)
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
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And National Best Offer Above Upper Limit Price Band (D)"
  end
  if value == "E" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band (E)"
  end
  if value == "F" then
    return "National Bbo Luld Indicator: National Best Offer Equals Lower Limit Price Band (F)"
  end
  if value == "G" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And National Best Offer Above Upper Limit Price Band (G)"
  end
  if value == "H" then
    return "National Bbo Luld Indicator: National Best Bid Below Lower Limit Price Band And National Best Offer Equals Lower Limit Price Band (H)"
  end
  if value == "I" then
    return "National Bbo Luld Indicator: National Best Bid Equals Upper Limit Price Band And National Best Offer Equals Lower Limit Price Band (I)"
  end

  return "National Bbo Luld Indicator: Unknown("..value..")"
end

-- Dissect: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- National Best Bid Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id = {}

-- Size: National Best Bid Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id.size = 1

-- Display: National Best Bid Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id.display = function(value)
  return "National Best Bid Participant Id: "..value
end

-- Dissect: National Best Bid Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- National Best Bid Price
siac_cqs_snapshot_cta_v2_1.national_best_bid_price = {}

-- Size: National Best Bid Price
siac_cqs_snapshot_cta_v2_1.national_best_bid_price.size = 8

-- Display: National Best Bid Price
siac_cqs_snapshot_cta_v2_1.national_best_bid_price.display = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
siac_cqs_snapshot_cta_v2_1.national_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
siac_cqs_snapshot_cta_v2_1.national_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.national_best_bid_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.national_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- National Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition = {}

-- Size: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition.size = 1

-- Display: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition.display = function(value)
  return "National Best Bid Quote Condition: "..value
end

-- Dissect: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- National Best Bid Size
siac_cqs_snapshot_cta_v2_1.national_best_bid_size = {}

-- Size: National Best Bid Size
siac_cqs_snapshot_cta_v2_1.national_best_bid_size.size = 4

-- Display: National Best Bid Size
siac_cqs_snapshot_cta_v2_1.national_best_bid_size.display = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
siac_cqs_snapshot_cta_v2_1.national_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.national_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- National Best Offer Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id = {}

-- Size: National Best Offer Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id.size = 1

-- Display: National Best Offer Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id.display = function(value)
  return "National Best Offer Participant Id: "..value
end

-- Dissect: National Best Offer Participant Id
siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_participant_id, range, value, display)

  return offset + length, value
end

-- National Best Offer Price
siac_cqs_snapshot_cta_v2_1.national_best_offer_price = {}

-- Size: National Best Offer Price
siac_cqs_snapshot_cta_v2_1.national_best_offer_price.size = 8

-- Display: National Best Offer Price
siac_cqs_snapshot_cta_v2_1.national_best_offer_price.display = function(value)
  return "National Best Offer Price: "..value
end

-- Translate: National Best Offer Price
siac_cqs_snapshot_cta_v2_1.national_best_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Offer Price
siac_cqs_snapshot_cta_v2_1.national_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.national_best_offer_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.national_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_price, range, value, display)

  return offset + length, value
end

-- National Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition = {}

-- Size: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition.size = 1

-- Display: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition.display = function(value)
  return "National Best Offer Quote Condition: "..value
end

-- Dissect: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- National Best Offer Size
siac_cqs_snapshot_cta_v2_1.national_best_offer_size = {}

-- Size: National Best Offer Size
siac_cqs_snapshot_cta_v2_1.national_best_offer_size.size = 4

-- Display: National Best Offer Size
siac_cqs_snapshot_cta_v2_1.national_best_offer_size.display = function(value)
  return "National Best Offer Size: "..value
end

-- Dissect: National Best Offer Size
siac_cqs_snapshot_cta_v2_1.national_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.national_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.national_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.national_best_offer_size, range, value, display)

  return offset + length, value
end

-- Number Of Extensions
siac_cqs_snapshot_cta_v2_1.number_of_extensions = {}

-- Size: Number Of Extensions
siac_cqs_snapshot_cta_v2_1.number_of_extensions.size = 1

-- Display: Number Of Extensions
siac_cqs_snapshot_cta_v2_1.number_of_extensions.display = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cqs_snapshot_cta_v2_1.number_of_extensions.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.number_of_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.number_of_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Offer Price
siac_cqs_snapshot_cta_v2_1.offer_price = {}

-- Size: Offer Price
siac_cqs_snapshot_cta_v2_1.offer_price.size = 8

-- Display: Offer Price
siac_cqs_snapshot_cta_v2_1.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
siac_cqs_snapshot_cta_v2_1.offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price
siac_cqs_snapshot_cta_v2_1.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.offer_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Offer Size
siac_cqs_snapshot_cta_v2_1.offer_size = {}

-- Size: Offer Size
siac_cqs_snapshot_cta_v2_1.offer_size.size = 4

-- Display: Offer Size
siac_cqs_snapshot_cta_v2_1.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
siac_cqs_snapshot_cta_v2_1.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Participant Id
siac_cqs_snapshot_cta_v2_1.participant_id = {}

-- Size: Participant Id
siac_cqs_snapshot_cta_v2_1.participant_id.size = 1

-- Display: Participant Id
siac_cqs_snapshot_cta_v2_1.participant_id.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id = {}

-- Size: Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.size = 1

-- Display: Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Previous Closing Price
siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price = {}

-- Size: Primary Listing Market Previous Closing Price
siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.size = 8

-- Display: Primary Listing Market Previous Closing Price
siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.display = function(value)
  return "Primary Listing Market Previous Closing Price: "..value
end

-- Translate: Primary Listing Market Previous Closing Price
siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Primary Listing Market Previous Closing Price
siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.primary_listing_market_previous_closing_price, range, value, display)

  return offset + length, value
end

-- Prior Security Symbol
siac_cqs_snapshot_cta_v2_1.prior_security_symbol = {}

-- Size: Prior Security Symbol
siac_cqs_snapshot_cta_v2_1.prior_security_symbol.size = 11

-- Display: Prior Security Symbol
siac_cqs_snapshot_cta_v2_1.prior_security_symbol.display = function(value)
  return "Prior Security Symbol: "..value
end

-- Dissect: Prior Security Symbol
siac_cqs_snapshot_cta_v2_1.prior_security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.prior_security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_snapshot_cta_v2_1.prior_security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.prior_security_symbol, range, value, display)

  return offset + length, value
end

-- Quote Condition
siac_cqs_snapshot_cta_v2_1.quote_condition = {}

-- Size: Quote Condition
siac_cqs_snapshot_cta_v2_1.quote_condition.size = 1

-- Display: Quote Condition
siac_cqs_snapshot_cta_v2_1.quote_condition.display = function(value)
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
    return "Quote Condition: Closed Market Maker Finra (L)"
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
    return "Quote Condition: Slow Quote Due To Lrp Or Gap Quote On Both The Bid And Offer Sides (U)"
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
siac_cqs_snapshot_cta_v2_1.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Reserved
siac_cqs_snapshot_cta_v2_1.reserved = {}

-- Size: Reserved
siac_cqs_snapshot_cta_v2_1.reserved.size = 1

-- Display: Reserved
siac_cqs_snapshot_cta_v2_1.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cqs_snapshot_cta_v2_1.reserved.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.reserved.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.reserved, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
siac_cqs_snapshot_cta_v2_1.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
siac_cqs_snapshot_cta_v2_1.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
siac_cqs_snapshot_cta_v2_1.retail_interest_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
siac_cqs_snapshot_cta_v2_1.round_lot_size = {}

-- Size: Round Lot Size
siac_cqs_snapshot_cta_v2_1.round_lot_size.size = 2

-- Display: Round Lot Size
siac_cqs_snapshot_cta_v2_1.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
siac_cqs_snapshot_cta_v2_1.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Seconds
siac_cqs_snapshot_cta_v2_1.seconds = {}

-- Size: Seconds
siac_cqs_snapshot_cta_v2_1.seconds.size = 4

-- Display: Seconds
siac_cqs_snapshot_cta_v2_1.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cqs_snapshot_cta_v2_1.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.seconds, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_cqs_snapshot_cta_v2_1.security_symbol = {}

-- Size: Security Symbol
siac_cqs_snapshot_cta_v2_1.security_symbol.size = 11

-- Display: Security Symbol
siac_cqs_snapshot_cta_v2_1.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cqs_snapshot_cta_v2_1.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.security_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = siac_cqs_snapshot_cta_v2_1.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Settlement Condition
siac_cqs_snapshot_cta_v2_1.settlement_condition = {}

-- Size: Settlement Condition
siac_cqs_snapshot_cta_v2_1.settlement_condition.size = 1

-- Display: Settlement Condition
siac_cqs_snapshot_cta_v2_1.settlement_condition.display = function(value)
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
siac_cqs_snapshot_cta_v2_1.settlement_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.settlement_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.settlement_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.settlement_condition, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator = {}

-- Size: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.size = 1

-- Display: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.display = function(value)
  if value == " " then
    return "Short Sale Restriction Indicator: Short Sale Restriction Not In Effect (<whitespace>)"
  end
  if value == "E" then
    return "Short Sale Restriction Indicator: Short Sale Restriction In Effect (E)"
  end

  return "Short Sale Restriction Indicator: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Snapshot Message Type
siac_cqs_snapshot_cta_v2_1.snapshot_message_type = {}

-- Size: Snapshot Message Type
siac_cqs_snapshot_cta_v2_1.snapshot_message_type.size = 1

-- Display: Snapshot Message Type
siac_cqs_snapshot_cta_v2_1.snapshot_message_type.display = function(value)
  return "Snapshot Message Type: "..value
end

-- Dissect: Snapshot Message Type
siac_cqs_snapshot_cta_v2_1.snapshot_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.snapshot_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.snapshot_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.snapshot_message_type, range, value, display)

  return offset + length, value
end

-- Test
siac_cqs_snapshot_cta_v2_1.test = {}

-- Size: Test
siac_cqs_snapshot_cta_v2_1.test.size = 1

-- Display: Test
siac_cqs_snapshot_cta_v2_1.test.display = function(value)
  if value == "0" then
    return "Test: Not A Test Symbol (0)"
  end
  if value == "1" then
    return "Test: Test Symbol (1)"
  end

  return "Test: Unknown("..value..")"
end

-- Dissect: Test
siac_cqs_snapshot_cta_v2_1.test.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.test.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v2_1.test.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.test, range, value, display)

  return offset + length, value
end

-- Totpubseqrollover
siac_cqs_snapshot_cta_v2_1.totpubseqrollover = {}

-- Size: Totpubseqrollover
siac_cqs_snapshot_cta_v2_1.totpubseqrollover.size = 1

-- Display: Totpubseqrollover
siac_cqs_snapshot_cta_v2_1.totpubseqrollover.display = function(value)
  return "Totpubseqrollover: "..value
end

-- Dissect: Totpubseqrollover
siac_cqs_snapshot_cta_v2_1.totpubseqrollover.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.totpubseqrollover.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.totpubseqrollover.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.totpubseqrollover, range, value, display)

  return offset + length, value
end

-- Upper Limit Price Band
siac_cqs_snapshot_cta_v2_1.upper_limit_price_band = {}

-- Size: Upper Limit Price Band
siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.size = 8

-- Display: Upper Limit Price Band
siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.display = function(value)
  return "Upper Limit Price Band: "..value
end

-- Translate: Upper Limit Price Band
siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Upper Limit Price Band
siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.translate(raw)
  local display = siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Version
siac_cqs_snapshot_cta_v2_1.version = {}

-- Size: Version
siac_cqs_snapshot_cta_v2_1.version.size = 1

-- Display: Version
siac_cqs_snapshot_cta_v2_1.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cqs_snapshot_cta_v2_1.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v2_1.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v2_1.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Siac Cqs Snapshot Cta 2.1
-----------------------------------------------------------------------

-- Finra Snapshot Message
siac_cqs_snapshot_cta_v2_1.finra_snapshot_message = {}

-- Size: Finra Snapshot Message
siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.size =
  siac_cqs_snapshot_cta_v2_1.participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.security_symbol.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_bid_size.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_offer_size.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.size + 
  siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.high_indication_price.size + 
  siac_cqs_snapshot_cta_v2_1.low_indication_price.size + 
  siac_cqs_snapshot_cta_v2_1.halt_reason.size

-- Display: Finra Snapshot Message
siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Snapshot Message
siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_snapshot_cta_v2_1.participant_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_snapshot_cta_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Quote Condition: Char
  index, finra_best_bid_quote_condition = siac_cqs_snapshot_cta_v2_1.finra_best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Price: Long
  index, finra_best_bid_price = siac_cqs_snapshot_cta_v2_1.finra_best_bid_price.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Size: Integer
  index, finra_best_bid_size = siac_cqs_snapshot_cta_v2_1.finra_best_bid_size.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: Char[]
  index, finra_best_bid_market_maker_id = siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Quote Condition: Char
  index, finra_best_offer_quote_condition = siac_cqs_snapshot_cta_v2_1.finra_best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Price: Long
  index, finra_best_offer_price = siac_cqs_snapshot_cta_v2_1.finra_best_offer_price.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Size: Integer
  index, finra_best_offer_size = siac_cqs_snapshot_cta_v2_1.finra_best_offer_size.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: Char[]
  index, finra_best_offer_market_maker_id = siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Bbo Luld Indicator: Char
  index, finra_bbo_luld_indicator = siac_cqs_snapshot_cta_v2_1.finra_bbo_luld_indicator.dissect(buffer, index, packet, parent)

  -- High Indication Price: Long
  index, high_indication_price = siac_cqs_snapshot_cta_v2_1.high_indication_price.dissect(buffer, index, packet, parent)

  -- Low Indication Price: Long
  index, low_indication_price = siac_cqs_snapshot_cta_v2_1.low_indication_price.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cqs_snapshot_cta_v2_1.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Snapshot Message
siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.finra_snapshot_message, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Participant Snapshot Message
siac_cqs_snapshot_cta_v2_1.participant_snapshot_message = {}

-- Size: Participant Snapshot Message
siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.size =
  siac_cqs_snapshot_cta_v2_1.participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.security_symbol.size + 
  siac_cqs_snapshot_cta_v2_1.quote_condition.size + 
  siac_cqs_snapshot_cta_v2_1.bid_price.size + 
  siac_cqs_snapshot_cta_v2_1.bid_size.size + 
  siac_cqs_snapshot_cta_v2_1.offer_price.size + 
  siac_cqs_snapshot_cta_v2_1.offer_size.size + 
  siac_cqs_snapshot_cta_v2_1.retail_interest_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.settlement_condition.size + 
  siac_cqs_snapshot_cta_v2_1.market_condition.size + 
  siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.high_indication_price.size + 
  siac_cqs_snapshot_cta_v2_1.low_indication_price.size + 
  siac_cqs_snapshot_cta_v2_1.halt_reason.size

-- Display: Participant Snapshot Message
siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Snapshot Message
siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_snapshot_cta_v2_1.participant_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_snapshot_cta_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Quote Condition: Char
  index, quote_condition = siac_cqs_snapshot_cta_v2_1.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price: Long
  index, bid_price = siac_cqs_snapshot_cta_v2_1.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: Integer
  index, bid_size = siac_cqs_snapshot_cta_v2_1.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: Long
  index, offer_price = siac_cqs_snapshot_cta_v2_1.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: Integer
  index, offer_size = siac_cqs_snapshot_cta_v2_1.offer_size.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: Char
  index, retail_interest_indicator = siac_cqs_snapshot_cta_v2_1.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: Char
  index, settlement_condition = siac_cqs_snapshot_cta_v2_1.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: Char
  index, market_condition = siac_cqs_snapshot_cta_v2_1.market_condition.dissect(buffer, index, packet, parent)

  -- Limit Up Limit Down Luld Indicator: Char
  index, limit_up_limit_down_luld_indicator = siac_cqs_snapshot_cta_v2_1.limit_up_limit_down_luld_indicator.dissect(buffer, index, packet, parent)

  -- High Indication Price: Long
  index, high_indication_price = siac_cqs_snapshot_cta_v2_1.high_indication_price.dissect(buffer, index, packet, parent)

  -- Low Indication Price: Long
  index, low_indication_price = siac_cqs_snapshot_cta_v2_1.low_indication_price.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cqs_snapshot_cta_v2_1.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Snapshot Message
siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.participant_snapshot_message, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Consolidated Snapshot Message
siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message = {}

-- Size: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.size =
  siac_cqs_snapshot_cta_v2_1.participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.security_symbol.size + 
  siac_cqs_snapshot_cta_v2_1.instrument_type.size + 
  siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.size + 
  siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.size + 
  siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.size + 
  siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.size + 
  siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.size + 
  siac_cqs_snapshot_cta_v2_1.number_of_extensions.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_bid_price.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_bid_size.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_offer_price.size + 
  siac_cqs_snapshot_cta_v2_1.national_best_offer_size.size + 
  siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.size + 
  siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.financial_status_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.halt_reason.size + 
  siac_cqs_snapshot_cta_v2_1.reserved.size

-- Display: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_snapshot_cta_v2_1.participant_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_snapshot_cta_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_snapshot_cta_v2_1.instrument_type.dissect(buffer, index, packet, parent)

  -- Lower Limit Price Band: Long
  index, lower_limit_price_band = siac_cqs_snapshot_cta_v2_1.lower_limit_price_band.dissect(buffer, index, packet, parent)

  -- Upper Limit Price Band: Long
  index, upper_limit_price_band = siac_cqs_snapshot_cta_v2_1.upper_limit_price_band.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: Long
  index, auction_collar_reference_price = siac_cqs_snapshot_cta_v2_1.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: Long
  index, auction_collar_upper_threshold_price = siac_cqs_snapshot_cta_v2_1.auction_collar_upper_threshold_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: Long
  index, auction_collar_lower_threshold_price = siac_cqs_snapshot_cta_v2_1.auction_collar_lower_threshold_price.dissect(buffer, index, packet, parent)

  -- Number Of Extensions: Byte
  index, number_of_extensions = siac_cqs_snapshot_cta_v2_1.number_of_extensions.dissect(buffer, index, packet, parent)

  -- National Best Bid Participant Id: Char
  index, national_best_bid_participant_id = siac_cqs_snapshot_cta_v2_1.national_best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- National Best Bid Quote Condition: Char
  index, national_best_bid_quote_condition = siac_cqs_snapshot_cta_v2_1.national_best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Price: Long
  index, national_best_bid_price = siac_cqs_snapshot_cta_v2_1.national_best_bid_price.dissect(buffer, index, packet, parent)

  -- National Best Bid Size: Integer
  index, national_best_bid_size = siac_cqs_snapshot_cta_v2_1.national_best_bid_size.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: Char[]
  index, finra_best_bid_market_maker_id = siac_cqs_snapshot_cta_v2_1.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- National Best Offer Participant Id: Char
  index, national_best_offer_participant_id = siac_cqs_snapshot_cta_v2_1.national_best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- National Best Offer Quote Condition: Char
  index, national_best_offer_quote_condition = siac_cqs_snapshot_cta_v2_1.national_best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Offer Price: Long
  index, national_best_offer_price = siac_cqs_snapshot_cta_v2_1.national_best_offer_price.dissect(buffer, index, packet, parent)

  -- National Best Offer Size: Integer
  index, national_best_offer_size = siac_cqs_snapshot_cta_v2_1.national_best_offer_size.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: Char[]
  index, finra_best_offer_market_maker_id = siac_cqs_snapshot_cta_v2_1.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: Char
  index, national_bbo_luld_indicator = siac_cqs_snapshot_cta_v2_1.national_bbo_luld_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cqs_snapshot_cta_v2_1.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cqs_snapshot_cta_v2_1.halt_reason.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_snapshot_cta_v2_1.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.consolidated_snapshot_message, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message = {}

-- Size: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.size =
  siac_cqs_snapshot_cta_v2_1.participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.mwcb_level_1.size + 
  siac_cqs_snapshot_cta_v2_1.mwcb_level_2.size + 
  siac_cqs_snapshot_cta_v2_1.mwcb_level_3.size + 
  siac_cqs_snapshot_cta_v2_1.reserved.size

-- Display: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_snapshot_cta_v2_1.participant_id.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: Signed Long
  index, mwcb_level_1 = siac_cqs_snapshot_cta_v2_1.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: Signed Long
  index, mwcb_level_2 = siac_cqs_snapshot_cta_v2_1.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: Signed Long
  index, mwcb_level_3 = siac_cqs_snapshot_cta_v2_1.mwcb_level_3.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_snapshot_cta_v2_1.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.market_wide_circuit_breaker_decline_level_status_snapshot_message, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Reference Data Message
siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message = {}

-- Size: Symbol Reference Data Message
siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.size =
  siac_cqs_snapshot_cta_v2_1.participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.security_symbol.size + 
  siac_cqs_snapshot_cta_v2_1.prior_security_symbol.size + 
  siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.size + 
  siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.size + 
  siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.size + 
  siac_cqs_snapshot_cta_v2_1.round_lot_size.size + 
  siac_cqs_snapshot_cta_v2_1.reserved.size + 
  siac_cqs_snapshot_cta_v2_1.luld_tier.size + 
  siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio.size + 
  siac_cqs_snapshot_cta_v2_1.test.size + 
  siac_cqs_snapshot_cta_v2_1.ipo.size + 
  siac_cqs_snapshot_cta_v2_1.financial_status_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.size + 
  siac_cqs_snapshot_cta_v2_1.halt_reason.size + 
  siac_cqs_snapshot_cta_v2_1.instrument_type.size + 
  siac_cqs_snapshot_cta_v2_1.reserved.size + 
  siac_cqs_snapshot_cta_v2_1.reserved.size + 
  siac_cqs_snapshot_cta_v2_1.reserved.size

-- Display: Symbol Reference Data Message
siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Reference Data Message
siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_snapshot_cta_v2_1.participant_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: Char[]
  index, security_symbol = siac_cqs_snapshot_cta_v2_1.security_symbol.dissect(buffer, index, packet, parent)

  -- Prior Security Symbol: Char[]
  index, prior_security_symbol = siac_cqs_snapshot_cta_v2_1.prior_security_symbol.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: Char
  index, primary_listing_market_participant_id = siac_cqs_snapshot_cta_v2_1.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Previous Closing Price: Long
  index, primary_listing_market_previous_closing_price = siac_cqs_snapshot_cta_v2_1.primary_listing_market_previous_closing_price.dissect(buffer, index, packet, parent)

  -- Consolidated Closing Price: Long
  index, consolidated_closing_price = siac_cqs_snapshot_cta_v2_1.consolidated_closing_price.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Short
  index, round_lot_size = siac_cqs_snapshot_cta_v2_1.round_lot_size.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_snapshot_cta_v2_1.reserved.dissect(buffer, index, packet, parent)

  -- Luld Tier: Char
  index, luld_tier = siac_cqs_snapshot_cta_v2_1.luld_tier.dissect(buffer, index, packet, parent)

  -- Luld Leverage Ratio: Integer
  index, luld_leverage_ratio = siac_cqs_snapshot_cta_v2_1.luld_leverage_ratio.dissect(buffer, index, packet, parent)

  -- Test: Char
  index, test = siac_cqs_snapshot_cta_v2_1.test.dissect(buffer, index, packet, parent)

  -- Ipo: Char
  index, ipo = siac_cqs_snapshot_cta_v2_1.ipo.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: Char
  index, financial_status_indicator = siac_cqs_snapshot_cta_v2_1.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: Char
  index, short_sale_restriction_indicator = siac_cqs_snapshot_cta_v2_1.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Halt Reason: Char
  index, halt_reason = siac_cqs_snapshot_cta_v2_1.halt_reason.dissect(buffer, index, packet, parent)

  -- Instrument Type: Char
  index, instrument_type = siac_cqs_snapshot_cta_v2_1.instrument_type.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_snapshot_cta_v2_1.reserved.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_snapshot_cta_v2_1.reserved.dissect(buffer, index, packet, parent)

  -- Reserved: Char
  index, reserved = siac_cqs_snapshot_cta_v2_1.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Symbol Reference Data Message
siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.symbol_reference_data_message, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Line Integrity Message
siac_cqs_snapshot_cta_v2_1.line_integrity_message = {}

-- Size: Line Integrity Message
siac_cqs_snapshot_cta_v2_1.line_integrity_message.size =
  siac_cqs_snapshot_cta_v2_1.participant_id.size

-- Display: Line Integrity Message
siac_cqs_snapshot_cta_v2_1.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
siac_cqs_snapshot_cta_v2_1.line_integrity_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Id: Char
  index, participant_id = siac_cqs_snapshot_cta_v2_1.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
siac_cqs_snapshot_cta_v2_1.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.line_integrity_message, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.line_integrity_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.line_integrity_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.line_integrity_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Message Payload
siac_cqs_snapshot_cta_v2_1.snapshot_message_payload = {}

-- Dissect: Snapshot Message Payload
siac_cqs_snapshot_cta_v2_1.snapshot_message_payload.dissect = function(buffer, offset, packet, parent, snapshot_message_type)
  -- Dissect Line Integrity Message
  if snapshot_message_type == "T" then
    return siac_cqs_snapshot_cta_v2_1.line_integrity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Reference Data Message
  if snapshot_message_type == "S" then
    return siac_cqs_snapshot_cta_v2_1.symbol_reference_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Status Snapshot Message
  if snapshot_message_type == "K" then
    return siac_cqs_snapshot_cta_v2_1.market_wide_circuit_breaker_decline_level_status_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Snapshot Message
  if snapshot_message_type == "C" then
    return siac_cqs_snapshot_cta_v2_1.consolidated_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Snapshot Message
  if snapshot_message_type == "P" then
    return siac_cqs_snapshot_cta_v2_1.participant_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Snapshot Message
  if snapshot_message_type == "F" then
    return siac_cqs_snapshot_cta_v2_1.finra_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Snapshot
siac_cqs_snapshot_cta_v2_1.snapshot = {}

-- Calculate size of: Snapshot
siac_cqs_snapshot_cta_v2_1.snapshot.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v2_1.snapshot_message_type.size

  -- Calculate runtime size of Snapshot Message Payload field
  local snapshot_message_payload_offset = offset + index
  local snapshot_message_payload_type = buffer(snapshot_message_payload_offset - 1, 1):string()
  index = index + siac_cqs_snapshot_cta_v2_1.snapshot_message_payload.size(buffer, snapshot_message_payload_offset, snapshot_message_payload_type)

  return index
end

-- Display: Snapshot
siac_cqs_snapshot_cta_v2_1.snapshot.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot
siac_cqs_snapshot_cta_v2_1.snapshot.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Message Type: Char
  index, snapshot_message_type = siac_cqs_snapshot_cta_v2_1.snapshot_message_type.dissect(buffer, index, packet, parent)

  -- Snapshot Message Payload: Runtime Type with 6 branches
  index = siac_cqs_snapshot_cta_v2_1.snapshot_message_payload.dissect(buffer, index, packet, parent, snapshot_message_type)

  return index
end

-- Dissect: Snapshot
siac_cqs_snapshot_cta_v2_1.snapshot.dissect = function(buffer, offset, packet, parent)
  if show.snapshot then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.snapshot, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.snapshot.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.snapshot.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.snapshot.fields(buffer, offset, packet, parent)
  end
end

-- Category Payload
siac_cqs_snapshot_cta_v2_1.category_payload = {}

-- Dissect: Category Payload
siac_cqs_snapshot_cta_v2_1.category_payload.dissect = function(buffer, offset, packet, parent, message_category)
  -- Dissect Snapshot
  if message_category == "R" then
    return siac_cqs_snapshot_cta_v2_1.snapshot.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
siac_cqs_snapshot_cta_v2_1.message = {}

-- Calculate size of: Message
siac_cqs_snapshot_cta_v2_1.message.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v2_1.message_length.size

  index = index + siac_cqs_snapshot_cta_v2_1.message_category.size

  -- Calculate runtime size of Category Payload field
  local category_payload_offset = offset + index
  local category_payload_type = buffer(category_payload_offset - 1, 1):string()
  index = index + siac_cqs_snapshot_cta_v2_1.category_payload.size(buffer, category_payload_offset, category_payload_type)

  return index
end

-- Display: Message
siac_cqs_snapshot_cta_v2_1.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cqs_snapshot_cta_v2_1.message.fields = function(buffer, offset, packet, parent, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil and show.message_index then
    local iteration = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Length: Short
  index, message_length = siac_cqs_snapshot_cta_v2_1.message_length.dissect(buffer, index, packet, parent)

  -- Message Category: Char
  index, message_category = siac_cqs_snapshot_cta_v2_1.message_category.dissect(buffer, index, packet, parent)

  -- Category Payload: Runtime Type with 1 branches
  index = siac_cqs_snapshot_cta_v2_1.category_payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cqs_snapshot_cta_v2_1.message.dissect = function(buffer, offset, packet, parent, message_index)
  if show.message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.message, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.message.fields(buffer, offset, packet, parent, message_index)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.message.fields(buffer, offset, packet, parent, message_index)
  end
end

-- Sip Block Timestamp
siac_cqs_snapshot_cta_v2_1.sip_block_timestamp = {}

-- Size: Sip Block Timestamp
siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.size =
  siac_cqs_snapshot_cta_v2_1.seconds.size + 
  siac_cqs_snapshot_cta_v2_1.nanoseconds.size

-- Display: Sip Block Timestamp
siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sip Block Timestamp
siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: unsigned integer
  index, seconds = siac_cqs_snapshot_cta_v2_1.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: unsigned integer
  index, nanoseconds = siac_cqs_snapshot_cta_v2_1.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sip Block Timestamp
siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.dissect = function(buffer, offset, packet, parent)
  if show.sip_block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.sip_block_timestamp, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Block Header
siac_cqs_snapshot_cta_v2_1.block_header = {}

-- Size: Block Header
siac_cqs_snapshot_cta_v2_1.block_header.size =
  siac_cqs_snapshot_cta_v2_1.version.size + 
  siac_cqs_snapshot_cta_v2_1.block_size.size + 
  siac_cqs_snapshot_cta_v2_1.block_sequence_number.size + 
  siac_cqs_snapshot_cta_v2_1.messages_in_block.size + 
  siac_cqs_snapshot_cta_v2_1.deliveryflag.size + 
  siac_cqs_snapshot_cta_v2_1.lastseqnum.size + 
  siac_cqs_snapshot_cta_v2_1.totpubseqrollover.size + 
  siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.size + 
  siac_cqs_snapshot_cta_v2_1.block_checksum.size

-- Display: Block Header
siac_cqs_snapshot_cta_v2_1.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cqs_snapshot_cta_v2_1.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: unsigned integer
  index, version = siac_cqs_snapshot_cta_v2_1.version.dissect(buffer, index, packet, parent)

  -- Block Size: unsigned integer
  index, block_size = siac_cqs_snapshot_cta_v2_1.block_size.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: unsigned integer
  index, block_sequence_number = siac_cqs_snapshot_cta_v2_1.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: unsigned integer
  index, messages_in_block = siac_cqs_snapshot_cta_v2_1.messages_in_block.dissect(buffer, index, packet, parent)

  -- Deliveryflag: unsigned integer
  index, deliveryflag = siac_cqs_snapshot_cta_v2_1.deliveryflag.dissect(buffer, index, packet, parent)

  -- Lastseqnum: unsigned integer
  index, lastseqnum = siac_cqs_snapshot_cta_v2_1.lastseqnum.dissect(buffer, index, packet, parent)

  -- Totpubseqrollover: unsigned integer
  index, totpubseqrollover = siac_cqs_snapshot_cta_v2_1.totpubseqrollover.dissect(buffer, index, packet, parent)

  -- Sip Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = siac_cqs_snapshot_cta_v2_1.sip_block_timestamp.dissect(buffer, index, packet, parent)

  -- Block Checksum: unsigned integer
  index, block_checksum = siac_cqs_snapshot_cta_v2_1.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cqs_snapshot_cta_v2_1.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v2_1.fields.block_header, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v2_1.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v2_1.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v2_1.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_cqs_snapshot_cta_v2_1.packet = {}

-- Verify required size of Udp packet
siac_cqs_snapshot_cta_v2_1.packet.requiredsize = function(buffer)
  return buffer:len() >= siac_cqs_snapshot_cta_v2_1.block_header.size
end

-- Dissect Packet
siac_cqs_snapshot_cta_v2_1.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 9 fields
  index, block_header = siac_cqs_snapshot_cta_v2_1.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 17, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do
    index, message = siac_cqs_snapshot_cta_v2_1.message.dissect(buffer, index, packet, parent, message_index)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_cqs_snapshot_cta_v2_1.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_cqs_snapshot_cta_v2_1.init()
end

-- Dissector for Siac Cqs Snapshot Cta 2.1
function omi_siac_cqs_snapshot_cta_v2_1.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_cqs_snapshot_cta_v2_1.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_cqs_snapshot_cta_v2_1, buffer(), omi_siac_cqs_snapshot_cta_v2_1.description, "("..buffer:len().." Bytes)")
  return siac_cqs_snapshot_cta_v2_1.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Siac Cqs Snapshot Cta 2.1 (Udp)
local function omi_siac_cqs_snapshot_cta_v2_1_udp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_cqs_snapshot_cta_v2_1.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_cqs_snapshot_cta_v2_1
  omi_siac_cqs_snapshot_cta_v2_1.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cqs Snapshot Cta 2.1
omi_siac_cqs_snapshot_cta_v2_1:register_heuristic("udp", omi_siac_cqs_snapshot_cta_v2_1_udp_heuristic)

-- Register Siac Cqs Snapshot Cta 2.1 on default port
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_cqs_snapshot_cta_v2_1)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: The Securities Industry Automation Corporation
--   Version: 2.1
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
