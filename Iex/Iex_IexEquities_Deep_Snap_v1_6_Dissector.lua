-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Iex IexEquities Deep Snap 1.6 Protocol
local omi_iex_iexequities_deep_snap_v1_6 = Proto("Omi.Iex.IexEquities.Deep.Snap.v1.6", "Iex IexEquities Deep Snap 1.6")

-- Protocol table
local iex_iexequities_deep_snap_v1_6 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Iex IexEquities Deep Snap 1.6 Headers
omi_iex_iexequities_deep_snap_v1_6.fields.message = ProtoField.new("Message", "iex.iexequities.deep.snap.v1.6.message", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.message_header = ProtoField.new("Message Header", "iex.iexequities.deep.snap.v1.6.messageheader", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.packet = ProtoField.new("Packet", "iex.iexequities.deep.snap.v1.6.packet", ftypes.STRING)

-- Iex IexEquities Deep Snap 1.6 Fields
omi_iex_iexequities_deep_snap_v1_6.fields.adjusted_poc_price = ProtoField.new("Adjusted Poc Price", "iex.iexequities.deep.snap.v1.6.adjustedpocprice", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.auction_book_clearing_price = ProtoField.new("Auction Book Clearing Price", "iex.iexequities.deep.snap.v1.6.auctionbookclearingprice", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.auction_type = ProtoField.new("Auction Type", "iex.iexequities.deep.snap.v1.6.auctiontype", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.authentication_token = ProtoField.new("Authentication Token", "iex.iexequities.deep.snap.v1.6.authenticationtoken", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.channel_id = ProtoField.new("Channel Id", "iex.iexequities.deep.snap.v1.6.channelid", ftypes.UINT32)
omi_iex_iexequities_deep_snap_v1_6.fields.collar_reference_price = ProtoField.new("Collar Reference Price", "iex.iexequities.deep.snap.v1.6.collarreferenceprice", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.detail = ProtoField.new("Detail", "iex.iexequities.deep.snap.v1.6.detail", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.etp = ProtoField.new("Etp", "iex.iexequities.deep.snap.v1.6.etp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_iex_iexequities_deep_snap_v1_6.fields.event_flags = ProtoField.new("Event Flags", "iex.iexequities.deep.snap.v1.6.eventflags", ftypes.UINT8)
omi_iex_iexequities_deep_snap_v1_6.fields.extended_hours = ProtoField.new("Extended Hours", "iex.iexequities.deep.snap.v1.6.extendedhours", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_iex_iexequities_deep_snap_v1_6.fields.extension_number = ProtoField.new("Extension Number", "iex.iexequities.deep.snap.v1.6.extensionnumber", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_header = ProtoField.new("Iex Tp Header", "iex.iexequities.deep.snap.v1.6.iextpheader", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_message_block_length = ProtoField.new("Iex Tp Message Block Length", "iex.iexequities.deep.snap.v1.6.iextpmessageblocklength", ftypes.UINT16)
omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_message_length = ProtoField.new("Iex Tp Message Length", "iex.iexequities.deep.snap.v1.6.iextpmessagelength", ftypes.UINT16)
omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_message_type = ProtoField.new("Iex Tp Message Type", "iex.iexequities.deep.snap.v1.6.iextpmessagetype", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.imbalance_shares = ProtoField.new("Imbalance Shares", "iex.iexequities.deep.snap.v1.6.imbalanceshares", ftypes.UINT32)
omi_iex_iexequities_deep_snap_v1_6.fields.imbalance_side = ProtoField.new("Imbalance Side", "iex.iexequities.deep.snap.v1.6.imbalanceside", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.indicative_clearing_price = ProtoField.new("Indicative Clearing Price", "iex.iexequities.deep.snap.v1.6.indicativeclearingprice", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.intermarket_sweep = ProtoField.new("Intermarket Sweep", "iex.iexequities.deep.snap.v1.6.intermarketsweep", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_iex_iexequities_deep_snap_v1_6.fields.lower_auction_collar = ProtoField.new("Lower Auction Collar", "iex.iexequities.deep.snap.v1.6.lowerauctioncollar", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.luld_tier = ProtoField.new("Luld Tier", "iex.iexequities.deep.snap.v1.6.luldtier", ftypes.UINT8)
omi_iex_iexequities_deep_snap_v1_6.fields.message_length = ProtoField.new("Message Length", "iex.iexequities.deep.snap.v1.6.messagelength", ftypes.UINT16)
omi_iex_iexequities_deep_snap_v1_6.fields.message_type = ProtoField.new("Message Type", "iex.iexequities.deep.snap.v1.6.messagetype", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.minimum_sequence_number = ProtoField.new("Minimum Sequence Number", "iex.iexequities.deep.snap.v1.6.minimumsequencenumber", ftypes.UINT64)
omi_iex_iexequities_deep_snap_v1_6.fields.odd_lot = ProtoField.new("Odd Lot", "iex.iexequities.deep.snap.v1.6.oddlot", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_iex_iexequities_deep_snap_v1_6.fields.official_price = ProtoField.new("Official Price", "iex.iexequities.deep.snap.v1.6.officialprice", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.operational_halt_status = ProtoField.new("Operational Halt Status", "iex.iexequities.deep.snap.v1.6.operationalhaltstatus", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.paired_shares = ProtoField.new("Paired Shares", "iex.iexequities.deep.snap.v1.6.pairedshares", ftypes.UINT32)
omi_iex_iexequities_deep_snap_v1_6.fields.price = ProtoField.new("Price", "iex.iexequities.deep.snap.v1.6.price", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.price_type = ProtoField.new("Price Type", "iex.iexequities.deep.snap.v1.6.pricetype", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.reason = ProtoField.new("Reason", "iex.iexequities.deep.snap.v1.6.reason", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.reference_price = ProtoField.new("Reference Price", "iex.iexequities.deep.snap.v1.6.referenceprice", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.reject_reason_code = ProtoField.new("Reject Reason Code", "iex.iexequities.deep.snap.v1.6.rejectreasoncode", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.retail_liquidity_indicator = ProtoField.new("Retail Liquidity Indicator", "iex.iexequities.deep.snap.v1.6.retailliquidityindicator", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.round_lot_size = ProtoField.new("Round Lot Size", "iex.iexequities.deep.snap.v1.6.roundlotsize", ftypes.UINT32)
omi_iex_iexequities_deep_snap_v1_6.fields.sale_condition_flags = ProtoField.new("Sale Condition Flags", "iex.iexequities.deep.snap.v1.6.saleconditionflags", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.scheduled_auction_time = ProtoField.new("Scheduled Auction Time", "iex.iexequities.deep.snap.v1.6.scheduledauctiontime", ftypes.UINT32)
omi_iex_iexequities_deep_snap_v1_6.fields.security_directory_flags = ProtoField.new("Security Directory Flags", "iex.iexequities.deep.snap.v1.6.securitydirectoryflags", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.security_event = ProtoField.new("Security Event", "iex.iexequities.deep.snap.v1.6.securityevent", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.session_id = ProtoField.new("Session Id", "iex.iexequities.deep.snap.v1.6.sessionid", ftypes.UINT32)
omi_iex_iexequities_deep_snap_v1_6.fields.short_sale_price_test_status = ProtoField.new("Short Sale Price Test Status", "iex.iexequities.deep.snap.v1.6.shortsalepriceteststatus", ftypes.UINT8)
omi_iex_iexequities_deep_snap_v1_6.fields.singleprice_cross_trade = ProtoField.new("Singleprice Cross Trade", "iex.iexequities.deep.snap.v1.6.singlepricecrosstrade", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_iex_iexequities_deep_snap_v1_6.fields.size = ProtoField.new("Size", "iex.iexequities.deep.snap.v1.6.size", ftypes.UINT32)
omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_length = ProtoField.new("Snapshot Length", "iex.iexequities.deep.snap.v1.6.snapshotlength", ftypes.UINT64)
omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_sequence_number = ProtoField.new("Snapshot Sequence Number", "iex.iexequities.deep.snap.v1.6.snapshotsequencenumber", ftypes.UINT64)
omi_iex_iexequities_deep_snap_v1_6.fields.symbol = ProtoField.new("Symbol", "iex.iexequities.deep.snap.v1.6.symbol", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.system_event = ProtoField.new("System Event", "iex.iexequities.deep.snap.v1.6.systemevent", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.test_security = ProtoField.new("Test Security", "iex.iexequities.deep.snap.v1.6.testsecurity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_iex_iexequities_deep_snap_v1_6.fields.timestamp = ProtoField.new("Timestamp", "iex.iexequities.deep.snap.v1.6.timestamp", ftypes.INT64)
omi_iex_iexequities_deep_snap_v1_6.fields.trade_id = ProtoField.new("Trade Id", "iex.iexequities.deep.snap.v1.6.tradeid", ftypes.UINT64)
omi_iex_iexequities_deep_snap_v1_6.fields.trade_through_exempt = ProtoField.new("Trade Through Exempt", "iex.iexequities.deep.snap.v1.6.tradethroughexempt", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_iex_iexequities_deep_snap_v1_6.fields.trading_status = ProtoField.new("Trading Status", "iex.iexequities.deep.snap.v1.6.tradingstatus", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.unused_3 = ProtoField.new("Unused 3", "iex.iexequities.deep.snap.v1.6.unused3", ftypes.UINT8, nil, base.DEC, 0x07)
omi_iex_iexequities_deep_snap_v1_6.fields.unused_5 = ProtoField.new("Unused 5", "iex.iexequities.deep.snap.v1.6.unused5", ftypes.UINT8, nil, base.DEC, 0x1F)
omi_iex_iexequities_deep_snap_v1_6.fields.upper_auction_collar = ProtoField.new("Upper Auction Collar", "iex.iexequities.deep.snap.v1.6.upperauctioncollar", ftypes.DOUBLE)
omi_iex_iexequities_deep_snap_v1_6.fields.when_issued = ProtoField.new("When Issued", "iex.iexequities.deep.snap.v1.6.whenissued", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)

-- Iex IexEquities Deep 1.6 Application Messages
omi_iex_iexequities_deep_snap_v1_6.fields.auction_information_message = ProtoField.new("Auction Information Message", "iex.iexequities.deep.snap.v1.6.auctioninformationmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.error_response_message = ProtoField.new("Error Response Message", "iex.iexequities.deep.snap.v1.6.errorresponsemessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.official_price_message = ProtoField.new("Official Price Message", "iex.iexequities.deep.snap.v1.6.officialpricemessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.operational_halt_status_message = ProtoField.new("Operational Halt Status Message", "iex.iexequities.deep.snap.v1.6.operationalhaltstatusmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.price_level_buy_update_message = ProtoField.new("Price Level Buy Update Message", "iex.iexequities.deep.snap.v1.6.pricelevelbuyupdatemessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.price_level_sell_update_message = ProtoField.new("Price Level Sell Update Message", "iex.iexequities.deep.snap.v1.6.pricelevelsellupdatemessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.retail_liquidity_indicator_message = ProtoField.new("Retail Liquidity Indicator Message", "iex.iexequities.deep.snap.v1.6.retailliquidityindicatormessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.security_directory_message = ProtoField.new("Security Directory Message", "iex.iexequities.deep.snap.v1.6.securitydirectorymessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.security_event_message = ProtoField.new("Security Event Message", "iex.iexequities.deep.snap.v1.6.securityeventmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.short_sale_price_test_status_message = ProtoField.new("Short Sale Price Test Status Message", "iex.iexequities.deep.snap.v1.6.shortsalepriceteststatusmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_data_message = ProtoField.new("Snapshot Data Message", "iex.iexequities.deep.snap.v1.6.snapshotdatamessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_end_message = ProtoField.new("Snapshot End Message", "iex.iexequities.deep.snap.v1.6.snapshotendmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_request_message = ProtoField.new("Snapshot Request Message", "iex.iexequities.deep.snap.v1.6.snapshotrequestmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_start_message = ProtoField.new("Snapshot Start Message", "iex.iexequities.deep.snap.v1.6.snapshotstartmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.system_event_message = ProtoField.new("System Event Message", "iex.iexequities.deep.snap.v1.6.systemeventmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.trade_break_message = ProtoField.new("Trade Break Message", "iex.iexequities.deep.snap.v1.6.tradebreakmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.trade_report_message = ProtoField.new("Trade Report Message", "iex.iexequities.deep.snap.v1.6.tradereportmessage", ftypes.STRING)
omi_iex_iexequities_deep_snap_v1_6.fields.trading_status_message = ProtoField.new("Trading Status Message", "iex.iexequities.deep.snap.v1.6.tradingstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Iex IexEquities Deep Snap 1.6 Element Dissection Options
show.application_messages = true
show.structs = true
show.headers = true

-- Register Iex IexEquities Deep Snap 1.6 Show Options
omi_iex_iexequities_deep_snap_v1_6.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_iex_iexequities_deep_snap_v1_6.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_iex_iexequities_deep_snap_v1_6.prefs.show_headers = Pref.bool("Show Headers", show.headers, "Parse and add Headers to protocol tree")


-- Handle changed preferences
function omi_iex_iexequities_deep_snap_v1_6.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_iex_iexequities_deep_snap_v1_6.prefs.show_application_messages then
    show.application_messages = omi_iex_iexequities_deep_snap_v1_6.prefs.show_application_messages
  end
  if show.headers ~= omi_iex_iexequities_deep_snap_v1_6.prefs.show_headers then
    show.headers = omi_iex_iexequities_deep_snap_v1_6.prefs.show_headers
  end
  if show.structs ~= omi_iex_iexequities_deep_snap_v1_6.prefs.show_structs then
    show.structs = omi_iex_iexequities_deep_snap_v1_6.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Protocol Functions
-----------------------------------------------------------------------

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
-- Iex IexEquities Deep Snap 1.6 Fields
-----------------------------------------------------------------------

-- Adjusted Poc Price
iex_iexequities_deep_snap_v1_6.adjusted_poc_price = {}

-- Size: Adjusted Poc Price
iex_iexequities_deep_snap_v1_6.adjusted_poc_price.size = 8

-- Display: Adjusted Poc Price
iex_iexequities_deep_snap_v1_6.adjusted_poc_price.display = function(value)
  return "Adjusted Poc Price: "..value
end

-- Translate: Adjusted Poc Price
iex_iexequities_deep_snap_v1_6.adjusted_poc_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Adjusted Poc Price
iex_iexequities_deep_snap_v1_6.adjusted_poc_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.adjusted_poc_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.adjusted_poc_price.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.adjusted_poc_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.adjusted_poc_price, range, value, display)

  return offset + length, value
end

-- Auction Book Clearing Price
iex_iexequities_deep_snap_v1_6.auction_book_clearing_price = {}

-- Size: Auction Book Clearing Price
iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.size = 8

-- Display: Auction Book Clearing Price
iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.display = function(value)
  return "Auction Book Clearing Price: "..value
end

-- Translate: Auction Book Clearing Price
iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Auction Book Clearing Price
iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.auction_book_clearing_price, range, value, display)

  return offset + length, value
end

-- Auction Type
iex_iexequities_deep_snap_v1_6.auction_type = {}

-- Size: Auction Type
iex_iexequities_deep_snap_v1_6.auction_type.size = 1

-- Display: Auction Type
iex_iexequities_deep_snap_v1_6.auction_type.display = function(value)
  if value == "O" then
    return "Auction Type: Opening Auction (O)"
  end
  if value == "C" then
    return "Auction Type: Closing Auction (C)"
  end
  if value == "I" then
    return "Auction Type: Ipo Auction (I)"
  end
  if value == "H" then
    return "Auction Type: Halt Auction (H)"
  end
  if value == "V" then
    return "Auction Type: Volatility Auction (V)"
  end

  return "Auction Type: Unknown("..value..")"
end

-- Dissect: Auction Type
iex_iexequities_deep_snap_v1_6.auction_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.auction_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.auction_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.auction_type, range, value, display)

  return offset + length, value
end

-- Authentication Token
iex_iexequities_deep_snap_v1_6.authentication_token = {}

-- Size: Authentication Token
iex_iexequities_deep_snap_v1_6.authentication_token.size = 40

-- Display: Authentication Token
iex_iexequities_deep_snap_v1_6.authentication_token.display = function(value)
  return "Authentication Token: "..value
end

-- Dissect: Authentication Token
iex_iexequities_deep_snap_v1_6.authentication_token.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.authentication_token.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_iexequities_deep_snap_v1_6.authentication_token.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.authentication_token, range, value, display)

  return offset + length, value
end

-- Channel Id
iex_iexequities_deep_snap_v1_6.channel_id = {}

-- Size: Channel Id
iex_iexequities_deep_snap_v1_6.channel_id.size = 4

-- Display: Channel Id
iex_iexequities_deep_snap_v1_6.channel_id.display = function(value)
  return "Channel Id: "..value
end

-- Dissect: Channel Id
iex_iexequities_deep_snap_v1_6.channel_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.channel_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.channel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.channel_id, range, value, display)

  return offset + length, value
end

-- Collar Reference Price
iex_iexequities_deep_snap_v1_6.collar_reference_price = {}

-- Size: Collar Reference Price
iex_iexequities_deep_snap_v1_6.collar_reference_price.size = 8

-- Display: Collar Reference Price
iex_iexequities_deep_snap_v1_6.collar_reference_price.display = function(value)
  return "Collar Reference Price: "..value
end

-- Translate: Collar Reference Price
iex_iexequities_deep_snap_v1_6.collar_reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Collar Reference Price
iex_iexequities_deep_snap_v1_6.collar_reference_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.collar_reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.collar_reference_price.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.collar_reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.collar_reference_price, range, value, display)

  return offset + length, value
end

-- Detail
iex_iexequities_deep_snap_v1_6.detail = {}

-- Size: Detail
iex_iexequities_deep_snap_v1_6.detail.size = 1

-- Display: Detail
iex_iexequities_deep_snap_v1_6.detail.display = function(value)
  if value == " " then
    return "Detail: No Price Test In Place (<whitespace>)"
  end
  if value == "A" then
    return "Detail: Short Sale Price Test Restriction In Effect Due To An Intraday Price Drop In The Security (A)"
  end
  if value == "C" then
    return "Detail: Short Sale Price Test Restriction Remains In Effect From Prior Day (C)"
  end
  if value == "D" then
    return "Detail: Short Sale Price Test Restriction Deactivated (D)"
  end
  if value == "N" then
    return "Detail: Not Available (N)"
  end

  return "Detail: Unknown("..value..")"
end

-- Dissect: Detail
iex_iexequities_deep_snap_v1_6.detail.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.detail.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.detail.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.detail, range, value, display)

  return offset + length, value
end

-- Event Flags
iex_iexequities_deep_snap_v1_6.event_flags = {}

-- Size: Event Flags
iex_iexequities_deep_snap_v1_6.event_flags.size = 1

-- Display: Event Flags
iex_iexequities_deep_snap_v1_6.event_flags.display = function(value)
  if value == 0 then
    return "Event Flags: Order Book Is Processing An Event (0)"
  end
  if value == 1 then
    return "Event Flags: Event Processing Complete (1)"
  end

  return "Event Flags: Unknown("..value..")"
end

-- Dissect: Event Flags
iex_iexequities_deep_snap_v1_6.event_flags.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.event_flags.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_iexequities_deep_snap_v1_6.event_flags.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.event_flags, range, value, display)

  return offset + length, value
end

-- Extension Number
iex_iexequities_deep_snap_v1_6.extension_number = {}

-- Size: Extension Number
iex_iexequities_deep_snap_v1_6.extension_number.size = 1

-- Display: Extension Number
iex_iexequities_deep_snap_v1_6.extension_number.display = function(value)
  return "Extension Number: "..value
end

-- Dissect: Extension Number
iex_iexequities_deep_snap_v1_6.extension_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.extension_number.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.extension_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.extension_number, range, value, display)

  return offset + length, value
end

-- Iex Tp Header
iex_iexequities_deep_snap_v1_6.iex_tp_header = {}

-- Size: Iex Tp Header
iex_iexequities_deep_snap_v1_6.iex_tp_header.size = 1

-- Display: Iex Tp Header
iex_iexequities_deep_snap_v1_6.iex_tp_header.display = function(value)
  return "Iex Tp Header: "..value
end

-- Dissect: Iex Tp Header
iex_iexequities_deep_snap_v1_6.iex_tp_header.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.iex_tp_header.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.iex_tp_header.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_header, range, value, display)

  return offset + length, value
end

-- Iex Tp Message Block Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length = {}

-- Size: Iex Tp Message Block Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length.size = 2

-- Display: Iex Tp Message Block Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length.display = function(value)
  return "Iex Tp Message Block Length: "..value
end

-- Dissect: Iex Tp Message Block Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_message_block_length, range, value, display)

  return offset + length, value
end

-- Iex Tp Message Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_length = {}

-- Size: Iex Tp Message Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_length.size = 2

-- Display: Iex Tp Message Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_length.display = function(value)
  return "Iex Tp Message Length: "..value
end

-- Dissect: Iex Tp Message Length
iex_iexequities_deep_snap_v1_6.iex_tp_message_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.iex_tp_message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.iex_tp_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_message_length, range, value, display)

  return offset + length, value
end

-- Iex Tp Message Type
iex_iexequities_deep_snap_v1_6.iex_tp_message_type = {}

-- Size: Iex Tp Message Type
iex_iexequities_deep_snap_v1_6.iex_tp_message_type.size = 1

-- Display: Iex Tp Message Type
iex_iexequities_deep_snap_v1_6.iex_tp_message_type.display = function(value)
  if value == "S" then
    return "Iex Tp Message Type: System Event Message (S)"
  end
  if value == "D" then
    return "Iex Tp Message Type: Security Directory Message (D)"
  end
  if value == "H" then
    return "Iex Tp Message Type: Trading Status Message (H)"
  end
  if value == "I" then
    return "Iex Tp Message Type: Retail Liquidity Indicator Message (I)"
  end
  if value == "O" then
    return "Iex Tp Message Type: Operational Halt Status Message (O)"
  end
  if value == "P" then
    return "Iex Tp Message Type: Short Sale Price Test Status Message (P)"
  end
  if value == "E" then
    return "Iex Tp Message Type: Security Event Message (E)"
  end
  if value == "8" then
    return "Iex Tp Message Type: Price Level Buy Update Message (8)"
  end
  if value == "5" then
    return "Iex Tp Message Type: Price Level Sell Update Message (5)"
  end
  if value == "T" then
    return "Iex Tp Message Type: Trade Report Message (T)"
  end
  if value == "X" then
    return "Iex Tp Message Type: Official Price Message (X)"
  end
  if value == "B" then
    return "Iex Tp Message Type: Trade Break Message (B)"
  end
  if value == "A" then
    return "Iex Tp Message Type: Auction Information Message (A)"
  end

  return "Iex Tp Message Type: Unknown("..value..")"
end

-- Dissect: Iex Tp Message Type
iex_iexequities_deep_snap_v1_6.iex_tp_message_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.iex_tp_message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.iex_tp_message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.iex_tp_message_type, range, value, display)

  return offset + length, value
end

-- Imbalance Shares
iex_iexequities_deep_snap_v1_6.imbalance_shares = {}

-- Size: Imbalance Shares
iex_iexequities_deep_snap_v1_6.imbalance_shares.size = 4

-- Display: Imbalance Shares
iex_iexequities_deep_snap_v1_6.imbalance_shares.display = function(value)
  return "Imbalance Shares: "..value
end

-- Dissect: Imbalance Shares
iex_iexequities_deep_snap_v1_6.imbalance_shares.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.imbalance_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.imbalance_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.imbalance_shares, range, value, display)

  return offset + length, value
end

-- Imbalance Side
iex_iexequities_deep_snap_v1_6.imbalance_side = {}

-- Size: Imbalance Side
iex_iexequities_deep_snap_v1_6.imbalance_side.size = 1

-- Display: Imbalance Side
iex_iexequities_deep_snap_v1_6.imbalance_side.display = function(value)
  if value == "B" then
    return "Imbalance Side: Buy (B)"
  end
  if value == "S" then
    return "Imbalance Side: Sell (S)"
  end
  if value == "N" then
    return "Imbalance Side: None (N)"
  end

  return "Imbalance Side: Unknown("..value..")"
end

-- Dissect: Imbalance Side
iex_iexequities_deep_snap_v1_6.imbalance_side.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.imbalance_side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.imbalance_side.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.imbalance_side, range, value, display)

  return offset + length, value
end

-- Indicative Clearing Price
iex_iexequities_deep_snap_v1_6.indicative_clearing_price = {}

-- Size: Indicative Clearing Price
iex_iexequities_deep_snap_v1_6.indicative_clearing_price.size = 8

-- Display: Indicative Clearing Price
iex_iexequities_deep_snap_v1_6.indicative_clearing_price.display = function(value)
  return "Indicative Clearing Price: "..value
end

-- Translate: Indicative Clearing Price
iex_iexequities_deep_snap_v1_6.indicative_clearing_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Indicative Clearing Price
iex_iexequities_deep_snap_v1_6.indicative_clearing_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.indicative_clearing_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.indicative_clearing_price.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.indicative_clearing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.indicative_clearing_price, range, value, display)

  return offset + length, value
end

-- Lower Auction Collar
iex_iexequities_deep_snap_v1_6.lower_auction_collar = {}

-- Size: Lower Auction Collar
iex_iexequities_deep_snap_v1_6.lower_auction_collar.size = 8

-- Display: Lower Auction Collar
iex_iexequities_deep_snap_v1_6.lower_auction_collar.display = function(value)
  return "Lower Auction Collar: "..value
end

-- Translate: Lower Auction Collar
iex_iexequities_deep_snap_v1_6.lower_auction_collar.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Lower Auction Collar
iex_iexequities_deep_snap_v1_6.lower_auction_collar.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.lower_auction_collar.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.lower_auction_collar.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.lower_auction_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.lower_auction_collar, range, value, display)

  return offset + length, value
end

-- Luld Tier
iex_iexequities_deep_snap_v1_6.luld_tier = {}

-- Size: Luld Tier
iex_iexequities_deep_snap_v1_6.luld_tier.size = 1

-- Display: Luld Tier
iex_iexequities_deep_snap_v1_6.luld_tier.display = function(value)
  if value == 0 then
    return "Luld Tier: Not Applicable (0)"
  end
  if value == 1 then
    return "Luld Tier: Tier 1 Nms Stock (1)"
  end
  if value == 2 then
    return "Luld Tier: Tier 2 Nms Stock (2)"
  end

  return "Luld Tier: Unknown("..value..")"
end

-- Dissect: Luld Tier
iex_iexequities_deep_snap_v1_6.luld_tier.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.luld_tier.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_iexequities_deep_snap_v1_6.luld_tier.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.luld_tier, range, value, display)

  return offset + length, value
end

-- Message Length
iex_iexequities_deep_snap_v1_6.message_length = {}

-- Size: Message Length
iex_iexequities_deep_snap_v1_6.message_length.size = 2

-- Display: Message Length
iex_iexequities_deep_snap_v1_6.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
iex_iexequities_deep_snap_v1_6.message_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
iex_iexequities_deep_snap_v1_6.message_type = {}

-- Size: Message Type
iex_iexequities_deep_snap_v1_6.message_type.size = 1

-- Display: Message Type
iex_iexequities_deep_snap_v1_6.message_type.display = function(value)
  if value == "r" then
    return "Message Type: Snapshot Request Message (r)"
  end
  if value == "e" then
    return "Message Type: Error Response Message (e)"
  end
  if value == "s" then
    return "Message Type: Snapshot Start Message (s)"
  end
  if value == "d" then
    return "Message Type: Snapshot Data Message (d)"
  end
  if value == "x" then
    return "Message Type: Snapshot End Message (x)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
iex_iexequities_deep_snap_v1_6.message_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.message_type, range, value, display)

  return offset + length, value
end

-- Minimum Sequence Number
iex_iexequities_deep_snap_v1_6.minimum_sequence_number = {}

-- Size: Minimum Sequence Number
iex_iexequities_deep_snap_v1_6.minimum_sequence_number.size = 8

-- Display: Minimum Sequence Number
iex_iexequities_deep_snap_v1_6.minimum_sequence_number.display = function(value)
  return "Minimum Sequence Number: "..value
end

-- Dissect: Minimum Sequence Number
iex_iexequities_deep_snap_v1_6.minimum_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.minimum_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deep_snap_v1_6.minimum_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.minimum_sequence_number, range, value, display)

  return offset + length, value
end

-- Official Price
iex_iexequities_deep_snap_v1_6.official_price = {}

-- Size: Official Price
iex_iexequities_deep_snap_v1_6.official_price.size = 8

-- Display: Official Price
iex_iexequities_deep_snap_v1_6.official_price.display = function(value)
  return "Official Price: "..value
end

-- Translate: Official Price
iex_iexequities_deep_snap_v1_6.official_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Official Price
iex_iexequities_deep_snap_v1_6.official_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.official_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.official_price.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.official_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.official_price, range, value, display)

  return offset + length, value
end

-- Operational Halt Status
iex_iexequities_deep_snap_v1_6.operational_halt_status = {}

-- Size: Operational Halt Status
iex_iexequities_deep_snap_v1_6.operational_halt_status.size = 1

-- Display: Operational Halt Status
iex_iexequities_deep_snap_v1_6.operational_halt_status.display = function(value)
  if value == "O" then
    return "Operational Halt Status: Iex Specific Operational Trading Halt (O)"
  end
  if value == "N" then
    return "Operational Halt Status: Not Operationally Halted On Iex (N)"
  end

  return "Operational Halt Status: Unknown("..value..")"
end

-- Dissect: Operational Halt Status
iex_iexequities_deep_snap_v1_6.operational_halt_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.operational_halt_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.operational_halt_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.operational_halt_status, range, value, display)

  return offset + length, value
end

-- Paired Shares
iex_iexequities_deep_snap_v1_6.paired_shares = {}

-- Size: Paired Shares
iex_iexequities_deep_snap_v1_6.paired_shares.size = 4

-- Display: Paired Shares
iex_iexequities_deep_snap_v1_6.paired_shares.display = function(value)
  return "Paired Shares: "..value
end

-- Dissect: Paired Shares
iex_iexequities_deep_snap_v1_6.paired_shares.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.paired_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.paired_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.paired_shares, range, value, display)

  return offset + length, value
end

-- Price
iex_iexequities_deep_snap_v1_6.price = {}

-- Size: Price
iex_iexequities_deep_snap_v1_6.price.size = 8

-- Display: Price
iex_iexequities_deep_snap_v1_6.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
iex_iexequities_deep_snap_v1_6.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
iex_iexequities_deep_snap_v1_6.price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.price.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.price, range, value, display)

  return offset + length, value
end

-- Price Type
iex_iexequities_deep_snap_v1_6.price_type = {}

-- Size: Price Type
iex_iexequities_deep_snap_v1_6.price_type.size = 1

-- Display: Price Type
iex_iexequities_deep_snap_v1_6.price_type.display = function(value)
  if value == "Q" then
    return "Price Type: Iex Official Opening Price (Q)"
  end
  if value == "M" then
    return "Price Type: Iex Official Closing Price (M)"
  end

  return "Price Type: Unknown("..value..")"
end

-- Dissect: Price Type
iex_iexequities_deep_snap_v1_6.price_type.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.price_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.price_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.price_type, range, value, display)

  return offset + length, value
end

-- Reason
iex_iexequities_deep_snap_v1_6.reason = {}

-- Size: Reason
iex_iexequities_deep_snap_v1_6.reason.size = 4

-- Display: Reason
iex_iexequities_deep_snap_v1_6.reason.display = function(value)
  return "Reason: "..value
end

-- Dissect: Reason
iex_iexequities_deep_snap_v1_6.reason.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.reason.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_iexequities_deep_snap_v1_6.reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.reason, range, value, display)

  return offset + length, value
end

-- Reference Price
iex_iexequities_deep_snap_v1_6.reference_price = {}

-- Size: Reference Price
iex_iexequities_deep_snap_v1_6.reference_price.size = 8

-- Display: Reference Price
iex_iexequities_deep_snap_v1_6.reference_price.display = function(value)
  return "Reference Price: "..value
end

-- Translate: Reference Price
iex_iexequities_deep_snap_v1_6.reference_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Reference Price
iex_iexequities_deep_snap_v1_6.reference_price.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.reference_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.reference_price.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.reference_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.reference_price, range, value, display)

  return offset + length, value
end

-- Reject Reason Code
iex_iexequities_deep_snap_v1_6.reject_reason_code = {}

-- Size: Reject Reason Code
iex_iexequities_deep_snap_v1_6.reject_reason_code.size = 1

-- Display: Reject Reason Code
iex_iexequities_deep_snap_v1_6.reject_reason_code.display = function(value)
  if value == "A" then
    return "Reject Reason Code: Authentication Failure (A)"
  end
  if value == "C" then
    return "Reject Reason Code: Incorrect Channel Id (C)"
  end
  if value == "E" then
    return "Reject Reason Code: Snapshot Request Already Active (E)"
  end
  if value == "Q" then
    return "Reject Reason Code: Quota Exceeded (Q)"
  end
  if value == "R" then
    return "Reject Reason Code: Snapshot Not Yet Available (R)"
  end
  if value == "S" then
    return "Reject Reason Code: Incorrect Session Id (S)"
  end
  if value == "U" then
    return "Reject Reason Code: Unknown Message (U)"
  end

  return "Reject Reason Code: Unknown("..value..")"
end

-- Dissect: Reject Reason Code
iex_iexequities_deep_snap_v1_6.reject_reason_code.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.reject_reason_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.reject_reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.reject_reason_code, range, value, display)

  return offset + length, value
end

-- Retail Liquidity Indicator
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator = {}

-- Size: Retail Liquidity Indicator
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator.size = 1

-- Display: Retail Liquidity Indicator
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator.display = function(value)
  if value == " " then
    return "Retail Liquidity Indicator: Not Applicable (<whitespace>)"
  end
  if value == "A" then
    return "Retail Liquidity Indicator: Buy Interest (A)"
  end
  if value == "B" then
    return "Retail Liquidity Indicator: Sell Interest (B)"
  end
  if value == "C" then
    return "Retail Liquidity Indicator: Buy And Sell Interest (C)"
  end

  return "Retail Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Retail Liquidity Indicator
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.retail_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Round Lot Size
iex_iexequities_deep_snap_v1_6.round_lot_size = {}

-- Size: Round Lot Size
iex_iexequities_deep_snap_v1_6.round_lot_size.size = 4

-- Display: Round Lot Size
iex_iexequities_deep_snap_v1_6.round_lot_size.display = function(value)
  return "Round Lot Size: "..value
end

-- Dissect: Round Lot Size
iex_iexequities_deep_snap_v1_6.round_lot_size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.round_lot_size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.round_lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.round_lot_size, range, value, display)

  return offset + length, value
end

-- Scheduled Auction Time
iex_iexequities_deep_snap_v1_6.scheduled_auction_time = {}

-- Size: Scheduled Auction Time
iex_iexequities_deep_snap_v1_6.scheduled_auction_time.size = 4

-- Display: Scheduled Auction Time
iex_iexequities_deep_snap_v1_6.scheduled_auction_time.display = function(value)
  -- Parse unix seconds timestamp
  return "Scheduled Auction Time: "..os.date("%Y-%m-%d %H:%M:%S.", value)
end

-- Dissect: Scheduled Auction Time
iex_iexequities_deep_snap_v1_6.scheduled_auction_time.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.scheduled_auction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.scheduled_auction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.scheduled_auction_time, range, value, display)

  return offset + length, value
end

-- Security Event
iex_iexequities_deep_snap_v1_6.security_event = {}

-- Size: Security Event
iex_iexequities_deep_snap_v1_6.security_event.size = 1

-- Display: Security Event
iex_iexequities_deep_snap_v1_6.security_event.display = function(value)
  if value == "O" then
    return "Security Event: Opening Process Complete (O)"
  end
  if value == "C" then
    return "Security Event: Closing Process Complete (C)"
  end

  return "Security Event: Unknown("..value..")"
end

-- Dissect: Security Event
iex_iexequities_deep_snap_v1_6.security_event.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.security_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.security_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.security_event, range, value, display)

  return offset + length, value
end

-- Session Id
iex_iexequities_deep_snap_v1_6.session_id = {}

-- Size: Session Id
iex_iexequities_deep_snap_v1_6.session_id.size = 4

-- Display: Session Id
iex_iexequities_deep_snap_v1_6.session_id.display = function(value)
  return "Session Id: "..value
end

-- Dissect: Session Id
iex_iexequities_deep_snap_v1_6.session_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.session_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.session_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.session_id, range, value, display)

  return offset + length, value
end

-- Short Sale Price Test Status
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status = {}

-- Size: Short Sale Price Test Status
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status.size = 1

-- Display: Short Sale Price Test Status
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status.display = function(value)
  if value == 0 then
    return "Short Sale Price Test Status: Not In Effect (0)"
  end
  if value == 1 then
    return "Short Sale Price Test Status: In Effect (1)"
  end

  return "Short Sale Price Test Status: Unknown("..value..")"
end

-- Dissect: Short Sale Price Test Status
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.short_sale_price_test_status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = iex_iexequities_deep_snap_v1_6.short_sale_price_test_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.short_sale_price_test_status, range, value, display)

  return offset + length, value
end

-- Size
iex_iexequities_deep_snap_v1_6.size = {}

-- Size: Size
iex_iexequities_deep_snap_v1_6.size.size = 4

-- Display: Size
iex_iexequities_deep_snap_v1_6.size.display = function(value)
  return "Size: "..value
end

-- Dissect: Size
iex_iexequities_deep_snap_v1_6.size.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.size.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.size.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.size, range, value, display)

  return offset + length, value
end

-- Snapshot Length
iex_iexequities_deep_snap_v1_6.snapshot_length = {}

-- Size: Snapshot Length
iex_iexequities_deep_snap_v1_6.snapshot_length.size = 8

-- Display: Snapshot Length
iex_iexequities_deep_snap_v1_6.snapshot_length.display = function(value)
  return "Snapshot Length: "..value
end

-- Dissect: Snapshot Length
iex_iexequities_deep_snap_v1_6.snapshot_length.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.snapshot_length.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deep_snap_v1_6.snapshot_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_length, range, value, display)

  return offset + length, value
end

-- Snapshot Sequence Number
iex_iexequities_deep_snap_v1_6.snapshot_sequence_number = {}

-- Size: Snapshot Sequence Number
iex_iexequities_deep_snap_v1_6.snapshot_sequence_number.size = 8

-- Display: Snapshot Sequence Number
iex_iexequities_deep_snap_v1_6.snapshot_sequence_number.display = function(value)
  return "Snapshot Sequence Number: "..value
end

-- Dissect: Snapshot Sequence Number
iex_iexequities_deep_snap_v1_6.snapshot_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.snapshot_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deep_snap_v1_6.snapshot_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_sequence_number, range, value, display)

  return offset + length, value
end

-- Symbol
iex_iexequities_deep_snap_v1_6.symbol = {}

-- Size: Symbol
iex_iexequities_deep_snap_v1_6.symbol.size = 8

-- Display: Symbol
iex_iexequities_deep_snap_v1_6.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
iex_iexequities_deep_snap_v1_6.symbol.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = iex_iexequities_deep_snap_v1_6.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.symbol, range, value, display)

  return offset + length, value
end

-- System Event
iex_iexequities_deep_snap_v1_6.system_event = {}

-- Size: System Event
iex_iexequities_deep_snap_v1_6.system_event.size = 1

-- Display: System Event
iex_iexequities_deep_snap_v1_6.system_event.display = function(value)
  if value == "O" then
    return "System Event: Start Of Messages (O)"
  end
  if value == "S" then
    return "System Event: Start Of System Hours (S)"
  end
  if value == "R" then
    return "System Event: Start Of Regular Market Hours (R)"
  end
  if value == "M" then
    return "System Event: End Of Regular Market Hours (M)"
  end
  if value == "E" then
    return "System Event: End Of System Hours (E)"
  end
  if value == "C" then
    return "System Event: End Of Messages (C)"
  end

  return "System Event: Unknown("..value..")"
end

-- Dissect: System Event
iex_iexequities_deep_snap_v1_6.system_event.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.system_event.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.system_event.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.system_event, range, value, display)

  return offset + length, value
end

-- Timestamp
iex_iexequities_deep_snap_v1_6.timestamp = {}

-- Size: Timestamp
iex_iexequities_deep_snap_v1_6.timestamp.size = 8

-- Display: Timestamp
iex_iexequities_deep_snap_v1_6.timestamp.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Timestamp: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Timestamp
iex_iexequities_deep_snap_v1_6.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = iex_iexequities_deep_snap_v1_6.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Trade Id
iex_iexequities_deep_snap_v1_6.trade_id = {}

-- Size: Trade Id
iex_iexequities_deep_snap_v1_6.trade_id.size = 8

-- Display: Trade Id
iex_iexequities_deep_snap_v1_6.trade_id.display = function(value)
  return "Trade Id: "..value
end

-- Dissect: Trade Id
iex_iexequities_deep_snap_v1_6.trade_id.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.trade_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = iex_iexequities_deep_snap_v1_6.trade_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.trade_id, range, value, display)

  return offset + length, value
end

-- Trading Status
iex_iexequities_deep_snap_v1_6.trading_status = {}

-- Size: Trading Status
iex_iexequities_deep_snap_v1_6.trading_status.size = 1

-- Display: Trading Status
iex_iexequities_deep_snap_v1_6.trading_status.display = function(value)
  if value == "H" then
    return "Trading Status: Trading Halted Across All Us Equity Markets (H)"
  end
  if value == "O" then
    return "Trading Status: Trading Halt Released Into An Order Acceptance Period On Iex (O)"
  end
  if value == "P" then
    return "Trading Status: Trading Paused And Order Acceptance Period On Iex (P)"
  end
  if value == "T" then
    return "Trading Status: Trading On Iex (T)"
  end

  return "Trading Status: Unknown("..value..")"
end

-- Dissect: Trading Status
iex_iexequities_deep_snap_v1_6.trading_status.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.trading_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = iex_iexequities_deep_snap_v1_6.trading_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.trading_status, range, value, display)

  return offset + length, value
end

-- Upper Auction Collar
iex_iexequities_deep_snap_v1_6.upper_auction_collar = {}

-- Size: Upper Auction Collar
iex_iexequities_deep_snap_v1_6.upper_auction_collar.size = 8

-- Display: Upper Auction Collar
iex_iexequities_deep_snap_v1_6.upper_auction_collar.display = function(value)
  return "Upper Auction Collar: "..value
end

-- Translate: Upper Auction Collar
iex_iexequities_deep_snap_v1_6.upper_auction_collar.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Upper Auction Collar
iex_iexequities_deep_snap_v1_6.upper_auction_collar.dissect = function(buffer, offset, packet, parent)
  local length = iex_iexequities_deep_snap_v1_6.upper_auction_collar.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = iex_iexequities_deep_snap_v1_6.upper_auction_collar.translate(raw)
  local display = iex_iexequities_deep_snap_v1_6.upper_auction_collar.display(value, buffer, offset, packet, parent)

  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.upper_auction_collar, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Iex IexEquities Deep Snap 1.6
-----------------------------------------------------------------------

-- Snapshot End Message
iex_iexequities_deep_snap_v1_6.snapshot_end_message = {}

-- Size: Snapshot End Message
iex_iexequities_deep_snap_v1_6.snapshot_end_message.size =
  iex_iexequities_deep_snap_v1_6.snapshot_sequence_number.size

-- Display: Snapshot End Message
iex_iexequities_deep_snap_v1_6.snapshot_end_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot End Message
iex_iexequities_deep_snap_v1_6.snapshot_end_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Sequence Number: Long
  index, snapshot_sequence_number = iex_iexequities_deep_snap_v1_6.snapshot_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot End Message
iex_iexequities_deep_snap_v1_6.snapshot_end_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_end_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.snapshot_end_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.snapshot_end_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.snapshot_end_message.fields(buffer, offset, packet, parent)
  end
end

-- Auction Information Message
iex_iexequities_deep_snap_v1_6.auction_information_message = {}

-- Size: Auction Information Message
iex_iexequities_deep_snap_v1_6.auction_information_message.size =
  iex_iexequities_deep_snap_v1_6.auction_type.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.paired_shares.size + 
  iex_iexequities_deep_snap_v1_6.reference_price.size + 
  iex_iexequities_deep_snap_v1_6.indicative_clearing_price.size + 
  iex_iexequities_deep_snap_v1_6.imbalance_shares.size + 
  iex_iexequities_deep_snap_v1_6.imbalance_side.size + 
  iex_iexequities_deep_snap_v1_6.extension_number.size + 
  iex_iexequities_deep_snap_v1_6.scheduled_auction_time.size + 
  iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.size + 
  iex_iexequities_deep_snap_v1_6.collar_reference_price.size + 
  iex_iexequities_deep_snap_v1_6.lower_auction_collar.size + 
  iex_iexequities_deep_snap_v1_6.upper_auction_collar.size

-- Display: Auction Information Message
iex_iexequities_deep_snap_v1_6.auction_information_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Auction Information Message
iex_iexequities_deep_snap_v1_6.auction_information_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Auction Type: Byte
  index, auction_type = iex_iexequities_deep_snap_v1_6.auction_type.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Paired Shares: Integer
  index, paired_shares = iex_iexequities_deep_snap_v1_6.paired_shares.dissect(buffer, index, packet, parent)

  -- Reference Price: Price
  index, reference_price = iex_iexequities_deep_snap_v1_6.reference_price.dissect(buffer, index, packet, parent)

  -- Indicative Clearing Price: Price
  index, indicative_clearing_price = iex_iexequities_deep_snap_v1_6.indicative_clearing_price.dissect(buffer, index, packet, parent)

  -- Imbalance Shares: Integer
  index, imbalance_shares = iex_iexequities_deep_snap_v1_6.imbalance_shares.dissect(buffer, index, packet, parent)

  -- Imbalance Side: Byte
  index, imbalance_side = iex_iexequities_deep_snap_v1_6.imbalance_side.dissect(buffer, index, packet, parent)

  -- Extension Number: Byte
  index, extension_number = iex_iexequities_deep_snap_v1_6.extension_number.dissect(buffer, index, packet, parent)

  -- Scheduled Auction Time: Event Time
  index, scheduled_auction_time = iex_iexequities_deep_snap_v1_6.scheduled_auction_time.dissect(buffer, index, packet, parent)

  -- Auction Book Clearing Price: Price
  index, auction_book_clearing_price = iex_iexequities_deep_snap_v1_6.auction_book_clearing_price.dissect(buffer, index, packet, parent)

  -- Collar Reference Price: Price
  index, collar_reference_price = iex_iexequities_deep_snap_v1_6.collar_reference_price.dissect(buffer, index, packet, parent)

  -- Lower Auction Collar: Price
  index, lower_auction_collar = iex_iexequities_deep_snap_v1_6.lower_auction_collar.dissect(buffer, index, packet, parent)

  -- Upper Auction Collar: Price
  index, upper_auction_collar = iex_iexequities_deep_snap_v1_6.upper_auction_collar.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Auction Information Message
iex_iexequities_deep_snap_v1_6.auction_information_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.auction_information_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.auction_information_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.auction_information_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.auction_information_message.fields(buffer, offset, packet, parent)
  end
end

-- Sale Condition Flags
iex_iexequities_deep_snap_v1_6.sale_condition_flags = {}

-- Size: Sale Condition Flags
iex_iexequities_deep_snap_v1_6.sale_condition_flags.size = 1

-- Display: Sale Condition Flags
iex_iexequities_deep_snap_v1_6.sale_condition_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Singleprice Cross Trade flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Singleprice Cross Trade"
  end
  -- Is Trade Through Exempt flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Trade Through Exempt"
  end
  -- Is Odd Lot flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Odd Lot"
  end
  -- Is Extended Hours flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Extended Hours"
  end
  -- Is Intermarket Sweep flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Intermarket Sweep"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Sale Condition Flags
iex_iexequities_deep_snap_v1_6.sale_condition_flags.bits = function(range, value, packet, parent)

  -- Unused 3: 3 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.unused_3, range, value)

  -- Singleprice Cross Trade: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.singleprice_cross_trade, range, value)

  -- Trade Through Exempt: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.trade_through_exempt, range, value)

  -- Odd Lot: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.odd_lot, range, value)

  -- Extended Hours: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.extended_hours, range, value)

  -- Intermarket Sweep: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.intermarket_sweep, range, value)
