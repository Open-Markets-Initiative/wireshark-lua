-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
-- 
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Siac Cqs Snapshot Cta 1.0 Protocol
local omi_siac_cqs_snapshot_cta_v1_0 = Proto("Siac.Cqs.Snapshot.Cta.v1.0.Lua", "Siac Cqs Snapshot Cta 1.0")

-- Protocol table
local siac_cqs_snapshot_cta_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Siac Cqs Snapshot Cta 1.0 Fields
omi_siac_cqs_snapshot_cta_v1_0.fields.auction_collar_lower_threshold_price = ProtoField.new("Auction Collar Lower Threshold Price", "siac.cqs.snapshot.cta.v1.0.auctioncollarlowerthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.auction_collar_reference_price = ProtoField.new("Auction Collar Reference Price", "siac.cqs.snapshot.cta.v1.0.auctioncollarreferenceprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.auction_collar_upper_threshold_price = ProtoField.new("Auction Collar Upper Threshold Price", "siac.cqs.snapshot.cta.v1.0.auctioncollarupperthresholdprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.bid_price = ProtoField.new("Bid Price", "siac.cqs.snapshot.cta.v1.0.bidprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.bid_size = ProtoField.new("Bid Size", "siac.cqs.snapshot.cta.v1.0.bidsize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.block_checksum = ProtoField.new("Block Checksum", "siac.cqs.snapshot.cta.v1.0.blockchecksum", ftypes.UINT16)
omi_siac_cqs_snapshot_cta_v1_0.fields.block_header = ProtoField.new("Block Header", "siac.cqs.snapshot.cta.v1.0.blockheader", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.block_pad_byte = ProtoField.new("Block Pad Byte", "siac.cqs.snapshot.cta.v1.0.blockpadbyte", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v1_0.fields.block_sequence_number = ProtoField.new("Block Sequence Number", "siac.cqs.snapshot.cta.v1.0.blocksequencenumber", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.block_size = ProtoField.new("Block Size", "siac.cqs.snapshot.cta.v1.0.blocksize", ftypes.UINT16)
omi_siac_cqs_snapshot_cta_v1_0.fields.delivery_flag = ProtoField.new("Delivery Flag", "siac.cqs.snapshot.cta.v1.0.deliveryflag", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v1_0.fields.financial_status_indicator = ProtoField.new("Financial Status Indicator", "siac.cqs.snapshot.cta.v1.0.financialstatusindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_bbo_luld_indicator = ProtoField.new("Finra Bbo Luld Indicator", "siac.cqs.snapshot.cta.v1.0.finrabboluldindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_market_maker_id = ProtoField.new("Finra Best Bid Market Maker Id", "siac.cqs.snapshot.cta.v1.0.finrabestbidmarketmakerid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_price = ProtoField.new("Finra Best Bid Price", "siac.cqs.snapshot.cta.v1.0.finrabestbidprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_quote_condition = ProtoField.new("Finra Best Bid Quote Condition", "siac.cqs.snapshot.cta.v1.0.finrabestbidquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_size = ProtoField.new("Finra Best Bid Size", "siac.cqs.snapshot.cta.v1.0.finrabestbidsize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_market_maker_id = ProtoField.new("Finra Best Offer Market Maker Id", "siac.cqs.snapshot.cta.v1.0.finrabestoffermarketmakerid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_price = ProtoField.new("Finra Best Offer Price", "siac.cqs.snapshot.cta.v1.0.finrabestofferprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_quote_condition = ProtoField.new("Finra Best Offer Quote Condition", "siac.cqs.snapshot.cta.v1.0.finrabestofferquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_size = ProtoField.new("Finra Best Offer Size", "siac.cqs.snapshot.cta.v1.0.finrabestoffersize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.future = ProtoField.new("Future", "siac.cqs.snapshot.cta.v1.0.future", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.halt_reason = ProtoField.new("Halt Reason", "siac.cqs.snapshot.cta.v1.0.haltreason", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.high_indication_price = ProtoField.new("High Indication Price", "siac.cqs.snapshot.cta.v1.0.highindicationprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.instrument_type = ProtoField.new("Instrument Type", "siac.cqs.snapshot.cta.v1.0.instrumenttype", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.last_seq_num = ProtoField.new("Last Seq Num", "siac.cqs.snapshot.cta.v1.0.lastseqnum", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.low_indication_price = ProtoField.new("Low Indication Price", "siac.cqs.snapshot.cta.v1.0.lowindicationprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.lower_limit_price_band = ProtoField.new("Lower Limit Price Band", "siac.cqs.snapshot.cta.v1.0.lowerlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.luld_indicator = ProtoField.new("Luld Indicator", "siac.cqs.snapshot.cta.v1.0.luldindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.market_condition = ProtoField.new("Market Condition", "siac.cqs.snapshot.cta.v1.0.marketcondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.message = ProtoField.new("Message", "siac.cqs.snapshot.cta.v1.0.message", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.message_category = ProtoField.new("Message Category", "siac.cqs.snapshot.cta.v1.0.messagecategory", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.message_header = ProtoField.new("Message Header", "siac.cqs.snapshot.cta.v1.0.messageheader", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.message_length = ProtoField.new("Message Length", "siac.cqs.snapshot.cta.v1.0.messagelength", ftypes.UINT16)
omi_siac_cqs_snapshot_cta_v1_0.fields.messages_in_block = ProtoField.new("Messages In Block", "siac.cqs.snapshot.cta.v1.0.messagesinblock", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_1 = ProtoField.new("Mwcb Level 1", "siac.cqs.snapshot.cta.v1.0.mwcblevel1", ftypes.INT64)
omi_siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_2 = ProtoField.new("Mwcb Level 2", "siac.cqs.snapshot.cta.v1.0.mwcblevel2", ftypes.INT64)
omi_siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_3 = ProtoField.new("Mwcb Level 3", "siac.cqs.snapshot.cta.v1.0.mwcblevel3", ftypes.INT64)
omi_siac_cqs_snapshot_cta_v1_0.fields.nanoseconds = ProtoField.new("Nanoseconds", "siac.cqs.snapshot.cta.v1.0.nanoseconds", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_bbo_luld_indicator = ProtoField.new("National Bbo Luld Indicator", "siac.cqs.snapshot.cta.v1.0.nationalbboluldindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_participant_id = ProtoField.new("National Best Bid Participant Id", "siac.cqs.snapshot.cta.v1.0.nationalbestbidparticipantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_price = ProtoField.new("National Best Bid Price", "siac.cqs.snapshot.cta.v1.0.nationalbestbidprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_quote_condition = ProtoField.new("National Best Bid Quote Condition", "siac.cqs.snapshot.cta.v1.0.nationalbestbidquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_size = ProtoField.new("National Best Bid Size", "siac.cqs.snapshot.cta.v1.0.nationalbestbidsize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_participant_id = ProtoField.new("National Best Offer Participant Id", "siac.cqs.snapshot.cta.v1.0.nationalbestofferparticipantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_price = ProtoField.new("National Best Offer Price", "siac.cqs.snapshot.cta.v1.0.nationalbestofferprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_quote_condition = ProtoField.new("National Best Offer Quote Condition", "siac.cqs.snapshot.cta.v1.0.nationalbestofferquotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_size = ProtoField.new("National Best Offer Size", "siac.cqs.snapshot.cta.v1.0.nationalbestoffersize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.number_of_extensions = ProtoField.new("Number Of Extensions", "siac.cqs.snapshot.cta.v1.0.numberofextensions", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v1_0.fields.offer_price = ProtoField.new("Offer Price", "siac.cqs.snapshot.cta.v1.0.offerprice", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.offer_size = ProtoField.new("Offer Size", "siac.cqs.snapshot.cta.v1.0.offersize", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.packet = ProtoField.new("Packet", "siac.cqs.snapshot.cta.v1.0.packet", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.participant_id = ProtoField.new("Participant Id", "siac.cqs.snapshot.cta.v1.0.participantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.payload = ProtoField.new("Payload", "siac.cqs.snapshot.cta.v1.0.payload", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.primary_listing_market_participant_id = ProtoField.new("Primary Listing Market Participant Id", "siac.cqs.snapshot.cta.v1.0.primarylistingmarketparticipantid", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.quote_condition = ProtoField.new("Quote Condition", "siac.cqs.snapshot.cta.v1.0.quotecondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.reserved = ProtoField.new("Reserved", "siac.cqs.snapshot.cta.v1.0.reserved", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v1_0.fields.retail_interest_indicator = ProtoField.new("Retail Interest Indicator", "siac.cqs.snapshot.cta.v1.0.retailinterestindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.seconds = ProtoField.new("Seconds", "siac.cqs.snapshot.cta.v1.0.seconds", ftypes.UINT32)
omi_siac_cqs_snapshot_cta_v1_0.fields.security_symbol = ProtoField.new("Security Symbol", "siac.cqs.snapshot.cta.v1.0.securitysymbol", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.settlement_condition = ProtoField.new("Settlement Condition", "siac.cqs.snapshot.cta.v1.0.settlementcondition", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.short_sale_restriction_indicator = ProtoField.new("Short Sale Restriction Indicator", "siac.cqs.snapshot.cta.v1.0.shortsalerestrictionindicator", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.sip_block_timestamp = ProtoField.new("Sip Block Timestamp", "siac.cqs.snapshot.cta.v1.0.sipblocktimestamp", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.snapshot = ProtoField.new("Snapshot", "siac.cqs.snapshot.cta.v1.0.snapshot", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.snapshot_message_type = ProtoField.new("Snapshot Message Type", "siac.cqs.snapshot.cta.v1.0.snapshotmessagetype", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.snapshot_payload = ProtoField.new("Snapshot Payload", "siac.cqs.snapshot.cta.v1.0.snapshotpayload", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.tot_pub_seq_rollover = ProtoField.new("Tot Pub Seq Rollover", "siac.cqs.snapshot.cta.v1.0.totpubseqrollover", ftypes.UINT8)
omi_siac_cqs_snapshot_cta_v1_0.fields.upper_limit_price_band = ProtoField.new("Upper Limit Price Band", "siac.cqs.snapshot.cta.v1.0.upperlimitpriceband", ftypes.DOUBLE)
omi_siac_cqs_snapshot_cta_v1_0.fields.version = ProtoField.new("Version", "siac.cqs.snapshot.cta.v1.0.version", ftypes.UINT8)

-- Siac Cqs Snapshot Cta 1.0 messages
omi_siac_cqs_snapshot_cta_v1_0.fields.consolidated_snapshot_message = ProtoField.new("Consolidated Snapshot Message", "siac.cqs.snapshot.cta.v1.0.consolidatedsnapshotmessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.finra_snapshot_message = ProtoField.new("Finra Snapshot Message", "siac.cqs.snapshot.cta.v1.0.finrasnapshotmessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.line_integrity_message = ProtoField.new("Line Integrity Message", "siac.cqs.snapshot.cta.v1.0.lineintegritymessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.market_wide_circuit_breaker_decline_level_status_snapshot_message = ProtoField.new("Market Wide Circuit Breaker Decline Level Status Snapshot Message", "siac.cqs.snapshot.cta.v1.0.marketwidecircuitbreakerdeclinelevelstatussnapshotmessage", ftypes.STRING)
omi_siac_cqs_snapshot_cta_v1_0.fields.participant_snapshot_message = ProtoField.new("Participant Snapshot Message", "siac.cqs.snapshot.cta.v1.0.participantsnapshotmessage", ftypes.STRING)

-- Siac Cqs Snapshot Cta 1.0 generated fields
omi_siac_cqs_snapshot_cta_v1_0.fields.message_index = ProtoField.new("Message Index", "siac.cqs.snapshot.cta.v1.0.messageindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Siac Cqs Snapshot Cta 1.0 Element Dissection Options
show.block_header = true
show.consolidated_snapshot_message = true
show.finra_snapshot_message = true
show.line_integrity_message = true
show.market_wide_circuit_breaker_decline_level_status_snapshot_message = true
show.message = true
show.message_header = true
show.packet = true
show.participant_snapshot_message = true
show.sip_block_timestamp = true
show.snapshot = true
show.payload = false
show.snapshot_payload = false

-- Register Siac Cqs Snapshot Cta 1.0 Show Options
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_block_header = Pref.bool("Show Block Header", show.block_header, "Parse and add Block Header to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_consolidated_snapshot_message = Pref.bool("Show Consolidated Snapshot Message", show.consolidated_snapshot_message, "Parse and add Consolidated Snapshot Message to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_finra_snapshot_message = Pref.bool("Show Finra Snapshot Message", show.finra_snapshot_message, "Parse and add Finra Snapshot Message to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_line_integrity_message = Pref.bool("Show Line Integrity Message", show.line_integrity_message, "Parse and add Line Integrity Message to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_market_wide_circuit_breaker_decline_level_status_snapshot_message = Pref.bool("Show Market Wide Circuit Breaker Decline Level Status Snapshot Message", show.market_wide_circuit_breaker_decline_level_status_snapshot_message, "Parse and add Market Wide Circuit Breaker Decline Level Status Snapshot Message to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_message = Pref.bool("Show Message", show.message, "Parse and add Message to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_participant_snapshot_message = Pref.bool("Show Participant Snapshot Message", show.participant_snapshot_message, "Parse and add Participant Snapshot Message to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_sip_block_timestamp = Pref.bool("Show Sip Block Timestamp", show.sip_block_timestamp, "Parse and add Sip Block Timestamp to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot = Pref.bool("Show Snapshot", show.snapshot, "Parse and add Snapshot to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_payload = Pref.bool("Show Payload", show.payload, "Parse and add Payload to protocol tree")
omi_siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot_payload = Pref.bool("Show Snapshot Payload", show.snapshot_payload, "Parse and add Snapshot Payload to protocol tree")

-- Handle changed preferences
function omi_siac_cqs_snapshot_cta_v1_0.prefs_changed()
  local changed = false

  -- Check if show options have changed
  if show.block_header ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_block_header then
    show.block_header = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_block_header
    changed = true
  end
  if show.consolidated_snapshot_message ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_consolidated_snapshot_message then
    show.consolidated_snapshot_message = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_consolidated_snapshot_message
    changed = true
  end
  if show.finra_snapshot_message ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_finra_snapshot_message then
    show.finra_snapshot_message = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_finra_snapshot_message
    changed = true
  end
  if show.line_integrity_message ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_line_integrity_message then
    show.line_integrity_message = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_line_integrity_message
    changed = true
  end
  if show.market_wide_circuit_breaker_decline_level_status_snapshot_message ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_market_wide_circuit_breaker_decline_level_status_snapshot_message then
    show.market_wide_circuit_breaker_decline_level_status_snapshot_message = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_market_wide_circuit_breaker_decline_level_status_snapshot_message
    changed = true
  end
  if show.message ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_message then
    show.message = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_message
    changed = true
  end
  if show.message_header ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_message_header then
    show.message_header = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_message_header
    changed = true
  end
  if show.packet ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_packet then
    show.packet = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_packet
    changed = true
  end
  if show.participant_snapshot_message ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_participant_snapshot_message then
    show.participant_snapshot_message = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_participant_snapshot_message
    changed = true
  end
  if show.sip_block_timestamp ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_sip_block_timestamp then
    show.sip_block_timestamp = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_sip_block_timestamp
    changed = true
  end
  if show.snapshot ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot then
    show.snapshot = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot
    changed = true
  end
  if show.payload ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_payload then
    show.payload = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_payload
    changed = true
  end
  if show.snapshot_payload ~= omi_siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot_payload then
    show.snapshot_payload = omi_siac_cqs_snapshot_cta_v1_0.prefs.show_snapshot_payload
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
-- Dissect Siac Cqs Snapshot Cta 1.0
-----------------------------------------------------------------------

-- Block Pad Byte
siac_cqs_snapshot_cta_v1_0.block_pad_byte = {}

-- Size: Block Pad Byte
siac_cqs_snapshot_cta_v1_0.block_pad_byte.size = 1

-- Display: Block Pad Byte
siac_cqs_snapshot_cta_v1_0.block_pad_byte.display = function(value)
  return "Block Pad Byte: "..value
end

-- Dissect: Block Pad Byte
siac_cqs_snapshot_cta_v1_0.block_pad_byte.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.block_pad_byte.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.block_pad_byte.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.block_pad_byte, range, value, display)

  return offset + length, value
end

-- Halt Reason
siac_cqs_snapshot_cta_v1_0.halt_reason = {}

-- Size: Halt Reason
siac_cqs_snapshot_cta_v1_0.halt_reason.size = 1

-- Display: Halt Reason
siac_cqs_snapshot_cta_v1_0.halt_reason.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.halt_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.halt_reason, range, value, display)

  return offset + length, value
end

-- Low Indication Price
siac_cqs_snapshot_cta_v1_0.low_indication_price = {}

-- Size: Low Indication Price
siac_cqs_snapshot_cta_v1_0.low_indication_price.size = 8

-- Display: Low Indication Price
siac_cqs_snapshot_cta_v1_0.low_indication_price.display = function(value)
  return "Low Indication Price: "..value
end

-- Translate: Low Indication Price
siac_cqs_snapshot_cta_v1_0.low_indication_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Low Indication Price
siac_cqs_snapshot_cta_v1_0.low_indication_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.low_indication_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.low_indication_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.low_indication_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.low_indication_price, range, value, display)

  return offset + length, value
end

-- High Indication Price
siac_cqs_snapshot_cta_v1_0.high_indication_price = {}

-- Size: High Indication Price
siac_cqs_snapshot_cta_v1_0.high_indication_price.size = 8

-- Display: High Indication Price
siac_cqs_snapshot_cta_v1_0.high_indication_price.display = function(value)
  return "High Indication Price: "..value
end

-- Translate: High Indication Price
siac_cqs_snapshot_cta_v1_0.high_indication_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: High Indication Price
siac_cqs_snapshot_cta_v1_0.high_indication_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.high_indication_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.high_indication_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.high_indication_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.high_indication_price, range, value, display)

  return offset + length, value
end

-- Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0.finra_bbo_luld_indicator = {}

-- Size: Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0.finra_bbo_luld_indicator.size = 1

-- Display: Finra Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0.finra_bbo_luld_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.finra_bbo_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_bbo_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.finra_bbo_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id = {}

-- Size: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id.size = 4

-- Display: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id.display = function(value)
  return "Finra Best Offer Market Maker Id: "..value
end

-- Dissect: Finra Best Offer Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Size
siac_cqs_snapshot_cta_v1_0.finra_best_offer_size = {}

-- Size: Finra Best Offer Size
siac_cqs_snapshot_cta_v1_0.finra_best_offer_size.size = 4

-- Display: Finra Best Offer Size
siac_cqs_snapshot_cta_v1_0.finra_best_offer_size.display = function(value)
  return "Finra Best Offer Size: "..value
end

-- Dissect: Finra Best Offer Size
siac_cqs_snapshot_cta_v1_0.finra_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_size, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0.finra_best_offer_price = {}

-- Size: Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.size = 8

-- Display: Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.display = function(value)
  return "Finra Best Offer Price: "..value
end

-- Translate: Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Offer Price
siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_price, range, value, display)

  return offset + length, value
end

-- Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0.finra_best_offer_quote_condition = {}

-- Size: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0.finra_best_offer_quote_condition.size = 1

-- Display: Finra Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0.finra_best_offer_quote_condition.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.finra_best_offer_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_offer_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_offer_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id = {}

-- Size: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id.size = 4

-- Display: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id.display = function(value)
  return "Finra Best Bid Market Maker Id: "..value
end

-- Dissect: Finra Best Bid Market Maker Id
siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_market_maker_id, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Size
siac_cqs_snapshot_cta_v1_0.finra_best_bid_size = {}

-- Size: Finra Best Bid Size
siac_cqs_snapshot_cta_v1_0.finra_best_bid_size.size = 4

-- Display: Finra Best Bid Size
siac_cqs_snapshot_cta_v1_0.finra_best_bid_size.display = function(value)
  return "Finra Best Bid Size: "..value
end

-- Dissect: Finra Best Bid Size
siac_cqs_snapshot_cta_v1_0.finra_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_size, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0.finra_best_bid_price = {}

-- Size: Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.size = 8

-- Display: Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.display = function(value)
  return "Finra Best Bid Price: "..value
end

-- Translate: Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Finra Best Bid Price
siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_price, range, value, display)

  return offset + length, value
end

-- Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0.finra_best_bid_quote_condition = {}

-- Size: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0.finra_best_bid_quote_condition.size = 1

-- Display: Finra Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0.finra_best_bid_quote_condition.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.finra_best_bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.finra_best_bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.finra_best_bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- Security Symbol
siac_cqs_snapshot_cta_v1_0.security_symbol = {}

-- Size: Security Symbol
siac_cqs_snapshot_cta_v1_0.security_symbol.size = 11

-- Display: Security Symbol
siac_cqs_snapshot_cta_v1_0.security_symbol.display = function(value)
  return "Security Symbol: "..value
end

-- Dissect: Security Symbol
siac_cqs_snapshot_cta_v1_0.security_symbol.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.security_symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.security_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.security_symbol, range, value, display)

  return offset + length, value
end

-- Participant Id
siac_cqs_snapshot_cta_v1_0.participant_id = {}

-- Size: Participant Id
siac_cqs_snapshot_cta_v1_0.participant_id.size = 1

-- Display: Participant Id
siac_cqs_snapshot_cta_v1_0.participant_id.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.participant_id, range, value, display)

  return offset + length, value
end

-- Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0.finra_snapshot_message = {}

-- Read runtime size of: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.fields = function(buffer, offset, packet, parent, size_of_finra_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0.participant_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cqs_snapshot_cta_v1_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, finra_best_bid_quote_condition = siac_cqs_snapshot_cta_v1_0.finra_best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, finra_best_bid_price = siac_cqs_snapshot_cta_v1_0.finra_best_bid_price.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, finra_best_bid_size = siac_cqs_snapshot_cta_v1_0.finra_best_bid_size.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: 4 Byte Ascii String
  index, finra_best_bid_market_maker_id = siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, finra_best_offer_quote_condition = siac_cqs_snapshot_cta_v1_0.finra_best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, finra_best_offer_price = siac_cqs_snapshot_cta_v1_0.finra_best_offer_price.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, finra_best_offer_size = siac_cqs_snapshot_cta_v1_0.finra_best_offer_size.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: 4 Byte Ascii String
  index, finra_best_offer_market_maker_id = siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  -- Finra Bbo Luld Indicator: 1 Byte Ascii String Enum with 5 values
  index, finra_bbo_luld_indicator = siac_cqs_snapshot_cta_v1_0.finra_bbo_luld_indicator.dissect(buffer, index, packet, parent)

  -- High Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, high_indication_price = siac_cqs_snapshot_cta_v1_0.high_indication_price.dissect(buffer, index, packet, parent)

  -- Low Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, low_indication_price = siac_cqs_snapshot_cta_v1_0.low_indication_price.dissect(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 17 values
  index, halt_reason = siac_cqs_snapshot_cta_v1_0.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Finra Snapshot Message
siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_finra_snapshot_message = siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.finra_snapshot_message then
    local range = buffer(offset, size_of_finra_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.display(buffer, packet, parent)
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.finra_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.fields(buffer, offset, packet, parent, size_of_finra_snapshot_message)

  return offset + size_of_finra_snapshot_message
end

-- Luld Indicator
siac_cqs_snapshot_cta_v1_0.luld_indicator = {}

-- Size: Luld Indicator
siac_cqs_snapshot_cta_v1_0.luld_indicator.size = 1

-- Display: Luld Indicator
siac_cqs_snapshot_cta_v1_0.luld_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.luld_indicator, range, value, display)

  return offset + length, value
end

-- Market Condition
siac_cqs_snapshot_cta_v1_0.market_condition = {}

-- Size: Market Condition
siac_cqs_snapshot_cta_v1_0.market_condition.size = 1

-- Display: Market Condition
siac_cqs_snapshot_cta_v1_0.market_condition.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.market_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.market_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.market_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.market_condition, range, value, display)

  return offset + length, value
end

-- Settlement Condition
siac_cqs_snapshot_cta_v1_0.settlement_condition = {}

-- Size: Settlement Condition
siac_cqs_snapshot_cta_v1_0.settlement_condition.size = 1

-- Display: Settlement Condition
siac_cqs_snapshot_cta_v1_0.settlement_condition.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.settlement_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.settlement_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.settlement_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.settlement_condition, range, value, display)

  return offset + length, value
end

-- Retail Interest Indicator
siac_cqs_snapshot_cta_v1_0.retail_interest_indicator = {}

-- Size: Retail Interest Indicator
siac_cqs_snapshot_cta_v1_0.retail_interest_indicator.size = 1

-- Display: Retail Interest Indicator
siac_cqs_snapshot_cta_v1_0.retail_interest_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.retail_interest_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.retail_interest_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.retail_interest_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.retail_interest_indicator, range, value, display)

  return offset + length, value
end

-- Offer Size
siac_cqs_snapshot_cta_v1_0.offer_size = {}

-- Size: Offer Size
siac_cqs_snapshot_cta_v1_0.offer_size.size = 4

-- Display: Offer Size
siac_cqs_snapshot_cta_v1_0.offer_size.display = function(value)
  return "Offer Size: "..value
end

-- Dissect: Offer Size
siac_cqs_snapshot_cta_v1_0.offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.offer_size, range, value, display)

  return offset + length, value
end

-- Offer Price
siac_cqs_snapshot_cta_v1_0.offer_price = {}

-- Size: Offer Price
siac_cqs_snapshot_cta_v1_0.offer_price.size = 8

-- Display: Offer Price
siac_cqs_snapshot_cta_v1_0.offer_price.display = function(value)
  return "Offer Price: "..value
end

-- Translate: Offer Price
siac_cqs_snapshot_cta_v1_0.offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Offer Price
siac_cqs_snapshot_cta_v1_0.offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.offer_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.offer_price, range, value, display)

  return offset + length, value
end

-- Bid Size
siac_cqs_snapshot_cta_v1_0.bid_size = {}

-- Size: Bid Size
siac_cqs_snapshot_cta_v1_0.bid_size.size = 4

-- Display: Bid Size
siac_cqs_snapshot_cta_v1_0.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
siac_cqs_snapshot_cta_v1_0.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Bid Price
siac_cqs_snapshot_cta_v1_0.bid_price = {}

-- Size: Bid Price
siac_cqs_snapshot_cta_v1_0.bid_price.size = 8

-- Display: Bid Price
siac_cqs_snapshot_cta_v1_0.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
siac_cqs_snapshot_cta_v1_0.bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Bid Price
siac_cqs_snapshot_cta_v1_0.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.bid_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Quote Condition
siac_cqs_snapshot_cta_v1_0.quote_condition = {}

-- Size: Quote Condition
siac_cqs_snapshot_cta_v1_0.quote_condition.size = 1

-- Display: Quote Condition
siac_cqs_snapshot_cta_v1_0.quote_condition.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.quote_condition, range, value, display)

  return offset + length, value
end

-- Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0.participant_snapshot_message = {}

-- Read runtime size of: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.fields = function(buffer, offset, packet, parent, size_of_participant_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0.participant_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cqs_snapshot_cta_v1_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, quote_condition = siac_cqs_snapshot_cta_v1_0.quote_condition.dissect(buffer, index, packet, parent)

  -- Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, bid_price = siac_cqs_snapshot_cta_v1_0.bid_price.dissect(buffer, index, packet, parent)

  -- Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, bid_size = siac_cqs_snapshot_cta_v1_0.bid_size.dissect(buffer, index, packet, parent)

  -- Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, offer_price = siac_cqs_snapshot_cta_v1_0.offer_price.dissect(buffer, index, packet, parent)

  -- Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, offer_size = siac_cqs_snapshot_cta_v1_0.offer_size.dissect(buffer, index, packet, parent)

  -- Retail Interest Indicator: 1 Byte Ascii String Enum with 4 values
  index, retail_interest_indicator = siac_cqs_snapshot_cta_v1_0.retail_interest_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Condition: 1 Byte Ascii String Enum with 3 values
  index, settlement_condition = siac_cqs_snapshot_cta_v1_0.settlement_condition.dissect(buffer, index, packet, parent)

  -- Market Condition: 1 Byte Ascii String Enum with 3 values
  index, market_condition = siac_cqs_snapshot_cta_v1_0.market_condition.dissect(buffer, index, packet, parent)

  -- Luld Indicator: 1 Byte Ascii String Enum with 3 values
  index, luld_indicator = siac_cqs_snapshot_cta_v1_0.luld_indicator.dissect(buffer, index, packet, parent)

  -- High Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, high_indication_price = siac_cqs_snapshot_cta_v1_0.high_indication_price.dissect(buffer, index, packet, parent)

  -- Low Indication Price: 8 Byte Unsigned Fixed Width Integer
  index, low_indication_price = siac_cqs_snapshot_cta_v1_0.low_indication_price.dissect(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 17 values
  index, halt_reason = siac_cqs_snapshot_cta_v1_0.halt_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Participant Snapshot Message
siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_participant_snapshot_message = siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.participant_snapshot_message then
    local range = buffer(offset, size_of_participant_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.display(buffer, packet, parent)
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.participant_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.fields(buffer, offset, packet, parent, size_of_participant_snapshot_message)

  return offset + size_of_participant_snapshot_message
end

-- Future
siac_cqs_snapshot_cta_v1_0.future = {}

-- Size: Future
siac_cqs_snapshot_cta_v1_0.future.size = 1

-- Display: Future
siac_cqs_snapshot_cta_v1_0.future.display = function(value)
  return "Future: "..value
end

-- Dissect: Future
siac_cqs_snapshot_cta_v1_0.future.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.future.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.future.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.future, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v1_0.short_sale_restriction_indicator = {}

-- Size: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v1_0.short_sale_restriction_indicator.size = 1

-- Display: Short Sale Restriction Indicator
siac_cqs_snapshot_cta_v1_0.short_sale_restriction_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.short_sale_restriction_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.short_sale_restriction_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.short_sale_restriction_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.short_sale_restriction_indicator, range, value, display)

  return offset + length, value
end

-- Financial Status Indicator
siac_cqs_snapshot_cta_v1_0.financial_status_indicator = {}

-- Size: Financial Status Indicator
siac_cqs_snapshot_cta_v1_0.financial_status_indicator.size = 1

-- Display: Financial Status Indicator
siac_cqs_snapshot_cta_v1_0.financial_status_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.financial_status_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.financial_status_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.financial_status_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.financial_status_indicator, range, value, display)

  return offset + length, value
end

-- Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v1_0.primary_listing_market_participant_id = {}

-- Size: Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v1_0.primary_listing_market_participant_id.size = 1

-- Display: Primary Listing Market Participant Id
siac_cqs_snapshot_cta_v1_0.primary_listing_market_participant_id.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.primary_listing_market_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.primary_listing_market_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.primary_listing_market_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.primary_listing_market_participant_id, range, value, display)

  return offset + length, value
end

-- National Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0.national_bbo_luld_indicator = {}

-- Size: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0.national_bbo_luld_indicator.size = 1

-- Display: National Bbo Luld Indicator
siac_cqs_snapshot_cta_v1_0.national_bbo_luld_indicator.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.national_bbo_luld_indicator.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_bbo_luld_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.national_bbo_luld_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_bbo_luld_indicator, range, value, display)

  return offset + length, value
end

-- National Best Offer Size
siac_cqs_snapshot_cta_v1_0.national_best_offer_size = {}

-- Size: National Best Offer Size
siac_cqs_snapshot_cta_v1_0.national_best_offer_size.size = 4

-- Display: National Best Offer Size
siac_cqs_snapshot_cta_v1_0.national_best_offer_size.display = function(value)
  return "National Best Offer Size: "..value
end

-- Dissect: National Best Offer Size
siac_cqs_snapshot_cta_v1_0.national_best_offer_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_offer_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.national_best_offer_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_size, range, value, display)

  return offset + length, value
end

-- National Best Offer Price
siac_cqs_snapshot_cta_v1_0.national_best_offer_price = {}

-- Size: National Best Offer Price
siac_cqs_snapshot_cta_v1_0.national_best_offer_price.size = 8

-- Display: National Best Offer Price
siac_cqs_snapshot_cta_v1_0.national_best_offer_price.display = function(value)
  return "National Best Offer Price: "..value
end

-- Translate: National Best Offer Price
siac_cqs_snapshot_cta_v1_0.national_best_offer_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Offer Price
siac_cqs_snapshot_cta_v1_0.national_best_offer_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_offer_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.national_best_offer_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.national_best_offer_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_price, range, value, display)

  return offset + length, value
end

-- National Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_offer_quote_condition = {}

-- Size: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_offer_quote_condition.size = 1

-- Display: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_offer_quote_condition.display = function(value)
  if value == " " then
    return "National Best Offer Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "National Best Offer Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "National Best Offer Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "National Best Offer Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "National Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "National Best Offer Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "National Best Offer Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "National Best Offer Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "National Best Offer Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "National Best Offer Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "National Best Offer Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "National Best Offer Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "National Best Offer Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "National Best Offer Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "National Best Offer Quote Condition: Unknown("..value..")"
end

-- Dissect: National Best Offer Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_offer_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_offer_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.national_best_offer_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_quote_condition, range, value, display)

  return offset + length, value
end

-- National Best Offer Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_offer_participant_id = {}

-- Size: National Best Offer Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_offer_participant_id.size = 1

-- Display: National Best Offer Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_offer_participant_id.display = function(value)
  if value == "A" then
    return "National Best Offer Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "National Best Offer Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "National Best Offer Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "National Best Offer Participant Id: Adf (D)"
  end
  if value == "H" then
    return "National Best Offer Participant Id: Miax (H)"
  end
  if value == "I" then
    return "National Best Offer Participant Id: Ise (I)"
  end
  if value == "J" then
    return "National Best Offer Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "National Best Offer Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "National Best Offer Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "National Best Offer Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "National Best Offer Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "National Best Offer Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "National Best Offer Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "National Best Offer Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "National Best Offer Participant Id: Memx (U)"
  end
  if value == "V" then
    return "National Best Offer Participant Id: Iex (V)"
  end
  if value == "W" then
    return "National Best Offer Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "National Best Offer Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "National Best Offer Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "National Best Offer Participant Id: Cboe Bzx (Z)"
  end

  return "National Best Offer Participant Id: Unknown("..value..")"
end

-- Dissect: National Best Offer Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_offer_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_offer_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.national_best_offer_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_offer_participant_id, range, value, display)

  return offset + length, value
end

-- National Best Bid Size
siac_cqs_snapshot_cta_v1_0.national_best_bid_size = {}

-- Size: National Best Bid Size
siac_cqs_snapshot_cta_v1_0.national_best_bid_size.size = 4

-- Display: National Best Bid Size
siac_cqs_snapshot_cta_v1_0.national_best_bid_size.display = function(value)
  return "National Best Bid Size: "..value
end

-- Dissect: National Best Bid Size
siac_cqs_snapshot_cta_v1_0.national_best_bid_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_bid_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.national_best_bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_size, range, value, display)

  return offset + length, value
end

-- National Best Bid Price
siac_cqs_snapshot_cta_v1_0.national_best_bid_price = {}

-- Size: National Best Bid Price
siac_cqs_snapshot_cta_v1_0.national_best_bid_price.size = 8

-- Display: National Best Bid Price
siac_cqs_snapshot_cta_v1_0.national_best_bid_price.display = function(value)
  return "National Best Bid Price: "..value
end

-- Translate: National Best Bid Price
siac_cqs_snapshot_cta_v1_0.national_best_bid_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: National Best Bid Price
siac_cqs_snapshot_cta_v1_0.national_best_bid_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_bid_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.national_best_bid_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.national_best_bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_price, range, value, display)

  return offset + length, value
end

-- National Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_bid_quote_condition = {}

-- Size: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_bid_quote_condition.size = 1

-- Display: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_bid_quote_condition.display = function(value)
  if value == " " then
    return "National Best Bid Quote Condition: Quote Condition Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "National Best Bid Quote Condition: Slow Quote On Offer Side (A)"
  end
  if value == "B" then
    return "National Best Bid Quote Condition: Slow Quote On Bid Side (B)"
  end
  if value == "C" then
    return "National Best Bid Quote Condition: Closing (C)"
  end
  if value == "E" then
    return "National Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Bid Side (E)"
  end
  if value == "F" then
    return "National Best Bid Quote Condition: Slow Quote Due To Lrp Or Gap Quote On The Offer Side (F)"
  end
  if value == "H" then
    return "National Best Bid Quote Condition: Slow Quote On The Bid And Offer Sides (H)"
  end
  if value == "L" then
    return "National Best Bid Quote Condition: Closed Market Maker (L)"
  end
  if value == "N" then
    return "National Best Bid Quote Condition: Non Firm Quote (N)"
  end
  if value == "O" then
    return "National Best Bid Quote Condition: Opening Quote (O)"
  end
  if value == "R" then
    return "National Best Bid Quote Condition: Regular Finra Open (R)"
  end
  if value == "U" then
    return "National Best Bid Quote Condition: Slow Quote Due To Liquidity Replenishment Point Or Gap Quote On Both The Bid And Offer Sides (U)"
  end
  if value == "W" then
    return "National Best Bid Quote Condition: Slow Quote Due To Set Slow List On Both The Bid And Offer Sides (W)"
  end
  if value == "4" then
    return "National Best Bid Quote Condition: On Demand Intra Day Auction (4)"
  end

  return "National Best Bid Quote Condition: Unknown("..value..")"
end

-- Dissect: National Best Bid Quote Condition
siac_cqs_snapshot_cta_v1_0.national_best_bid_quote_condition.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_bid_quote_condition.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.national_best_bid_quote_condition.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_quote_condition, range, value, display)

  return offset + length, value
end

-- National Best Bid Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_bid_participant_id = {}

-- Size: National Best Bid Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_bid_participant_id.size = 1

-- Display: National Best Bid Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_bid_participant_id.display = function(value)
  if value == "A" then
    return "National Best Bid Participant Id: Nyse American (A)"
  end
  if value == "B" then
    return "National Best Bid Participant Id: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "National Best Bid Participant Id: Nyse National (C)"
  end
  if value == "D" then
    return "National Best Bid Participant Id: Adf (D)"
  end
  if value == "H" then
    return "National Best Bid Participant Id: Miax (H)"
  end
  if value == "I" then
    return "National Best Bid Participant Id: Ise (I)"
  end
  if value == "J" then
    return "National Best Bid Participant Id: Cboe Edga (J)"
  end
  if value == "K" then
    return "National Best Bid Participant Id: Cboe Edgx (K)"
  end
  if value == "L" then
    return "National Best Bid Participant Id: Ltse (L)"
  end
  if value == "M" then
    return "National Best Bid Participant Id: Nyse Chicago (M)"
  end
  if value == "N" then
    return "National Best Bid Participant Id: Nyse (N)"
  end
  if value == "P" then
    return "National Best Bid Participant Id: Nyse Arca (P)"
  end
  if value == "S" then
    return "National Best Bid Participant Id: Cqs (S)"
  end
  if value == "T" then
    return "National Best Bid Participant Id: Nasdaq (T)"
  end
  if value == "U" then
    return "National Best Bid Participant Id: Memx (U)"
  end
  if value == "V" then
    return "National Best Bid Participant Id: Iex (V)"
  end
  if value == "W" then
    return "National Best Bid Participant Id: Cbsx (W)"
  end
  if value == "X" then
    return "National Best Bid Participant Id: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "National Best Bid Participant Id: Cboe Byx (Y)"
  end
  if value == "Z" then
    return "National Best Bid Participant Id: Cboe Bzx (Z)"
  end

  return "National Best Bid Participant Id: Unknown("..value..")"
end

-- Dissect: National Best Bid Participant Id
siac_cqs_snapshot_cta_v1_0.national_best_bid_participant_id.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.national_best_bid_participant_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.national_best_bid_participant_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.national_best_bid_participant_id, range, value, display)

  return offset + length, value
end

-- Number Of Extensions
siac_cqs_snapshot_cta_v1_0.number_of_extensions = {}

-- Size: Number Of Extensions
siac_cqs_snapshot_cta_v1_0.number_of_extensions.size = 1

-- Display: Number Of Extensions
siac_cqs_snapshot_cta_v1_0.number_of_extensions.display = function(value)
  return "Number Of Extensions: "..value
end

-- Dissect: Number Of Extensions
siac_cqs_snapshot_cta_v1_0.number_of_extensions.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.number_of_extensions.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.number_of_extensions.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.number_of_extensions, range, value, display)

  return offset + length, value
end

-- Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price = {}

-- Size: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.size = 8

-- Display: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.display = function(value)
  return "Auction Collar Lower Threshold Price: "..value
end

-- Translate: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Lower Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.auction_collar_lower_threshold_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price = {}

-- Size: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.size = 8

-- Display: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.display = function(value)
  return "Auction Collar Upper Threshold Price: "..value
end

-- Translate: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Upper Threshold Price
siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.auction_collar_upper_threshold_price, range, value, display)

  return offset + length, value
end

-- Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price = {}

-- Size: Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.size = 8

-- Display: Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.display = function(value)
  return "Auction Collar Reference Price: "..value
end

-- Translate: Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Auction Collar Reference Price
siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.auction_collar_reference_price, range, value, display)

  return offset + length, value
end

-- Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0.upper_limit_price_band = {}

-- Size: Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.size = 8

-- Display: Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.display = function(value)
  return "Upper Limit Price Band: "..value
end

-- Translate: Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Upper Limit Price Band
siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.upper_limit_price_band, range, value, display)

  return offset + length, value
end

-- Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0.lower_limit_price_band = {}

-- Size: Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.size = 8

-- Display: Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.display = function(value)
  return "Lower Limit Price Band: "..value
end

-- Translate: Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.translate = function(raw)
  return raw:tonumber()/1000000
end

-- Dissect: Lower Limit Price Band
siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.size
  local range = buffer(offset, length)
  local raw = range:uint64()
  local value = siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.translate(raw)
  local display = siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.lower_limit_price_band, range, value, display)

  return offset + length, value
end

-- Instrument Type
siac_cqs_snapshot_cta_v1_0.instrument_type = {}

-- Size: Instrument Type
siac_cqs_snapshot_cta_v1_0.instrument_type.size = 1

-- Display: Instrument Type
siac_cqs_snapshot_cta_v1_0.instrument_type.display = function(value)
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
siac_cqs_snapshot_cta_v1_0.instrument_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.instrument_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.instrument_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.instrument_type, range, value, display)

  return offset + length, value
end

-- Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message = {}

-- Read runtime size of: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.fields = function(buffer, offset, packet, parent, size_of_consolidated_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0.participant_id.dissect(buffer, index, packet, parent)

  -- Security Symbol: 11 Byte Ascii String
  index, security_symbol = siac_cqs_snapshot_cta_v1_0.security_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Type: 1 Byte Ascii String Enum with 4 values
  index, instrument_type = siac_cqs_snapshot_cta_v1_0.instrument_type.dissect(buffer, index, packet, parent)

  -- Lower Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, lower_limit_price_band = siac_cqs_snapshot_cta_v1_0.lower_limit_price_band.dissect(buffer, index, packet, parent)

  -- Upper Limit Price Band: 8 Byte Unsigned Fixed Width Integer
  index, upper_limit_price_band = siac_cqs_snapshot_cta_v1_0.upper_limit_price_band.dissect(buffer, index, packet, parent)

  -- Auction Collar Reference Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_reference_price = siac_cqs_snapshot_cta_v1_0.auction_collar_reference_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Upper Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_upper_threshold_price = siac_cqs_snapshot_cta_v1_0.auction_collar_upper_threshold_price.dissect(buffer, index, packet, parent)

  -- Auction Collar Lower Threshold Price: 8 Byte Unsigned Fixed Width Integer
  index, auction_collar_lower_threshold_price = siac_cqs_snapshot_cta_v1_0.auction_collar_lower_threshold_price.dissect(buffer, index, packet, parent)

  -- Number Of Extensions: 1 Byte Unsigned Fixed Width Integer
  index, number_of_extensions = siac_cqs_snapshot_cta_v1_0.number_of_extensions.dissect(buffer, index, packet, parent)

  -- National Best Bid Participant Id: 1 Byte Ascii String Enum with 20 values
  index, national_best_bid_participant_id = siac_cqs_snapshot_cta_v1_0.national_best_bid_participant_id.dissect(buffer, index, packet, parent)

  -- National Best Bid Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, national_best_bid_quote_condition = siac_cqs_snapshot_cta_v1_0.national_best_bid_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Bid Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_bid_price = siac_cqs_snapshot_cta_v1_0.national_best_bid_price.dissect(buffer, index, packet, parent)

  -- National Best Bid Size: 4 Byte Unsigned Fixed Width Integer
  index, national_best_bid_size = siac_cqs_snapshot_cta_v1_0.national_best_bid_size.dissect(buffer, index, packet, parent)

  -- Finra Best Bid Market Maker Id: 4 Byte Ascii String
  index, finra_best_bid_market_maker_id = siac_cqs_snapshot_cta_v1_0.finra_best_bid_market_maker_id.dissect(buffer, index, packet, parent)

  -- National Best Offer Participant Id: 1 Byte Ascii String Enum with 20 values
  index, national_best_offer_participant_id = siac_cqs_snapshot_cta_v1_0.national_best_offer_participant_id.dissect(buffer, index, packet, parent)

  -- National Best Offer Quote Condition: 1 Byte Ascii String Enum with 14 values
  index, national_best_offer_quote_condition = siac_cqs_snapshot_cta_v1_0.national_best_offer_quote_condition.dissect(buffer, index, packet, parent)

  -- National Best Offer Price: 8 Byte Unsigned Fixed Width Integer
  index, national_best_offer_price = siac_cqs_snapshot_cta_v1_0.national_best_offer_price.dissect(buffer, index, packet, parent)

  -- National Best Offer Size: 4 Byte Unsigned Fixed Width Integer
  index, national_best_offer_size = siac_cqs_snapshot_cta_v1_0.national_best_offer_size.dissect(buffer, index, packet, parent)

  -- Finra Best Offer Market Maker Id: 4 Byte Ascii String
  index, finra_best_offer_market_maker_id = siac_cqs_snapshot_cta_v1_0.finra_best_offer_market_maker_id.dissect(buffer, index, packet, parent)

  -- National Bbo Luld Indicator: 1 Byte Ascii String Enum with 10 values
  index, national_bbo_luld_indicator = siac_cqs_snapshot_cta_v1_0.national_bbo_luld_indicator.dissect(buffer, index, packet, parent)

  -- Primary Listing Market Participant Id: 1 Byte Ascii String Enum with 20 values
  index, primary_listing_market_participant_id = siac_cqs_snapshot_cta_v1_0.primary_listing_market_participant_id.dissect(buffer, index, packet, parent)

  -- Financial Status Indicator: 1 Byte Ascii String Enum with 11 values
  index, financial_status_indicator = siac_cqs_snapshot_cta_v1_0.financial_status_indicator.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction Indicator: 1 Byte Ascii String Enum with 5 values
  index, short_sale_restriction_indicator = siac_cqs_snapshot_cta_v1_0.short_sale_restriction_indicator.dissect(buffer, index, packet, parent)

  -- Halt Reason: 1 Byte Ascii String Enum with 17 values
  index, halt_reason = siac_cqs_snapshot_cta_v1_0.halt_reason.dissect(buffer, index, packet, parent)

  -- Future: 1 Byte Ascii String
  index, future = siac_cqs_snapshot_cta_v1_0.future.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Consolidated Snapshot Message
siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_consolidated_snapshot_message = siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.consolidated_snapshot_message then
    local range = buffer(offset, size_of_consolidated_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.display(buffer, packet, parent)
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.consolidated_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.fields(buffer, offset, packet, parent, size_of_consolidated_snapshot_message)

  return offset + size_of_consolidated_snapshot_message
end

-- Reserved
siac_cqs_snapshot_cta_v1_0.reserved = {}

-- Size: Reserved
siac_cqs_snapshot_cta_v1_0.reserved.size = 1

-- Display: Reserved
siac_cqs_snapshot_cta_v1_0.reserved.display = function(value)
  return "Reserved: "..value
end

-- Dissect: Reserved
siac_cqs_snapshot_cta_v1_0.reserved.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.reserved.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.reserved.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.reserved, range, value, display)

  return offset + length, value
end

-- Mwcb Level 3
siac_cqs_snapshot_cta_v1_0.mwcb_level_3 = {}

-- Size: Mwcb Level 3
siac_cqs_snapshot_cta_v1_0.mwcb_level_3.size = 8

-- Display: Mwcb Level 3
siac_cqs_snapshot_cta_v1_0.mwcb_level_3.display = function(value)
  return "Mwcb Level 3: "..value
end

-- Dissect: Mwcb Level 3
siac_cqs_snapshot_cta_v1_0.mwcb_level_3.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.mwcb_level_3.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v1_0.mwcb_level_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_3, range, value, display)

  return offset + length, value
end

-- Mwcb Level 2
siac_cqs_snapshot_cta_v1_0.mwcb_level_2 = {}

-- Size: Mwcb Level 2
siac_cqs_snapshot_cta_v1_0.mwcb_level_2.size = 8

-- Display: Mwcb Level 2
siac_cqs_snapshot_cta_v1_0.mwcb_level_2.display = function(value)
  return "Mwcb Level 2: "..value
end

-- Dissect: Mwcb Level 2
siac_cqs_snapshot_cta_v1_0.mwcb_level_2.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.mwcb_level_2.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v1_0.mwcb_level_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_2, range, value, display)

  return offset + length, value
end

-- Mwcb Level 1
siac_cqs_snapshot_cta_v1_0.mwcb_level_1 = {}

-- Size: Mwcb Level 1
siac_cqs_snapshot_cta_v1_0.mwcb_level_1.size = 8

-- Display: Mwcb Level 1
siac_cqs_snapshot_cta_v1_0.mwcb_level_1.display = function(value)
  return "Mwcb Level 1: "..value
end

-- Dissect: Mwcb Level 1
siac_cqs_snapshot_cta_v1_0.mwcb_level_1.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.mwcb_level_1.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = siac_cqs_snapshot_cta_v1_0.mwcb_level_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.mwcb_level_1, range, value, display)

  return offset + length, value
end

-- Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message = {}

-- Read runtime size of: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.fields = function(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0.participant_id.dissect(buffer, index, packet, parent)

  -- Mwcb Level 1: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_1 = siac_cqs_snapshot_cta_v1_0.mwcb_level_1.dissect(buffer, index, packet, parent)

  -- Mwcb Level 2: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_2 = siac_cqs_snapshot_cta_v1_0.mwcb_level_2.dissect(buffer, index, packet, parent)

  -- Mwcb Level 3: 8 Byte Signed Fixed Width Integer
  index, mwcb_level_3 = siac_cqs_snapshot_cta_v1_0.mwcb_level_3.dissect(buffer, index, packet, parent)

  -- Reserved: 1 Byte Unsigned Fixed Width Integer
  index, reserved = siac_cqs_snapshot_cta_v1_0.reserved.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Wide Circuit Breaker Decline Level Status Snapshot Message
siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message = siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.market_wide_circuit_breaker_decline_level_status_snapshot_message then
    local range = buffer(offset, size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message)
    local display = siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.display(buffer, packet, parent)
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.market_wide_circuit_breaker_decline_level_status_snapshot_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.fields(buffer, offset, packet, parent, size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message)

  return offset + size_of_market_wide_circuit_breaker_decline_level_status_snapshot_message
end

-- Line Integrity Message
siac_cqs_snapshot_cta_v1_0.line_integrity_message = {}

-- Read runtime size of: Line Integrity Message
siac_cqs_snapshot_cta_v1_0.line_integrity_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 4, 2):uint()

  return message_length - 4
end

-- Display: Line Integrity Message
siac_cqs_snapshot_cta_v1_0.line_integrity_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Line Integrity Message
siac_cqs_snapshot_cta_v1_0.line_integrity_message.fields = function(buffer, offset, packet, parent, size_of_line_integrity_message)
  local index = offset

  -- Participant Id: 1 Byte Ascii String Enum with 20 values
  index, participant_id = siac_cqs_snapshot_cta_v1_0.participant_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Line Integrity Message
siac_cqs_snapshot_cta_v1_0.line_integrity_message.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_line_integrity_message = siac_cqs_snapshot_cta_v1_0.line_integrity_message.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.line_integrity_message then
    local range = buffer(offset, size_of_line_integrity_message)
    local display = siac_cqs_snapshot_cta_v1_0.line_integrity_message.display(buffer, packet, parent)
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.line_integrity_message, range, display)
  end

  siac_cqs_snapshot_cta_v1_0.line_integrity_message.fields(buffer, offset, packet, parent, size_of_line_integrity_message)

  return offset + size_of_line_integrity_message
end

-- Snapshot Payload
siac_cqs_snapshot_cta_v1_0.snapshot_payload = {}

-- Calculate runtime size of: Snapshot Payload
siac_cqs_snapshot_cta_v1_0.snapshot_payload.size = function(buffer, offset, snapshot_message_type)
  -- Size of Line Integrity Message
  if snapshot_message_type == "T" then
    return siac_cqs_snapshot_cta_v1_0.line_integrity_message.size(buffer, offset)
  end
  -- Size of Market Wide Circuit Breaker Decline Level Status Snapshot Message
  if snapshot_message_type == "K" then
    return siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.size(buffer, offset)
  end
  -- Size of Consolidated Snapshot Message
  if snapshot_message_type == "C" then
    return siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.size(buffer, offset)
  end
  -- Size of Participant Snapshot Message
  if snapshot_message_type == "P" then
    return siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.size(buffer, offset)
  end
  -- Size of Finra Snapshot Message
  if snapshot_message_type == "F" then
    return siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.size(buffer, offset)
  end

  return 0
end

-- Display: Snapshot Payload
siac_cqs_snapshot_cta_v1_0.snapshot_payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Snapshot Payload
siac_cqs_snapshot_cta_v1_0.snapshot_payload.branches = function(buffer, offset, packet, parent, snapshot_message_type)
  -- Dissect Line Integrity Message
  if snapshot_message_type == "T" then
    return siac_cqs_snapshot_cta_v1_0.line_integrity_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Wide Circuit Breaker Decline Level Status Snapshot Message
  if snapshot_message_type == "K" then
    return siac_cqs_snapshot_cta_v1_0.market_wide_circuit_breaker_decline_level_status_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Consolidated Snapshot Message
  if snapshot_message_type == "C" then
    return siac_cqs_snapshot_cta_v1_0.consolidated_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Participant Snapshot Message
  if snapshot_message_type == "P" then
    return siac_cqs_snapshot_cta_v1_0.participant_snapshot_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Finra Snapshot Message
  if snapshot_message_type == "F" then
    return siac_cqs_snapshot_cta_v1_0.finra_snapshot_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Snapshot Payload
siac_cqs_snapshot_cta_v1_0.snapshot_payload.dissect = function(buffer, offset, packet, parent, snapshot_message_type)
  if not show.snapshot_payload then
    return siac_cqs_snapshot_cta_v1_0.snapshot_payload.branches(buffer, offset, packet, parent, snapshot_message_type)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_snapshot_cta_v1_0.snapshot_payload.size(buffer, offset, snapshot_message_type)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_snapshot_cta_v1_0.snapshot_payload.display(buffer, packet, parent)
  local element = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.snapshot_payload, range, display)

  return siac_cqs_snapshot_cta_v1_0.snapshot_payload.branches(buffer, offset, packet, parent, snapshot_message_type)
end

-- Snapshot Message Type
siac_cqs_snapshot_cta_v1_0.snapshot_message_type = {}

-- Size: Snapshot Message Type
siac_cqs_snapshot_cta_v1_0.snapshot_message_type.size = 1

-- Display: Snapshot Message Type
siac_cqs_snapshot_cta_v1_0.snapshot_message_type.display = function(value)
  if value == "T" then
    return "Snapshot Message Type: Line Integrity Message (T)"
  end
  if value == "K" then
    return "Snapshot Message Type: Market Wide Circuit Breaker Decline Level Status Snapshot Message (K)"
  end
  if value == "C" then
    return "Snapshot Message Type: Consolidated Snapshot Message (C)"
  end
  if value == "P" then
    return "Snapshot Message Type: Participant Snapshot Message (P)"
  end
  if value == "F" then
    return "Snapshot Message Type: Finra Snapshot Message (F)"
  end

  return "Snapshot Message Type: Unknown("..value..")"
end

-- Dissect: Snapshot Message Type
siac_cqs_snapshot_cta_v1_0.snapshot_message_type.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.snapshot_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.snapshot_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.snapshot_message_type, range, value, display)

  return offset + length, value
end

-- Snapshot
siac_cqs_snapshot_cta_v1_0.snapshot = {}

-- Read runtime size of: Snapshot
siac_cqs_snapshot_cta_v1_0.snapshot.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):uint()

  return message_length - 3
end

-- Display: Snapshot
siac_cqs_snapshot_cta_v1_0.snapshot.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot
siac_cqs_snapshot_cta_v1_0.snapshot.fields = function(buffer, offset, packet, parent, size_of_snapshot)
  local index = offset

  -- Snapshot Message Type: 1 Byte Ascii String Enum with 5 values
  index, snapshot_message_type = siac_cqs_snapshot_cta_v1_0.snapshot_message_type.dissect(buffer, index, packet, parent)

  -- Snapshot Payload: Runtime Type with 5 branches
  index = siac_cqs_snapshot_cta_v1_0.snapshot_payload.dissect(buffer, index, packet, parent, snapshot_message_type)

  return index
end

-- Dissect: Snapshot
siac_cqs_snapshot_cta_v1_0.snapshot.dissect = function(buffer, offset, packet, parent)
  -- Parse runtime size
  local size_of_snapshot = siac_cqs_snapshot_cta_v1_0.snapshot.size(buffer, offset)

  -- Optionally add struct element to protocol tree
  if show.snapshot then
    local range = buffer(offset, size_of_snapshot)
    local display = siac_cqs_snapshot_cta_v1_0.snapshot.display(buffer, packet, parent)
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.snapshot, range, display)
  end

  siac_cqs_snapshot_cta_v1_0.snapshot.fields(buffer, offset, packet, parent, size_of_snapshot)

  return offset + size_of_snapshot
end

-- Payload
siac_cqs_snapshot_cta_v1_0.payload = {}

-- Calculate runtime size of: Payload
siac_cqs_snapshot_cta_v1_0.payload.size = function(buffer, offset, message_category)
  -- Size of Snapshot
  if message_category == "K" then
    return siac_cqs_snapshot_cta_v1_0.snapshot.size(buffer, offset)
  end

  return 0
end

-- Display: Payload
siac_cqs_snapshot_cta_v1_0.payload.display = function(buffer, offset, packet, parent)
  return ""
end

-- Dissect Branches: Payload
siac_cqs_snapshot_cta_v1_0.payload.branches = function(buffer, offset, packet, parent, message_category)
  -- Dissect Snapshot
  if message_category == "K" then
    return siac_cqs_snapshot_cta_v1_0.snapshot.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Dissect: Payload
siac_cqs_snapshot_cta_v1_0.payload.dissect = function(buffer, offset, packet, parent, message_category)
  if not show.payload then
    return siac_cqs_snapshot_cta_v1_0.payload.branches(buffer, offset, packet, parent, message_category)
  end

  -- Calculate size and check that branch is not empty
  local size = siac_cqs_snapshot_cta_v1_0.payload.size(buffer, offset, message_category)
  if size == 0 then
    return offset
  end

  -- Dissect Element
  local range = buffer(offset, size)
  local display = siac_cqs_snapshot_cta_v1_0.payload.display(buffer, packet, parent)
  local element = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.payload, range, display)

  return siac_cqs_snapshot_cta_v1_0.payload.branches(buffer, offset, packet, parent, message_category)
end

-- Message Category
siac_cqs_snapshot_cta_v1_0.message_category = {}

-- Size: Message Category
siac_cqs_snapshot_cta_v1_0.message_category.size = 1

-- Display: Message Category
siac_cqs_snapshot_cta_v1_0.message_category.display = function(value)
  if value == "K" then
    return "Message Category: Snapshot (K)"
  end

  return "Message Category: Unknown("..value..")"
end

-- Dissect: Message Category
siac_cqs_snapshot_cta_v1_0.message_category.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.message_category.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.message_category.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.message_category, range, value, display)

  return offset + length, value
end

-- Message Length
siac_cqs_snapshot_cta_v1_0.message_length = {}

-- Size: Message Length
siac_cqs_snapshot_cta_v1_0.message_length.size = 2

-- Display: Message Length
siac_cqs_snapshot_cta_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
siac_cqs_snapshot_cta_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Header
siac_cqs_snapshot_cta_v1_0.message_header = {}

-- Calculate size of: Message Header
siac_cqs_snapshot_cta_v1_0.message_header.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v1_0.message_length.size

  index = index + siac_cqs_snapshot_cta_v1_0.message_category.size

  return index
end

-- Display: Message Header
siac_cqs_snapshot_cta_v1_0.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
siac_cqs_snapshot_cta_v1_0.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = siac_cqs_snapshot_cta_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Message Category: 1 Byte Ascii String Enum with 1 values
  index, message_category = siac_cqs_snapshot_cta_v1_0.message_category.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
siac_cqs_snapshot_cta_v1_0.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.message_header, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v1_0.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v1_0.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v1_0.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
siac_cqs_snapshot_cta_v1_0.message = {}

-- Display: Message
siac_cqs_snapshot_cta_v1_0.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
siac_cqs_snapshot_cta_v1_0.message.fields = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset

  -- Implicit Message Index
  if message_index ~= nil then
    local iteration = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.message_index, message_index)
    iteration:set_generated()
  end

  -- Message Header: Struct of 2 fields
  index, message_header = siac_cqs_snapshot_cta_v1_0.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Category
  local message_category = buffer(index - 1, 1):string()

  -- Payload: Runtime Type with 1 branches
  index = siac_cqs_snapshot_cta_v1_0.payload.dissect(buffer, index, packet, parent, message_category)

  return index
end

-- Dissect: Message
siac_cqs_snapshot_cta_v1_0.message.dissect = function(buffer, offset, packet, parent, size_of_message, message_index)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.message then
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.message, buffer(offset, 0))
    local current = siac_cqs_snapshot_cta_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)
    parent:set_len(size_of_message)
    local display = siac_cqs_snapshot_cta_v1_0.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    siac_cqs_snapshot_cta_v1_0.message.fields(buffer, offset, packet, parent, size_of_message, message_index)

    return index
  end
end

-- Block Checksum
siac_cqs_snapshot_cta_v1_0.block_checksum = {}

-- Size: Block Checksum
siac_cqs_snapshot_cta_v1_0.block_checksum.size = 2

-- Display: Block Checksum
siac_cqs_snapshot_cta_v1_0.block_checksum.display = function(value)
  return "Block Checksum: "..value
end

-- Dissect: Block Checksum
siac_cqs_snapshot_cta_v1_0.block_checksum.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.block_checksum.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.block_checksum.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.block_checksum, range, value, display)

  return offset + length, value
end

-- Nanoseconds
siac_cqs_snapshot_cta_v1_0.nanoseconds = {}

-- Size: Nanoseconds
siac_cqs_snapshot_cta_v1_0.nanoseconds.size = 4

-- Display: Nanoseconds
siac_cqs_snapshot_cta_v1_0.nanoseconds.display = function(value)
  return "Nanoseconds: "..value
end

-- Dissect: Nanoseconds
siac_cqs_snapshot_cta_v1_0.nanoseconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.nanoseconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.nanoseconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.nanoseconds, range, value, display)

  return offset + length, value
end

-- Seconds
siac_cqs_snapshot_cta_v1_0.seconds = {}

-- Size: Seconds
siac_cqs_snapshot_cta_v1_0.seconds.size = 4

-- Display: Seconds
siac_cqs_snapshot_cta_v1_0.seconds.display = function(value)
  return "Seconds: "..value
end

-- Dissect: Seconds
siac_cqs_snapshot_cta_v1_0.seconds.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.seconds.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.seconds.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.seconds, range, value, display)

  return offset + length, value
