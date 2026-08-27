-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nyse NyseEquities BinaryGateway PillarStream 5.8 Protocol
local omi_nyse_nyseequities_binarygateway_pillarstream_v5_8 = Proto("Omi.Nyse.NyseEquities.BinaryGateway.PillarStream.v5.8", "Nyse NyseEquities BinaryGateway PillarStream 5.8")

-- Protocol table
local nyse_nyseequities_binarygateway_pillarstream_v5_8 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nyse NyseEquities BinaryGateway PillarStream 5.8 Fields
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.access = ProtoField.new("Access", "nyse.nyseequities.binarygateway.pillarstream.v5.8.access", ftypes.UINT8)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.bitfield_order_instructions_u_12816 = ProtoField.new("Bitfield Order Instructions U 12816", "nyse.nyseequities.binarygateway.pillarstream.v5.8.bitfieldorderinstructionsu12816", ftypes.BYTES)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "nyse.nyseequities.binarygateway.pillarstream.v5.8.clordid", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.clearing_account = ProtoField.new("Clearing Account", "nyse.nyseequities.binarygateway.pillarstream.v5.8.clearingaccount", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.clearing_firm = ProtoField.new("Clearing Firm", "nyse.nyseequities.binarygateway.pillarstream.v5.8.clearingfirm", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.deliver_to_comp_id = ProtoField.new("Deliver To Comp Id", "nyse.nyseequities.binarygateway.pillarstream.v5.8.delivertocompid", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.end_seq = ProtoField.new("End Seq", "nyse.nyseequities.binarygateway.pillarstream.v5.8.endseq", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.max_floor = ProtoField.new("Max Floor", "nyse.nyseequities.binarygateway.pillarstream.v5.8.maxfloor", ftypes.UINT32)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mic = ProtoField.new("Mic", "nyse.nyseequities.binarygateway.pillarstream.v5.8.mic", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.min_qty = ProtoField.new("Min Qty", "nyse.nyseequities.binarygateway.pillarstream.v5.8.minqty", ftypes.UINT32)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mmid = ProtoField.new("Mmid", "nyse.nyseequities.binarygateway.pillarstream.v5.8.mmid", ftypes.UINT32)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mode = ProtoField.new("Mode", "nyse.nyseequities.binarygateway.pillarstream.v5.8.mode", ftypes.UINT8)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mp_sub_id = ProtoField.new("Mp Sub Id", "nyse.nyseequities.binarygateway.pillarstream.v5.8.mpsubid", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mpid = ProtoField.new("Mpid", "nyse.nyseequities.binarygateway.pillarstream.v5.8.mpid", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.msg_header = ProtoField.new("Msg Header", "nyse.nyseequities.binarygateway.pillarstream.v5.8.msgheader", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.msg_length = ProtoField.new("Msg Length", "nyse.nyseequities.binarygateway.pillarstream.v5.8.msglength", ftypes.UINT16)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.msg_type = ProtoField.new("Msg Type", "nyse.nyseequities.binarygateway.pillarstream.v5.8.msgtype", ftypes.UINT16)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.next_seq = ProtoField.new("Next Seq", "nyse.nyseequities.binarygateway.pillarstream.v5.8.nextseq", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.optional_data = ProtoField.new("Optional Data", "nyse.nyseequities.binarygateway.pillarstream.v5.8.optionaldata", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.optional_order_add_on = ProtoField.new("Optional Order Add On", "nyse.nyseequities.binarygateway.pillarstream.v5.8.optionalorderaddon", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.order_qty = ProtoField.new("Order Qty", "nyse.nyseequities.binarygateway.pillarstream.v5.8.orderqty", ftypes.UINT32)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "nyse.nyseequities.binarygateway.pillarstream.v5.8.origclordid", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.password = ProtoField.new("Password", "nyse.nyseequities.binarygateway.pillarstream.v5.8.password", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.price = ProtoField.new("Price", "nyse.nyseequities.binarygateway.pillarstream.v5.8.price", ftypes.DOUBLE)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.reserved_4 = ProtoField.new("Reserved 4", "nyse.nyseequities.binarygateway.pillarstream.v5.8.reserved4", ftypes.BYTES)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq = ProtoField.new("Seq", "nyse.nyseequities.binarygateway.pillarstream.v5.8.seq", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_header = ProtoField.new("Seq Msg Header", "nyse.nyseequities.binarygateway.pillarstream.v5.8.seqmsgheader", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_id = ProtoField.new("Seq Msg Id", "nyse.nyseequities.binarygateway.pillarstream.v5.8.seqmsgid", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_length = ProtoField.new("Seq Msg Length", "nyse.nyseequities.binarygateway.pillarstream.v5.8.seqmsglength", ftypes.UINT16)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_type = ProtoField.new("Seq Msg Type", "nyse.nyseequities.binarygateway.pillarstream.v5.8.seqmsgtype", ftypes.UINT16)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sess = ProtoField.new("Sess", "nyse.nyseequities.binarygateway.pillarstream.v5.8.sess", ftypes.UINT32)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.start_seq = ProtoField.new("Start Seq", "nyse.nyseequities.binarygateway.pillarstream.v5.8.startseq", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.status = ProtoField.new("Status", "nyse.nyseequities.binarygateway.pillarstream.v5.8.status", ftypes.UINT8)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.stop_px = ProtoField.new("Stop Px", "nyse.nyseequities.binarygateway.pillarstream.v5.8.stoppx", ftypes.DOUBLE)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.stream_id = ProtoField.new("Stream Id", "nyse.nyseequities.binarygateway.pillarstream.v5.8.streamid", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sub_msg_header = ProtoField.new("Sub Msg Header", "nyse.nyseequities.binarygateway.pillarstream.v5.8.submsgheader", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sub_msg_length = ProtoField.new("Sub Msg Length", "nyse.nyseequities.binarygateway.pillarstream.v5.8.submsglength", ftypes.UINT16)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sub_msg_type = ProtoField.new("Sub Msg Type", "nyse.nyseequities.binarygateway.pillarstream.v5.8.submsgtype", ftypes.UINT16)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.symbol_id = ProtoField.new("Symbol Id", "nyse.nyseequities.binarygateway.pillarstream.v5.8.symbolid", ftypes.UINT32)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.timestamp = ProtoField.new("Timestamp", "nyse.nyseequities.binarygateway.pillarstream.v5.8.timestamp", ftypes.UINT64)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.user = ProtoField.new("User", "nyse.nyseequities.binarygateway.pillarstream.v5.8.user", ftypes.UINT32)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.user_data = ProtoField.new("User Data", "nyse.nyseequities.binarygateway.pillarstream.v5.8.userdata", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.username = ProtoField.new("Username", "nyse.nyseequities.binarygateway.pillarstream.v5.8.username", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.version = ProtoField.new("Version", "nyse.nyseequities.binarygateway.pillarstream.v5.8.version", ftypes.STRING)

-- Nyse NyseEquities BinaryGateway 5.8 Session Messages
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.close = ProtoField.new("Close", "nyse.nyseequities.binarygateway.pillarstream.v5.8.close", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.close_response = ProtoField.new("Close Response", "nyse.nyseequities.binarygateway.pillarstream.v5.8.closeresponse", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.heartbeat = ProtoField.new("Heartbeat", "nyse.nyseequities.binarygateway.pillarstream.v5.8.heartbeat", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.login_message = ProtoField.new("Login Message", "nyse.nyseequities.binarygateway.pillarstream.v5.8.loginmessage", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.login_response = ProtoField.new("Login Response", "nyse.nyseequities.binarygateway.pillarstream.v5.8.loginresponse", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.open = ProtoField.new("Open", "nyse.nyseequities.binarygateway.pillarstream.v5.8.open", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.open_response = ProtoField.new("Open Response", "nyse.nyseequities.binarygateway.pillarstream.v5.8.openresponse", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg = ProtoField.new("Seq Msg", "nyse.nyseequities.binarygateway.pillarstream.v5.8.seqmsg", ftypes.STRING)
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.stream_avail = ProtoField.new("Stream Avail", "nyse.nyseequities.binarygateway.pillarstream.v5.8.streamavail", ftypes.STRING)

-- Nyse NyseEquities BinaryGateway 5.8 Application Messages
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.new_order_single_and_cancel_replace_request_message = ProtoField.new("New Order Single And Cancel Replace Request Message", "nyse.nyseequities.binarygateway.pillarstream.v5.8.newordersingleandcancelreplacerequestmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nyse NyseEquities BinaryGateway PillarStream 5.8 Element Dissection Options
show.session_messages = true
show.structs = true
show.application_messages = true

-- Register Nyse NyseEquities BinaryGateway PillarStream 5.8 Show Options
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_session_messages = Pref.bool("Show Session Messages", show.session_messages, "Parse and add Session Messages to protocol tree")
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_application_messages then
    show.application_messages = omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_application_messages
  end
  if show.session_messages ~= omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_session_messages then
    show.session_messages = omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_session_messages
  end
  if show.structs ~= omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_structs then
    show.structs = omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.prefs.show_structs
  end
end


-----------------------------------------------------------------------
-- Nyse NyseEquities BinaryGateway PillarStream 5.8 Fields
-----------------------------------------------------------------------

-- Access
nyse_nyseequities_binarygateway_pillarstream_v5_8.access = {}

-- Size: Access
nyse_nyseequities_binarygateway_pillarstream_v5_8.access.size = 1

-- Display: Access
nyse_nyseequities_binarygateway_pillarstream_v5_8.access.display = function(value)
  return "Access: "..value
end

-- Dissect: Access
nyse_nyseequities_binarygateway_pillarstream_v5_8.access.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.access.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.access.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.access, range, value, display)

  return offset + length, value
end

-- Bitfield Order Instructions U 12816
nyse_nyseequities_binarygateway_pillarstream_v5_8.bitfield_order_instructions_u_12816 = {}

-- Size: Bitfield Order Instructions U 12816
nyse_nyseequities_binarygateway_pillarstream_v5_8.bitfield_order_instructions_u_12816.size = 16

-- Display: Bitfield Order Instructions U 12816
nyse_nyseequities_binarygateway_pillarstream_v5_8.bitfield_order_instructions_u_12816.display = function(value)
  return "Bitfield Order Instructions U 12816: "..value
end

-- Dissect: Bitfield Order Instructions U 12816
nyse_nyseequities_binarygateway_pillarstream_v5_8.bitfield_order_instructions_u_12816.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.bitfield_order_instructions_u_12816.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.bitfield_order_instructions_u_12816.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.bitfield_order_instructions_u_12816, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.cl_ord_id = {}

-- Size: Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.cl_ord_id.size = 8

-- Display: Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account = {}

-- Size: Clearing Account
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account.size = 5

-- Display: Clearing Account
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Account: No Value"
  end

  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm = {}

-- Size: Clearing Firm
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm.size = 5

-- Display: Clearing Firm
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Clearing Firm: No Value"
  end

  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Deliver To Comp Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id = {}

-- Size: Deliver To Comp Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id.size = 5

-- Display: Deliver To Comp Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Deliver To Comp Id: No Value"
  end

  return "Deliver To Comp Id: "..value
end

-- Dissect: Deliver To Comp Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.deliver_to_comp_id, range, value, display)

  return offset + length, value
end

-- End Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.end_seq = {}

-- Size: End Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.end_seq.size = 8

-- Display: End Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.end_seq.display = function(value)
  return "End Seq: "..value
end

-- Dissect: End Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.end_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.end_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.end_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.end_seq, range, value, display)

  return offset + length, value
end

-- Max Floor
nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor = {}

-- Size: Max Floor
nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor.size = 4

-- Display: Max Floor
nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Mic
nyse_nyseequities_binarygateway_pillarstream_v5_8.mic = {}

-- Size: Mic
nyse_nyseequities_binarygateway_pillarstream_v5_8.mic.size = 4

-- Display: Mic
nyse_nyseequities_binarygateway_pillarstream_v5_8.mic.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mic: No Value"
  end

  return "Mic: "..value
end

-- Dissect: Mic
nyse_nyseequities_binarygateway_pillarstream_v5_8.mic.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.mic.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.mic.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mic, range, value, display)

  return offset + length, value
end

-- Min Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.min_qty = {}

-- Size: Min Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.min_qty.size = 4

-- Display: Min Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Mmid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mmid = {}

-- Size: Mmid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mmid.size = 4

-- Display: Mmid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mmid.display = function(value)
  return "Mmid: "..value
end

-- Dissect: Mmid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mmid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.mmid.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.mmid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mmid, range, value, display)

  return offset + length, value
end

-- Mode
nyse_nyseequities_binarygateway_pillarstream_v5_8.mode = {}

-- Size: Mode
nyse_nyseequities_binarygateway_pillarstream_v5_8.mode.size = 1

-- Display: Mode
nyse_nyseequities_binarygateway_pillarstream_v5_8.mode.display = function(value)
  return "Mode: "..value
end

-- Dissect: Mode
nyse_nyseequities_binarygateway_pillarstream_v5_8.mode.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.mode.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.mode.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mode, range, value, display)

  return offset + length, value
end

-- Mp Sub Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.mp_sub_id = {}

-- Size: Mp Sub Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.mp_sub_id.size = 1

-- Display: Mp Sub Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.mp_sub_id.display = function(value)
  return "Mp Sub Id: "..value
end

-- Dissect: Mp Sub Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.mp_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.mp_sub_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.mp_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mp_sub_id, range, value, display)

  return offset + length, value
end

-- Mpid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mpid = {}

-- Size: Mpid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mpid.size = 4

-- Display: Mpid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mpid.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Mpid: No Value"
  end

  return "Mpid: "..value
end

-- Dissect: Mpid
nyse_nyseequities_binarygateway_pillarstream_v5_8.mpid.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.mpid.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.mpid, range, value, display)

  return offset + length, value
end

-- Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length = {}

-- Size: Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length.size = 2

-- Display: Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length.display = function(value)
  return "Msg Length: "..value
end

-- Dissect: Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.msg_length, range, value, display)

  return offset + length, value
end

-- Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type = {}

-- Size: Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.size = 2

-- Display: Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.display = function(value)
  if value == 0x0201 then
    return "Msg Type: Login (0x0201)"
  end
  if value == 0x0202 then
    return "Msg Type: Login Response (0x0202)"
  end
  if value == 0x0203 then
    return "Msg Type: Stream Avail (0x0203)"
  end
  if value == 0x0204 then
    return "Msg Type: Heartbeat (0x0204)"
  end
  if value == 0x0205 then
    return "Msg Type: Open (0x0205)"
  end
  if value == 0x0206 then
    return "Msg Type: Open Response (0x0206)"
  end
  if value == 0x0207 then
    return "Msg Type: Close (0x0207)"
  end
  if value == 0x0208 then
    return "Msg Type: Close Response (0x0208)"
  end
  if value == 0x0905 then
    return "Msg Type: Seq Msg (0x0905)"
  end

  return "Msg Type: Unknown("..value..")"
end

-- Dissect: Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.msg_type, range, value, display)

  return offset + length, value
end

-- Next Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.next_seq = {}

-- Size: Next Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.next_seq.size = 8

-- Display: Next Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.next_seq.display = function(value)
  return "Next Seq: "..value
end

-- Dissect: Next Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.next_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.next_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.next_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.next_seq, range, value, display)

  return offset + length, value
end

-- Optional Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data = {}

-- Size: Optional Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data.size = 16

-- Display: Optional Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Optional Data: No Value"
  end

  return "Optional Data: "..value
end

-- Dissect: Optional Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.optional_data, range, value, display)

  return offset + length, value
end

-- Order Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.order_qty = {}

-- Size: Order Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.order_qty.size = 4

-- Display: Order Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
nyse_nyseequities_binarygateway_pillarstream_v5_8.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Password
nyse_nyseequities_binarygateway_pillarstream_v5_8.password = {}

-- Size: Password
nyse_nyseequities_binarygateway_pillarstream_v5_8.password.size = 32

-- Display: Password
nyse_nyseequities_binarygateway_pillarstream_v5_8.password.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Password: No Value"
  end

  return "Password: "..value
end

-- Dissect: Password
nyse_nyseequities_binarygateway_pillarstream_v5_8.password.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.password.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.password, range, value, display)

  return offset + length, value
end

-- Price
nyse_nyseequities_binarygateway_pillarstream_v5_8.price = {}

-- Size: Price
nyse_nyseequities_binarygateway_pillarstream_v5_8.price.size = 8

-- Display: Price
nyse_nyseequities_binarygateway_pillarstream_v5_8.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nyse_nyseequities_binarygateway_pillarstream_v5_8.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
nyse_nyseequities_binarygateway_pillarstream_v5_8.price.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_nyseequities_binarygateway_pillarstream_v5_8.price.translate(raw)
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.price, range, value, display)

  return offset + length, value
end

-- Reserved 4
nyse_nyseequities_binarygateway_pillarstream_v5_8.reserved_4 = {}

-- Size: Reserved 4
nyse_nyseequities_binarygateway_pillarstream_v5_8.reserved_4.size = 4

-- Display: Reserved 4
nyse_nyseequities_binarygateway_pillarstream_v5_8.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nyse_nyseequities_binarygateway_pillarstream_v5_8.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.reserved_4.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq = {}

-- Size: Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq.size = 8

-- Display: Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq.display = function(value)
  return "Seq: "..value
end

-- Dissect: Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq, range, value, display)

  return offset + length, value
end

-- Seq Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length = {}

-- Size: Seq Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length.size = 2

-- Display: Seq Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length.display = function(value)
  return "Seq Msg Length: "..value
end

-- Dissect: Seq Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_length, range, value, display)

  return offset + length, value
end

-- Seq Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type = {}

-- Size: Seq Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type.size = 2

-- Display: Seq Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type.display = function(value)
  if value == 0x0240 then
    return "Seq Msg Type: New Order Single And Cancel Replace Request Message (0x0240)"
  end

  return "Seq Msg Type: Unknown("..value..")"
end

-- Dissect: Seq Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_type, range, value, display)

  return offset + length, value
end

-- Sess
nyse_nyseequities_binarygateway_pillarstream_v5_8.sess = {}

-- Size: Sess
nyse_nyseequities_binarygateway_pillarstream_v5_8.sess.size = 4

-- Display: Sess
nyse_nyseequities_binarygateway_pillarstream_v5_8.sess.display = function(value)
  return "Sess: "..value
end

-- Dissect: Sess
nyse_nyseequities_binarygateway_pillarstream_v5_8.sess.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.sess.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.sess.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sess, range, value, display)

  return offset + length, value
end

-- Start Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.start_seq = {}

-- Size: Start Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.start_seq.size = 8

-- Display: Start Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.start_seq.display = function(value)
  return "Start Seq: "..value
end

-- Dissect: Start Seq
nyse_nyseequities_binarygateway_pillarstream_v5_8.start_seq.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.start_seq.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.start_seq.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.start_seq, range, value, display)

  return offset + length, value
end

-- Status
nyse_nyseequities_binarygateway_pillarstream_v5_8.status = {}

-- Size: Status
nyse_nyseequities_binarygateway_pillarstream_v5_8.status.size = 1

-- Display: Status
nyse_nyseequities_binarygateway_pillarstream_v5_8.status.display = function(value)
  if value == 0 then
    return "Status: Request Processed Successfully (0)"
  end
  if value == 18 then
    return "Status: Not Logged In (18)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nyse_nyseequities_binarygateway_pillarstream_v5_8.status.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.status.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.status, range, value, display)

  return offset + length, value
end

-- Stop Px
nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px = {}

-- Size: Stop Px
nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.size = 8

-- Display: Stop Px
nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Stop Px
nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.translate(raw)
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Sub Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length = {}

-- Size: Sub Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length.size = 2

-- Display: Sub Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length.display = function(value)
  return "Sub Msg Length: "..value
end

-- Dissect: Sub Msg Length
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sub_msg_length, range, value, display)

  return offset + length, value
end

-- Sub Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type = {}

-- Size: Sub Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type.size = 2

-- Display: Sub Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type.display = function(value)
  return "Sub Msg Type: "..value
end

-- Dissect: Sub Msg Type
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sub_msg_type, range, value, display)

  return offset + length, value
end

-- Symbol Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.symbol_id = {}

-- Size: Symbol Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.symbol_id.size = 4

-- Display: Symbol Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Timestamp
nyse_nyseequities_binarygateway_pillarstream_v5_8.timestamp = {}

-- Size: Timestamp
nyse_nyseequities_binarygateway_pillarstream_v5_8.timestamp.size = 8

-- Display: Timestamp
nyse_nyseequities_binarygateway_pillarstream_v5_8.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nyse_nyseequities_binarygateway_pillarstream_v5_8.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.timestamp.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.timestamp, range, value, display)

  return offset + length, value
end

-- User
nyse_nyseequities_binarygateway_pillarstream_v5_8.user = {}

-- Size: User
nyse_nyseequities_binarygateway_pillarstream_v5_8.user.size = 4

-- Display: User
nyse_nyseequities_binarygateway_pillarstream_v5_8.user.display = function(value)
  return "User: "..value
end

-- Dissect: User
nyse_nyseequities_binarygateway_pillarstream_v5_8.user.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.user.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.user.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.user, range, value, display)

  return offset + length, value
end

-- User Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.user_data = {}

-- Size: User Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.user_data.size = 8

-- Display: User Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.user_data.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "User Data: No Value"
  end

  return "User Data: "..value
end

-- Dissect: User Data
nyse_nyseequities_binarygateway_pillarstream_v5_8.user_data.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.user_data.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.user_data, range, value, display)

  return offset + length, value
end

-- Username
nyse_nyseequities_binarygateway_pillarstream_v5_8.username = {}

-- Size: Username
nyse_nyseequities_binarygateway_pillarstream_v5_8.username.size = 16

-- Display: Username
nyse_nyseequities_binarygateway_pillarstream_v5_8.username.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Username: No Value"
  end

  return "Username: "..value
end

-- Dissect: Username
nyse_nyseequities_binarygateway_pillarstream_v5_8.username.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.username.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.username, range, value, display)

  return offset + length, value
end

-- Version
nyse_nyseequities_binarygateway_pillarstream_v5_8.version = {}

-- Size: Version
nyse_nyseequities_binarygateway_pillarstream_v5_8.version.size = 20

-- Display: Version
nyse_nyseequities_binarygateway_pillarstream_v5_8.version.display = function(value)
  -- Check if field has value
  if value == nil or value == '' then
    return "Version: No Value"
  end

  return "Version: "..value
end

-- Dissect: Version
nyse_nyseequities_binarygateway_pillarstream_v5_8.version.dissect = function(buffer, offset, packet, parent)
  local length = nyse_nyseequities_binarygateway_pillarstream_v5_8.version.size
  local range = buffer(offset, length)

  -- parse last octet
  local last = buffer(offset + length - 1, 1):uint()

  -- read full string or up to first zero
  local value = ''
  if last == 0 then
    value = range:stringz()
  else
    value = range:string()
  end

  local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.version.display(value, buffer, offset, packet, parent)

  parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.version, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nyse NyseEquities BinaryGateway PillarStream 5.8
-----------------------------------------------------------------------

-- Sub Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header = {}

-- Size: Sub Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.size =
  nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length.size

-- Display: Sub Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sub Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Type: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_type = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_type.dissect(buffer, index, packet, parent)

  -- Sub Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, sub_msg_length = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sub Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.sub_msg_header, buffer(offset, 0))
    local index = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Optional Order Add On
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on = {}

-- Size: Optional Order Add On
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.size =
  nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account.size

-- Display: Optional Order Add On
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Optional Order Add On
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sub Msg Header: Struct of 2 fields
  index, sub_msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.sub_msg_header.dissect(buffer, index, packet, parent)

  -- Stop Px: Price
  index, stop_px = nyse_nyseequities_binarygateway_pillarstream_v5_8.stop_px.dissect(buffer, index, packet, parent)

  -- Max Floor: u32
  index, max_floor = nyse_nyseequities_binarygateway_pillarstream_v5_8.max_floor.dissect(buffer, index, packet, parent)

  -- Deliver To Comp Id: zchar(5)
  index, deliver_to_comp_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.deliver_to_comp_id.dissect(buffer, index, packet, parent)

  -- Clearing Firm: zchar(5)
  index, clearing_firm = nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_firm.dissect(buffer, index, packet, parent)

  -- Optional Data: zchar(16)
  index, optional_data = nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_data.dissect(buffer, index, packet, parent)

  -- Clearing Account: zchar(5)
  index, clearing_account = nyse_nyseequities_binarygateway_pillarstream_v5_8.clearing_account.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Optional Order Add On
nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.optional_order_add_on, buffer(offset, 0))
    local index = nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.fields(buffer, offset, packet, parent)
  end
end

-- New Order Single And Cancel Replace Request Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message = {}

-- Read runtime size of: New Order Single And Cancel Replace Request Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  return seq_msg_length - 4
end

-- Display: New Order Single And Cancel Replace Request Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Single And Cancel Replace Request Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.fields = function(buffer, offset, packet, parent, size_of_new_order_single_and_cancel_replace_request_message)
  local index = offset

  -- Symbol Id: u32
  index, symbol_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.symbol_id.dissect(buffer, index, packet, parent)

  -- Mpid: zchar(4)
  index, mpid = nyse_nyseequities_binarygateway_pillarstream_v5_8.mpid.dissect(buffer, index, packet, parent)

  -- Mmid: u32
  index, mmid = nyse_nyseequities_binarygateway_pillarstream_v5_8.mmid.dissect(buffer, index, packet, parent)

  -- Mp Sub Id: char
  index, mp_sub_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.mp_sub_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: u64
  index, cl_ord_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: u64
  index, orig_cl_ord_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Bitfield Order Instructions U 12816: u128
  index, bitfield_order_instructions_u_12816 = nyse_nyseequities_binarygateway_pillarstream_v5_8.bitfield_order_instructions_u_12816.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = nyse_nyseequities_binarygateway_pillarstream_v5_8.price.dissect(buffer, index, packet, parent)

  -- Order Qty: u32
  index, order_qty = nyse_nyseequities_binarygateway_pillarstream_v5_8.order_qty.dissect(buffer, index, packet, parent)

  -- Min Qty: u32
  index, min_qty = nyse_nyseequities_binarygateway_pillarstream_v5_8.min_qty.dissect(buffer, index, packet, parent)

  -- User Data: zchar(8)
  index, user_data = nyse_nyseequities_binarygateway_pillarstream_v5_8.user_data.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Length
  local seq_msg_length = buffer(offset - 2, 2):le_uint()

  -- Runtime optional field: Optional Order Add On
  local optional_order_add_on = nil

  local optional_order_add_on_exists = seq_msg_length > 61

  if optional_order_add_on_exists then
    index, optional_order_add_on = nyse_nyseequities_binarygateway_pillarstream_v5_8.optional_order_add_on.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Single And Cancel Replace Request Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.dissect = function(buffer, offset, packet, parent, size_of_new_order_single_and_cancel_replace_request_message)
  local size_of_new_order_single_and_cancel_replace_request_message = nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.size(buffer, offset)
  local index = offset + size_of_new_order_single_and_cancel_replace_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.new_order_single_and_cancel_replace_request_message, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.fields(buffer, offset, packet, parent, size_of_new_order_single_and_cancel_replace_request_message)
    parent:set_len(size_of_new_order_single_and_cancel_replace_request_message)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.fields(buffer, offset, packet, parent, size_of_new_order_single_and_cancel_replace_request_message)

    return index
  end
end

-- Sequenced Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.sequenced_message = {}

-- Dissect: Sequenced Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.sequenced_message.dissect = function(buffer, offset, packet, parent, seq_msg_type)
  -- Dissect New Order Single And Cancel Replace Request Message
  if seq_msg_type == 0x0240 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.new_order_single_and_cancel_replace_request_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Seq Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header = {}

-- Size: Seq Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.size =
  nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length.size

-- Display: Seq Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Seq Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 1 values
  index, seq_msg_type = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_type.dissect(buffer, index, packet, parent)

  -- Seq Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, seq_msg_length = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_header, buffer(offset, 0))
    local index = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Stream Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id = {}