end

-- Dissect: Sale Condition Flags
iex_iexequities_deep_snap_v1_6.sale_condition_flags.dissect = function(buffer, offset, packet, parent)
  local size = iex_iexequities_deep_snap_v1_6.sale_condition_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.sale_condition_flags.display(range, value, packet, parent)
  local element = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.sale_condition_flags, range, display)

  if show.structs then
    iex_iexequities_deep_snap_v1_6.sale_condition_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trade Break Message
iex_iexequities_deep_snap_v1_6.trade_break_message = {}

-- Size: Trade Break Message
iex_iexequities_deep_snap_v1_6.trade_break_message.size =
  iex_iexequities_deep_snap_v1_6.sale_condition_flags.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.size.size + 
  iex_iexequities_deep_snap_v1_6.price.size + 
  iex_iexequities_deep_snap_v1_6.trade_id.size

-- Display: Trade Break Message
iex_iexequities_deep_snap_v1_6.trade_break_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Break Message
iex_iexequities_deep_snap_v1_6.trade_break_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_iexequities_deep_snap_v1_6.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deep_snap_v1_6.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deep_snap_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_iexequities_deep_snap_v1_6.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Break Message
iex_iexequities_deep_snap_v1_6.trade_break_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.trade_break_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.trade_break_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.trade_break_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.trade_break_message.fields(buffer, offset, packet, parent)
  end