end

-- Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0.sip_block_timestamp = {}

-- Calculate size of: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v1_0.seconds.size

  index = index + siac_cqs_snapshot_cta_v1_0.nanoseconds.size

  return index
end

-- Display: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seconds: 4 Byte Unsigned Fixed Width Integer
  index, seconds = siac_cqs_snapshot_cta_v1_0.seconds.dissect(buffer, index, packet, parent)

  -- Nanoseconds: 4 Byte Unsigned Fixed Width Integer
  index, nanoseconds = siac_cqs_snapshot_cta_v1_0.nanoseconds.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sip Block Timestamp
siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.dissect = function(buffer, offset, packet, parent)
  if show.sip_block_timestamp then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.sip_block_timestamp, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.fields(buffer, offset, packet, parent)
  end
end

-- Tot Pub Seq Rollover
siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover = {}

-- Size: Tot Pub Seq Rollover
siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover.size = 1

-- Display: Tot Pub Seq Rollover
siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover.display = function(value)
  return "Tot Pub Seq Rollover: "..value
end

-- Dissect: Tot Pub Seq Rollover
siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.tot_pub_seq_rollover, range, value, display)

  return offset + length, value
end

-- Last Seq Num
siac_cqs_snapshot_cta_v1_0.last_seq_num = {}

-- Size: Last Seq Num
siac_cqs_snapshot_cta_v1_0.last_seq_num.size = 1