-- Size: Stream Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.size =
  nyse_nyseequities_binarygateway_pillarstream_v5_8.sess.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.user.size

-- Display: Stream Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.display = function(buffer, offset, value, packet, parent)
  return ""..value
end

-- Dissect Fields: Stream Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sess: 4 Byte Unsigned Fixed Width Integer
  index, sess = nyse_nyseequities_binarygateway_pillarstream_v5_8.sess.dissect(buffer, index, packet, parent)

  -- User: 4 Byte Unsigned Fixed Width Integer
  index, user = nyse_nyseequities_binarygateway_pillarstream_v5_8.user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.stream_id, buffer(offset, 0))
    local index = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.display(packet, parent, length)
    parent:append_text(display)

    return index, value
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.fields(buffer, offset, packet, parent)
  end
end

-- Seq Msg Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id = {}

-- Size: Seq Msg Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.size =
  nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.seq.size

-- Display: Seq Msg Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.dissect(buffer, index, packet, parent)

  -- Seq: u64
  index, seq = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Seq Msg Id
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg_id, buffer(offset, 0))
    local index = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.fields(buffer, offset, packet, parent)
  end
end

-- Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header = {}

-- Size: Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.size =
  nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.size + 
  nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length.size

-- Display: Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Msg Type: 2 Byte Unsigned Fixed Width Integer Enum with 9 values
  index, msg_type = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.dissect(buffer, index, packet, parent)

  -- Msg Length: 2 Byte Unsigned Fixed Width Integer
  index, msg_length = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Msg Header
nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.msg_header, buffer(offset, 0))
    local index = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.fields(buffer, offset, packet, parent)
  end
end

-- Seq Msg
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg = {}

-- Read runtime size of: Seq Msg
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Seq Msg
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Seq Msg
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.fields = function(buffer, offset, packet, parent, size_of_seq_msg)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Seq Msg Id: Struct of 2 fields
  index, seq_msg_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_id.dissect(buffer, index, packet, parent)

  -- Reserved 4: 4 Byte
  index, reserved_4 = nyse_nyseequities_binarygateway_pillarstream_v5_8.reserved_4.dissect(buffer, index, packet, parent)

  -- Timestamp: 8 Byte Unsigned Fixed Width Integer
  index, timestamp = nyse_nyseequities_binarygateway_pillarstream_v5_8.timestamp.dissect(buffer, index, packet, parent)

  -- Seq Msg Header: Struct of 2 fields
  index, seq_msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Seq Msg Type
  local seq_msg_type = buffer(index - 4, 2):le_uint()

  -- Sequenced Message: Runtime Type with 1 branches
  index = nyse_nyseequities_binarygateway_pillarstream_v5_8.sequenced_message.dissect(buffer, index, packet, parent, seq_msg_type)

  return index
end

-- Dissect: Seq Msg
nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.dissect = function(buffer, offset, packet, parent, size_of_seq_msg)
  local size_of_seq_msg = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.size(buffer, offset)
  local index = offset + size_of_seq_msg

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.seq_msg, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.fields(buffer, offset, packet, parent, size_of_seq_msg)
    parent:set_len(size_of_seq_msg)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.fields(buffer, offset, packet, parent, size_of_seq_msg)

    return index
  end