end

-- Official Price Message
iex_iexequities_deep_snap_v1_6.official_price_message = {}

-- Size: Official Price Message
iex_iexequities_deep_snap_v1_6.official_price_message.size =
  iex_iexequities_deep_snap_v1_6.price_type.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.official_price.size

-- Display: Official Price Message
iex_iexequities_deep_snap_v1_6.official_price_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Official Price Message
iex_iexequities_deep_snap_v1_6.official_price_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Price Type: Byte
  index, price_type = iex_iexequities_deep_snap_v1_6.price_type.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Official Price: Price
  index, official_price = iex_iexequities_deep_snap_v1_6.official_price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Official Price Message
iex_iexequities_deep_snap_v1_6.official_price_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.official_price_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.official_price_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.official_price_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.official_price_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Report Message
iex_iexequities_deep_snap_v1_6.trade_report_message = {}

-- Size: Trade Report Message
iex_iexequities_deep_snap_v1_6.trade_report_message.size =
  iex_iexequities_deep_snap_v1_6.sale_condition_flags.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.size.size + 
  iex_iexequities_deep_snap_v1_6.price.size + 
  iex_iexequities_deep_snap_v1_6.trade_id.size

-- Display: Trade Report Message
iex_iexequities_deep_snap_v1_6.trade_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Report Message
iex_iexequities_deep_snap_v1_6.trade_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sale Condition Flags: Struct of 6 fields
  index, sale_condition_flags = iex_iexequities_deep_snap_v1_6.sale_condition_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deep_snap_v1_6.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deep_snap_v1_6.price.dissect(buffer, index, packet, parent)

  -- Trade Id: Long
  index, trade_id = iex_iexequities_deep_snap_v1_6.trade_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Report Message