-- Display: Last Seq Num
siac_cqs_snapshot_cta_v1_0.last_seq_num.display = function(value)
  return "Last Seq Num: "..value
end

-- Dissect: Last Seq Num
siac_cqs_snapshot_cta_v1_0.last_seq_num.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.last_seq_num.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = siac_cqs_snapshot_cta_v1_0.last_seq_num.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.last_seq_num, range, value, display)

  return offset + length, value
end

-- Delivery Flag
siac_cqs_snapshot_cta_v1_0.delivery_flag = {}

-- Size: Delivery Flag
siac_cqs_snapshot_cta_v1_0.delivery_flag.size = 1

-- Display: Delivery Flag
siac_cqs_snapshot_cta_v1_0.delivery_flag.display = function(value)
  if value == 1 then
    return "Delivery Flag: First Block Of Snapshot Sequence (1)"
  end
  if value == 2 then
    return "Delivery Flag: Intermediate Block Of Snapshot Sequence (2)"
  end
  if value == 3 then
    return "Delivery Flag: Last Block Of Snapshot Sequence (3)"
  end
  if value == 4 then
    return "Delivery Flag: Only One Block In Snapshot Sequence (4)"
  end

  return "Delivery Flag: Unknown("..value..")"
end

-- Dissect: Delivery Flag
siac_cqs_snapshot_cta_v1_0.delivery_flag.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.delivery_flag.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.delivery_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.delivery_flag, range, value, display)

  return offset + length, value