end

-- Close Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response = {}

-- Read runtime size of: Close Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.fields = function(buffer, offset, packet, parent, size_of_close_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_nyseequities_binarygateway_pillarstream_v5_8.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.dissect = function(buffer, offset, packet, parent, size_of_close_response)
  local size_of_close_response = nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.size(buffer, offset)
  local index = offset + size_of_close_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.close_response, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.fields(buffer, offset, packet, parent, size_of_close_response)
    parent:set_len(size_of_close_response)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.fields(buffer, offset, packet, parent, size_of_close_response)

    return index
  end
end

-- Close
nyse_nyseequities_binarygateway_pillarstream_v5_8.close = {}

-- Read runtime size of: Close
nyse_nyseequities_binarygateway_pillarstream_v5_8.close.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Close
nyse_nyseequities_binarygateway_pillarstream_v5_8.close.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Close
nyse_nyseequities_binarygateway_pillarstream_v5_8.close.fields = function(buffer, offset, packet, parent, size_of_close)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Close
nyse_nyseequities_binarygateway_pillarstream_v5_8.close.dissect = function(buffer, offset, packet, parent, size_of_close)
  local size_of_close = nyse_nyseequities_binarygateway_pillarstream_v5_8.close.size(buffer, offset)
  local index = offset + size_of_close

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.close, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.close.fields(buffer, offset, packet, parent, size_of_close)
    parent:set_len(size_of_close)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.close.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.close.fields(buffer, offset, packet, parent, size_of_close)

    return index
  end
end

-- Open Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response = {}

-- Read runtime size of: Open Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.fields = function(buffer, offset, packet, parent, size_of_open_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_nyseequities_binarygateway_pillarstream_v5_8.status.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_nyseequities_binarygateway_pillarstream_v5_8.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.dissect = function(buffer, offset, packet, parent, size_of_open_response)
  local size_of_open_response = nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.size(buffer, offset)
  local index = offset + size_of_open_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.open_response, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.fields(buffer, offset, packet, parent, size_of_open_response)
    parent:set_len(size_of_open_response)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.fields(buffer, offset, packet, parent, size_of_open_response)

    return index
  end
end

-- Open
nyse_nyseequities_binarygateway_pillarstream_v5_8.open = {}

-- Read runtime size of: Open
nyse_nyseequities_binarygateway_pillarstream_v5_8.open.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Open
nyse_nyseequities_binarygateway_pillarstream_v5_8.open.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Open
nyse_nyseequities_binarygateway_pillarstream_v5_8.open.fields = function(buffer, offset, packet, parent, size_of_open)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.dissect(buffer, index, packet, parent)

  -- Start Seq: 8 Byte Unsigned Fixed Width Integer
  index, start_seq = nyse_nyseequities_binarygateway_pillarstream_v5_8.start_seq.dissect(buffer, index, packet, parent)

  -- End Seq: 8 Byte Unsigned Fixed Width Integer
  index, end_seq = nyse_nyseequities_binarygateway_pillarstream_v5_8.end_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_nyseequities_binarygateway_pillarstream_v5_8.access.dissect(buffer, index, packet, parent)

  -- Mode: 1 Byte Unsigned Fixed Width Integer
  index, mode = nyse_nyseequities_binarygateway_pillarstream_v5_8.mode.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Open
nyse_nyseequities_binarygateway_pillarstream_v5_8.open.dissect = function(buffer, offset, packet, parent, size_of_open)
  local size_of_open = nyse_nyseequities_binarygateway_pillarstream_v5_8.open.size(buffer, offset)
  local index = offset + size_of_open

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.open, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.open.fields(buffer, offset, packet, parent, size_of_open)
    parent:set_len(size_of_open)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.open.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.open.fields(buffer, offset, packet, parent, size_of_open)

    return index
  end
end

-- Heartbeat
nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat = {}

-- Read runtime size of: Heartbeat
nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Heartbeat
nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Heartbeat
nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.fields = function(buffer, offset, packet, parent, size_of_heartbeat)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Heartbeat
nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.dissect = function(buffer, offset, packet, parent, size_of_heartbeat)
  local size_of_heartbeat = nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.size(buffer, offset)
  local index = offset + size_of_heartbeat

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.heartbeat, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)
    parent:set_len(size_of_heartbeat)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.fields(buffer, offset, packet, parent, size_of_heartbeat)

    return index
  end
end

-- Stream Avail
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail = {}

-- Read runtime size of: Stream Avail
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Stream Avail
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Stream Avail
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.fields = function(buffer, offset, packet, parent, size_of_stream_avail)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Stream Id: Struct of 2 fields
  index, stream_id = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_id.dissect(buffer, index, packet, parent)

  -- Next Seq: 8 Byte Unsigned Fixed Width Integer
  index, next_seq = nyse_nyseequities_binarygateway_pillarstream_v5_8.next_seq.dissect(buffer, index, packet, parent)

  -- Access: 1 Byte Unsigned Fixed Width Integer
  index, access = nyse_nyseequities_binarygateway_pillarstream_v5_8.access.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Stream Avail
nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.dissect = function(buffer, offset, packet, parent, size_of_stream_avail)
  local size_of_stream_avail = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.size(buffer, offset)
  local index = offset + size_of_stream_avail

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.stream_avail, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)
    parent:set_len(size_of_stream_avail)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.fields(buffer, offset, packet, parent, size_of_stream_avail)

    return index
  end