iex_iexequities_deep_snap_v1_6.trade_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.trade_report_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.trade_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.trade_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.trade_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Level Sell Update Message
iex_iexequities_deep_snap_v1_6.price_level_sell_update_message = {}

-- Size: Price Level Sell Update Message
iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.size =
  iex_iexequities_deep_snap_v1_6.event_flags.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.size.size + 
  iex_iexequities_deep_snap_v1_6.price.size

-- Display: Price Level Sell Update Message
iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Sell Update Message
iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Flags: Byte (int)
  index, event_flags = iex_iexequities_deep_snap_v1_6.event_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deep_snap_v1_6.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deep_snap_v1_6.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Sell Update Message
iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.price_level_sell_update_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Level Buy Update Message
iex_iexequities_deep_snap_v1_6.price_level_buy_update_message = {}

-- Size: Price Level Buy Update Message
iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.size =
  iex_iexequities_deep_snap_v1_6.event_flags.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.size.size + 
  iex_iexequities_deep_snap_v1_6.price.size

-- Display: Price Level Buy Update Message
iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Level Buy Update Message
iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Event Flags: Byte (int)
  index, event_flags = iex_iexequities_deep_snap_v1_6.event_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Size: Integer
  index, size = iex_iexequities_deep_snap_v1_6.size.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = iex_iexequities_deep_snap_v1_6.price.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Level Buy Update Message
iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.price_level_buy_update_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Event Message
iex_iexequities_deep_snap_v1_6.security_event_message = {}

-- Size: Security Event Message
iex_iexequities_deep_snap_v1_6.security_event_message.size =
  iex_iexequities_deep_snap_v1_6.security_event.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size

-- Display: Security Event Message
iex_iexequities_deep_snap_v1_6.security_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Event Message
iex_iexequities_deep_snap_v1_6.security_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Event: Byte
  index, security_event = iex_iexequities_deep_snap_v1_6.security_event.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Event Message
iex_iexequities_deep_snap_v1_6.security_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.security_event_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.security_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.security_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.security_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Short Sale Price Test Status Message
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message = {}

-- Size: Short Sale Price Test Status Message
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.size =
  iex_iexequities_deep_snap_v1_6.short_sale_price_test_status.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.detail.size

-- Display: Short Sale Price Test Status Message
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Short Sale Price Test Status Message
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Short Sale Price Test Status: Byte (int)
  index, short_sale_price_test_status = iex_iexequities_deep_snap_v1_6.short_sale_price_test_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Detail: Byte
  index, detail = iex_iexequities_deep_snap_v1_6.detail.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Short Sale Price Test Status Message
iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.short_sale_price_test_status_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Operational Halt Status Message
iex_iexequities_deep_snap_v1_6.operational_halt_status_message = {}