end

-- Messages In Block
siac_cqs_snapshot_cta_v1_0.messages_in_block = {}

-- Size: Messages In Block
siac_cqs_snapshot_cta_v1_0.messages_in_block.size = 1

-- Display: Messages In Block
siac_cqs_snapshot_cta_v1_0.messages_in_block.display = function(value)
  return "Messages In Block: "..value
end

-- Dissect: Messages In Block
siac_cqs_snapshot_cta_v1_0.messages_in_block.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.messages_in_block.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.messages_in_block.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.messages_in_block, range, value, display)

  return offset + length, value
end

-- Block Sequence Number
siac_cqs_snapshot_cta_v1_0.block_sequence_number = {}

-- Size: Block Sequence Number
siac_cqs_snapshot_cta_v1_0.block_sequence_number.size = 4

-- Display: Block Sequence Number
siac_cqs_snapshot_cta_v1_0.block_sequence_number.display = function(value)
  return "Block Sequence Number: "..value
end

-- Dissect: Block Sequence Number
siac_cqs_snapshot_cta_v1_0.block_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.block_sequence_number.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.block_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.block_sequence_number, range, value, display)

  return offset + length, value
end

-- Block Size
siac_cqs_snapshot_cta_v1_0.block_size = {}

-- Size: Block Size
siac_cqs_snapshot_cta_v1_0.block_size.size = 2