end

-- Login Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response = {}

-- Read runtime size of: Login Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.fields = function(buffer, offset, packet, parent, size_of_login_response)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_nyseequities_binarygateway_pillarstream_v5_8.username.dissect(buffer, index, packet, parent)

  -- Status: 1 Byte Unsigned Fixed Width Integer Enum with 2 values
  index, status = nyse_nyseequities_binarygateway_pillarstream_v5_8.status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Response
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.dissect = function(buffer, offset, packet, parent, size_of_login_response)
  local size_of_login_response = nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.size(buffer, offset)
  local index = offset + size_of_login_response

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.login_response, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.fields(buffer, offset, packet, parent, size_of_login_response)
    parent:set_len(size_of_login_response)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.fields(buffer, offset, packet, parent, size_of_login_response)

    return index
  end
end

-- Login Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message = {}

-- Read runtime size of: Login Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Msg Length
  local msg_length = buffer(index + 2, 2):le_uint()

  return msg_length
end

-- Display: Login Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.fields = function(buffer, offset, packet, parent, size_of_login_message)
  local index = offset

  -- Msg Header: Struct of 2 fields
  index, msg_header = nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_header.dissect(buffer, index, packet, parent)

  -- Username: 16 Byte Ascii String
  index, username = nyse_nyseequities_binarygateway_pillarstream_v5_8.username.dissect(buffer, index, packet, parent)

  -- Password: 32 Byte Ascii String
  index, password = nyse_nyseequities_binarygateway_pillarstream_v5_8.password.dissect(buffer, index, packet, parent)

  -- Mic: 4 Byte Ascii String
  index, mic = nyse_nyseequities_binarygateway_pillarstream_v5_8.mic.dissect(buffer, index, packet, parent)

  -- Version: 20 Byte Ascii String
  index, version = nyse_nyseequities_binarygateway_pillarstream_v5_8.version.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Login Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.dissect = function(buffer, offset, packet, parent, size_of_login_message)
  local size_of_login_message = nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.size(buffer, offset)
  local index = offset + size_of_login_message

  -- Optionally add group/struct element to protocol tree
  if show.session_messages then
    parent = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.fields.login_message, buffer(offset, 0))
    local current = nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.fields(buffer, offset, packet, parent, size_of_login_message)
    parent:set_len(size_of_login_message)
    local display = nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.fields(buffer, offset, packet, parent, size_of_login_message)

    return index
  end
