-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseFo OrderEntry NnfTrimmed 9.50 Protocol
local omi_nse_nsefo_orderentry_nnftrimmed_v9_50 = Proto("Omi.Nse.NseFo.OrderEntry.NnfTrimmed.v9.50", "Nse NseFo OrderEntry NnfTrimmed 9.50")

-- Protocol table
local nse_nsefo_orderentry_nnftrimmed_v9_50 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseFo OrderEntry NnfTrimmed 9.50 Fields
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.account_number = ProtoField.new("Account Number", "nse.nsefo.orderentry.nnftrimmed.v9.50.accountnumber", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.activity_time = ProtoField.new("Activity Time", "nse.nsefo.orderentry.nnftrimmed.v9.50.activitytime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.activity_type = ProtoField.new("Activity Type", "nse.nsefo.orderentry.nnftrimmed.v9.50.activitytype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.algo_id = ProtoField.new("Algo Id", "nse.nsefo.orderentry.nnftrimmed.v9.50.algoid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.book_type_char_1 = ProtoField.new("Book Type Char 1", "nse.nsefo.orderentry.nnftrimmed.v9.50.booktypechar1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.book_type_short_2 = ProtoField.new("Book Type Short 2", "nse.nsefo.orderentry.nnftrimmed.v9.50.booktypeshort2", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.branch_id = ProtoField.new("Branch Id", "nse.nsefo.orderentry.nnftrimmed.v9.50.branchid", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.broker_id = ProtoField.new("Broker Id", "nse.nsefo.orderentry.nnftrimmed.v9.50.brokerid", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nse.nsefo.orderentry.nnftrimmed.v9.50.buysellindicator", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.closeout_flag = ProtoField.new("Closeout Flag", "nse.nsefo.orderentry.nnftrimmed.v9.50.closeoutflag", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.contract_desc_tr = ProtoField.new("Contract Desc Tr", "nse.nsefo.orderentry.nnftrimmed.v9.50.contractdesctr", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.disclosed_volume = ProtoField.new("Disclosed Volume", "nse.nsefo.orderentry.nnftrimmed.v9.50.disclosedvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.disclosed_volume_remaining = ProtoField.new("Disclosed Volume Remaining", "nse.nsefo.orderentry.nnftrimmed.v9.50.disclosedvolumeremaining", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nsefo.orderentry.nnftrimmed.v9.50.entrydatetime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.error_code = ProtoField.new("Error Code", "nse.nsefo.orderentry.nnftrimmed.v9.50.errorcode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nsefo.orderentry.nnftrimmed.v9.50.expirydate", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.fill_number = ProtoField.new("Fill Number", "nse.nsefo.orderentry.nnftrimmed.v9.50.fillnumber", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.fill_price = ProtoField.new("Fill Price", "nse.nsefo.orderentry.nnftrimmed.v9.50.fillprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.fill_quantity = ProtoField.new("Fill Quantity", "nse.nsefo.orderentry.nnftrimmed.v9.50.fillquantity", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.filler = ProtoField.new("Filler", "nse.nsefo.orderentry.nnftrimmed.v9.50.filler", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.good_till_date = ProtoField.new("Good Till Date", "nse.nsefo.orderentry.nnftrimmed.v9.50.goodtilldate", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nsefo.orderentry.nnftrimmed.v9.50.instrumentname", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nsefo.orderentry.nnftrimmed.v9.50.lastactivityreference", ftypes.INT64)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.last_modified = ProtoField.new("Last Modified", "nse.nsefo.orderentry.nnftrimmed.v9.50.lastmodified", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.log_time = ProtoField.new("Log Time", "nse.nsefo.orderentry.nnftrimmed.v9.50.logtime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.message_length = ProtoField.new("Message Length", "nse.nsefo.orderentry.nnftrimmed.v9.50.messagelength", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.modified_cancelled_by = ProtoField.new("Modified Cancelled By", "nse.nsefo.orderentry.nnftrimmed.v9.50.modifiedcancelledby", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nsefo.orderentry.nnftrimmed.v9.50.nnffield", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.open_close = ProtoField.new("Open Close", "nse.nsefo.orderentry.nnftrimmed.v9.50.openclose", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.option_type = ProtoField.new("Option Type", "nse.nsefo.orderentry.nnftrimmed.v9.50.optiontype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.order_number = ProtoField.new("Order Number", "nse.nsefo.orderentry.nnftrimmed.v9.50.ordernumber", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.original_volume = ProtoField.new("Original Volume", "nse.nsefo.orderentry.nnftrimmed.v9.50.originalvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.pan = ProtoField.new("Pan", "nse.nsefo.orderentry.nnftrimmed.v9.50.pan", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.participant = ProtoField.new("Participant", "nse.nsefo.orderentry.nnftrimmed.v9.50.participant", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.price = ProtoField.new("Price", "nse.nsefo.orderentry.nnftrimmed.v9.50.price", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.pro_client_indicator = ProtoField.new("Pro Client Indicator", "nse.nsefo.orderentry.nnftrimmed.v9.50.proclientindicator", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reason_code = ProtoField.new("Reason Code", "nse.nsefo.orderentry.nnftrimmed.v9.50.reasoncode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reference = ProtoField.new("Reference", "nse.nsefo.orderentry.nnftrimmed.v9.50.reference", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.remaining_volume = ProtoField.new("Remaining Volume", "nse.nsefo.orderentry.nnftrimmed.v9.50.remainingvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsefo.orderentry.nnftrimmed.v9.50.reserved1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nsefo.orderentry.nnftrimmed.v9.50.reserved2", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_24 = ProtoField.new("Reserved 24", "nse.nsefo.orderentry.nnftrimmed.v9.50.reserved24", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_32 = ProtoField.new("Reserved 32", "nse.nsefo.orderentry.nnftrimmed.v9.50.reserved32", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nsefo.orderentry.nnftrimmed.v9.50.reserved52", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nsefo.orderentry.nnftrimmed.v9.50.responseordernumber", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.settlor = ProtoField.new("Settlor", "nse.nsefo.orderentry.nnftrimmed.v9.50.settlor", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.strike_price = ProtoField.new("Strike Price", "nse.nsefo.orderentry.nnftrimmed.v9.50.strikeprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.symbol = ProtoField.new("Symbol", "nse.nsefo.orderentry.nnftrimmed.v9.50.symbol", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.time_stamp = ProtoField.new("Time Stamp", "nse.nsefo.orderentry.nnftrimmed.v9.50.timestamp", ftypes.INT64)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nsefo.orderentry.nnftrimmed.v9.50.timestamp1", ftypes.INT64)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsefo.orderentry.nnftrimmed.v9.50.timestamp2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.token = ProtoField.new("Token", "nse.nsefo.orderentry.nnftrimmed.v9.50.token", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.token_no = ProtoField.new("Token No", "nse.nsefo.orderentry.nnftrimmed.v9.50.tokenno", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.total_volume_remaining = ProtoField.new("Total Volume Remaining", "nse.nsefo.orderentry.nnftrimmed.v9.50.totalvolumeremaining", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.trader_id = ProtoField.new("Trader Id", "nse.nsefo.orderentry.nnftrimmed.v9.50.traderid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsefo.orderentry.nnftrimmed.v9.50.transactioncode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.user_id = ProtoField.new("User Id", "nse.nsefo.orderentry.nnftrimmed.v9.50.userid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.volume = ProtoField.new("Volume", "nse.nsefo.orderentry.nnftrimmed.v9.50.volume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nsefo.orderentry.nnftrimmed.v9.50.volumefilledtoday", ftypes.INT32)

-- Nse NseFo OrderEntry NnfTrimmed 9.50 Headers
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.message = ProtoField.new("Message", "nse.nsefo.orderentry.nnftrimmed.v9.50.message", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.packet = ProtoField.new("Packet", "nse.nsefo.orderentry.nnftrimmed.v9.50.packet", ftypes.STRING)

-- Nse NseFo OrderEntry 9.50 Application Messages
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.board_lot_in_trimmed_message = ProtoField.new("Board Lot In Trimmed Message", "nse.nsefo.orderentry.nnftrimmed.v9.50.boardlotintrimmedmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.order_confirmation_trimmed_message = ProtoField.new("Order Confirmation Trimmed Message", "nse.nsefo.orderentry.nnftrimmed.v9.50.orderconfirmationtrimmedmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.order_modify_cancel_trimmed_message = ProtoField.new("Order Modify Cancel Trimmed Message", "nse.nsefo.orderentry.nnftrimmed.v9.50.ordermodifycanceltrimmedmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.quick_acknowledgement_message = ProtoField.new("Quick Acknowledgement Message", "nse.nsefo.orderentry.nnftrimmed.v9.50.quickacknowledgementmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.trade_confirmation_trimmed_message = ProtoField.new("Trade Confirmation Trimmed Message", "nse.nsefo.orderentry.nnftrimmed.v9.50.tradeconfirmationtrimmedmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseFo OrderEntry NnfTrimmed 9.50 Element Dissection Options
show.application_messages = true
show.structs = true

-- Register Nse NseFo OrderEntry NnfTrimmed 9.50 Show Options
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_nse_nsefo_orderentry_nnftrimmed_v9_50.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")

-- Handle changed preferences
function omi_nse_nsefo_orderentry_nnftrimmed_v9_50.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsefo_orderentry_nnftrimmed_v9_50.prefs.show_application_messages then
    show.application_messages = omi_nse_nsefo_orderentry_nnftrimmed_v9_50.prefs.show_application_messages
  end
  if show.structs ~= omi_nse_nsefo_orderentry_nnftrimmed_v9_50.prefs.show_structs then
    show.structs = omi_nse_nsefo_orderentry_nnftrimmed_v9_50.prefs.show_structs
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
-- Nse NseFo OrderEntry NnfTrimmed 9.50 Fields
-----------------------------------------------------------------------

-- Account Number
nse_nsefo_orderentry_nnftrimmed_v9_50.account_number = {}

-- Size: Account Number
nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.size = 10

-- Display: Account Number
nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.account_number, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time = {}

-- Size: Activity Time
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time.size = 4

-- Display: Activity Time
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time.display = function(value)
  return "Activity Time: "..value
end

-- Dissect: Activity Time
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.activity_time, range, value, display)

  return offset + length, value
end

-- Activity Type
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type = {}

-- Size: Activity Type
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type.size = 2

-- Display: Activity Type
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type.display = function(value)
  return "Activity Type: "..value
end

-- Dissect: Activity Type
nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Algo Id
nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id = {}

-- Size: Algo Id
nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.size = 4

-- Display: Algo Id
nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.display = function(value)
  return "Algo Id: "..value
end

-- Dissect: Algo Id
nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Book Type Char 1
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1 = {}

-- Size: Book Type Char 1
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1.size = 1

-- Display: Book Type Char 1
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1.display = function(value)
  return "Book Type Char 1: "..value
end

-- Dissect: Book Type Char 1
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.book_type_char_1, range, value, display)

  return offset + length, value
end

-- Book Type Short 2
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2 = {}

-- Size: Book Type Short 2
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.size = 2

-- Display: Book Type Short 2
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.display = function(value)
  return "Book Type Short 2: "..value
end

-- Dissect: Book Type Short 2
nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.book_type_short_2, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id = {}

-- Size: Branch Id
nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.size = 2

-- Display: Branch Id
nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id = {}

-- Size: Broker Id
nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.size = 5

-- Display: Broker Id
nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.size = 2

-- Display: Buy Sell Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.display = function(value)
  return "Buy Sell Indicator: "..value
end

-- Dissect: Buy Sell Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- Closeout Flag
nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag = {}

-- Size: Closeout Flag
nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag.size = 1

-- Display: Closeout Flag
nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag.display = function(value)
  return "Closeout Flag: "..value
end

-- Dissect: Closeout Flag
nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.closeout_flag, range, value, display)

  return offset + length, value
end

-- Disclosed Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume = {}

-- Size: Disclosed Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.size = 4

-- Display: Disclosed Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.display = function(value)
  return "Disclosed Volume: "..value
end

-- Dissect: Disclosed Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.disclosed_volume, range, value, display)

  return offset + length, value
end

-- Disclosed Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining = {}

-- Size: Disclosed Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.size = 4

-- Display: Disclosed Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.display = function(value)
  return "Disclosed Volume Remaining: "..value
end

-- Dissect: Disclosed Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.disclosed_volume_remaining, range, value, display)

  return offset + length, value
end

-- Entry Date Time
nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time = {}

-- Size: Entry Date Time
nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.size = 4

-- Display: Entry Date Time
nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.display = function(value)
  return "Entry Date Time: "..value
end

-- Dissect: Entry Date Time
nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.entry_date_time, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nsefo_orderentry_nnftrimmed_v9_50.error_code = {}

-- Size: Error Code
nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.size = 2

-- Display: Error Code
nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.display = function(value)
  return "Error Code: "..value
end

-- Dissect: Error Code
nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.error_code, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date = {}

-- Size: Expiry Date
nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date.size = 4

-- Display: Expiry Date
nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number = {}

-- Size: Fill Number
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number.size = 4

-- Display: Fill Number
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price = {}

-- Size: Fill Price
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.size = 4

-- Display: Fill Price
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.translate(raw)
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Quantity
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity = {}

-- Size: Fill Quantity
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity.size = 4

-- Display: Fill Quantity
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity.display = function(value)
  return "Fill Quantity: "..value
end

-- Dissect: Fill Quantity
nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.fill_quantity, range, value, display)

  return offset + length, value
end

-- Filler
nse_nsefo_orderentry_nnftrimmed_v9_50.filler = {}

-- Size: Filler
nse_nsefo_orderentry_nnftrimmed_v9_50.filler.size = 4

-- Display: Filler
nse_nsefo_orderentry_nnftrimmed_v9_50.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nsefo_orderentry_nnftrimmed_v9_50.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.filler.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.filler, range, value, display)

  return offset + length, value
end

-- Good Till Date
nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date = {}

-- Size: Good Till Date
nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.size = 4

-- Display: Good Till Date
nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.display = function(value)
  return "Good Till Date: "..value
end

-- Dissect: Good Till Date
nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.good_till_date, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name = {}

-- Size: Instrument Name
nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name.size = 6

-- Display: Instrument Name
nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified = {}

-- Size: Last Modified
nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.size = 4

-- Display: Last Modified
nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.display = function(value)
  return "Last Modified: "..value
end

-- Dissect: Last Modified
nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.last_modified, range, value, display)

  return offset + length, value
end

-- Log Time
nse_nsefo_orderentry_nnftrimmed_v9_50.log_time = {}

-- Size: Log Time
nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.size = 4

-- Display: Log Time
nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.display = function(value)
  return "Log Time: "..value
end

-- Dissect: Log Time
nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.log_time, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsefo_orderentry_nnftrimmed_v9_50.message_length = {}

-- Size: Message Length
nse_nsefo_orderentry_nnftrimmed_v9_50.message_length.size = 2

-- Display: Message Length
nse_nsefo_orderentry_nnftrimmed_v9_50.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsefo_orderentry_nnftrimmed_v9_50.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.message_length, range, value, display)

  return offset + length, value
end

-- Modified Cancelled By
nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by = {}

-- Size: Modified Cancelled By
nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.size = 1

-- Display: Modified Cancelled By
nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.display = function(value)
  return "Modified Cancelled By: "..value
end

-- Dissect: Modified Cancelled By
nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.modified_cancelled_by, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field = {}

-- Size: Nnf Field
nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.size = 8

-- Display: Nnf Field
nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.display = function(value)
  return "Nnf Field: "..value
end

-- Dissect: Nnf Field
nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- Open Close
nse_nsefo_orderentry_nnftrimmed_v9_50.open_close = {}

-- Size: Open Close
nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.size = 1

-- Display: Open Close
nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.display = function(value)
  return "Open Close: "..value
end

-- Dissect: Open Close
nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.open_close, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nsefo_orderentry_nnftrimmed_v9_50.option_type = {}

-- Size: Option Type
nse_nsefo_orderentry_nnftrimmed_v9_50.option_type.size = 2

-- Display: Option Type
nse_nsefo_orderentry_nnftrimmed_v9_50.option_type.display = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
nse_nsefo_orderentry_nnftrimmed_v9_50.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.option_type, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.order_number = {}

-- Size: Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.size = 8

-- Display: Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.order_number, range, value, display)

  return offset + length, value
end

-- Original Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume = {}

-- Size: Original Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume.size = 4

-- Display: Original Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Pan
nse_nsefo_orderentry_nnftrimmed_v9_50.pan = {}

-- Size: Pan
nse_nsefo_orderentry_nnftrimmed_v9_50.pan.size = 10

-- Display: Pan
nse_nsefo_orderentry_nnftrimmed_v9_50.pan.display = function(value)
  return "Pan: "..value
end

-- Dissect: Pan
nse_nsefo_orderentry_nnftrimmed_v9_50.pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.pan, range, value, display)

  return offset + length, value
end

-- Participant
nse_nsefo_orderentry_nnftrimmed_v9_50.participant = {}

-- Size: Participant
nse_nsefo_orderentry_nnftrimmed_v9_50.participant.size = 12

-- Display: Participant
nse_nsefo_orderentry_nnftrimmed_v9_50.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nse_nsefo_orderentry_nnftrimmed_v9_50.participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.participant, range, value, display)

  return offset + length, value
end

-- Price
nse_nsefo_orderentry_nnftrimmed_v9_50.price = {}

-- Size: Price
nse_nsefo_orderentry_nnftrimmed_v9_50.price.size = 4

-- Display: Price
nse_nsefo_orderentry_nnftrimmed_v9_50.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsefo_orderentry_nnftrimmed_v9_50.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsefo_orderentry_nnftrimmed_v9_50.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnftrimmed_v9_50.price.translate(raw)
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.price, range, value, display)

  return offset + length, value
end

-- Pro Client Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator = {}

-- Size: Pro Client Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.size = 2

-- Display: Pro Client Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.display = function(value)
  return "Pro Client Indicator: "..value
end

-- Dissect: Pro Client Indicator
nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.pro_client_indicator, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code = {}

-- Size: Reason Code
nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.size = 2

-- Display: Reason Code
nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.display = function(value)
  return "Reason Code: "..value
end

-- Dissect: Reason Code
nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.reference = {}

-- Size: Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.reference.size = 4

-- Display: Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nse_nsefo_orderentry_nnftrimmed_v9_50.reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.reference.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reference, range, value, display)

  return offset + length, value
end

-- Remaining Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume = {}

-- Size: Remaining Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume.size = 4

-- Display: Remaining Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume.display = function(value)
  return "Remaining Volume: "..value
end

-- Dissect: Remaining Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.remaining_volume, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1 = {}

-- Size: Reserved 1
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size = 1

-- Display: Reserved 1
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 2
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2 = {}

-- Size: Reserved 2
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.size = 2

-- Display: Reserved 2
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 24
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24 = {}

-- Size: Reserved 24
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24.size = 24

-- Display: Reserved 24
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24.display = function(value)
  return "Reserved 24: "..value
end

-- Dissect: Reserved 24
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_24, range, value, display)

  return offset + length, value
end

-- Reserved 32
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32 = {}

-- Size: Reserved 32
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32.size = 32

-- Display: Reserved 32
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Reserved 52
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52 = {}

-- Size: Reserved 52
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.size = 52

-- Display: Reserved 52
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.reserved_52, range, value, display)

  return offset + length, value
end

-- Response Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number = {}

-- Size: Response Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number.size = 8

-- Display: Response Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number.display = function(value)
  return "Response Order Number: "..value
end

-- Dissect: Response Order Number
nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nsefo_orderentry_nnftrimmed_v9_50.settlor = {}

-- Size: Settlor
nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.size = 12

-- Display: Settlor
nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.settlor, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price = {}

-- Size: Strike Price
nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.size = 4

-- Display: Strike Price
nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.translate = function(raw)
  return raw/100
end

-- Dissect: Strike Price
nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.translate(raw)
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nsefo_orderentry_nnftrimmed_v9_50.symbol = {}

-- Size: Symbol
nse_nsefo_orderentry_nnftrimmed_v9_50.symbol.size = 10

-- Display: Symbol
nse_nsefo_orderentry_nnftrimmed_v9_50.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nsefo_orderentry_nnftrimmed_v9_50.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.symbol, range, value, display)

  return offset + length, value
end

-- Time Stamp
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp = {}

-- Size: Time Stamp
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.size = 8

-- Display: Time Stamp
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.display = function(value)
  return "Time Stamp: "..value
end

-- Dissect: Time Stamp
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.time_stamp, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.display = function(value)
  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.size = 1

-- Display: Time Stamp 2
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Token
nse_nsefo_orderentry_nnftrimmed_v9_50.token = {}

-- Size: Token
nse_nsefo_orderentry_nnftrimmed_v9_50.token.size = 4

-- Display: Token
nse_nsefo_orderentry_nnftrimmed_v9_50.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsefo_orderentry_nnftrimmed_v9_50.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.token, range, value, display)

  return offset + length, value
end

-- Token No
nse_nsefo_orderentry_nnftrimmed_v9_50.token_no = {}

-- Size: Token No
nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.size = 4

-- Display: Token No
nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.display = function(value)
  return "Token No: "..value
end

-- Dissect: Token No
nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.token_no, range, value, display)

  return offset + length, value
end

-- Total Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining = {}

-- Size: Total Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.size = 4

-- Display: Total Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.display = function(value)
  return "Total Volume Remaining: "..value
end

-- Dissect: Total Volume Remaining
nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.total_volume_remaining, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id = {}

-- Size: Trader Id
nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.size = 4

-- Display: Trader Id
nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code = {}

-- Size: Transaction Code
nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.size = 2

-- Display: Transaction Code
nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.display = function(value)
  if value == 20000 then
    return "Transaction Code: Board Lot In Trimmed Message (20000)"
  end
  if value == 20400 then
    return "Transaction Code: Board Lot In Trimmed Message (20400)"
  end
  if value == 20040 then
    return "Transaction Code: Order Modify Cancel Trimmed Message (20040)"
  end
  if value == 20060 then
    return "Transaction Code: Order Modify Cancel Trimmed Message (20060)"
  end
  if value == 20070 then
    return "Transaction Code: Order Modify Cancel Trimmed Message (20070)"
  end
  if value == 20402 then
    return "Transaction Code: Order Modify Cancel Trimmed Message (20402)"
  end
  if value == 20404 then
    return "Transaction Code: Order Modify Cancel Trimmed Message (20404)"
  end
  if value == 20073 then
    return "Transaction Code: Order Confirmation Trimmed Message (20073)"
  end
  if value == 20074 then
    return "Transaction Code: Order Confirmation Trimmed Message (20074)"
  end
  if value == 20075 then
    return "Transaction Code: Order Confirmation Trimmed Message (20075)"
  end
  if value == 20222 then
    return "Transaction Code: Trade Confirmation Trimmed Message (20222)"
  end
  if value == 20401 then
    return "Transaction Code: Quick Acknowledgement Message (20401)"
  end
  if value == 20403 then
    return "Transaction Code: Quick Acknowledgement Message (20403)"
  end
  if value == 20405 then
    return "Transaction Code: Quick Acknowledgement Message (20405)"
  end
  if value == 20407 then
    return "Transaction Code: Quick Acknowledgement Message (20407)"
  end
  if value == 20409 then
    return "Transaction Code: Quick Acknowledgement Message (20409)"
  end
  if value == 20411 then
    return "Transaction Code: Quick Acknowledgement Message (20411)"
  end
  if value == 20413 then
    return "Transaction Code: Quick Acknowledgement Message (20413)"
  end
  if value == 20415 then
    return "Transaction Code: Quick Acknowledgement Message (20415)"
  end
  if value == 20417 then
    return "Transaction Code: Quick Acknowledgement Message (20417)"
  end

  return "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- User Id
nse_nsefo_orderentry_nnftrimmed_v9_50.user_id = {}

-- Size: User Id
nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.size = 4

-- Display: User Id
nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.user_id, range, value, display)

  return offset + length, value
end

-- Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.volume = {}

-- Size: Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.volume.size = 4

-- Display: Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nsefo_orderentry_nnftrimmed_v9_50.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.volume_filled_today, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseFo OrderEntry NnfTrimmed 9.50
-----------------------------------------------------------------------

-- Quick Acknowledgement Message
nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message = {}

-- Size: Quick Acknowledgement Message
nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.size =
  nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reference.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.message_length.size

-- Display: Quick Acknowledgement Message
nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Quick Acknowledgement Message
nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Time Stamp: LONG LONG
  index, time_stamp = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.dissect(buffer, index, packet, parent)

  -- Reference: LONG
  index, reference = nse_nsefo_orderentry_nnftrimmed_v9_50.reference.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsefo_orderentry_nnftrimmed_v9_50.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Quick Acknowledgement Message
nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.quick_acknowledgement_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.fields(buffer, offset, packet, parent)
  end
end

-- Contract Desc Tr
nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr = {}

-- Size: Contract Desc Tr
nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.size =
  nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.symbol.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.option_type.size

-- Display: Contract Desc Tr
nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Desc Tr
nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsefo_orderentry_nnftrimmed_v9_50.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsefo_orderentry_nnftrimmed_v9_50.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsefo_orderentry_nnftrimmed_v9_50.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsefo_orderentry_nnftrimmed_v9_50.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsefo_orderentry_nnftrimmed_v9_50.option_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Desc Tr
nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.contract_desc_tr, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message = {}

-- Size: Trade Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.size =
  nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.price.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.token.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.participant.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.pan.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.size

-- Display: Trade Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Time: LONG
  index, log_time = nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Time Stamp: LONG LONG
  index, time_stamp = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: LONG LONG
  index, time_stamp_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsefo_orderentry_nnftrimmed_v9_50.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Original Volume: LONG
  index, original_volume = nse_nsefo_orderentry_nnftrimmed_v9_50.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: LONG
  index, remaining_volume = nse_nsefo_orderentry_nnftrimmed_v9_50.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_orderentry_nnftrimmed_v9_50.price.dissect(buffer, index, packet, parent)

  -- St Order Flags
  index, st_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Quantity: LONG
  index, fill_quantity = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_quantity.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsefo_orderentry_nnftrimmed_v9_50.fill_price.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsefo_orderentry_nnftrimmed_v9_50.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsefo_orderentry_nnftrimmed_v9_50.activity_time.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsefo_orderentry_nnftrimmed_v9_50.token.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.dissect(buffer, index, packet, parent)

  -- Book Type Char 1: CHAR
  index, book_type_char_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_char_1.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_orderentry_nnftrimmed_v9_50.participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags
  index, additional_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_orderentry_nnftrimmed_v9_50.pan.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.trade_confirmation_trimmed_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message = {}

-- Size: Order Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.size =
  nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.price.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.filler.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.pan.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.size

-- Display: Order Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Log Time: LONG
  index, log_time = nse_nsefo_orderentry_nnftrimmed_v9_50.log_time.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsefo_orderentry_nnftrimmed_v9_50.error_code.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: LONG LONG
  index, time_stamp_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.dissect(buffer, index, packet, parent)

  -- Token No: LONG
  index, token_no = nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nsefo_orderentry_nnftrimmed_v9_50.closeout_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.dissect(buffer, index, packet, parent)

  -- Book Type Short 2: SHORT
  index, book_type_short_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsefo_orderentry_nnftrimmed_v9_50.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_orderentry_nnftrimmed_v9_50.price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags
  index, st_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Additional Order Flags
  index, additional_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Filler: LONG
  index, filler = nse_nsefo_orderentry_nnftrimmed_v9_50.filler.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.dissect(buffer, index, packet, parent)

  -- Time Stamp: LONG LONG
  index, time_stamp = nse_nsefo_orderentry_nnftrimmed_v9_50.time_stamp.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_orderentry_nnftrimmed_v9_50.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Confirmation Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.order_confirmation_trimmed_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modify Cancel Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message = {}

-- Size: Order Modify Cancel Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.size =
  nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.price.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.filler.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.pan.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24.size

-- Display: Order Modify Cancel Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modify Cancel Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nsefo_orderentry_nnftrimmed_v9_50.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Token No: LONG
  index, token_no = nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_orderentry_nnftrimmed_v9_50.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.dissect(buffer, index, packet, parent)

  -- Book Type Short 2: SHORT
  index, book_type_short_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nsefo_orderentry_nnftrimmed_v9_50.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsefo_orderentry_nnftrimmed_v9_50.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsefo_orderentry_nnftrimmed_v9_50.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_orderentry_nnftrimmed_v9_50.price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsefo_orderentry_nnftrimmed_v9_50.entry_date_time.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsefo_orderentry_nnftrimmed_v9_50.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags
  index, st_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Additional Order Flags
  index, additional_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Filler: LONG
  index, filler = nse_nsefo_orderentry_nnftrimmed_v9_50.filler.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_orderentry_nnftrimmed_v9_50.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsefo_orderentry_nnftrimmed_v9_50.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_24.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Modify Cancel Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.order_modify_cancel_trimmed_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Board Lot In Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message = {}

-- Size: Board Lot In Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.size =
  nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.volume.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.price.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.filler.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.pan.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32.size

-- Display: Board Lot In Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Board Lot In Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnftrimmed_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_orderentry_nnftrimmed_v9_50.reason_code.dissect(buffer, index, packet, parent)

  -- Token No: LONG
  index, token_no = nse_nsefo_orderentry_nnftrimmed_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc Tr: Struct of 5 fields
  index, contract_desc_tr = nse_nsefo_orderentry_nnftrimmed_v9_50.contract_desc_tr.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_orderentry_nnftrimmed_v9_50.account_number.dissect(buffer, index, packet, parent)

  -- Book Type Short 2: SHORT
  index, book_type_short_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.book_type_short_2.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nsefo_orderentry_nnftrimmed_v9_50.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nsefo_orderentry_nnftrimmed_v9_50.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsefo_orderentry_nnftrimmed_v9_50.volume.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_orderentry_nnftrimmed_v9_50.price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsefo_orderentry_nnftrimmed_v9_50.good_till_date.dissect(buffer, index, packet, parent)

  -- St Order Flags
  index, st_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnftrimmed_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnftrimmed_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnftrimmed_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_orderentry_nnftrimmed_v9_50.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_orderentry_nnftrimmed_v9_50.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nsefo_orderentry_nnftrimmed_v9_50.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Additional Order Flags
  index, additional_order_flags = nse_nsefo_orderentry_nnftrimmed_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Filler: LONG
  index, filler = nse_nsefo_orderentry_nnftrimmed_v9_50.filler.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_orderentry_nnftrimmed_v9_50.nnf_field.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_orderentry_nnftrimmed_v9_50.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsefo_orderentry_nnftrimmed_v9_50.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: SHORT
  index, reserved_2 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Reserved 32: CHAR
  index, reserved_32 = nse_nsefo_orderentry_nnftrimmed_v9_50.reserved_32.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Board Lot In Trimmed Message
nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.board_lot_in_trimmed_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nsefo_orderentry_nnftrimmed_v9_50.message_payload = {}

-- Dissect: Message Payload
nse_nsefo_orderentry_nnftrimmed_v9_50.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  -- Dissect Board Lot In Trimmed Message
  if transaction_code == 20000 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Board Lot In Trimmed Message
  if transaction_code == 20400 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.board_lot_in_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Cancel Trimmed Message
  if transaction_code == 20040 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Cancel Trimmed Message
  if transaction_code == 20060 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Cancel Trimmed Message
  if transaction_code == 20070 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Cancel Trimmed Message
  if transaction_code == 20402 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modify Cancel Trimmed Message
  if transaction_code == 20404 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_modify_cancel_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Confirmation Trimmed Message
  if transaction_code == 20073 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Confirmation Trimmed Message
  if transaction_code == 20074 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Confirmation Trimmed Message
  if transaction_code == 20075 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.order_confirmation_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Confirmation Trimmed Message
  if transaction_code == 20222 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.trade_confirmation_trimmed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20401 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20403 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20405 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20407 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20409 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20411 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20413 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20415 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Quick Acknowledgement Message
  if transaction_code == 20417 then
    return nse_nsefo_orderentry_nnftrimmed_v9_50.quick_acknowledgement_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message
nse_nsefo_orderentry_nnftrimmed_v9_50.message = {}

-- Calculate size of: Message
nse_nsefo_orderentry_nnftrimmed_v9_50.message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.size

  -- Calculate runtime size of Message Payload field
  local message_payload_offset = offset + index
  local message_payload_type = buffer(message_payload_offset - 2, 2):int()
  index = index + nse_nsefo_orderentry_nnftrimmed_v9_50.message_payload.size(buffer, message_payload_offset, message_payload_type)

  return index
end

-- Display: Message
nse_nsefo_orderentry_nnftrimmed_v9_50.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nsefo_orderentry_nnftrimmed_v9_50.message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.dissect(buffer, index, packet, parent)

  -- Message Payload: Runtime Type with 5 branches
  index = nse_nsefo_orderentry_nnftrimmed_v9_50.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Message
nse_nsefo_orderentry_nnftrimmed_v9_50.message.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50.fields.message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnftrimmed_v9_50.message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnftrimmed_v9_50.message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnftrimmed_v9_50.message.fields(buffer, offset, packet, parent)
  end
end

-- Packet
nse_nsefo_orderentry_nnftrimmed_v9_50.packet = {}

-- Verify required size of Tcp packet
nse_nsefo_orderentry_nnftrimmed_v9_50.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_orderentry_nnftrimmed_v9_50.transaction_code.size
end

-- Dissect Packet
nse_nsefo_orderentry_nnftrimmed_v9_50.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  local message_index = 0
  while index < end_of_payload do
    message_index = message_index + 1
    index, message = nse_nsefo_orderentry_nnftrimmed_v9_50.message.dissect(buffer, index, packet, parent)
  end

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nse_nsefo_orderentry_nnftrimmed_v9_50.init()
end

-- Dissector for Nse NseFo OrderEntry NnfTrimmed 9.50
function omi_nse_nsefo_orderentry_nnftrimmed_v9_50.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nse_nsefo_orderentry_nnftrimmed_v9_50.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsefo_orderentry_nnftrimmed_v9_50, buffer(), omi_nse_nsefo_orderentry_nnftrimmed_v9_50.description, "("..buffer:len().." Bytes)")
  return nse_nsefo_orderentry_nnftrimmed_v9_50.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseFo OrderEntry NnfTrimmed 9.50 (Tcp)
local function omi_nse_nsefo_orderentry_nnftrimmed_v9_50_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_orderentry_nnftrimmed_v9_50.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_orderentry_nnftrimmed_v9_50
  omi_nse_nsefo_orderentry_nnftrimmed_v9_50.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseFo OrderEntry NnfTrimmed 9.50
omi_nse_nsefo_orderentry_nnftrimmed_v9_50:register_heuristic("tcp", omi_nse_nsefo_orderentry_nnftrimmed_v9_50_tcp_heuristic)

-- Register Nse NseFo OrderEntry NnfTrimmed 9.50 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsefo_orderentry_nnftrimmed_v9_50)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: National Stock Exchange of India Ltd
--   Version: 9.50
--   Date: Monday, July 27, 2026
--   Specification: TP_FO_Trimmed_NNF_PROTOCOL_9_50_20260727174217.pdf
--
-- Script:
--   Generator: 1.5.0.0
--   Compiler: 2.0
--   License: Public/GPLv3
--   Authors: Omi Developers
--
-- Copyright (c) 2026 Scaled Sources LLC.
--   https://www.scaledsources.com
--
-- This dissector code is contributed to The Open Markets Initiative under
-- the license noted above.
--   https://openmarketsinitiative.com
--
-- Protocol Compiler technologies used to produce this file are
-- the subject of patents owned by Scaled Sources LLC.  Those patent
-- rights are retained and are not transferred by this contribution:
--   https://patents.google.com/patent/US20240129382A1/en
--   https://patents.google.com/patent/US20240419416A1/en
--
-----------------------------------------------------------------------