-- Display: Block Size
siac_cqs_snapshot_cta_v1_0.block_size.display = function(value)
  return "Block Size: "..value
end

-- Dissect: Block Size
siac_cqs_snapshot_cta_v1_0.block_size.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.block_size.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.block_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.block_size, range, value, display)

  return offset + length, value
end

-- Version
siac_cqs_snapshot_cta_v1_0.version = {}

-- Size: Version
siac_cqs_snapshot_cta_v1_0.version.size = 1

-- Display: Version
siac_cqs_snapshot_cta_v1_0.version.display = function(value)
  return "Version: "..value
end

-- Dissect: Version
siac_cqs_snapshot_cta_v1_0.version.dissect = function(buffer, offset, packet, parent)
  local length = siac_cqs_snapshot_cta_v1_0.version.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = siac_cqs_snapshot_cta_v1_0.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.version, range, value, display)

  return offset + length, value
end

-- Block Header
siac_cqs_snapshot_cta_v1_0.block_header = {}

-- Calculate size of: Block Header
siac_cqs_snapshot_cta_v1_0.block_header.size = function(buffer, offset)
  local index = 0

  index = index + siac_cqs_snapshot_cta_v1_0.version.size

  index = index + siac_cqs_snapshot_cta_v1_0.block_size.size

  index = index + siac_cqs_snapshot_cta_v1_0.block_sequence_number.size

  index = index + siac_cqs_snapshot_cta_v1_0.messages_in_block.size

  index = index + siac_cqs_snapshot_cta_v1_0.delivery_flag.size

  index = index + siac_cqs_snapshot_cta_v1_0.last_seq_num.size

  index = index + siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover.size

  index = index + siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.size(buffer, offset + index)

  index = index + siac_cqs_snapshot_cta_v1_0.block_checksum.size

  return index