end

-- Pillar Stream Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.pillar_stream_message = {}

-- Verify required size of Tcp packet
nyse_nyseequities_binarygateway_pillarstream_v5_8.pillar_stream_message.requiredsize = function(buffer)
  return buffer:len() >= nyse_nyseequities_binarygateway_pillarstream_v5_8.msg_type.size
end

-- Dissect Pillar Stream Message
nyse_nyseequities_binarygateway_pillarstream_v5_8.pillar_stream_message.dissect = function(buffer, packet, parent)
  local offset = 0

  -- Dependency element: Msg Type
  local msg_type = buffer(0, 2):le_uint()

  -- Dissect Login Message
  if msg_type == 0x0201 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.login_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Login Response
  if msg_type == 0x0202 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.login_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Stream Avail
  if msg_type == 0x0203 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.stream_avail.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat
  if msg_type == 0x0204 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.heartbeat.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open
  if msg_type == 0x0205 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.open.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Open Response
  if msg_type == 0x0206 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.open_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close
  if msg_type == 0x0207 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.close.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Close Response
  if msg_type == 0x0208 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.close_response.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Seq Msg
  if msg_type == 0x0905 then
    return nyse_nyseequities_binarygateway_pillarstream_v5_8.seq_msg.dissect(buffer, offset, packet, parent)
  end

  return offset
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.init()
end