-- Size: Operational Halt Status Message
iex_iexequities_deep_snap_v1_6.operational_halt_status_message.size =
  iex_iexequities_deep_snap_v1_6.operational_halt_status.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size

-- Display: Operational Halt Status Message
iex_iexequities_deep_snap_v1_6.operational_halt_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Operational Halt Status Message
iex_iexequities_deep_snap_v1_6.operational_halt_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Operational Halt Status: Byte
  index, operational_halt_status = iex_iexequities_deep_snap_v1_6.operational_halt_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Operational Halt Status Message
iex_iexequities_deep_snap_v1_6.operational_halt_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.operational_halt_status_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.operational_halt_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.operational_halt_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.operational_halt_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Retail Liquidity Indicator Message
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message = {}

-- Size: Retail Liquidity Indicator Message
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.size =
  iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size

-- Display: Retail Liquidity Indicator Message
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Retail Liquidity Indicator Message
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Retail Liquidity Indicator: Byte
  index, retail_liquidity_indicator = iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Retail Liquidity Indicator Message
iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.retail_liquidity_indicator_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Status Message
iex_iexequities_deep_snap_v1_6.trading_status_message = {}

-- Size: Trading Status Message
iex_iexequities_deep_snap_v1_6.trading_status_message.size =
  iex_iexequities_deep_snap_v1_6.trading_status.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.reason.size