end

-- Display: Block Header
siac_cqs_snapshot_cta_v1_0.block_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Block Header
siac_cqs_snapshot_cta_v1_0.block_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Version: 1 Byte Unsigned Fixed Width Integer
  index, version = siac_cqs_snapshot_cta_v1_0.version.dissect(buffer, index, packet, parent)

  -- Block Size: 2 Byte Unsigned Fixed Width Integer
  index, block_size = siac_cqs_snapshot_cta_v1_0.block_size.dissect(buffer, index, packet, parent)

  -- Block Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, block_sequence_number = siac_cqs_snapshot_cta_v1_0.block_sequence_number.dissect(buffer, index, packet, parent)

  -- Messages In Block: 1 Byte Unsigned Fixed Width Integer
  index, messages_in_block = siac_cqs_snapshot_cta_v1_0.messages_in_block.dissect(buffer, index, packet, parent)

  -- Delivery Flag: 1 Byte Unsigned Fixed Width Integer Enum with 4 values
  index, delivery_flag = siac_cqs_snapshot_cta_v1_0.delivery_flag.dissect(buffer, index, packet, parent)

  -- Last Seq Num: 1 Byte Ascii String
  index, last_seq_num = siac_cqs_snapshot_cta_v1_0.last_seq_num.dissect(buffer, index, packet, parent)

  -- Tot Pub Seq Rollover: 1 Byte Unsigned Fixed Width Integer
  index, tot_pub_seq_rollover = siac_cqs_snapshot_cta_v1_0.tot_pub_seq_rollover.dissect(buffer, index, packet, parent)

  -- Sip Block Timestamp: Struct of 2 fields
  index, sip_block_timestamp = siac_cqs_snapshot_cta_v1_0.sip_block_timestamp.dissect(buffer, index, packet, parent)

  -- Block Checksum: 2 Byte Unsigned Fixed Width Integer
  index, block_checksum = siac_cqs_snapshot_cta_v1_0.block_checksum.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Block Header