-- Dissector for Nyse NyseEquities BinaryGateway PillarStream 5.8
function omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.name

  -- Dissect protocol
  local protocol = parent:add(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8, buffer(), omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.description, "("..buffer:len().." Bytes)")
  return nyse_nyseequities_binarygateway_pillarstream_v5_8.pillar_stream_message.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nyse NyseEquities BinaryGateway PillarStream 5.8 (Tcp)
local function omi_nyse_nyseequities_binarygateway_pillarstream_v5_8_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nyse_nyseequities_binarygateway_pillarstream_v5_8.pillar_stream_message.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nyse_nyseequities_binarygateway_pillarstream_v5_8
  omi_nyse_nyseequities_binarygateway_pillarstream_v5_8.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nyse NyseEquities BinaryGateway PillarStream 5.8
omi_nyse_nyseequities_binarygateway_pillarstream_v5_8:register_heuristic("tcp", omi_nyse_nyseequities_binarygateway_pillarstream_v5_8_tcp_heuristic)

-- Register Nyse NyseEquities BinaryGateway PillarStream 5.8 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nyse_nyseequities_binarygateway_pillarstream_v5_8)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: New York Stock Exchange
--   Version: 5.8
--   Date: Wednesday, August 23, 2023
--   Specification: NYSE_Pillar_Gateway_Binary_Protocol_Specification.pdf
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