-- Display: Trading Status Message
iex_iexequities_deep_snap_v1_6.trading_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Status Message
iex_iexequities_deep_snap_v1_6.trading_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Status: Byte
  index, trading_status = iex_iexequities_deep_snap_v1_6.trading_status.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Reason: String
  index, reason = iex_iexequities_deep_snap_v1_6.reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trading Status Message
iex_iexequities_deep_snap_v1_6.trading_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.trading_status_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.trading_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.trading_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.trading_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Security Directory Flags
iex_iexequities_deep_snap_v1_6.security_directory_flags = {}

-- Size: Security Directory Flags
iex_iexequities_deep_snap_v1_6.security_directory_flags.size = 1

-- Display: Security Directory Flags
iex_iexequities_deep_snap_v1_6.security_directory_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Etp flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Etp"
  end
  -- Is When Issued flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "When Issued"
  end
  -- Is Test Security flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Test Security"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Security Directory Flags
iex_iexequities_deep_snap_v1_6.security_directory_flags.bits = function(range, value, packet, parent)

  -- Unused 5: 5 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.unused_5, range, value)

  -- Etp: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.etp, range, value)

  -- When Issued: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.when_issued, range, value)

  -- Test Security: 1 Bit
  parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.test_security, range, value)
end

-- Dissect: Security Directory Flags
iex_iexequities_deep_snap_v1_6.security_directory_flags.dissect = function(buffer, offset, packet, parent)
  local size = iex_iexequities_deep_snap_v1_6.security_directory_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = iex_iexequities_deep_snap_v1_6.security_directory_flags.display(range, value, packet, parent)
  local element = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.security_directory_flags, range, display)

  if show.structs then
    iex_iexequities_deep_snap_v1_6.security_directory_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Security Directory Message
iex_iexequities_deep_snap_v1_6.security_directory_message = {}

-- Size: Security Directory Message
iex_iexequities_deep_snap_v1_6.security_directory_message.size =
  iex_iexequities_deep_snap_v1_6.security_directory_flags.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size + 
  iex_iexequities_deep_snap_v1_6.symbol.size + 
  iex_iexequities_deep_snap_v1_6.round_lot_size.size + 
  iex_iexequities_deep_snap_v1_6.adjusted_poc_price.size + 
  iex_iexequities_deep_snap_v1_6.luld_tier.size

-- Display: Security Directory Message
iex_iexequities_deep_snap_v1_6.security_directory_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Security Directory Message
iex_iexequities_deep_snap_v1_6.security_directory_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Security Directory Flags: Struct of 4 fields
  index, security_directory_flags = iex_iexequities_deep_snap_v1_6.security_directory_flags.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  -- Symbol: String
  index, symbol = iex_iexequities_deep_snap_v1_6.symbol.dissect(buffer, index, packet, parent)

  -- Round Lot Size: Integer
  index, round_lot_size = iex_iexequities_deep_snap_v1_6.round_lot_size.dissect(buffer, index, packet, parent)

  -- Adjusted Poc Price: Price
  index, adjusted_poc_price = iex_iexequities_deep_snap_v1_6.adjusted_poc_price.dissect(buffer, index, packet, parent)

  -- Luld Tier: Byte (int)
  index, luld_tier = iex_iexequities_deep_snap_v1_6.luld_tier.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Security Directory Message
iex_iexequities_deep_snap_v1_6.security_directory_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.security_directory_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.security_directory_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.security_directory_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.security_directory_message.fields(buffer, offset, packet, parent)
  end
end

-- System Event Message
iex_iexequities_deep_snap_v1_6.system_event_message = {}

-- Size: System Event Message
iex_iexequities_deep_snap_v1_6.system_event_message.size =
  iex_iexequities_deep_snap_v1_6.system_event.size + 
  iex_iexequities_deep_snap_v1_6.timestamp.size

-- Display: System Event Message
iex_iexequities_deep_snap_v1_6.system_event_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Event Message
iex_iexequities_deep_snap_v1_6.system_event_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- System Event: Byte
  index, system_event = iex_iexequities_deep_snap_v1_6.system_event.dissect(buffer, index, packet, parent)

  -- Timestamp: Timestamp
  index, timestamp = iex_iexequities_deep_snap_v1_6.timestamp.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Event Message
iex_iexequities_deep_snap_v1_6.system_event_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.system_event_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.system_event_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.system_event_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.system_event_message.fields(buffer, offset, packet, parent)
  end
end

-- Iex Tp Message Data
iex_iexequities_deep_snap_v1_6.iex_tp_message_data = {}

-- Dissect: Iex Tp Message Data
iex_iexequities_deep_snap_v1_6.iex_tp_message_data.dissect = function(buffer, offset, packet, parent, iex_tp_message_type)
  -- Dissect System Event Message
  if iex_tp_message_type == "S" then
    return iex_iexequities_deep_snap_v1_6.system_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Directory Message
  if iex_tp_message_type == "D" then
    return iex_iexequities_deep_snap_v1_6.security_directory_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trading Status Message
  if iex_tp_message_type == "H" then
    return iex_iexequities_deep_snap_v1_6.trading_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Retail Liquidity Indicator Message
  if iex_tp_message_type == "I" then
    return iex_iexequities_deep_snap_v1_6.retail_liquidity_indicator_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Operational Halt Status Message
  if iex_tp_message_type == "O" then
    return iex_iexequities_deep_snap_v1_6.operational_halt_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Short Sale Price Test Status Message
  if iex_tp_message_type == "P" then
    return iex_iexequities_deep_snap_v1_6.short_sale_price_test_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Security Event Message
  if iex_tp_message_type == "E" then
    return iex_iexequities_deep_snap_v1_6.security_event_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Level Buy Update Message
  if iex_tp_message_type == "8" then
    return iex_iexequities_deep_snap_v1_6.price_level_buy_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Level Sell Update Message
  if iex_tp_message_type == "5" then
    return iex_iexequities_deep_snap_v1_6.price_level_sell_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Report Message
  if iex_tp_message_type == "T" then
    return iex_iexequities_deep_snap_v1_6.trade_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Official Price Message
  if iex_tp_message_type == "X" then
    return iex_iexequities_deep_snap_v1_6.official_price_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Break Message
  if iex_tp_message_type == "B" then
    return iex_iexequities_deep_snap_v1_6.trade_break_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Auction Information Message
  if iex_tp_message_type == "A" then
    return iex_iexequities_deep_snap_v1_6.auction_information_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Snapshot Data Message
iex_iexequities_deep_snap_v1_6.snapshot_data_message = {}