siac_cqs_snapshot_cta_v1_0.block_header.dissect = function(buffer, offset, packet, parent)
  if show.block_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_siac_cqs_snapshot_cta_v1_0.fields.block_header, buffer(offset, 0))
    local index = siac_cqs_snapshot_cta_v1_0.block_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = siac_cqs_snapshot_cta_v1_0.block_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return siac_cqs_snapshot_cta_v1_0.block_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
siac_cqs_snapshot_cta_v1_0.packet = {}

-- Dissect Packet
siac_cqs_snapshot_cta_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Block Header: Struct of 9 fields
  index, block_header = siac_cqs_snapshot_cta_v1_0.block_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Messages In Block
  local messages_in_block = buffer(index - 14, 1):uint()

  -- Repeating: Message
  for message_index = 1, messages_in_block do

    -- Dependency element: Message Length
    local message_length = buffer(index, 2):uint()

    -- Runtime Size Of: Message
    index, message = siac_cqs_snapshot_cta_v1_0.message.dissect(buffer, index, packet, parent, message_length)
  end

  -- Runtime optional field: Block Pad Byte
  local block_pad_byte = nil

  local block_pad_byte_exists = uneven( index )

  if block_pad_byte_exists then
    index, block_pad_byte = siac_cqs_snapshot_cta_v1_0.block_pad_byte.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_siac_cqs_snapshot_cta_v1_0.init()
end

-- Dissector for Siac Cqs Snapshot Cta 1.0
function omi_siac_cqs_snapshot_cta_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_siac_cqs_snapshot_cta_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_siac_cqs_snapshot_cta_v1_0, buffer(), omi_siac_cqs_snapshot_cta_v1_0.description, "("..buffer:len().." Bytes)")
  return siac_cqs_snapshot_cta_v1_0.packet.dissect(buffer, packet, protocol)
end

-- Register With Udp Table
local udp_table = DissectorTable.get("udp.port")
udp_table:add(65333, omi_siac_cqs_snapshot_cta_v1_0)


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Verify size of packet
siac_cqs_snapshot_cta_v1_0.packet.requiredsize = function(buffer)

  return true
end

-- Dissector Heuristic for Siac Cqs Snapshot Cta 1.0
local function omi_siac_cqs_snapshot_cta_v1_0_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not siac_cqs_snapshot_cta_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_siac_cqs_snapshot_cta_v1_0
  omi_siac_cqs_snapshot_cta_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Siac Cqs Snapshot Cta 1.0
omi_siac_cqs_snapshot_cta_v1_0:register_heuristic("udp", omi_siac_cqs_snapshot_cta_v1_0_heuristic)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
-- 
-- Protocol:
--   Organization: Securities Industry Automation Corporation
--   Version: 1.0
--   Date: Monday, January 24, 2022
--   Specification: CQS_Pillar_Snapshot_Specification.pdf
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