-- Calculate size of: Snapshot Data Message
iex_iexequities_deep_snap_v1_6.snapshot_data_message.size = function(buffer, offset)
  local index = 0

  index = index + iex_iexequities_deep_snap_v1_6.iex_tp_header.size

  index = index + iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length.size

  index = index + iex_iexequities_deep_snap_v1_6.iex_tp_message_length.size

  index = index + iex_iexequities_deep_snap_v1_6.iex_tp_message_type.size

  -- Calculate runtime size of Iex Tp Message Data field
  local iex_tp_message_data_offset = offset + index
  local iex_tp_message_data_type = buffer(iex_tp_message_data_offset - 1, 1):string()
  index = index + iex_iexequities_deep_snap_v1_6.iex_tp_message_data.size(buffer, iex_tp_message_data_offset, iex_tp_message_data_type)

  return index
end

-- Display: Snapshot Data Message
iex_iexequities_deep_snap_v1_6.snapshot_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Data Message
iex_iexequities_deep_snap_v1_6.snapshot_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Iex Tp Header: Byte
  index, iex_tp_header = iex_iexequities_deep_snap_v1_6.iex_tp_header.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Block Length: Integer
  index, iex_tp_message_block_length = iex_iexequities_deep_snap_v1_6.iex_tp_message_block_length.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Length: Integer
  index, iex_tp_message_length = iex_iexequities_deep_snap_v1_6.iex_tp_message_length.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Type: Byte
  index, iex_tp_message_type = iex_iexequities_deep_snap_v1_6.iex_tp_message_type.dissect(buffer, index, packet, parent)

  -- Iex Tp Message Data: Runtime Type with 13 branches
  index = iex_iexequities_deep_snap_v1_6.iex_tp_message_data.dissect(buffer, index, packet, parent, iex_tp_message_type)

  return index
end

-- Dissect: Snapshot Data Message
iex_iexequities_deep_snap_v1_6.snapshot_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_data_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.snapshot_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.snapshot_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.snapshot_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Start Message
iex_iexequities_deep_snap_v1_6.snapshot_start_message = {}

-- Size: Snapshot Start Message
iex_iexequities_deep_snap_v1_6.snapshot_start_message.size =
  iex_iexequities_deep_snap_v1_6.snapshot_length.size

-- Display: Snapshot Start Message
iex_iexequities_deep_snap_v1_6.snapshot_start_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Start Message
iex_iexequities_deep_snap_v1_6.snapshot_start_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Snapshot Length: Long
  index, snapshot_length = iex_iexequities_deep_snap_v1_6.snapshot_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Start Message
iex_iexequities_deep_snap_v1_6.snapshot_start_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_start_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.snapshot_start_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.snapshot_start_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.snapshot_start_message.fields(buffer, offset, packet, parent)
  end
end

-- Error Response Message
iex_iexequities_deep_snap_v1_6.error_response_message = {}

-- Size: Error Response Message
iex_iexequities_deep_snap_v1_6.error_response_message.size =
  iex_iexequities_deep_snap_v1_6.reject_reason_code.size

-- Display: Error Response Message
iex_iexequities_deep_snap_v1_6.error_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Error Response Message
iex_iexequities_deep_snap_v1_6.error_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reject Reason Code: Byte
  index, reject_reason_code = iex_iexequities_deep_snap_v1_6.reject_reason_code.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Error Response Message
iex_iexequities_deep_snap_v1_6.error_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.error_response_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.error_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.error_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.error_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Snapshot Request Message
iex_iexequities_deep_snap_v1_6.snapshot_request_message = {}

-- Size: Snapshot Request Message
iex_iexequities_deep_snap_v1_6.snapshot_request_message.size =
  iex_iexequities_deep_snap_v1_6.authentication_token.size + 
  iex_iexequities_deep_snap_v1_6.channel_id.size + 
  iex_iexequities_deep_snap_v1_6.session_id.size + 
  iex_iexequities_deep_snap_v1_6.minimum_sequence_number.size

-- Display: Snapshot Request Message
iex_iexequities_deep_snap_v1_6.snapshot_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Snapshot Request Message
iex_iexequities_deep_snap_v1_6.snapshot_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Authentication Token: String
  index, authentication_token = iex_iexequities_deep_snap_v1_6.authentication_token.dissect(buffer, index, packet, parent)

  -- Channel Id: Integer
  index, channel_id = iex_iexequities_deep_snap_v1_6.channel_id.dissect(buffer, index, packet, parent)

  -- Session Id: Integer
  index, session_id = iex_iexequities_deep_snap_v1_6.session_id.dissect(buffer, index, packet, parent)

  -- Minimum Sequence Number: Long
  index, minimum_sequence_number = iex_iexequities_deep_snap_v1_6.minimum_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Snapshot Request Message
iex_iexequities_deep_snap_v1_6.snapshot_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.snapshot_request_message, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.snapshot_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.snapshot_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.snapshot_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Data
iex_iexequities_deep_snap_v1_6.message_data = {}

-- Dissect: Message Data
iex_iexequities_deep_snap_v1_6.message_data.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Snapshot Request Message
  if message_type == "r" then
    return iex_iexequities_deep_snap_v1_6.snapshot_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Error Response Message
  if message_type == "e" then
    return iex_iexequities_deep_snap_v1_6.error_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Start Message
  if message_type == "s" then
    return iex_iexequities_deep_snap_v1_6.snapshot_start_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot Data Message
  if message_type == "d" then
    return iex_iexequities_deep_snap_v1_6.snapshot_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Snapshot End Message
  if message_type == "x" then
    return iex_iexequities_deep_snap_v1_6.snapshot_end_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
iex_iexequities_deep_snap_v1_6.message_header = {}

-- Size: Message Header
iex_iexequities_deep_snap_v1_6.message_header.size =
  iex_iexequities_deep_snap_v1_6.message_length.size + 
  iex_iexequities_deep_snap_v1_6.message_type.size

-- Display: Message Header
iex_iexequities_deep_snap_v1_6.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
iex_iexequities_deep_snap_v1_6.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = iex_iexequities_deep_snap_v1_6.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: 1 Byte Ascii String Enum with 5 values
  index, message_type = iex_iexequities_deep_snap_v1_6.message_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
iex_iexequities_deep_snap_v1_6.message_header.dissect = function(buffer, offset, packet, parent)
  if show.headers then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.message_header, buffer(offset, 0))
    local index = iex_iexequities_deep_snap_v1_6.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = iex_iexequities_deep_snap_v1_6.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return iex_iexequities_deep_snap_v1_6.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
iex_iexequities_deep_snap_v1_6.message = {}

-- Display: Message
iex_iexequities_deep_snap_v1_6.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
iex_iexequities_deep_snap_v1_6.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 2 fields
  index, message_header = iex_iexequities_deep_snap_v1_6.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 1, 1):string()

  -- Message Data: Runtime Type with 5 branches
  index = iex_iexequities_deep_snap_v1_6.message_data.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Message
iex_iexequities_deep_snap_v1_6.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_iex_iexequities_deep_snap_v1_6.fields.message, buffer(offset, 0))
    local current = iex_iexequities_deep_snap_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = iex_iexequities_deep_snap_v1_6.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    iex_iexequities_deep_snap_v1_6.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < iex_iexequities_deep_snap_v1_6.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index, 2):le_uint() + 2

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
iex_iexequities_deep_snap_v1_6.packet = {}

-- Verify required size of Tcp packet
iex_iexequities_deep_snap_v1_6.packet.requiredsize = function(buffer)
  return buffer:len() >= iex_iexequities_deep_snap_v1_6.message_header.size
end

-- Dissect Packet
iex_iexequities_deep_snap_v1_6.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = iex_iexequities_deep_snap_v1_6.message.dissect(buffer, index, packet, parent, size_of_message)
    else
      -- More bytes needed, so set packet information
      packet.desegment_offset = index
      packet.desegment_len = -(available)

      break
    end
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_iex_iexequities_deep_snap_v1_6.init()
end

-- Dissector for Iex IexEquities Deep Snap 1.6
function omi_iex_iexequities_deep_snap_v1_6.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_iex_iexequities_deep_snap_v1_6.name

  -- Dissect protocol
  local protocol = parent:add(omi_iex_iexequities_deep_snap_v1_6, buffer(), omi_iex_iexequities_deep_snap_v1_6.description, "("..buffer:len().." Bytes)")
  return iex_iexequities_deep_snap_v1_6.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Iex IexEquities Deep Snap 1.6 (Tcp)
local function omi_iex_iexequities_deep_snap_v1_6_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not iex_iexequities_deep_snap_v1_6.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_iex_iexequities_deep_snap_v1_6
  omi_iex_iexequities_deep_snap_v1_6.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Iex IexEquities Deep Snap 1.6
omi_iex_iexequities_deep_snap_v1_6:register_heuristic("tcp", omi_iex_iexequities_deep_snap_v1_6_tcp_heuristic)

-- Register Iex IexEquities Deep Snap 1.6 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_iex_iexequities_deep_snap_v1_6)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Investors Exchange
--   Version: 1.6
--   Date: Tuesday, June 2, 2026
--   Specification: IEX DEEP SNAP Specification.pdf
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
