-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Cboe BzxEquities BinaryOrderEntry Boe 2.3 Protocol
local omi_cboe_bzxequities_binaryorderentry_boe_v2_3 = Proto("Omi.Cboe.BzxEquities.BinaryOrderEntry.Boe.v2.3", "Cboe BzxEquities BinaryOrderEntry Boe 2.3")

-- Protocol table
local cboe_bzxequities_binaryorderentry_boe_v2_3 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Cboe BzxEquities BinaryOrderEntry Boe 2.3 Fields
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.account = ProtoField.new("Account", "cboe.bzxequities.binaryorderentry.boe.v2.3.account", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.attributed_quote = ProtoField.new("Attributed Quote", "cboe.bzxequities.binaryorderentry.boe.v2.3.attributedquote", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.base_liquidity_indicator = ProtoField.new("Base Liquidity Indicator", "cboe.bzxequities.binaryorderentry.boe.v2.3.baseliquidityindicator", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1 = ProtoField.new("Cancel Order Bitfield 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_clearing_firm = ProtoField.new("Cancel Order Bitfield 1 Clearing Firm", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_128 = ProtoField.new("Cancel Order Bitfield 1 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_16 = ProtoField.new("Cancel Order Bitfield 1 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_2 = ProtoField.new("Cancel Order Bitfield 1 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_32 = ProtoField.new("Cancel Order Bitfield 1 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_4 = ProtoField.new("Cancel Order Bitfield 1 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_64 = ProtoField.new("Cancel Order Bitfield 1 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_8 = ProtoField.new("Cancel Order Bitfield 1 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield1reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2 = ProtoField.new("Cancel Order Bitfield 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_1 = ProtoField.new("Cancel Order Bitfield 2 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_128 = ProtoField.new("Cancel Order Bitfield 2 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_16 = ProtoField.new("Cancel Order Bitfield 2 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_2 = ProtoField.new("Cancel Order Bitfield 2 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_32 = ProtoField.new("Cancel Order Bitfield 2 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_4 = ProtoField.new("Cancel Order Bitfield 2 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_64 = ProtoField.new("Cancel Order Bitfield 2 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_8 = ProtoField.new("Cancel Order Bitfield 2 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorderbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_orig_on_reject = ProtoField.new("Cancel Orig On Reject", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelorigonreject", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_reason = ProtoField.new("Cancel Reason", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelreason", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_reject_reason = ProtoField.new("Cancel Reject Reason", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelrejectreason", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancelled_order_count = ProtoField.new("Cancelled Order Count", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelledordercount", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.capacity = ProtoField.new("Capacity", "cboe.bzxequities.binaryorderentry.boe.v2.3.capacity", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.clordid", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.clearing_account = ProtoField.new("Clearing Account", "cboe.bzxequities.binaryorderentry.boe.v2.3.clearingaccount", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.clearing_firm = ProtoField.new("Clearing Firm", "cboe.bzxequities.binaryorderentry.boe.v2.3.clearingfirm", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.contra_broker = ProtoField.new("Contra Broker", "cboe.bzxequities.binaryorderentry.boe.v2.3.contrabroker", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.corrected_price = ProtoField.new("Corrected Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.correctedprice", ftypes.DOUBLE)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.custom_group_id = ProtoField.new("Custom Group Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.customgroupid", ftypes.UINT16)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.discretion_amount = ProtoField.new("Discretion Amount", "cboe.bzxequities.binaryorderentry.boe.v2.3.discretionamount", ftypes.UINT16)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.display_indicator = ProtoField.new("Display Indicator", "cboe.bzxequities.binaryorderentry.boe.v2.3.displayindicator", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.display_price = ProtoField.new("Display Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.displayprice", ftypes.DOUBLE)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.display_range = ProtoField.new("Display Range", "cboe.bzxequities.binaryorderentry.boe.v2.3.displayrange", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.echo_text = ProtoField.new("Echo Text", "cboe.bzxequities.binaryorderentry.boe.v2.3.echotext", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.ex_destination = ProtoField.new("Ex Destination", "cboe.bzxequities.binaryorderentry.boe.v2.3.exdestination", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.exec_id = ProtoField.new("Exec Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.execid", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.exec_inst = ProtoField.new("Exec Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.execinst", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.exec_ref_id = ProtoField.new("Exec Ref Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.execrefid", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.expire_time = ProtoField.new("Expire Time", "cboe.bzxequities.binaryorderentry.boe.v2.3.expiretime", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.ext_exec_inst = ProtoField.new("Ext Exec Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.extexecinst", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.fee_code = ProtoField.new("Fee Code", "cboe.bzxequities.binaryorderentry.boe.v2.3.feecode", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.last_px = ProtoField.new("Last Px", "cboe.bzxequities.binaryorderentry.boe.v2.3.lastpx", ftypes.DOUBLE)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.last_received_sequence_number = ProtoField.new("Last Received Sequence Number", "cboe.bzxequities.binaryorderentry.boe.v2.3.lastreceivedsequencenumber", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.last_shares = ProtoField.new("Last Shares", "cboe.bzxequities.binaryorderentry.boe.v2.3.lastshares", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.leaves_qty = ProtoField.new("Leaves Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.leavesqty", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.locate_reqd = ProtoField.new("Locate Reqd", "cboe.bzxequities.binaryorderentry.boe.v2.3.locatereqd", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_response_status = ProtoField.new("Login Response Status", "cboe.bzxequities.binaryorderentry.boe.v2.3.loginresponsestatus", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_response_text = ProtoField.new("Login Response Text", "cboe.bzxequities.binaryorderentry.boe.v2.3.loginresponsetext", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.logout_reason = ProtoField.new("Logout Reason", "cboe.bzxequities.binaryorderentry.boe.v2.3.logoutreason", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.logout_reason_text = ProtoField.new("Logout Reason Text", "cboe.bzxequities.binaryorderentry.boe.v2.3.logoutreasontext", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.masscancelid", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.mass_cancel_inst = ProtoField.new("Mass Cancel Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.masscancelinst", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.matching_unit = ProtoField.new("Matching Unit", "cboe.bzxequities.binaryorderentry.boe.v2.3.matchingunit", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.max_floor = ProtoField.new("Max Floor", "cboe.bzxequities.binaryorderentry.boe.v2.3.maxfloor", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.message_header = ProtoField.new("Message Header", "cboe.bzxequities.binaryorderentry.boe.v2.3.messageheader", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.message_length = ProtoField.new("Message Length", "cboe.bzxequities.binaryorderentry.boe.v2.3.messagelength", ftypes.UINT16)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.message_type = ProtoField.new("Message Type", "cboe.bzxequities.binaryorderentry.boe.v2.3.messagetype", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.min_qty = ProtoField.new("Min Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.minqty", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1 = ProtoField.new("Modify Order Bitfield 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_cancel_orig_on_reject = ProtoField.new("Modify Order Bitfield 1 Cancel Orig On Reject", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1cancelorigonreject", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_clearing_firm = ProtoField.new("Modify Order Bitfield 1 Clearing Firm", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_exec_inst = ProtoField.new("Modify Order Bitfield 1 Exec Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_ord_type = ProtoField.new("Modify Order Bitfield 1 Ord Type", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_order_qty = ProtoField.new("Modify Order Bitfield 1 Order Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_price = ProtoField.new("Modify Order Bitfield 1 Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_reserved_2 = ProtoField.new("Modify Order Bitfield 1 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_side = ProtoField.new("Modify Order Bitfield 1 Side", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2 = ProtoField.new("Modify Order Bitfield 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_max_floor = ProtoField.new("Modify Order Bitfield 2 Max Floor", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_128 = ProtoField.new("Modify Order Bitfield 2 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_16 = ProtoField.new("Modify Order Bitfield 2 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_32 = ProtoField.new("Modify Order Bitfield 2 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_4 = ProtoField.new("Modify Order Bitfield 2 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_64 = ProtoField.new("Modify Order Bitfield 2 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_8 = ProtoField.new("Modify Order Bitfield 2 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_stop_px = ProtoField.new("Modify Order Bitfield 2 Stop Px", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyorderbitfield2stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_reject_reason = ProtoField.new("Modify Reject Reason", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyrejectreason", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1 = ProtoField.new("New Order Bitfield 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_clearing_account = ProtoField.new("New Order Bitfield 1 Clearing Account", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_clearing_firm = ProtoField.new("New Order Bitfield 1 Clearing Firm", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_exec_inst = ProtoField.new("New Order Bitfield 1 Exec Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_max_floor = ProtoField.new("New Order Bitfield 1 Max Floor", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_min_qty = ProtoField.new("New Order Bitfield 1 Min Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_ord_type = ProtoField.new("New Order Bitfield 1 Ord Type", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_price = ProtoField.new("New Order Bitfield 1 Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_time_in_force = ProtoField.new("New Order Bitfield 1 Time In Force", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2 = ProtoField.new("New Order Bitfield 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_capacity = ProtoField.new("New Order Bitfield 2 Capacity", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_16 = ProtoField.new("New Order Bitfield 2 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_32 = ProtoField.new("New Order Bitfield 2 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_4 = ProtoField.new("New Order Bitfield 2 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_8 = ProtoField.new("New Order Bitfield 2 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_routing_inst = ProtoField.new("New Order Bitfield 2 Routing Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2routinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_symbol = ProtoField.new("New Order Bitfield 2 Symbol", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_symbol_sfx = ProtoField.new("New Order Bitfield 2 Symbol Sfx", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3 = ProtoField.new("New Order Bitfield 3", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_account = ProtoField.new("New Order Bitfield 3 Account", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_discretion_amount = ProtoField.new("New Order Bitfield 3 Discretion Amount", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3discretionamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_display_indicator = ProtoField.new("New Order Bitfield 3 Display Indicator", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3displayindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_expire_time = ProtoField.new("New Order Bitfield 3 Expire Time", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_locate_reqd = ProtoField.new("New Order Bitfield 3 Locate Reqd", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3locatereqd", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_peg_difference = ProtoField.new("New Order Bitfield 3 Peg Difference", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_prevent_match = ProtoField.new("New Order Bitfield 3 Prevent Match", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_reserved_4 = ProtoField.new("New Order Bitfield 3 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield3reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4 = ProtoField.new("New Order Bitfield 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_1 = ProtoField.new("New Order Bitfield 4 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_128 = ProtoField.new("New Order Bitfield 4 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_16 = ProtoField.new("New Order Bitfield 4 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_2 = ProtoField.new("New Order Bitfield 4 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_32 = ProtoField.new("New Order Bitfield 4 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_4 = ProtoField.new("New Order Bitfield 4 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_64 = ProtoField.new("New Order Bitfield 4 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_risk_reset = ProtoField.new("New Order Bitfield 4 Risk Reset", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield4riskreset", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5 = ProtoField.new("New Order Bitfield 5", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_attributed_quote = ProtoField.new("New Order Bitfield 5 Attributed Quote", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_ext_exec_inst = ProtoField.new("New Order Bitfield 5 Ext Exec Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_1 = ProtoField.new("New Order Bitfield 5 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_128 = ProtoField.new("New Order Bitfield 5 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_16 = ProtoField.new("New Order Bitfield 5 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_32 = ProtoField.new("New Order Bitfield 5 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_4 = ProtoField.new("New Order Bitfield 5 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_64 = ProtoField.new("New Order Bitfield 5 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield5reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6 = ProtoField.new("New Order Bitfield 6", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_display_range = ProtoField.new("New Order Bitfield 6 Display Range", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6displayrange", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_echo_text = ProtoField.new("New Order Bitfield 6 Echo Text", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6echotext", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_ex_destination = ProtoField.new("New Order Bitfield 6 Ex Destination", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6exdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_reserved_128 = ProtoField.new("New Order Bitfield 6 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_reserved_64 = ProtoField.new("New Order Bitfield 6 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_rout_strategy = ProtoField.new("New Order Bitfield 6 Rout Strategy", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6routstrategy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_route_delivery_method = ProtoField.new("New Order Bitfield 6 Route Delivery Method", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6routedeliverymethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_stop_px = ProtoField.new("New Order Bitfield 6 Stop Px", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield6stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7 = ProtoField.new("New Order Bitfield 7", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_custom_group_id = ProtoField.new("New Order Bitfield 7 Custom Group Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7customgroupid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_1 = ProtoField.new("New Order Bitfield 7 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_128 = ProtoField.new("New Order Bitfield 7 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_16 = ProtoField.new("New Order Bitfield 7 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_32 = ProtoField.new("New Order Bitfield 7 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_4 = ProtoField.new("New Order Bitfield 7 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_64 = ProtoField.new("New Order Bitfield 7 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_8 = ProtoField.new("New Order Bitfield 7 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.neworderbitfield7reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.no_unspecified_unit_replay = ProtoField.new("No Unspecified Unit Replay", "cboe.bzxequities.binaryorderentry.boe.v2.3.nounspecifiedunitreplay", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_cancel_order_bitfields = ProtoField.new("Number Of Cancel Order Bitfields", "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofcancelorderbitfields", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_modify_order_bitfields = ProtoField.new("Number Of Modify Order Bitfields", "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofmodifyorderbitfields", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_new_order_bitfields = ProtoField.new("Number Of New Order Bitfields", "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofneworderbitfields", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_param_groups = ProtoField.new("Number Of Param Groups", "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofparamgroups", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_purge_order_bitfields = ProtoField.new("Number Of Purge Order Bitfields", "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofpurgeorderbitfields", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_return_bitfields = ProtoField.new("Number Of Return Bitfields", "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofreturnbitfields", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_units = ProtoField.new("Number Of Units", "cboe.bzxequities.binaryorderentry.boe.v2.3.numberofunits", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.ord_type = ProtoField.new("Ord Type", "cboe.bzxequities.binaryorderentry.boe.v2.3.ordtype", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_id = ProtoField.new("Order Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.orderid", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_qty = ProtoField.new("Order Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.orderqty", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_reject_reason = ProtoField.new("Order Reject Reason", "cboe.bzxequities.binaryorderentry.boe.v2.3.orderrejectreason", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.origclordid", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.orig_time = ProtoField.new("Orig Time", "cboe.bzxequities.binaryorderentry.boe.v2.3.origtime", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.packet = ProtoField.new("Packet", "cboe.bzxequities.binaryorderentry.boe.v2.3.packet", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group = ProtoField.new("Param Group", "cboe.bzxequities.binaryorderentry.boe.v2.3.paramgroup", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group_length = ProtoField.new("Param Group Length", "cboe.bzxequities.binaryorderentry.boe.v2.3.paramgrouplength", ftypes.UINT16)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group_type = ProtoField.new("Param Group Type", "cboe.bzxequities.binaryorderentry.boe.v2.3.paramgrouptype", ftypes.UINT8)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.password = ProtoField.new("Password", "cboe.bzxequities.binaryorderentry.boe.v2.3.password", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.peg_difference = ProtoField.new("Peg Difference", "cboe.bzxequities.binaryorderentry.boe.v2.3.pegdifference", ftypes.DOUBLE)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.prevent_match = ProtoField.new("Prevent Match", "cboe.bzxequities.binaryorderentry.boe.v2.3.preventmatch", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.price = ProtoField.new("Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.price", ftypes.DOUBLE)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1 = ProtoField.new("Purge Order Bitfield 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_clearing_firm = ProtoField.new("Purge Order Bitfield 1 Clearing Firm", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_mass_cancel_id = ProtoField.new("Purge Order Bitfield 1 Mass Cancel Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_mass_cancel_inst = ProtoField.new("Purge Order Bitfield 1 Mass Cancel Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1masscancelinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_128 = ProtoField.new("Purge Order Bitfield 1 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_2 = ProtoField.new("Purge Order Bitfield 1 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_32 = ProtoField.new("Purge Order Bitfield 1 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_64 = ProtoField.new("Purge Order Bitfield 1 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_8 = ProtoField.new("Purge Order Bitfield 1 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield1reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2 = ProtoField.new("Purge Order Bitfield 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_128 = ProtoField.new("Purge Order Bitfield 2 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_16 = ProtoField.new("Purge Order Bitfield 2 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_32 = ProtoField.new("Purge Order Bitfield 2 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_4 = ProtoField.new("Purge Order Bitfield 2 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_64 = ProtoField.new("Purge Order Bitfield 2 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_8 = ProtoField.new("Purge Order Bitfield 2 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_symbol = ProtoField.new("Purge Order Bitfield 2 Symbol", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_symbol_sfx = ProtoField.new("Purge Order Bitfield 2 Symbol Sfx", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeorderbitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_reject_reason = ProtoField.new("Purge Reject Reason", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgerejectreason", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.reserved_1 = ProtoField.new("Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.reserved1", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.restatement_reason = ProtoField.new("Restatement Reason", "cboe.bzxequities.binaryorderentry.boe.v2.3.restatementreason", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1 = ProtoField.new("Return Bitfield 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_exec_inst = ProtoField.new("Return Bitfield 1 Exec Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1execinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_min_qty = ProtoField.new("Return Bitfield 1 Min Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1minqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_ord_type = ProtoField.new("Return Bitfield 1 Ord Type", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1ordtype", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_peg_difference = ProtoField.new("Return Bitfield 1 Peg Difference", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1pegdifference", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_price = ProtoField.new("Return Bitfield 1 Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1price", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_reserved_128 = ProtoField.new("Return Bitfield 1 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_side = ProtoField.new("Return Bitfield 1 Side", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1side", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_time_in_force = ProtoField.new("Return Bitfield 1 Time In Force", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield1timeinforce", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10 = ProtoField.new("Return Bitfield 10", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_1 = ProtoField.new("Return Bitfield 10 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_128 = ProtoField.new("Return Bitfield 10 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_16 = ProtoField.new("Return Bitfield 10 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_2 = ProtoField.new("Return Bitfield 10 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_32 = ProtoField.new("Return Bitfield 10 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_4 = ProtoField.new("Return Bitfield 10 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_64 = ProtoField.new("Return Bitfield 10 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_8 = ProtoField.new("Return Bitfield 10 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield10reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11 = ProtoField.new("Return Bitfield 11", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_1 = ProtoField.new("Return Bitfield 11 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_128 = ProtoField.new("Return Bitfield 11 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_16 = ProtoField.new("Return Bitfield 11 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_2 = ProtoField.new("Return Bitfield 11 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_32 = ProtoField.new("Return Bitfield 11 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_4 = ProtoField.new("Return Bitfield 11 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_64 = ProtoField.new("Return Bitfield 11 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_8 = ProtoField.new("Return Bitfield 11 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield11reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12 = ProtoField.new("Return Bitfield 12", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_1 = ProtoField.new("Return Bitfield 12 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_128 = ProtoField.new("Return Bitfield 12 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_16 = ProtoField.new("Return Bitfield 12 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_2 = ProtoField.new("Return Bitfield 12 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_32 = ProtoField.new("Return Bitfield 12 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_4 = ProtoField.new("Return Bitfield 12 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_64 = ProtoField.new("Return Bitfield 12 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_8 = ProtoField.new("Return Bitfield 12 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield12reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13 = ProtoField.new("Return Bitfield 13", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_1 = ProtoField.new("Return Bitfield 13 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_128 = ProtoField.new("Return Bitfield 13 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_16 = ProtoField.new("Return Bitfield 13 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_2 = ProtoField.new("Return Bitfield 13 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_32 = ProtoField.new("Return Bitfield 13 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_4 = ProtoField.new("Return Bitfield 13 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_64 = ProtoField.new("Return Bitfield 13 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_8 = ProtoField.new("Return Bitfield 13 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield13reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14 = ProtoField.new("Return Bitfield 14", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_1 = ProtoField.new("Return Bitfield 14 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_128 = ProtoField.new("Return Bitfield 14 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_16 = ProtoField.new("Return Bitfield 14 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_2 = ProtoField.new("Return Bitfield 14 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_32 = ProtoField.new("Return Bitfield 14 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_4 = ProtoField.new("Return Bitfield 14 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_64 = ProtoField.new("Return Bitfield 14 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_8 = ProtoField.new("Return Bitfield 14 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield14reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15 = ProtoField.new("Return Bitfield 15", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_mass_cancel_id = ProtoField.new("Return Bitfield 15 Mass Cancel Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15masscancelid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_1 = ProtoField.new("Return Bitfield 15 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_128 = ProtoField.new("Return Bitfield 15 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_16 = ProtoField.new("Return Bitfield 15 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_2 = ProtoField.new("Return Bitfield 15 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_32 = ProtoField.new("Return Bitfield 15 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_4 = ProtoField.new("Return Bitfield 15 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_64 = ProtoField.new("Return Bitfield 15 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield15reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16 = ProtoField.new("Return Bitfield 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_1 = ProtoField.new("Return Bitfield 16 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_128 = ProtoField.new("Return Bitfield 16 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_16 = ProtoField.new("Return Bitfield 16 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_2 = ProtoField.new("Return Bitfield 16 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_32 = ProtoField.new("Return Bitfield 16 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_4 = ProtoField.new("Return Bitfield 16 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_64 = ProtoField.new("Return Bitfield 16 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_8 = ProtoField.new("Return Bitfield 16 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield16reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17 = ProtoField.new("Return Bitfield 17", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_1 = ProtoField.new("Return Bitfield 17 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_128 = ProtoField.new("Return Bitfield 17 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_16 = ProtoField.new("Return Bitfield 17 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_2 = ProtoField.new("Return Bitfield 17 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_32 = ProtoField.new("Return Bitfield 17 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_4 = ProtoField.new("Return Bitfield 17 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_64 = ProtoField.new("Return Bitfield 17 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_8 = ProtoField.new("Return Bitfield 17 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield17reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2 = ProtoField.new("Return Bitfield 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_capacity = ProtoField.new("Return Bitfield 2 Capacity", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2capacity", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_128 = ProtoField.new("Return Bitfield 2 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_16 = ProtoField.new("Return Bitfield 2 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_32 = ProtoField.new("Return Bitfield 2 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_4 = ProtoField.new("Return Bitfield 2 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_8 = ProtoField.new("Return Bitfield 2 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_symbol = ProtoField.new("Return Bitfield 2 Symbol", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2symbol", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_symbol_sfx = ProtoField.new("Return Bitfield 2 Symbol Sfx", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield2symbolsfx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3 = ProtoField.new("Return Bitfield 3", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_account = ProtoField.new("Return Bitfield 3 Account", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3account", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_clearing_account = ProtoField.new("Return Bitfield 3 Clearing Account", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3clearingaccount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_clearing_firm = ProtoField.new("Return Bitfield 3 Clearing Firm", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3clearingfirm", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_discretion_amount = ProtoField.new("Return Bitfield 3 Discretion Amount", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3discretionamount", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_display_indicator = ProtoField.new("Return Bitfield 3 Display Indicator", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3displayindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_max_floor = ProtoField.new("Return Bitfield 3 Max Floor", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3maxfloor", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_order_qty = ProtoField.new("Return Bitfield 3 Order Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3orderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_prevent_match = ProtoField.new("Return Bitfield 3 Prevent Match", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield3preventmatch", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4 = ProtoField.new("Return Bitfield 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_1 = ProtoField.new("Return Bitfield 4 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_128 = ProtoField.new("Return Bitfield 4 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_16 = ProtoField.new("Return Bitfield 4 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_2 = ProtoField.new("Return Bitfield 4 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_32 = ProtoField.new("Return Bitfield 4 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_4 = ProtoField.new("Return Bitfield 4 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_64 = ProtoField.new("Return Bitfield 4 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_8 = ProtoField.new("Return Bitfield 4 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield4reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5 = ProtoField.new("Return Bitfield 5", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_base_liquidity_indicator = ProtoField.new("Return Bitfield 5 Base Liquidity Indicator", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5baseliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_display_price = ProtoField.new("Return Bitfield 5 Display Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5displayprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_expire_time = ProtoField.new("Return Bitfield 5 Expire Time", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5expiretime", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_last_px = ProtoField.new("Return Bitfield 5 Last Px", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5lastpx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_last_shares = ProtoField.new("Return Bitfield 5 Last Shares", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5lastshares", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_leaves_qty = ProtoField.new("Return Bitfield 5 Leaves Qty", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5leavesqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_orig_cl_ord_id = ProtoField.new("Return Bitfield 5 Orig Cl Ord Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5origclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_working_price = ProtoField.new("Return Bitfield 5 Working Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield5workingprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6 = ProtoField.new("Return Bitfield 6", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_attributed_quote = ProtoField.new("Return Bitfield 6 Attributed Quote", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6attributedquote", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_ext_exec_inst = ProtoField.new("Return Bitfield 6 Ext Exec Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6extexecinst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_128 = ProtoField.new("Return Bitfield 6 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_2 = ProtoField.new("Return Bitfield 6 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_32 = ProtoField.new("Return Bitfield 6 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_4 = ProtoField.new("Return Bitfield 6 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_64 = ProtoField.new("Return Bitfield 6 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_secondary_order_id = ProtoField.new("Return Bitfield 6 Secondary Order Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield6secondaryorderid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7 = ProtoField.new("Return Bitfield 7", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_128 = ProtoField.new("Return Bitfield 7 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_16 = ProtoField.new("Return Bitfield 7 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_2 = ProtoField.new("Return Bitfield 7 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_32 = ProtoField.new("Return Bitfield 7 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_4 = ProtoField.new("Return Bitfield 7 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_64 = ProtoField.new("Return Bitfield 7 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_8 = ProtoField.new("Return Bitfield 7 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_sub_liquidity_indicator = ProtoField.new("Return Bitfield 7 Sub Liquidity Indicator", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield7subliquidityindicator", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8 = ProtoField.new("Return Bitfield 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_echo_text = ProtoField.new("Return Bitfield 8 Echo Text", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8echotext", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_ex_destination = ProtoField.new("Return Bitfield 8 Ex Destination", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8exdestination", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_fee_code = ProtoField.new("Return Bitfield 8 Fee Code", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8feecode", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_reserved_128 = ProtoField.new("Return Bitfield 8 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_rout_strategy = ProtoField.new("Return Bitfield 8 Rout Strategy", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8routstrategy", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_route_delivery_method = ProtoField.new("Return Bitfield 8 Route Delivery Method", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8routedeliverymethod", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_routing_inst = ProtoField.new("Return Bitfield 8 Routing Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8routinginst", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_stop_px = ProtoField.new("Return Bitfield 8 Stop Px", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield8stoppx", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9 = ProtoField.new("Return Bitfield 9", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_1 = ProtoField.new("Return Bitfield 9 Reserved 1", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved1", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_128 = ProtoField.new("Return Bitfield 9 Reserved 128", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved128", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x80)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_16 = ProtoField.new("Return Bitfield 9 Reserved 16", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved16", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x10)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_2 = ProtoField.new("Return Bitfield 9 Reserved 2", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved2", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_32 = ProtoField.new("Return Bitfield 9 Reserved 32", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved32", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x20)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_4 = ProtoField.new("Return Bitfield 9 Reserved 4", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved4", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_64 = ProtoField.new("Return Bitfield 9 Reserved 64", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved64", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x40)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_8 = ProtoField.new("Return Bitfield 9 Reserved 8", "cboe.bzxequities.binaryorderentry.boe.v2.3.returnbitfield9reserved8", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.risk_reset = ProtoField.new("Risk Reset", "cboe.bzxequities.binaryorderentry.boe.v2.3.riskreset", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.rout_strategy = ProtoField.new("Rout Strategy", "cboe.bzxequities.binaryorderentry.boe.v2.3.routstrategy", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.route_delivery_method = ProtoField.new("Route Delivery Method", "cboe.bzxequities.binaryorderentry.boe.v2.3.routedeliverymethod", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.routing_inst = ProtoField.new("Routing Inst", "cboe.bzxequities.binaryorderentry.boe.v2.3.routinginst", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.secondary_order_id = ProtoField.new("Secondary Order Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.secondaryorderid", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.sequence_number = ProtoField.new("Sequence Number", "cboe.bzxequities.binaryorderentry.boe.v2.3.sequencenumber", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.session_sub_id = ProtoField.new("Session Sub Id", "cboe.bzxequities.binaryorderentry.boe.v2.3.sessionsubid", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.side = ProtoField.new("Side", "cboe.bzxequities.binaryorderentry.boe.v2.3.side", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.start_of_message = ProtoField.new("Start Of Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.startofmessage", ftypes.UINT16)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.stop_px = ProtoField.new("Stop Px", "cboe.bzxequities.binaryorderentry.boe.v2.3.stoppx", ftypes.DOUBLE)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.sub_liquidity_indicator = ProtoField.new("Sub Liquidity Indicator", "cboe.bzxequities.binaryorderentry.boe.v2.3.subliquidityindicator", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.symbol = ProtoField.new("Symbol", "cboe.bzxequities.binaryorderentry.boe.v2.3.symbol", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.symbol_sfx = ProtoField.new("Symbol Sfx", "cboe.bzxequities.binaryorderentry.boe.v2.3.symbolsfx", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.text = ProtoField.new("Text", "cboe.bzxequities.binaryorderentry.boe.v2.3.text", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.time_in_force = ProtoField.new("Time In Force", "cboe.bzxequities.binaryorderentry.boe.v2.3.timeinforce", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.transact_time = ProtoField.new("Transact Time", "cboe.bzxequities.binaryorderentry.boe.v2.3.transacttime", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.transaction_time = ProtoField.new("Transaction Time", "cboe.bzxequities.binaryorderentry.boe.v2.3.transactiontime", ftypes.UINT64)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.unit_sequence = ProtoField.new("Unit Sequence", "cboe.bzxequities.binaryorderentry.boe.v2.3.unitsequence", ftypes.UINT32)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.username = ProtoField.new("Username", "cboe.bzxequities.binaryorderentry.boe.v2.3.username", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.working_price = ProtoField.new("Working Price", "cboe.bzxequities.binaryorderentry.boe.v2.3.workingprice", ftypes.DOUBLE)

-- Cboe BzxEquities Boe BinaryOrderEntry 2.3 Application Messages
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelordermessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.cancelrejectedmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.client_heartbeat_message = ProtoField.new("Client Heartbeat Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.clientheartbeatmessage", ftypes.BYTES)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_request_message = ProtoField.new("Login Request Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.loginrequestmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_response_message = ProtoField.new("Login Response Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.loginresponsemessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.logout_message = ProtoField.new("Logout Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.logoutmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.logout_request_message = ProtoField.new("Logout Request Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.logoutrequestmessage", ftypes.BYTES)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.mass_cancel_acknowledgment_message = ProtoField.new("Mass Cancel Acknowledgment Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.masscancelacknowledgmentmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_message = ProtoField.new("Modify Order Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.modifyordermessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_message = ProtoField.new("New Order Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.newordermessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_acknowledgment_message = ProtoField.new("Order Acknowledgment Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.orderacknowledgmentmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_cancelled_message = ProtoField.new("Order Cancelled Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.ordercancelledmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_execution_message = ProtoField.new("Order Execution Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.orderexecutionmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_modified_message = ProtoField.new("Order Modified Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.ordermodifiedmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_rejected_message = ProtoField.new("Order Rejected Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.orderrejectedmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_restated_message = ProtoField.new("Order Restated Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.orderrestatedmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_message = ProtoField.new("Purge Order Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgeordermessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_rejected_message = ProtoField.new("Purge Rejected Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.purgerejectedmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.replay_complete_message = ProtoField.new("Replay Complete Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.replaycompletemessage", ftypes.BYTES)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.server_heartbeat_message = ProtoField.new("Server Heartbeat Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.serverheartbeatmessage", ftypes.BYTES)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.trade_cancel_or_correct_message = ProtoField.new("Trade Cancel Or Correct Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.tradecancelorcorrectmessage", ftypes.STRING)
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.user_modify_rejected_message = ProtoField.new("User Modify Rejected Message", "cboe.bzxequities.binaryorderentry.boe.v2.3.usermodifyrejectedmessage", ftypes.STRING)

-- Cboe BzxEquities BinaryOrderEntry Boe 2.3 generated fields
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group_index = ProtoField.new("Param Group Index", "cboe.bzxequities.binaryorderentry.boe.v2.3.paramgroupindex", ftypes.UINT16)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Cboe BzxEquities BinaryOrderEntry Boe 2.3 Element Dissection Options
show.cancel_order_bitfield_1 = true
show.cancel_order_bitfield_2 = true
show.application_messages = true
show.message_header = true
show.modify_order_bitfield_1 = true
show.modify_order_bitfield_2 = true
show.new_order_bitfield_1 = true
show.new_order_bitfield_2 = true
show.new_order_bitfield_3 = true
show.new_order_bitfield_4 = true
show.new_order_bitfield_5 = true
show.new_order_bitfield_6 = true
show.new_order_bitfield_7 = true
show.packet = true
show.param_group = true
show.purge_order_bitfield_1 = true
show.purge_order_bitfield_2 = true
show.return_bitfield_1 = true
show.return_bitfield_10 = true
show.return_bitfield_11 = true
show.return_bitfield_12 = true
show.return_bitfield_13 = true
show.return_bitfield_14 = true
show.return_bitfield_15 = true
show.return_bitfield_16 = true
show.return_bitfield_17 = true
show.return_bitfield_2 = true
show.return_bitfield_3 = true
show.return_bitfield_4 = true
show.return_bitfield_5 = true
show.return_bitfield_6 = true
show.return_bitfield_7 = true
show.return_bitfield_8 = true
show.return_bitfield_9 = true
show.param_group_index = true

-- Register Cboe BzxEquities BinaryOrderEntry Boe 2.3 Show Options
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_cancel_order_bitfield_1 = Pref.bool("Show Cancel Order Bitfield 1", show.cancel_order_bitfield_1, "Parse and add Cancel Order Bitfield 1 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_cancel_order_bitfield_2 = Pref.bool("Show Cancel Order Bitfield 2", show.cancel_order_bitfield_2, "Parse and add Cancel Order Bitfield 2 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_message_header = Pref.bool("Show Message Header", show.message_header, "Parse and add Message Header to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_modify_order_bitfield_1 = Pref.bool("Show Modify Order Bitfield 1", show.modify_order_bitfield_1, "Parse and add Modify Order Bitfield 1 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_modify_order_bitfield_2 = Pref.bool("Show Modify Order Bitfield 2", show.modify_order_bitfield_2, "Parse and add Modify Order Bitfield 2 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_1 = Pref.bool("Show New Order Bitfield 1", show.new_order_bitfield_1, "Parse and add New Order Bitfield 1 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_2 = Pref.bool("Show New Order Bitfield 2", show.new_order_bitfield_2, "Parse and add New Order Bitfield 2 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_3 = Pref.bool("Show New Order Bitfield 3", show.new_order_bitfield_3, "Parse and add New Order Bitfield 3 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_4 = Pref.bool("Show New Order Bitfield 4", show.new_order_bitfield_4, "Parse and add New Order Bitfield 4 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_5 = Pref.bool("Show New Order Bitfield 5", show.new_order_bitfield_5, "Parse and add New Order Bitfield 5 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_6 = Pref.bool("Show New Order Bitfield 6", show.new_order_bitfield_6, "Parse and add New Order Bitfield 6 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_7 = Pref.bool("Show New Order Bitfield 7", show.new_order_bitfield_7, "Parse and add New Order Bitfield 7 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_param_group = Pref.bool("Show Param Group", show.param_group, "Parse and add Param Group to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_purge_order_bitfield_1 = Pref.bool("Show Purge Order Bitfield 1", show.purge_order_bitfield_1, "Parse and add Purge Order Bitfield 1 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_purge_order_bitfield_2 = Pref.bool("Show Purge Order Bitfield 2", show.purge_order_bitfield_2, "Parse and add Purge Order Bitfield 2 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_1 = Pref.bool("Show Return Bitfield 1", show.return_bitfield_1, "Parse and add Return Bitfield 1 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_10 = Pref.bool("Show Return Bitfield 10", show.return_bitfield_10, "Parse and add Return Bitfield 10 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_11 = Pref.bool("Show Return Bitfield 11", show.return_bitfield_11, "Parse and add Return Bitfield 11 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_12 = Pref.bool("Show Return Bitfield 12", show.return_bitfield_12, "Parse and add Return Bitfield 12 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_13 = Pref.bool("Show Return Bitfield 13", show.return_bitfield_13, "Parse and add Return Bitfield 13 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_14 = Pref.bool("Show Return Bitfield 14", show.return_bitfield_14, "Parse and add Return Bitfield 14 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_15 = Pref.bool("Show Return Bitfield 15", show.return_bitfield_15, "Parse and add Return Bitfield 15 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_16 = Pref.bool("Show Return Bitfield 16", show.return_bitfield_16, "Parse and add Return Bitfield 16 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_17 = Pref.bool("Show Return Bitfield 17", show.return_bitfield_17, "Parse and add Return Bitfield 17 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_2 = Pref.bool("Show Return Bitfield 2", show.return_bitfield_2, "Parse and add Return Bitfield 2 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_3 = Pref.bool("Show Return Bitfield 3", show.return_bitfield_3, "Parse and add Return Bitfield 3 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_4 = Pref.bool("Show Return Bitfield 4", show.return_bitfield_4, "Parse and add Return Bitfield 4 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_5 = Pref.bool("Show Return Bitfield 5", show.return_bitfield_5, "Parse and add Return Bitfield 5 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_6 = Pref.bool("Show Return Bitfield 6", show.return_bitfield_6, "Parse and add Return Bitfield 6 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_7 = Pref.bool("Show Return Bitfield 7", show.return_bitfield_7, "Parse and add Return Bitfield 7 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_8 = Pref.bool("Show Return Bitfield 8", show.return_bitfield_8, "Parse and add Return Bitfield 8 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_9 = Pref.bool("Show Return Bitfield 9", show.return_bitfield_9, "Parse and add Return Bitfield 9 to protocol tree")
omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_param_group_index = Pref.bool("Show Param Group Index", show.param_group_index, "Show generated param group index in protocol tree")


-- Handle changed preferences
function omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_application_messages then
    show.application_messages = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_application_messages
  end
  if show.cancel_order_bitfield_1 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_cancel_order_bitfield_1 then
    show.cancel_order_bitfield_1 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_cancel_order_bitfield_1
  end
  if show.cancel_order_bitfield_2 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_cancel_order_bitfield_2 then
    show.cancel_order_bitfield_2 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_cancel_order_bitfield_2
  end
  if show.message_header ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_message_header then
    show.message_header = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_message_header
  end
  if show.modify_order_bitfield_1 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_modify_order_bitfield_1 then
    show.modify_order_bitfield_1 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_modify_order_bitfield_1
  end
  if show.modify_order_bitfield_2 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_modify_order_bitfield_2 then
    show.modify_order_bitfield_2 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_modify_order_bitfield_2
  end
  if show.new_order_bitfield_1 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_1 then
    show.new_order_bitfield_1 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_1
  end
  if show.new_order_bitfield_2 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_2 then
    show.new_order_bitfield_2 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_2
  end
  if show.new_order_bitfield_3 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_3 then
    show.new_order_bitfield_3 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_3
  end
  if show.new_order_bitfield_4 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_4 then
    show.new_order_bitfield_4 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_4
  end
  if show.new_order_bitfield_5 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_5 then
    show.new_order_bitfield_5 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_5
  end
  if show.new_order_bitfield_6 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_6 then
    show.new_order_bitfield_6 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_6
  end
  if show.new_order_bitfield_7 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_7 then
    show.new_order_bitfield_7 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_new_order_bitfield_7
  end
  if show.packet ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_packet then
    show.packet = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_packet
  end
  if show.param_group ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_param_group then
    show.param_group = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_param_group
  end
  if show.purge_order_bitfield_1 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_purge_order_bitfield_1 then
    show.purge_order_bitfield_1 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_purge_order_bitfield_1
  end
  if show.purge_order_bitfield_2 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_purge_order_bitfield_2 then
    show.purge_order_bitfield_2 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_purge_order_bitfield_2
  end
  if show.return_bitfield_1 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_1 then
    show.return_bitfield_1 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_1
  end
  if show.return_bitfield_10 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_10 then
    show.return_bitfield_10 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_10
  end
  if show.return_bitfield_11 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_11 then
    show.return_bitfield_11 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_11
  end
  if show.return_bitfield_12 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_12 then
    show.return_bitfield_12 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_12
  end
  if show.return_bitfield_13 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_13 then
    show.return_bitfield_13 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_13
  end
  if show.return_bitfield_14 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_14 then
    show.return_bitfield_14 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_14
  end
  if show.return_bitfield_15 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_15 then
    show.return_bitfield_15 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_15
  end
  if show.return_bitfield_16 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_16 then
    show.return_bitfield_16 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_16
  end
  if show.return_bitfield_17 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_17 then
    show.return_bitfield_17 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_17
  end
  if show.return_bitfield_2 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_2 then
    show.return_bitfield_2 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_2
  end
  if show.return_bitfield_3 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_3 then
    show.return_bitfield_3 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_3
  end
  if show.return_bitfield_4 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_4 then
    show.return_bitfield_4 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_4
  end
  if show.return_bitfield_5 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_5 then
    show.return_bitfield_5 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_5
  end
  if show.return_bitfield_6 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_6 then
    show.return_bitfield_6 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_6
  end
  if show.return_bitfield_7 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_7 then
    show.return_bitfield_7 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_7
  end
  if show.return_bitfield_8 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_8 then
    show.return_bitfield_8 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_8
  end
  if show.return_bitfield_9 ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_9 then
    show.return_bitfield_9 = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_return_bitfield_9
  end
  if show.param_group_index ~= omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_param_group_index then
    show.param_group_index = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.prefs.show_param_group_index
  end
end


-----------------------------------------------------------------------
-- Cboe BzxEquities BinaryOrderEntry Boe 2.3 Fields
-----------------------------------------------------------------------

-- Account
cboe_bzxequities_binaryorderentry_boe_v2_3.account = {}

-- Size: Account
cboe_bzxequities_binaryorderentry_boe_v2_3.account.size = 16

-- Display: Account
cboe_bzxequities_binaryorderentry_boe_v2_3.account.display = function(value)
  return "Account: "..value
end

-- Dissect: Account
cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.account, range, value, display)

  return offset + length, value
end

-- Attributed Quote
cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote = {}

-- Size: Attributed Quote
cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.size = 1

-- Display: Attributed Quote
cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.display = function(value)
  if value == "N" then
    return "Attributed Quote: Do Not Attribute Firm Mpid (N)"
  end
  if value == "Y" then
    return "Attributed Quote: Attribute Firm Mpid (Y)"
  end
  if value == "R" then
    return "Attributed Quote: Attribute Rtal (R)"
  end

  return "Attributed Quote: Unknown("..value..")"
end

-- Dissect: Attributed Quote
cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.attributed_quote, range, value, display)

  return offset + length, value
end

-- Base Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator = {}

-- Size: Base Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.size = 1

-- Display: Base Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.display = function(value)
  if value == "A" then
    return "Base Liquidity Indicator: Added Liquidity (A)"
  end
  if value == "R" then
    return "Base Liquidity Indicator: Removed Liquidity (R)"
  end
  if value == "X" then
    return "Base Liquidity Indicator: Routed To Another Market (X)"
  end
  if value == "C" then
    return "Base Liquidity Indicator: Auction Or Uncrossing (C)"
  end

  return "Base Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Base Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.base_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Cancel Orig On Reject
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_orig_on_reject = {}

-- Size: Cancel Orig On Reject
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_orig_on_reject.size = 1

-- Display: Cancel Orig On Reject
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_orig_on_reject.display = function(value)
  return "Cancel Orig On Reject: "..value
end

-- Dissect: Cancel Orig On Reject
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_orig_on_reject.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_orig_on_reject.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_orig_on_reject.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_orig_on_reject, range, value, display)

  return offset + length, value
end

-- Cancel Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reason = {}

-- Size: Cancel Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reason.size = 1

-- Display: Cancel Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reason.display = function(value)
  if value == "A" then
    return "Cancel Reason: Admin (A)"
  end
  if value == "D" then
    return "Cancel Reason: Duplicate Identifier (D)"
  end
  if value == "E" then
    return "Cancel Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Cancel Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Cancel Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Cancel Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Cancel Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Cancel Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Cancel Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Cancel Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Cancel Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Cancel Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Cancel Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Cancel Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Cancel Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reason: Would Wash (V)"
  end
  if value == "W" then
    return "Cancel Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Cancel Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Cancel Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Cancel Reason: Unforeseen Reason (Z)"
  end
  if value == "f" then
    return "Cancel Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Cancel Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Cancel Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Cancel Reason: Risk Management Risk Root Level (s)"
  end
  if value == "u" then
    return "Cancel Reason: Limit Up Limit Down (u)"
  end
  if value == "w" then
    return "Cancel Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Cancel Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Cancel Reason: Order Received By Cboe During Replay (y)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reject_reason = {}

-- Size: Cancel Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reject_reason.size = 1

-- Display: Cancel Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reject_reason.display = function(value)
  if value == "A" then
    return "Cancel Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Cancel Reject Reason: Duplicate Identifier (D)"
  end
  if value == "E" then
    return "Cancel Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Cancel Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Cancel Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Cancel Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Cancel Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Cancel Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Cancel Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Cancel Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Cancel Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Cancel Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Cancel Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Cancel Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Cancel Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Cancel Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Cancel Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Cancel Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Cancel Reject Reason: Would Wash (V)"
  end
  if value == "W" then
    return "Cancel Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Cancel Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Cancel Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Cancel Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "f" then
    return "Cancel Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Cancel Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Cancel Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Cancel Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Cancel Reject Reason: Risk Management Risk Root Level (s)"
  end
  if value == "u" then
    return "Cancel Reject Reason: Limit Up Limit Down (u)"
  end
  if value == "w" then
    return "Cancel Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Cancel Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Cancel Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Cancel Reject Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_reject_reason, range, value, display)

  return offset + length, value
end

-- Cancelled Order Count
cboe_bzxequities_binaryorderentry_boe_v2_3.cancelled_order_count = {}

-- Size: Cancelled Order Count
cboe_bzxequities_binaryorderentry_boe_v2_3.cancelled_order_count.size = 4

-- Display: Cancelled Order Count
cboe_bzxequities_binaryorderentry_boe_v2_3.cancelled_order_count.display = function(value)
  return "Cancelled Order Count: "..value
end

-- Dissect: Cancelled Order Count
cboe_bzxequities_binaryorderentry_boe_v2_3.cancelled_order_count.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.cancelled_order_count.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancelled_order_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancelled_order_count, range, value, display)

  return offset + length, value
end

-- Capacity
cboe_bzxequities_binaryorderentry_boe_v2_3.capacity = {}

-- Size: Capacity
cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.size = 1

-- Display: Capacity
cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.display = function(value)
  if value == "A" then
    return "Capacity: Agency (A)"
  end
  if value == "P" then
    return "Capacity: Principal (P)"
  end
  if value == "R" then
    return "Capacity: Riskless Principal (R)"
  end

  return "Capacity: Unknown("..value..")"
end

-- Dissect: Capacity
cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.capacity, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id = {}

-- Size: Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.size = 20

-- Display: Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Clearing Account
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account = {}

-- Size: Clearing Account
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.size = 4

-- Display: Clearing Account
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.display = function(value)
  return "Clearing Account: "..value
end

-- Dissect: Clearing Account
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.clearing_account, range, value, display)

  return offset + length, value
end

-- Clearing Firm
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm = {}

-- Size: Clearing Firm
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.size = 4

-- Display: Clearing Firm
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.display = function(value)
  return "Clearing Firm: "..value
end

-- Dissect: Clearing Firm
cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.clearing_firm, range, value, display)

  return offset + length, value
end

-- Contra Broker
cboe_bzxequities_binaryorderentry_boe_v2_3.contra_broker = {}

-- Size: Contra Broker
cboe_bzxequities_binaryorderentry_boe_v2_3.contra_broker.size = 4

-- Display: Contra Broker
cboe_bzxequities_binaryorderentry_boe_v2_3.contra_broker.display = function(value)
  return "Contra Broker: "..value
end

-- Dissect: Contra Broker
cboe_bzxequities_binaryorderentry_boe_v2_3.contra_broker.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.contra_broker.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.contra_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.contra_broker, range, value, display)

  return offset + length, value
end

-- Corrected Price
cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price = {}

-- Size: Corrected Price
cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.size = 8

-- Display: Corrected Price
cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.display = function(value)
  return "Corrected Price: "..value
end

-- Translate: Corrected Price
cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Corrected Price
cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.translate(raw)
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.corrected_price, range, value, display)

  return offset + length, value
end

-- Custom Group Id
cboe_bzxequities_binaryorderentry_boe_v2_3.custom_group_id = {}

-- Size: Custom Group Id
cboe_bzxequities_binaryorderentry_boe_v2_3.custom_group_id.size = 2

-- Display: Custom Group Id
cboe_bzxequities_binaryorderentry_boe_v2_3.custom_group_id.display = function(value)
  return "Custom Group Id: "..value
end

-- Dissect: Custom Group Id
cboe_bzxequities_binaryorderentry_boe_v2_3.custom_group_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.custom_group_id.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.custom_group_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.custom_group_id, range, value, display)

  return offset + length, value
end

-- Discretion Amount
cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount = {}

-- Size: Discretion Amount
cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.size = 2

-- Display: Discretion Amount
cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.display = function(value)
  return "Discretion Amount: "..value
end

-- Dissect: Discretion Amount
cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.discretion_amount, range, value, display)

  return offset + length, value
end

-- Display Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator = {}

-- Size: Display Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.size = 1

-- Display: Display Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.display = function(value)
  if value == "V" then
    return "Display Indicator: Determined By Port Level Setting (V)"
  end
  if value == "P" then
    return "Display Indicator: Price Adjust (P)"
  end
  if value == "m" then
    return "Display Indicator: Multiple Price Adjust (m)"
  end
  if value == "m" then
    return "Display Indicator: Reject The Order If It Cannot Be Booked And Displayed Without Adjustment (m)"
  end
  if value == "R" then
    return "Display Indicator: Cancel Back The Order If It Cannot Be Booked And Displayed Without Adjustment (R)"
  end
  if value == "r" then
    return "Display Indicator: Hidden Cancel Back The Order If It Cannot Be Booked Without Adjustment (r)"
  end
  if value == "S" then
    return "Display Indicator: Display Price Sliding (S)"
  end
  if value == "L" then
    return "Display Indicator: Display Price Sliding But Reject If Order Crosses The Nbbo On Entry (L)"
  end
  if value == "M" then
    return "Display Indicator: Multiple Display Price Sliding (M)"
  end
  if value == "v" then
    return "Display Indicator: Visible (v)"
  end
  if value == "I" then
    return "Display Indicator: Invisible (I)"
  end
  if value == "N" then
    return "Display Indicator: No Rescrape At Limit (N)"
  end

  return "Display Indicator: Unknown("..value..")"
end

-- Dissect: Display Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.display_indicator, range, value, display)

  return offset + length, value
end

-- Display Price
cboe_bzxequities_binaryorderentry_boe_v2_3.display_price = {}

-- Size: Display Price
cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.size = 8

-- Display: Display Price
cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.display = function(value)
  return "Display Price: "..value
end

-- Translate: Display Price
cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Display Price
cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.translate(raw)
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.display_price, range, value, display)

  return offset + length, value
end

-- Display Range
cboe_bzxequities_binaryorderentry_boe_v2_3.display_range = {}

-- Size: Display Range
cboe_bzxequities_binaryorderentry_boe_v2_3.display_range.size = 4

-- Display: Display Range
cboe_bzxequities_binaryorderentry_boe_v2_3.display_range.display = function(value)
  return "Display Range: "..value
end

-- Dissect: Display Range
cboe_bzxequities_binaryorderentry_boe_v2_3.display_range.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.display_range.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.display_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.display_range, range, value, display)

  return offset + length, value
end

-- Echo Text
cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text = {}

-- Size: Echo Text
cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.size = 64

-- Display: Echo Text
cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.display = function(value)
  return "Echo Text: "..value
end

-- Dissect: Echo Text
cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.echo_text, range, value, display)

  return offset + length, value
end

-- Ex Destination
cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination = {}

-- Size: Ex Destination
cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.size = 1

-- Display: Ex Destination
cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.display = function(value)
  if value == "A" then
    return "Ex Destination: Nyse American (A)"
  end
  if value == "B" then
    return "Ex Destination: Nasdaq Bx (B)"
  end
  if value == "C" then
    return "Ex Destination: Nyse National (C)"
  end
  if value == "H" then
    return "Ex Destination: Miax Pearl (H)"
  end
  if value == "I" then
    return "Ex Destination: Investors Exchange (I)"
  end
  if value == "J" then
    return "Ex Destination: Edga (J)"
  end
  if value == "K" then
    return "Ex Destination: Edgx (K)"
  end
  if value == "L" then
    return "Ex Destination: Long Term Stock Exchange (L)"
  end
  if value == "M" then
    return "Ex Destination: Chx (M)"
  end
  if value == "N" then
    return "Ex Destination: Nyse (N)"
  end
  if value == "U" then
    return "Ex Destination: Nyse Arca (U)"
  end
  if value == "Q" then
    return "Ex Destination: Nasdaq (Q)"
  end
  if value == "Q" then
    return "Ex Destination: Memx (Q)"
  end
  if value == "X" then
    return "Ex Destination: Nasdaq Psx (X)"
  end
  if value == "Y" then
    return "Ex Destination: Byx (Y)"
  end

  return "Ex Destination: Unknown("..value..")"
end

-- Dissect: Ex Destination
cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.ex_destination, range, value, display)

  return offset + length, value
end

-- Exec Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_id = {}

-- Size: Exec Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_id.size = 8

-- Display: Exec Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst = {}

-- Size: Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.size = 1

-- Display: Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.display = function(value)
  if value == "f" then
    return "Exec Inst: Intermarket Sweep (f)"
  end
  if value == "P" then
    return "Exec Inst: Market Peg (P)"
  end
  if value == "Q" then
    return "Exec Inst: Market Marker Peg (Q)"
  end
  if value == "Q" then
    return "Exec Inst: Primary Peg (Q)"
  end
  if value == "U" then
    return "Exec Inst: Supplemental Peg Order (U)"
  end
  if value == "M" then
    return "Exec Inst: Midpoint Peg (M)"
  end
  if value == "m" then
    return "Exec Inst: Midpoint Peg But No Match On Nbbo Lock (m)"
  end
  if value == "L" then
    return "Exec Inst: Alternate Midpoint (L)"
  end
  if value == "r" then
    return "Exec Inst: Late (r)"
  end
  if value == "o" then
    return "Exec Inst: Listing Market Opening (o)"
  end
  if value == "c" then
    return "Exec Inst: Listing Market Close (c)"
  end
  if value == "a" then
    return "Exec Inst: Both Listing Market Open And Close (a)"
  end

  return "Exec Inst: Unknown("..value..")"
end

-- Dissect: Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.exec_inst, range, value, display)

  return offset + length, value
end

-- Exec Ref Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_ref_id = {}

-- Size: Exec Ref Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_ref_id.size = 8

-- Display: Exec Ref Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_ref_id.display = function(value)
  return "Exec Ref Id: "..value
end

-- Dissect: Exec Ref Id
cboe_bzxequities_binaryorderentry_boe_v2_3.exec_ref_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_ref_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_ref_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.exec_ref_id, range, value, display)

  return offset + length, value
end

-- Expire Time
cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time = {}

-- Size: Expire Time
cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.size = 8

-- Display: Expire Time
cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Expire Time
cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.expire_time, range, value, display)

  return offset + length, value
end

-- Ext Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst = {}

-- Size: Ext Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.size = 1

-- Display: Ext Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.display = function(value)
  if value == "N" then
    return "Ext Exec Inst: None (N)"
  end
  if value == "R" then
    return "Ext Exec Inst: Order Eligible For Retail Rebate (R)"
  end

  return "Ext Exec Inst: Unknown("..value..")"
end

-- Dissect: Ext Exec Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.ext_exec_inst, range, value, display)

  return offset + length, value
end

-- Fee Code
cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code = {}

-- Size: Fee Code
cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code.size = 2

-- Display: Fee Code
cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code.display = function(value)
  return "Fee Code: "..value
end

-- Dissect: Fee Code
cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.fee_code, range, value, display)

  return offset + length, value
end

-- Last Px
cboe_bzxequities_binaryorderentry_boe_v2_3.last_px = {}

-- Size: Last Px
cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.size = 8

-- Display: Last Px
cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.display = function(value)
  return "Last Px: "..value
end

-- Translate: Last Px
cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Last Px
cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.translate(raw)
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.last_px, range, value, display)

  return offset + length, value
end

-- Last Received Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number = {}

-- Size: Last Received Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number.size = 4

-- Display: Last Received Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number.display = function(value)
  return "Last Received Sequence Number: "..value
end

-- Dissect: Last Received Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.last_received_sequence_number, range, value, display)

  return offset + length, value
end

-- Last Shares
cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares = {}

-- Size: Last Shares
cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.size = 4

-- Display: Last Shares
cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.display = function(value)
  return "Last Shares: "..value
end

-- Dissect: Last Shares
cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.last_shares, range, value, display)

  return offset + length, value
end

-- Leaves Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty = {}

-- Size: Leaves Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.size = 4

-- Display: Leaves Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Locate Reqd
cboe_bzxequities_binaryorderentry_boe_v2_3.locate_reqd = {}

-- Size: Locate Reqd
cboe_bzxequities_binaryorderentry_boe_v2_3.locate_reqd.size = 1

-- Display: Locate Reqd
cboe_bzxequities_binaryorderentry_boe_v2_3.locate_reqd.display = function(value)
  return "Locate Reqd: "..value
end

-- Dissect: Locate Reqd
cboe_bzxequities_binaryorderentry_boe_v2_3.locate_reqd.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.locate_reqd.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.locate_reqd.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.locate_reqd, range, value, display)

  return offset + length, value
end

-- Login Response Status
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_status = {}

-- Size: Login Response Status
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_status.size = 1

-- Display: Login Response Status
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_status.display = function(value)
  if value == "A" then
    return "Login Response Status: Login Accepted (A)"
  end
  if value == "N" then
    return "Login Response Status: Not Authorized (N)"
  end
  if value == "D" then
    return "Login Response Status: Session Is Disabled (D)"
  end
  if value == "B" then
    return "Login Response Status: Session In Use (B)"
  end
  if value == "S" then
    return "Login Response Status: Invalid Session (S)"
  end
  if value == "Q" then
    return "Login Response Status: Sequence Ahead In Login Message (Q)"
  end
  if value == "I" then
    return "Login Response Status: Invalid Unit Given In Login Message (I)"
  end
  if value == "F" then
    return "Login Response Status: Invalid Return Bit Field In Login Message (F)"
  end
  if value == "M" then
    return "Login Response Status: Invalid Login Request Message Structure (M)"
  end

  return "Login Response Status: Unknown("..value..")"
end

-- Dissect: Login Response Status
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_status.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_response_status, range, value, display)

  return offset + length, value
end

-- Login Response Text
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_text = {}

-- Size: Login Response Text
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_text.size = 60

-- Display: Login Response Text
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_text.display = function(value)
  return "Login Response Text: "..value
end

-- Dissect: Login Response Text
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_response_text, range, value, display)

  return offset + length, value
end

-- Logout Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason = {}

-- Size: Logout Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason.size = 1

-- Display: Logout Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason.display = function(value)
  if value == "U" then
    return "Logout Reason: User Requested (U)"
  end
  if value == "E" then
    return "Logout Reason: End Of Day (E)"
  end
  if value == "A" then
    return "Logout Reason: Administrative (A)"
  end
  if value == "!" then
    return "Logout Reason: Protocol Violation (!)"
  end

  return "Logout Reason: Unknown("..value..")"
end

-- Dissect: Logout Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.logout_reason, range, value, display)

  return offset + length, value
end

-- Logout Reason Text
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason_text = {}

-- Size: Logout Reason Text
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason_text.size = 60

-- Display: Logout Reason Text
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason_text.display = function(value)
  return "Logout Reason Text: "..value
end

-- Dissect: Logout Reason Text
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason_text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason_text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason_text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.logout_reason_text, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id = {}

-- Size: Mass Cancel Id
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.size = 20

-- Display: Mass Cancel Id
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.display = function(value)
  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_inst = {}

-- Size: Mass Cancel Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_inst.size = 16

-- Display: Mass Cancel Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_inst.display = function(value)
  return "Mass Cancel Inst: "..value
end

-- Dissect: Mass Cancel Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.mass_cancel_inst, range, value, display)

  return offset + length, value
end

-- Matching Unit
cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit = {}

-- Size: Matching Unit
cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit.size = 1

-- Display: Matching Unit
cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit.display = function(value)
  return "Matching Unit: "..value
end

-- Dissect: Matching Unit
cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.matching_unit, range, value, display)

  return offset + length, value
end

-- Max Floor
cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor = {}

-- Size: Max Floor
cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.size = 4

-- Display: Max Floor
cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.display = function(value)
  return "Max Floor: "..value
end

-- Dissect: Max Floor
cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.max_floor, range, value, display)

  return offset + length, value
end

-- Message Length
cboe_bzxequities_binaryorderentry_boe_v2_3.message_length = {}

-- Size: Message Length
cboe_bzxequities_binaryorderentry_boe_v2_3.message_length.size = 2

-- Display: Message Length
cboe_bzxequities_binaryorderentry_boe_v2_3.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
cboe_bzxequities_binaryorderentry_boe_v2_3.message_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
cboe_bzxequities_binaryorderentry_boe_v2_3.message_type = {}

-- Size: Message Type
cboe_bzxequities_binaryorderentry_boe_v2_3.message_type.size = 1

-- Display: Message Type
cboe_bzxequities_binaryorderentry_boe_v2_3.message_type.display = function(value)
  if value == 0x37 then
    return "Message Type: Login Request Message (0x37)"
  end
  if value == 0x02 then
    return "Message Type: Logout Request Message (0x02)"
  end
  if value == 0x03 then
    return "Message Type: Client Heartbeat Message (0x03)"
  end
  if value == 0x24 then
    return "Message Type: Login Response Message (0x24)"
  end
  if value == 0x08 then
    return "Message Type: Logout Message (0x08)"
  end
  if value == 0x09 then
    return "Message Type: Server Heartbeat Message (0x09)"
  end
  if value == 0x13 then
    return "Message Type: Replay Complete Message (0x13)"
  end
  if value == 0x38 then
    return "Message Type: New Order Message (0x38)"
  end
  if value == 0x39 then
    return "Message Type: Cancel Order Message (0x39)"
  end
  if value == 0x3A then
    return "Message Type: Modify Order Message (0x3A)"
  end
  if value == 0x47 then
    return "Message Type: Purge Order Message (0x47)"
  end
  if value == 0x25 then
    return "Message Type: Order Acknowledgment Message (0x25)"
  end
  if value == 0x26 then
    return "Message Type: Order Rejected Message (0x26)"
  end
  if value == 0x27 then
    return "Message Type: Order Modified Message (0x27)"
  end
  if value == 0x28 then
    return "Message Type: Order Restated Message (0x28)"
  end
  if value == 0x29 then
    return "Message Type: User Modify Rejected Message (0x29)"
  end
  if value == 0x2A then
    return "Message Type: Order Cancelled Message (0x2A)"
  end
  if value == 0x2B then
    return "Message Type: Cancel Rejected Message (0x2B)"
  end
  if value == 0x2C then
    return "Message Type: Order Execution Message (0x2C)"
  end
  if value == 0x2D then
    return "Message Type: Trade Cancel Or Correct Message (0x2D)"
  end
  if value == 0x36 then
    return "Message Type: Mass Cancel Acknowledgment Message (0x36)"
  end
  if value == 0x48 then
    return "Message Type: Purge Rejected Message (0x48)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
cboe_bzxequities_binaryorderentry_boe_v2_3.message_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.message_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty = {}

-- Size: Min Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.size = 4

-- Display: Min Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.display = function(value)
  return "Min Qty: "..value
end

-- Dissect: Min Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.min_qty, range, value, display)

  return offset + length, value
end

-- Modify Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_reject_reason = {}

-- Size: Modify Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_reject_reason.size = 1

-- Display: Modify Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_reject_reason.display = function(value)
  if value == "A" then
    return "Modify Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Modify Reject Reason: Duplicate Identifier (D)"
  end
  if value == "E" then
    return "Modify Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Modify Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Modify Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Modify Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Modify Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Modify Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Modify Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Modify Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Modify Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Modify Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Modify Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Modify Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Modify Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Modify Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Modify Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Modify Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Modify Reject Reason: Would Wash (V)"
  end
  if value == "W" then
    return "Modify Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Modify Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Modify Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Modify Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "f" then
    return "Modify Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Modify Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Modify Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Modify Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Modify Reject Reason: Risk Management Risk Root Level (s)"
  end
  if value == "u" then
    return "Modify Reject Reason: Limit Up Limit Down (u)"
  end
  if value == "w" then
    return "Modify Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Modify Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Modify Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Modify Reject Reason: Unknown("..value..")"
end

-- Dissect: Modify Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_reject_reason, range, value, display)

  return offset + length, value
end

-- No Unspecified Unit Replay
cboe_bzxequities_binaryorderentry_boe_v2_3.no_unspecified_unit_replay = {}

-- Size: No Unspecified Unit Replay
cboe_bzxequities_binaryorderentry_boe_v2_3.no_unspecified_unit_replay.size = 1

-- Display: No Unspecified Unit Replay
cboe_bzxequities_binaryorderentry_boe_v2_3.no_unspecified_unit_replay.display = function(value)
  if value == "0" then
    return "No Unspecified Unit Replay: False (0)"
  end
  if value == "1" then
    return "No Unspecified Unit Replay: True (1)"
  end
  if value == "T" then
    return "No Unspecified Unit Replay: Test (T)"
  end

  return "No Unspecified Unit Replay: Unknown("..value..")"
end

-- Dissect: No Unspecified Unit Replay
cboe_bzxequities_binaryorderentry_boe_v2_3.no_unspecified_unit_replay.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.no_unspecified_unit_replay.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.no_unspecified_unit_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.no_unspecified_unit_replay, range, value, display)

  return offset + length, value
end

-- Number Of Cancel Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_cancel_order_bitfields = {}

-- Size: Number Of Cancel Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_cancel_order_bitfields.size = 1

-- Display: Number Of Cancel Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_cancel_order_bitfields.display = function(value)
  return "Number Of Cancel Order Bitfields: "..value
end

-- Dissect: Number Of Cancel Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_cancel_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_cancel_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_cancel_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_cancel_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Modify Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_modify_order_bitfields = {}

-- Size: Number Of Modify Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_modify_order_bitfields.size = 1

-- Display: Number Of Modify Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_modify_order_bitfields.display = function(value)
  return "Number Of Modify Order Bitfields: "..value
end

-- Dissect: Number Of Modify Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_modify_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_modify_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_modify_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_modify_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of New Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_new_order_bitfields = {}

-- Size: Number Of New Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_new_order_bitfields.size = 1

-- Display: Number Of New Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_new_order_bitfields.display = function(value)
  return "Number Of New Order Bitfields: "..value
end

-- Dissect: Number Of New Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_new_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_new_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_new_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_new_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Param Groups
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups = {}

-- Size: Number Of Param Groups
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups.size = 1

-- Display: Number Of Param Groups
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups.display = function(value)
  return "Number Of Param Groups: "..value
end

-- Dissect: Number Of Param Groups
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_param_groups, range, value, display)

  return offset + length, value
end

-- Number Of Purge Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_purge_order_bitfields = {}

-- Size: Number Of Purge Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_purge_order_bitfields.size = 1

-- Display: Number Of Purge Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_purge_order_bitfields.display = function(value)
  return "Number Of Purge Order Bitfields: "..value
end

-- Dissect: Number Of Purge Order Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_purge_order_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_purge_order_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_purge_order_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_purge_order_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Return Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields = {}

-- Size: Number Of Return Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.size = 1

-- Display: Number Of Return Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.display = function(value)
  return "Number Of Return Bitfields: "..value
end

-- Dissect: Number Of Return Bitfields
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_return_bitfields, range, value, display)

  return offset + length, value
end

-- Number Of Units
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units = {}

-- Size: Number Of Units
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units.size = 1

-- Display: Number Of Units
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units.display = function(value)
  return "Number Of Units: "..value
end

-- Dissect: Number Of Units
cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.number_of_units, range, value, display)

  return offset + length, value
end

-- Ord Type
cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type = {}

-- Size: Ord Type
cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.size = 1

-- Display: Ord Type
cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.display = function(value)
  if value == "1" then
    return "Ord Type: Market (1)"
  end
  if value == "2" then
    return "Ord Type: Limit (2)"
  end
  if value == "3" then
    return "Ord Type: Stop (3)"
  end
  if value == "4" then
    return "Ord Type: Stop Limit (4)"
  end
  if value == "P" then
    return "Ord Type: Pegged (P)"
  end

  return "Ord Type: Unknown("..value..")"
end

-- Dissect: Ord Type
cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.ord_type, range, value, display)

  return offset + length, value
end

-- Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.order_id = {}

-- Size: Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.size = 8

-- Display: Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty = {}

-- Size: Order Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.size = 4

-- Display: Order Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.order_reject_reason = {}

-- Size: Order Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.order_reject_reason.size = 1

-- Display: Order Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.order_reject_reason.display = function(value)
  if value == "A" then
    return "Order Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Order Reject Reason: Duplicate Identifier (D)"
  end
  if value == "E" then
    return "Order Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Order Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Order Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Order Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Order Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Order Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Order Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Order Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Order Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Order Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Order Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Order Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Order Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Order Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Order Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Order Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Order Reject Reason: Would Wash (V)"
  end
  if value == "W" then
    return "Order Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Order Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Order Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Order Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "f" then
    return "Order Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Order Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Order Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Order Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Order Reject Reason: Risk Management Risk Root Level (s)"
  end
  if value == "u" then
    return "Order Reject Reason: Limit Up Limit Down (u)"
  end
  if value == "w" then
    return "Order Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Order Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Order Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Order Reject Reason: Unknown("..value..")"
end

-- Dissect: Order Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.order_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.order_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_reject_reason, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.size = 20

-- Display: Orig Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Orig Time
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_time = {}

-- Size: Orig Time
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_time.size = 8

-- Display: Orig Time
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Orig Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Orig Time
cboe_bzxequities_binaryorderentry_boe_v2_3.orig_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.orig_time, range, value, display)

  return offset + length, value
end

-- Param Group Length
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length = {}

-- Size: Param Group Length
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length.size = 2

-- Display: Param Group Length
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length.display = function(value)
  return "Param Group Length: "..value
end

-- Dissect: Param Group Length
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group_length, range, value, display)

  return offset + length, value
end

-- Param Group Type
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type = {}

-- Size: Param Group Type
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type.size = 1

-- Display: Param Group Type
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type.display = function(value)
  return "Param Group Type: "..value
end

-- Dissect: Param Group Type
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group_type, range, value, display)

  return offset + length, value
end

-- Password
cboe_bzxequities_binaryorderentry_boe_v2_3.password = {}

-- Size: Password
cboe_bzxequities_binaryorderentry_boe_v2_3.password.size = 10

-- Display: Password
cboe_bzxequities_binaryorderentry_boe_v2_3.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
cboe_bzxequities_binaryorderentry_boe_v2_3.password.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.password.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.password, range, value, display)

  return offset + length, value
end

-- Peg Difference
cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference = {}

-- Size: Peg Difference
cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.size = 8

-- Display: Peg Difference
cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.display = function(value)
  return "Peg Difference: "..value
end

-- Translate: Peg Difference
cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Peg Difference
cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.translate(raw)
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.peg_difference, range, value, display)

  return offset + length, value
end

-- Prevent Match
cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match = {}

-- Size: Prevent Match
cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.size = 3

-- Display: Prevent Match
cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.display = function(value)
  return "Prevent Match: "..value
end

-- Dissect: Prevent Match
cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.prevent_match, range, value, display)

  return offset + length, value
end

-- Price
cboe_bzxequities_binaryorderentry_boe_v2_3.price = {}

-- Size: Price
cboe_bzxequities_binaryorderentry_boe_v2_3.price.size = 8

-- Display: Price
cboe_bzxequities_binaryorderentry_boe_v2_3.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
cboe_bzxequities_binaryorderentry_boe_v2_3.price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Price
cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxequities_binaryorderentry_boe_v2_3.price.translate(raw)
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.price, range, value, display)

  return offset + length, value
end

-- Purge Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_reject_reason = {}

-- Size: Purge Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_reject_reason.size = 1

-- Display: Purge Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_reject_reason.display = function(value)
  if value == "A" then
    return "Purge Reject Reason: Admin (A)"
  end
  if value == "D" then
    return "Purge Reject Reason: Duplicate Identifier (D)"
  end
  if value == "E" then
    return "Purge Reject Reason: Size Reduction Due To Swp Restatement (E)"
  end
  if value == "F" then
    return "Purge Reject Reason: Failed To Quote (F)"
  end
  if value == "H" then
    return "Purge Reject Reason: Halted (H)"
  end
  if value == "I" then
    return "Purge Reject Reason: Incorrect Data Center (I)"
  end
  if value == "J" then
    return "Purge Reject Reason: Too Late To Cancel (J)"
  end
  if value == "K" then
    return "Purge Reject Reason: Order Rate Threshold Exceeded (K)"
  end
  if value == "L" then
    return "Purge Reject Reason: Order Would Lock Or Cross Nbbo (L)"
  end
  if value == "M" then
    return "Purge Reject Reason: Order Size Exceeded (M)"
  end
  if value == "N" then
    return "Purge Reject Reason: Ran Out Of Liquidity To Execute Against (N)"
  end
  if value == "O" then
    return "Purge Reject Reason: Cl Ord Id Doesnt Match A Known Order (O)"
  end
  if value == "P" then
    return "Purge Reject Reason: Cant Modify An Order That Is Pending Fill (P)"
  end
  if value == "Q" then
    return "Purge Reject Reason: Waiting For First Trade (Q)"
  end
  if value == "R" then
    return "Purge Reject Reason: Routing Unavailable (R)"
  end
  if value == "S" then
    return "Purge Reject Reason: Short Sale Price Violation (S)"
  end
  if value == "T" then
    return "Purge Reject Reason: Fill Would Trade Through The Nbbo (T)"
  end
  if value == "U" then
    return "Purge Reject Reason: User Requested (U)"
  end
  if value == "V" then
    return "Purge Reject Reason: Would Wash (V)"
  end
  if value == "W" then
    return "Purge Reject Reason: Add Liquidity Only Order Would Remove (W)"
  end
  if value == "X" then
    return "Purge Reject Reason: Order Expired (X)"
  end
  if value == "Y" then
    return "Purge Reject Reason: Symbol Not Supported (Y)"
  end
  if value == "Z" then
    return "Purge Reject Reason: Unforeseen Reason (Z)"
  end
  if value == "f" then
    return "Purge Reject Reason: Risk Management Mpid Or Custom Group Id Level (f)"
  end
  if value == "m" then
    return "Purge Reject Reason: Market Access Risk Limit Exceeded (m)"
  end
  if value == "o" then
    return "Purge Reject Reason: Max Open Orders Count Exceeded (o)"
  end
  if value == "r" then
    return "Purge Reject Reason: Reserve Reload (r)"
  end
  if value == "s" then
    return "Purge Reject Reason: Risk Management Risk Root Level (s)"
  end
  if value == "u" then
    return "Purge Reject Reason: Limit Up Limit Down (u)"
  end
  if value == "w" then
    return "Purge Reject Reason: Would Remove On Unslide (w)"
  end
  if value == "x" then
    return "Purge Reject Reason: Crossed Market (x)"
  end
  if value == "y" then
    return "Purge Reject Reason: Order Received By Cboe During Replay (y)"
  end

  return "Purge Reject Reason: Unknown("..value..")"
end

-- Dissect: Purge Reject Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_reject_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_reject_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_reject_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_reject_reason, range, value, display)

  return offset + length, value
end

-- Reserved 1
cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1 = {}

-- Size: Reserved 1
cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.size = 1

-- Display: Reserved 1
cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Restatement Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.restatement_reason = {}

-- Size: Restatement Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.restatement_reason.size = 1

-- Display: Restatement Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.restatement_reason.display = function(value)
  if value == "C" then
    return "Restatement Reason: Cboe Market Close (C)"
  end
  if value == "L" then
    return "Restatement Reason: Reload (L)"
  end
  if value == "P" then
    return "Restatement Reason: Peg Or Price Sliding Reprice (P)"
  end
  if value == "Q" then
    return "Restatement Reason: Liquidity Updated (Q)"
  end
  if value == "R" then
    return "Restatement Reason: Reroute (R)"
  end
  if value == "S" then
    return "Restatement Reason: Reduction Of Quantity (S)"
  end
  if value == "W" then
    return "Restatement Reason: Wash (W)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
cboe_bzxequities_binaryorderentry_boe_v2_3.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Risk Reset
cboe_bzxequities_binaryorderentry_boe_v2_3.risk_reset = {}

-- Size: Risk Reset
cboe_bzxequities_binaryorderentry_boe_v2_3.risk_reset.size = 8

-- Display: Risk Reset
cboe_bzxequities_binaryorderentry_boe_v2_3.risk_reset.display = function(value)
  return "Risk Reset: "..value
end

-- Dissect: Risk Reset
cboe_bzxequities_binaryorderentry_boe_v2_3.risk_reset.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.risk_reset.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.risk_reset.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.risk_reset, range, value, display)

  return offset + length, value
end

-- Rout Strategy
cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy = {}

-- Size: Rout Strategy
cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.size = 6

-- Display: Rout Strategy
cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.display = function(value)
  return "Rout Strategy: "..value
end

-- Dissect: Rout Strategy
cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.rout_strategy, range, value, display)

  return offset + length, value
end

-- Route Delivery Method
cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method = {}

-- Size: Route Delivery Method
cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.size = 3

-- Display: Route Delivery Method
cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.display = function(value)
  return "Route Delivery Method: "..value
end

-- Dissect: Route Delivery Method
cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.route_delivery_method, range, value, display)

  return offset + length, value
end

-- Routing Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst = {}

-- Size: Routing Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.size = 4

-- Display: Routing Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.display = function(value)
  return "Routing Inst: "..value
end

-- Dissect: Routing Inst
cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.routing_inst, range, value, display)

  return offset + length, value
end

-- Secondary Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id = {}

-- Size: Secondary Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.size = 8

-- Display: Secondary Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.display = function(value)
  return "Secondary Order Id: "..value
end

-- Dissect: Secondary Order Id
cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.secondary_order_id, range, value, display)

  return offset + length, value
end

-- Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number = {}

-- Size: Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number.size = 4

-- Display: Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Sub Id
cboe_bzxequities_binaryorderentry_boe_v2_3.session_sub_id = {}

-- Size: Session Sub Id
cboe_bzxequities_binaryorderentry_boe_v2_3.session_sub_id.size = 4

-- Display: Session Sub Id
cboe_bzxequities_binaryorderentry_boe_v2_3.session_sub_id.display = function(value)
  return "Session Sub Id: "..value
end

-- Dissect: Session Sub Id
cboe_bzxequities_binaryorderentry_boe_v2_3.session_sub_id.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.session_sub_id.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.session_sub_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.session_sub_id, range, value, display)

  return offset + length, value
end

-- Side
cboe_bzxequities_binaryorderentry_boe_v2_3.side = {}

-- Size: Side
cboe_bzxequities_binaryorderentry_boe_v2_3.side.size = 1

-- Display: Side
cboe_bzxequities_binaryorderentry_boe_v2_3.side.display = function(value)
  if value == "1" then
    return "Side: Buy (1)"
  end
  if value == "2" then
    return "Side: Sell (2)"
  end
  if value == "5" then
    return "Side: Short Sell (5)"
  end
  if value == "5" then
    return "Side: Short Sell Exempt (5)"
  end

  return "Side: Unknown("..value..")"
end

-- Dissect: Side
cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.side.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.side.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.side, range, value, display)

  return offset + length, value
end

-- Start Of Message
cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message = {}

-- Size: Start Of Message
cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message.size = 2

-- Display: Start Of Message
cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message.display = function(value)
  return "Start Of Message: "..value
end

-- Dissect: Start Of Message
cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.start_of_message, range, value, display)

  return offset + length, value
end

-- Stop Px
cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px = {}

-- Size: Stop Px
cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.size = 8

-- Display: Stop Px
cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.display = function(value)
  return "Stop Px: "..value
end

-- Translate: Stop Px
cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Stop Px
cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.translate(raw)
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.stop_px, range, value, display)

  return offset + length, value
end

-- Sub Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator = {}

-- Size: Sub Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.size = 1

-- Display: Sub Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.display = function(value)
  if value == "E" then
    return "Sub Liquidity Indicator: Trade Added Rpi Liquidity (E)"
  end
  if value == "H" then
    return "Sub Liquidity Indicator: Trade Added Hidden Liquidity (H)"
  end
  if value == "I" then
    return "Sub Liquidity Indicator: Trade Added Hidden Liquidity That Was Price Improved (I)"
  end
  if value == "m" then
    return "Sub Liquidity Indicator: Midpoint Peg (m)"
  end
  if value == "J" then
    return "Sub Liquidity Indicator: Execution From First Order To Join The Nbbo (J)"
  end
  if value == "S" then
    return "Sub Liquidity Indicator: Execution From First Order That Set The Nbbo (S)"
  end
  if value == "V" then
    return "Sub Liquidity Indicator: Visisble Liquidity Add Trade That Was Price Improved (V)"
  end
  if value == "S" then
    return "Sub Liquidity Indicator: Execution From Order That Set The Nbbo (S)"
  end
  if value == "V" then
    return "Sub Liquidity Indicator: Visible Liquidity Add Trade That Was Price Improved (V)"
  end
  if value == "m" then
    return "Sub Liquidity Indicator: Midpoint Peg Order (m)"
  end

  return "Sub Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Sub Liquidity Indicator
cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.sub_liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Symbol
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol = {}

-- Size: Symbol
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.size = 8

-- Display: Symbol
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Sfx
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx = {}

-- Size: Symbol Sfx
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.size = 8

-- Display: Symbol Sfx
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.display = function(value)
  return "Symbol Sfx: "..value
end

-- Dissect: Symbol Sfx
cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.symbol_sfx, range, value, display)

  return offset + length, value
end

-- Text
cboe_bzxequities_binaryorderentry_boe_v2_3.text = {}

-- Size: Text
cboe_bzxequities_binaryorderentry_boe_v2_3.text.size = 60

-- Display: Text
cboe_bzxequities_binaryorderentry_boe_v2_3.text.display = function(value)
  return "Text: "..value
end

-- Dissect: Text
cboe_bzxequities_binaryorderentry_boe_v2_3.text.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.text.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.text.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.text, range, value, display)

  return offset + length, value
end

-- Time In Force
cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force = {}

-- Size: Time In Force
cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.size = 1

-- Display: Time In Force
cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.display = function(value)
  if value == "0" then
    return "Time In Force: Day (0)"
  end
  if value == "1" then
    return "Time In Force: Gtc (1)"
  end
  if value == "2" then
    return "Time In Force: At The Open (2)"
  end
  if value == "3" then
    return "Time In Force: Ioc (3)"
  end
  if value == "4" then
    return "Time In Force: Fok (4)"
  end
  if value == "5" then
    return "Time In Force: Gtx (5)"
  end
  if value == "6" then
    return "Time In Force: Gtd (6)"
  end
  if value == "7" then
    return "Time In Force: At The Close (7)"
  end
  if value == "E" then
    return "Time In Force: Pre (E)"
  end
  if value == "R" then
    return "Time In Force: Rho (R)"
  end
  if value == "T" then
    return "Time In Force: Ptd (T)"
  end
  if value == "X" then
    return "Time In Force: Ptx (X)"
  end

  return "Time In Force: Unknown("..value..")"
end

-- Dissect: Time In Force
cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.time_in_force, range, value, display)

  return offset + length, value
end

-- Transact Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time = {}

-- Size: Transact Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time.size = 8

-- Display: Transact Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time.display = function(value)
  return "Transact Time: "..value
end

-- Dissect: Transact Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.transact_time, range, value, display)

  return offset + length, value
end

-- Transaction Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time = {}

-- Size: Transaction Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.size = 8

-- Display: Transaction Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transaction Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transaction Time
cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.transaction_time, range, value, display)

  return offset + length, value
end

-- Unit Sequence
cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence = {}

-- Size: Unit Sequence
cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence.size = 4

-- Display: Unit Sequence
cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence.display = function(value)
  return "Unit Sequence: "..value
end

-- Dissect: Unit Sequence
cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.unit_sequence, range, value, display)

  return offset + length, value
end

-- Username
cboe_bzxequities_binaryorderentry_boe_v2_3.username = {}

-- Size: Username
cboe_bzxequities_binaryorderentry_boe_v2_3.username.size = 4

-- Display: Username
cboe_bzxequities_binaryorderentry_boe_v2_3.username.display = function(value)
  return "Username: "..value
end

-- Dissect: Username
cboe_bzxequities_binaryorderentry_boe_v2_3.username.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.username.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.username.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.username, range, value, display)

  return offset + length, value
end

-- Working Price
cboe_bzxequities_binaryorderentry_boe_v2_3.working_price = {}

-- Size: Working Price
cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.size = 8

-- Display: Working Price
cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.display = function(value)
  return "Working Price: "..value
end

-- Translate: Working Price
cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.translate = function(raw)
  return raw:tonumber()/10000
end

-- Dissect: Working Price
cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.dissect = function(buffer, offset, packet, parent)
  local length = cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.translate(raw)
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.working_price, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Cboe BzxEquities BinaryOrderEntry Boe 2.3
-----------------------------------------------------------------------

-- Return Bitfield 17
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17 = {}

-- Size: Return Bitfield 17
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.size = 1

-- Display: Return Bitfield 17
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 17 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 1"
  end
  -- Is Return Bitfield 17 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 2"
  end
  -- Is Return Bitfield 17 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 4"
  end
  -- Is Return Bitfield 17 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 8"
  end
  -- Is Return Bitfield 17 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 16"
  end
  -- Is Return Bitfield 17 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 32"
  end
  -- Is Return Bitfield 17 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 64"
  end
  -- Is Return Bitfield 17 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 17 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 17
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.bits = function(range, value, packet, parent)

  -- Return Bitfield 17 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_1, range, value)

  -- Return Bitfield 17 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_2, range, value)

  -- Return Bitfield 17 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_4, range, value)

  -- Return Bitfield 17 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_8, range, value)

  -- Return Bitfield 17 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_16, range, value)

  -- Return Bitfield 17 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_32, range, value)

  -- Return Bitfield 17 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_64, range, value)

  -- Return Bitfield 17 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17_reserved_128, range, value)
end

-- Dissect: Return Bitfield 17
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_17, range, display)

  if show.return_bitfield_17 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 16
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16 = {}

-- Size: Return Bitfield 16
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.size = 1

-- Display: Return Bitfield 16
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 16 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 1"
  end
  -- Is Return Bitfield 16 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 2"
  end
  -- Is Return Bitfield 16 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 4"
  end
  -- Is Return Bitfield 16 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 8"
  end
  -- Is Return Bitfield 16 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 16"
  end
  -- Is Return Bitfield 16 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 32"
  end
  -- Is Return Bitfield 16 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 64"
  end
  -- Is Return Bitfield 16 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 16 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 16
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.bits = function(range, value, packet, parent)

  -- Return Bitfield 16 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_1, range, value)

  -- Return Bitfield 16 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_2, range, value)

  -- Return Bitfield 16 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_4, range, value)

  -- Return Bitfield 16 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_8, range, value)

  -- Return Bitfield 16 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_16, range, value)

  -- Return Bitfield 16 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_32, range, value)

  -- Return Bitfield 16 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_64, range, value)

  -- Return Bitfield 16 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16_reserved_128, range, value)
end

-- Dissect: Return Bitfield 16
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_16, range, display)

  if show.return_bitfield_16 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 15
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15 = {}

-- Size: Return Bitfield 15
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.size = 1

-- Display: Return Bitfield 15
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 15 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 1"
  end
  -- Is Return Bitfield 15 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 2"
  end
  -- Is Return Bitfield 15 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 4"
  end
  -- Is Return Bitfield 15 Mass Cancel Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Mass Cancel Id"
  end
  -- Is Return Bitfield 15 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 16"
  end
  -- Is Return Bitfield 15 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 32"
  end
  -- Is Return Bitfield 15 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 64"
  end
  -- Is Return Bitfield 15 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 15 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 15
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.bits = function(range, value, packet, parent)

  -- Return Bitfield 15 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_1, range, value)

  -- Return Bitfield 15 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_2, range, value)

  -- Return Bitfield 15 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_4, range, value)

  -- Return Bitfield 15 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_mass_cancel_id, range, value)

  -- Return Bitfield 15 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_16, range, value)

  -- Return Bitfield 15 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_32, range, value)

  -- Return Bitfield 15 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_64, range, value)

  -- Return Bitfield 15 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15_reserved_128, range, value)
end

-- Dissect: Return Bitfield 15
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_15, range, display)

  if show.return_bitfield_15 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 14
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14 = {}

-- Size: Return Bitfield 14
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.size = 1

-- Display: Return Bitfield 14
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 14 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 1"
  end
  -- Is Return Bitfield 14 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 2"
  end
  -- Is Return Bitfield 14 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 4"
  end
  -- Is Return Bitfield 14 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 8"
  end
  -- Is Return Bitfield 14 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 16"
  end
  -- Is Return Bitfield 14 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 32"
  end
  -- Is Return Bitfield 14 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 64"
  end
  -- Is Return Bitfield 14 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 14 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 14
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.bits = function(range, value, packet, parent)

  -- Return Bitfield 14 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_1, range, value)

  -- Return Bitfield 14 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_2, range, value)

  -- Return Bitfield 14 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_4, range, value)

  -- Return Bitfield 14 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_8, range, value)

  -- Return Bitfield 14 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_16, range, value)

  -- Return Bitfield 14 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_32, range, value)

  -- Return Bitfield 14 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_64, range, value)

  -- Return Bitfield 14 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14_reserved_128, range, value)
end

-- Dissect: Return Bitfield 14
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_14, range, display)

  if show.return_bitfield_14 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 13
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13 = {}

-- Size: Return Bitfield 13
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.size = 1

-- Display: Return Bitfield 13
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 13 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 1"
  end
  -- Is Return Bitfield 13 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 2"
  end
  -- Is Return Bitfield 13 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 4"
  end
  -- Is Return Bitfield 13 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 8"
  end
  -- Is Return Bitfield 13 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 16"
  end
  -- Is Return Bitfield 13 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 32"
  end
  -- Is Return Bitfield 13 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 64"
  end
  -- Is Return Bitfield 13 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 13 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 13
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.bits = function(range, value, packet, parent)

  -- Return Bitfield 13 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_1, range, value)

  -- Return Bitfield 13 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_2, range, value)

  -- Return Bitfield 13 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_4, range, value)

  -- Return Bitfield 13 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_8, range, value)

  -- Return Bitfield 13 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_16, range, value)

  -- Return Bitfield 13 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_32, range, value)

  -- Return Bitfield 13 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_64, range, value)

  -- Return Bitfield 13 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13_reserved_128, range, value)
end

-- Dissect: Return Bitfield 13
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_13, range, display)

  if show.return_bitfield_13 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 12
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12 = {}

-- Size: Return Bitfield 12
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.size = 1

-- Display: Return Bitfield 12
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 12 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 1"
  end
  -- Is Return Bitfield 12 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 2"
  end
  -- Is Return Bitfield 12 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 4"
  end
  -- Is Return Bitfield 12 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 8"
  end
  -- Is Return Bitfield 12 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 16"
  end
  -- Is Return Bitfield 12 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 32"
  end
  -- Is Return Bitfield 12 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 64"
  end
  -- Is Return Bitfield 12 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 12 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 12
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.bits = function(range, value, packet, parent)

  -- Return Bitfield 12 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_1, range, value)

  -- Return Bitfield 12 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_2, range, value)

  -- Return Bitfield 12 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_4, range, value)

  -- Return Bitfield 12 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_8, range, value)

  -- Return Bitfield 12 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_16, range, value)

  -- Return Bitfield 12 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_32, range, value)

  -- Return Bitfield 12 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_64, range, value)

  -- Return Bitfield 12 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12_reserved_128, range, value)
end

-- Dissect: Return Bitfield 12
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_12, range, display)

  if show.return_bitfield_12 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 11
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11 = {}

-- Size: Return Bitfield 11
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.size = 1

-- Display: Return Bitfield 11
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 11 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 1"
  end
  -- Is Return Bitfield 11 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 2"
  end
  -- Is Return Bitfield 11 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 4"
  end
  -- Is Return Bitfield 11 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 8"
  end
  -- Is Return Bitfield 11 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 16"
  end
  -- Is Return Bitfield 11 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 32"
  end
  -- Is Return Bitfield 11 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 64"
  end
  -- Is Return Bitfield 11 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 11 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 11
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.bits = function(range, value, packet, parent)

  -- Return Bitfield 11 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_1, range, value)

  -- Return Bitfield 11 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_2, range, value)

  -- Return Bitfield 11 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_4, range, value)

  -- Return Bitfield 11 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_8, range, value)

  -- Return Bitfield 11 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_16, range, value)

  -- Return Bitfield 11 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_32, range, value)

  -- Return Bitfield 11 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_64, range, value)

  -- Return Bitfield 11 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11_reserved_128, range, value)
end

-- Dissect: Return Bitfield 11
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_11, range, display)

  if show.return_bitfield_11 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 10
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10 = {}

-- Size: Return Bitfield 10
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.size = 1

-- Display: Return Bitfield 10
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 10 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 1"
  end
  -- Is Return Bitfield 10 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 2"
  end
  -- Is Return Bitfield 10 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 4"
  end
  -- Is Return Bitfield 10 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 8"
  end
  -- Is Return Bitfield 10 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 16"
  end
  -- Is Return Bitfield 10 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 32"
  end
  -- Is Return Bitfield 10 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 64"
  end
  -- Is Return Bitfield 10 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 10 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 10
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.bits = function(range, value, packet, parent)

  -- Return Bitfield 10 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_1, range, value)

  -- Return Bitfield 10 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_2, range, value)

  -- Return Bitfield 10 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_4, range, value)

  -- Return Bitfield 10 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_8, range, value)

  -- Return Bitfield 10 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_16, range, value)

  -- Return Bitfield 10 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_32, range, value)

  -- Return Bitfield 10 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_64, range, value)

  -- Return Bitfield 10 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10_reserved_128, range, value)
end

-- Dissect: Return Bitfield 10
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_10, range, display)

  if show.return_bitfield_10 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 9
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9 = {}

-- Size: Return Bitfield 9
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.size = 1

-- Display: Return Bitfield 9
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 9 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 1"
  end
  -- Is Return Bitfield 9 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 2"
  end
  -- Is Return Bitfield 9 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 4"
  end
  -- Is Return Bitfield 9 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 8"
  end
  -- Is Return Bitfield 9 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 16"
  end
  -- Is Return Bitfield 9 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 32"
  end
  -- Is Return Bitfield 9 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 64"
  end
  -- Is Return Bitfield 9 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 9 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 9
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.bits = function(range, value, packet, parent)

  -- Return Bitfield 9 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_1, range, value)

  -- Return Bitfield 9 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_2, range, value)

  -- Return Bitfield 9 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_4, range, value)

  -- Return Bitfield 9 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_8, range, value)

  -- Return Bitfield 9 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_16, range, value)

  -- Return Bitfield 9 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_32, range, value)

  -- Return Bitfield 9 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_64, range, value)

  -- Return Bitfield 9 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9_reserved_128, range, value)
end

-- Dissect: Return Bitfield 9
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_9, range, display)

  if show.return_bitfield_9 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 8
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8 = {}

-- Size: Return Bitfield 8
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.size = 1

-- Display: Return Bitfield 8
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 8 Fee Code flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Fee Code"
  end
  -- Is Return Bitfield 8 Echo Text flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Echo Text"
  end
  -- Is Return Bitfield 8 Stop Px flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Stop Px"
  end
  -- Is Return Bitfield 8 Routing Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Routing Inst"
  end
  -- Is Return Bitfield 8 Rout Strategy flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Rout Strategy"
  end
  -- Is Return Bitfield 8 Route Delivery Method flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Route Delivery Method"
  end
  -- Is Return Bitfield 8 Ex Destination flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Ex Destination"
  end
  -- Is Return Bitfield 8 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 8 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 8
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.bits = function(range, value, packet, parent)

  -- Return Bitfield 8 Fee Code: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_fee_code, range, value)

  -- Return Bitfield 8 Echo Text: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_echo_text, range, value)

  -- Return Bitfield 8 Stop Px: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_stop_px, range, value)

  -- Return Bitfield 8 Routing Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_routing_inst, range, value)

  -- Return Bitfield 8 Rout Strategy: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_rout_strategy, range, value)

  -- Return Bitfield 8 Route Delivery Method: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_route_delivery_method, range, value)

  -- Return Bitfield 8 Ex Destination: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_ex_destination, range, value)

  -- Return Bitfield 8 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8_reserved_128, range, value)
end

-- Dissect: Return Bitfield 8
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_8, range, display)

  if show.return_bitfield_8 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7 = {}

-- Size: Return Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.size = 1

-- Display: Return Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 7 Sub Liquidity Indicator flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Sub Liquidity Indicator"
  end
  -- Is Return Bitfield 7 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 2"
  end
  -- Is Return Bitfield 7 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 4"
  end
  -- Is Return Bitfield 7 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 8"
  end
  -- Is Return Bitfield 7 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 16"
  end
  -- Is Return Bitfield 7 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 32"
  end
  -- Is Return Bitfield 7 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 64"
  end
  -- Is Return Bitfield 7 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 7 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.bits = function(range, value, packet, parent)

  -- Return Bitfield 7 Sub Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_sub_liquidity_indicator, range, value)

  -- Return Bitfield 7 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_2, range, value)

  -- Return Bitfield 7 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_4, range, value)

  -- Return Bitfield 7 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_8, range, value)

  -- Return Bitfield 7 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_16, range, value)

  -- Return Bitfield 7 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_32, range, value)

  -- Return Bitfield 7 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_64, range, value)

  -- Return Bitfield 7 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7_reserved_128, range, value)
end

-- Dissect: Return Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_7, range, display)

  if show.return_bitfield_7 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6 = {}

-- Size: Return Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.size = 1

-- Display: Return Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 6 Secondary Order Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Secondary Order Id"
  end
  -- Is Return Bitfield 6 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 2"
  end
  -- Is Return Bitfield 6 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 4"
  end
  -- Is Return Bitfield 6 Attributed Quote flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Attributed Quote"
  end
  -- Is Return Bitfield 6 Ext Exec Inst flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Ext Exec Inst"
  end
  -- Is Return Bitfield 6 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 32"
  end
  -- Is Return Bitfield 6 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 64"
  end
  -- Is Return Bitfield 6 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 6 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.bits = function(range, value, packet, parent)

  -- Return Bitfield 6 Secondary Order Id: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_secondary_order_id, range, value)

  -- Return Bitfield 6 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_2, range, value)

  -- Return Bitfield 6 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_4, range, value)

  -- Return Bitfield 6 Attributed Quote: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_attributed_quote, range, value)

  -- Return Bitfield 6 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_ext_exec_inst, range, value)

  -- Return Bitfield 6 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_32, range, value)

  -- Return Bitfield 6 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_64, range, value)

  -- Return Bitfield 6 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6_reserved_128, range, value)
end

-- Dissect: Return Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_6, range, display)

  if show.return_bitfield_6 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5 = {}

-- Size: Return Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.size = 1

-- Display: Return Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 5 Orig Cl Ord Id flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Orig Cl Ord Id"
  end
  -- Is Return Bitfield 5 Leaves Qty flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Leaves Qty"
  end
  -- Is Return Bitfield 5 Last Shares flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Last Shares"
  end
  -- Is Return Bitfield 5 Last Px flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Last Px"
  end
  -- Is Return Bitfield 5 Display Price flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Display Price"
  end
  -- Is Return Bitfield 5 Working Price flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Working Price"
  end
  -- Is Return Bitfield 5 Base Liquidity Indicator flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Base Liquidity Indicator"
  end
  -- Is Return Bitfield 5 Expire Time flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 5 Expire Time"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.bits = function(range, value, packet, parent)

  -- Return Bitfield 5 Orig Cl Ord Id: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_orig_cl_ord_id, range, value)

  -- Return Bitfield 5 Leaves Qty: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_leaves_qty, range, value)

  -- Return Bitfield 5 Last Shares: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_last_shares, range, value)

  -- Return Bitfield 5 Last Px: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_last_px, range, value)

  -- Return Bitfield 5 Display Price: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_display_price, range, value)

  -- Return Bitfield 5 Working Price: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_working_price, range, value)

  -- Return Bitfield 5 Base Liquidity Indicator: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_base_liquidity_indicator, range, value)

  -- Return Bitfield 5 Expire Time: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5_expire_time, range, value)
end

-- Dissect: Return Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_5, range, display)

  if show.return_bitfield_5 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4 = {}

-- Size: Return Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.size = 1

-- Display: Return Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 4 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 1"
  end
  -- Is Return Bitfield 4 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 2"
  end
  -- Is Return Bitfield 4 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 4"
  end
  -- Is Return Bitfield 4 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 8"
  end
  -- Is Return Bitfield 4 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 16"
  end
  -- Is Return Bitfield 4 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 32"
  end
  -- Is Return Bitfield 4 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 64"
  end
  -- Is Return Bitfield 4 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 4 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.bits = function(range, value, packet, parent)

  -- Return Bitfield 4 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_1, range, value)

  -- Return Bitfield 4 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_2, range, value)

  -- Return Bitfield 4 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_4, range, value)

  -- Return Bitfield 4 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_8, range, value)

  -- Return Bitfield 4 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_16, range, value)

  -- Return Bitfield 4 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_32, range, value)

  -- Return Bitfield 4 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_64, range, value)

  -- Return Bitfield 4 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4_reserved_128, range, value)
end

-- Dissect: Return Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_4, range, display)

  if show.return_bitfield_4 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3 = {}

-- Size: Return Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.size = 1

-- Display: Return Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 3 Account flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Account"
  end
  -- Is Return Bitfield 3 Clearing Firm flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Clearing Firm"
  end
  -- Is Return Bitfield 3 Clearing Account flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Clearing Account"
  end
  -- Is Return Bitfield 3 Display Indicator flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Display Indicator"
  end
  -- Is Return Bitfield 3 Max Floor flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Max Floor"
  end
  -- Is Return Bitfield 3 Discretion Amount flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Discretion Amount"
  end
  -- Is Return Bitfield 3 Order Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Order Qty"
  end
  -- Is Return Bitfield 3 Prevent Match flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 3 Prevent Match"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.bits = function(range, value, packet, parent)

  -- Return Bitfield 3 Account: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_account, range, value)

  -- Return Bitfield 3 Clearing Firm: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_clearing_firm, range, value)

  -- Return Bitfield 3 Clearing Account: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_clearing_account, range, value)

  -- Return Bitfield 3 Display Indicator: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_display_indicator, range, value)

  -- Return Bitfield 3 Max Floor: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_max_floor, range, value)

  -- Return Bitfield 3 Discretion Amount: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_discretion_amount, range, value)

  -- Return Bitfield 3 Order Qty: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_order_qty, range, value)

  -- Return Bitfield 3 Prevent Match: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3_prevent_match, range, value)
end

-- Dissect: Return Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_3, range, display)

  if show.return_bitfield_3 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2 = {}

-- Size: Return Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.size = 1

-- Display: Return Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Symbol"
  end
  -- Is Return Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Symbol Sfx"
  end
  -- Is Return Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 4"
  end
  -- Is Return Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 8"
  end
  -- Is Return Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 16"
  end
  -- Is Return Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 32"
  end
  -- Is Return Bitfield 2 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Capacity"
  end
  -- Is Return Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.bits = function(range, value, packet, parent)

  -- Return Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_symbol, range, value)

  -- Return Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_symbol_sfx, range, value)

  -- Return Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_4, range, value)

  -- Return Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_8, range, value)

  -- Return Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_16, range, value)

  -- Return Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_32, range, value)

  -- Return Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_capacity, range, value)

  -- Return Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2_reserved_128, range, value)
end

-- Dissect: Return Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_2, range, display)

  if show.return_bitfield_2 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Return Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1 = {}

-- Size: Return Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.size = 1

-- Display: Return Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Return Bitfield 1 Side flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Side"
  end
  -- Is Return Bitfield 1 Peg Difference flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Peg Difference"
  end
  -- Is Return Bitfield 1 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Price"
  end
  -- Is Return Bitfield 1 Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Exec Inst"
  end
  -- Is Return Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Ord Type"
  end
  -- Is Return Bitfield 1 Time In Force flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Time In Force"
  end
  -- Is Return Bitfield 1 Min Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Min Qty"
  end
  -- Is Return Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Return Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Return Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.bits = function(range, value, packet, parent)

  -- Return Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_side, range, value)

  -- Return Bitfield 1 Peg Difference: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_peg_difference, range, value)

  -- Return Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_price, range, value)

  -- Return Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_exec_inst, range, value)

  -- Return Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_ord_type, range, value)

  -- Return Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_time_in_force, range, value)

  -- Return Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_min_qty, range, value)

  -- Return Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1_reserved_128, range, value)
end

-- Dissect: Return Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.return_bitfield_1, range, display)

  if show.return_bitfield_1 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message = {}

-- Read runtime size of: Purge Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.fields = function(buffer, offset, packet, parent, size_of_purge_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Purge Reject Reason: Text
  index, purge_reject_reason = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_bzxequities_binaryorderentry_boe_v2_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_purge_rejected_message)
  local size_of_purge_rejected_message = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.size(buffer, offset)
  local index = offset + size_of_purge_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_rejected_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_message)
    parent:set_len(size_of_purge_rejected_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.fields(buffer, offset, packet, parent, size_of_purge_rejected_message)

    return index
  end
end

-- Mass Cancel Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message = {}

-- Read runtime size of: Mass Cancel Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Mass Cancel Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Text
  index, mass_cancel_id = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Cancelled Order Count: Binary
  index, cancelled_order_count = cboe_bzxequities_binaryorderentry_boe_v2_3.cancelled_order_count.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
  local size_of_mass_cancel_acknowledgment_message = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_mass_cancel_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.mass_cancel_acknowledgment_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)
    parent:set_len(size_of_mass_cancel_acknowledgment_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_mass_cancel_acknowledgment_message)

    return index
  end
end

-- Trade Cancel Or Correct Message
cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message = {}

-- Read runtime size of: Trade Cancel Or Correct Message
cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Trade Cancel Or Correct Message
cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Cancel Or Correct Message
cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.fields = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.dissect(buffer, index, packet, parent)

  -- Exec Ref Id: Binary
  index, exec_ref_id = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_ref_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Clearing Firm: Alpha
  index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)

  -- Clearing Account: Text
  index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.dissect(buffer, index, packet, parent)

  -- Corrected Price: BinaryPrice
  index, corrected_price = cboe_bzxequities_binaryorderentry_boe_v2_3.corrected_price.dissect(buffer, index, packet, parent)

  -- Orig Time: DateTime
  index, orig_time = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_time.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trade Cancel Or Correct Message
cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.dissect = function(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
  local size_of_trade_cancel_or_correct_message = cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.size(buffer, offset)
  local index = offset + size_of_trade_cancel_or_correct_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.trade_cancel_or_correct_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)
    parent:set_len(size_of_trade_cancel_or_correct_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.fields(buffer, offset, packet, parent, size_of_trade_cancel_or_correct_message)

    return index
  end
end

-- Order Execution Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message = {}

-- Read runtime size of: Order Execution Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Execution Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Execution Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.fields = function(buffer, offset, packet, parent, size_of_order_execution_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Id: Binary
  index, exec_id = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_id.dissect(buffer, index, packet, parent)

  -- Last Shares: Binary
  index, last_shares = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.dissect(buffer, index, packet, parent)

  -- Last Px: BinaryPrice
  index, last_px = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Binary
  index, leaves_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.dissect(buffer, index, packet, parent)

  -- Base Liquidity Indicator: Alphanumeric
  index, base_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Sub Liquidity Indicator: Alphanumeric
  index, sub_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)

  -- Contra Broker: Alphanumeric
  index, contra_broker = cboe_bzxequities_binaryorderentry_boe_v2_3.contra_broker.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Fee Code
  local fee_code = nil

  local fee_code_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x01) > 0

  if fee_code_exists then
    index, fee_code = cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Execution Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.dissect = function(buffer, offset, packet, parent, size_of_order_execution_message)
  local size_of_order_execution_message = cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.size(buffer, offset)
  local index = offset + size_of_order_execution_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_execution_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.fields(buffer, offset, packet, parent, size_of_order_execution_message)
    parent:set_len(size_of_order_execution_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.fields(buffer, offset, packet, parent, size_of_order_execution_message)

    return index
  end
end

-- Cancel Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message = {}

-- Read runtime size of: Cancel Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.fields = function(buffer, offset, packet, parent, size_of_cancel_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reject Reason: Text
  index, cancel_reject_reason = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_bzxequities_binaryorderentry_boe_v2_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_rejected_message)
  local size_of_cancel_rejected_message = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.size(buffer, offset)
  local index = offset + size_of_cancel_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_rejected_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_message)
    parent:set_len(size_of_cancel_rejected_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.fields(buffer, offset, packet, parent, size_of_cancel_rejected_message)

    return index
  end
end

-- Order Cancelled Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message = {}

-- Read runtime size of: Order Cancelled Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Cancelled Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancelled Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.fields = function(buffer, offset, packet, parent, size_of_order_cancelled_message)
  local index = offset

  -- Transact Time: Binary
  index, transact_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Text
  index, cancel_reason = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_reason.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Cancelled Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.dissect = function(buffer, offset, packet, parent, size_of_order_cancelled_message)
  local size_of_order_cancelled_message = cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.size(buffer, offset)
  local index = offset + size_of_order_cancelled_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_cancelled_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_message)
    parent:set_len(size_of_order_cancelled_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.fields(buffer, offset, packet, parent, size_of_order_cancelled_message)

    return index
  end
end

-- User Modify Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message = {}

-- Read runtime size of: User Modify Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: User Modify Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Modify Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.fields = function(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Reject Reason: Text
  index, modify_reject_reason = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_bzxequities_binaryorderentry_boe_v2_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: User Modify Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
  local size_of_user_modify_rejected_message = cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.size(buffer, offset)
  local index = offset + size_of_user_modify_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.user_modify_rejected_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_message)
    parent:set_len(size_of_user_modify_rejected_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.fields(buffer, offset, packet, parent, size_of_user_modify_rejected_message)

    return index
  end
end

-- Order Restated Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message = {}

-- Read runtime size of: Order Restated Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Restated Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.fields = function(buffer, offset, packet, parent, size_of_order_restated_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Alphanumeric
  index, restatement_reason = cboe_bzxequities_binaryorderentry_boe_v2_3.restatement_reason.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Restated Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.dissect = function(buffer, offset, packet, parent, size_of_order_restated_message)
  local size_of_order_restated_message = cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.size(buffer, offset)
  local index = offset + size_of_order_restated_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_restated_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.fields(buffer, offset, packet, parent, size_of_order_restated_message)
    parent:set_len(size_of_order_restated_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.fields(buffer, offset, packet, parent, size_of_order_restated_message)

    return index
  end
end

-- Order Modified Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message = {}

-- Read runtime size of: Order Modified Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Modified Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.fields = function(buffer, offset, packet, parent, size_of_order_modified_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Modified Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.dissect = function(buffer, offset, packet, parent, size_of_order_modified_message)
  local size_of_order_modified_message = cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.size(buffer, offset)
  local index = offset + size_of_order_modified_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_modified_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.fields(buffer, offset, packet, parent, size_of_order_modified_message)
    parent:set_len(size_of_order_modified_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.fields(buffer, offset, packet, parent, size_of_order_modified_message)

    return index
  end
end

-- Order Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message = {}

-- Read runtime size of: Order Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.fields = function(buffer, offset, packet, parent, size_of_order_rejected_message)
  local index = offset

  -- Transaction Time: DateTime
  index, transaction_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transaction_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Reject Reason: Text
  index, order_reject_reason = cboe_bzxequities_binaryorderentry_boe_v2_3.order_reject_reason.dissect(buffer, index, packet, parent)

  -- Text: Text
  index, text = cboe_bzxequities_binaryorderentry_boe_v2_3.text.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Rejected Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.dissect = function(buffer, offset, packet, parent, size_of_order_rejected_message)
  local size_of_order_rejected_message = cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.size(buffer, offset)
  local index = offset + size_of_order_rejected_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_rejected_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.fields(buffer, offset, packet, parent, size_of_order_rejected_message)
    parent:set_len(size_of_order_rejected_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.fields(buffer, offset, packet, parent, size_of_order_rejected_message)

    return index
  end
end

-- Order Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message = {}

-- Read runtime size of: Order Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Order Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.fields = function(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
  local index = offset

  -- Transact Time: Binary
  index, transact_time = cboe_bzxequities_binaryorderentry_boe_v2_3.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Id: Binary
  index, order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.order_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Return Bitfields: Binary
  index, number_of_return_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_return_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Return Bitfield 1
  local return_bitfield_1 = nil

  local return_bitfield_1_exists = number_of_return_bitfields >= 1

  if return_bitfield_1_exists then

    -- Return Bitfield 1: Struct of 8 fields
    index, return_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 2
  local return_bitfield_2 = nil

  local return_bitfield_2_exists = number_of_return_bitfields >= 2

  if return_bitfield_2_exists then

    -- Return Bitfield 2: Struct of 8 fields
    index, return_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 3
  local return_bitfield_3 = nil

  local return_bitfield_3_exists = number_of_return_bitfields >= 3

  if return_bitfield_3_exists then

    -- Return Bitfield 3: Struct of 8 fields
    index, return_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 4
  local return_bitfield_4 = nil

  local return_bitfield_4_exists = number_of_return_bitfields >= 4

  if return_bitfield_4_exists then

    -- Return Bitfield 4: Struct of 8 fields
    index, return_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 5
  local return_bitfield_5 = nil

  local return_bitfield_5_exists = number_of_return_bitfields >= 5

  if return_bitfield_5_exists then

    -- Return Bitfield 5: Struct of 8 fields
    index, return_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 6
  local return_bitfield_6 = nil

  local return_bitfield_6_exists = number_of_return_bitfields >= 6

  if return_bitfield_6_exists then

    -- Return Bitfield 6: Struct of 8 fields
    index, return_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 7
  local return_bitfield_7 = nil

  local return_bitfield_7_exists = number_of_return_bitfields >= 7

  if return_bitfield_7_exists then

    -- Return Bitfield 7: Struct of 8 fields
    index, return_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 8
  local return_bitfield_8 = nil

  local return_bitfield_8_exists = number_of_return_bitfields >= 8

  if return_bitfield_8_exists then

    -- Return Bitfield 8: Struct of 8 fields
    index, return_bitfield_8 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_8.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 9
  local return_bitfield_9 = nil

  local return_bitfield_9_exists = number_of_return_bitfields >= 9

  if return_bitfield_9_exists then

    -- Return Bitfield 9: Struct of 8 fields
    index, return_bitfield_9 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_9.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 10
  local return_bitfield_10 = nil

  local return_bitfield_10_exists = number_of_return_bitfields >= 10

  if return_bitfield_10_exists then

    -- Return Bitfield 10: Struct of 8 fields
    index, return_bitfield_10 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_10.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 11
  local return_bitfield_11 = nil

  local return_bitfield_11_exists = number_of_return_bitfields >= 11

  if return_bitfield_11_exists then

    -- Return Bitfield 11: Struct of 8 fields
    index, return_bitfield_11 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_11.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 12
  local return_bitfield_12 = nil

  local return_bitfield_12_exists = number_of_return_bitfields >= 12

  if return_bitfield_12_exists then

    -- Return Bitfield 12: Struct of 8 fields
    index, return_bitfield_12 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_12.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 13
  local return_bitfield_13 = nil

  local return_bitfield_13_exists = number_of_return_bitfields >= 13

  if return_bitfield_13_exists then

    -- Return Bitfield 13: Struct of 8 fields
    index, return_bitfield_13 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_13.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 14
  local return_bitfield_14 = nil

  local return_bitfield_14_exists = number_of_return_bitfields >= 14

  if return_bitfield_14_exists then

    -- Return Bitfield 14: Struct of 8 fields
    index, return_bitfield_14 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_14.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 15
  local return_bitfield_15 = nil

  local return_bitfield_15_exists = number_of_return_bitfields >= 15

  if return_bitfield_15_exists then

    -- Return Bitfield 15: Struct of 8 fields
    index, return_bitfield_15 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_15.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 16
  local return_bitfield_16 = nil

  local return_bitfield_16_exists = number_of_return_bitfields >= 16

  if return_bitfield_16_exists then

    -- Return Bitfield 16: Struct of 8 fields
    index, return_bitfield_16 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_16.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Return Bitfield 17
  local return_bitfield_17 = nil

  local return_bitfield_17_exists = number_of_return_bitfields >= 17

  if return_bitfield_17_exists then

    -- Return Bitfield 17: Struct of 8 fields
    index, return_bitfield_17 = cboe_bzxequities_binaryorderentry_boe_v2_3.return_bitfield_17.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x01) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x02) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_return_bitfields >= 1 and bit.band(return_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_return_bitfields >= 2 and bit.band(return_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x02) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x04) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x08) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x10) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x20) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x40) > 0

  if order_qty_exists then
    index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_return_bitfields >= 3 and bit.band(return_bitfield_3, 0x80) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Orig Cl Ord Id
  local orig_cl_ord_id = nil

  local orig_cl_ord_id_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x01) > 0

  if orig_cl_ord_id_exists then
    index, orig_cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Leaves Qty
  local leaves_qty = nil

  local leaves_qty_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x02) > 0

  if leaves_qty_exists then
    index, leaves_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.leaves_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Shares
  local last_shares = nil

  local last_shares_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x04) > 0

  if last_shares_exists then
    index, last_shares = cboe_bzxequities_binaryorderentry_boe_v2_3.last_shares.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Last Px
  local last_px = nil

  local last_px_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x08) > 0

  if last_px_exists then
    index, last_px = cboe_bzxequities_binaryorderentry_boe_v2_3.last_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Price
  local display_price = nil

  local display_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x10) > 0

  if display_price_exists then
    index, display_price = cboe_bzxequities_binaryorderentry_boe_v2_3.display_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Working Price
  local working_price = nil

  local working_price_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x20) > 0

  if working_price_exists then
    index, working_price = cboe_bzxequities_binaryorderentry_boe_v2_3.working_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Base Liquidity Indicator
  local base_liquidity_indicator = nil

  local base_liquidity_indicator_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x40) > 0

  if base_liquidity_indicator_exists then
    index, base_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.base_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_return_bitfields >= 5 and bit.band(return_bitfield_5, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Secondary Order Id
  local secondary_order_id = nil

  local secondary_order_id_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x01) > 0

  if secondary_order_id_exists then
    index, secondary_order_id = cboe_bzxequities_binaryorderentry_boe_v2_3.secondary_order_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x08) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_return_bitfields >= 6 and bit.band(return_bitfield_6, 0x10) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Sub Liquidity Indicator
  local sub_liquidity_indicator = nil

  local sub_liquidity_indicator_exists = number_of_return_bitfields >= 7 and bit.band(return_bitfield_7, 0x01) > 0

  if sub_liquidity_indicator_exists then
    index, sub_liquidity_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.sub_liquidity_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Fee Code
  local fee_code = nil

  local fee_code_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x01) > 0

  if fee_code_exists then
    index, fee_code = cboe_bzxequities_binaryorderentry_boe_v2_3.fee_code.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x02) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x04) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x08) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x10) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x20) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_return_bitfields >= 8 and bit.band(return_bitfield_8, 0x40) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_return_bitfields >= 15 and bit.band(return_bitfield_15, 0x08) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Acknowledgment Message
cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.dissect = function(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
  local size_of_order_acknowledgment_message = cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.size(buffer, offset)
  local index = offset + size_of_order_acknowledgment_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.order_acknowledgment_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_message)
    parent:set_len(size_of_order_acknowledgment_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.fields(buffer, offset, packet, parent, size_of_order_acknowledgment_message)

    return index
  end
end

-- Purge Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2 = {}

-- Size: Purge Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.size = 1

-- Display: Purge Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Order Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Symbol"
  end
  -- Is Purge Order Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Symbol Sfx"
  end
  -- Is Purge Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 4"
  end
  -- Is Purge Order Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 8"
  end
  -- Is Purge Order Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 16"
  end
  -- Is Purge Order Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 32"
  end
  -- Is Purge Order Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 64"
  end
  -- Is Purge Order Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Purge Order Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_symbol, range, value)

  -- Purge Order Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_symbol_sfx, range, value)

  -- Purge Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_4, range, value)

  -- Purge Order Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_8, range, value)

  -- Purge Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_16, range, value)

  -- Purge Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_32, range, value)

  -- Purge Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_64, range, value)

  -- Purge Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: Purge Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_2, range, display)

  if show.purge_order_bitfield_2 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1 = {}

-- Size: Purge Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.size = 1

-- Display: Purge Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Purge Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Clearing Firm"
  end
  -- Is Purge Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Reserved 2"
  end
  -- Is Purge Order Bitfield 1 Mass Cancel Inst flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Mass Cancel Inst"
  end
  -- Is Purge Order Bitfield 1 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Reserved 8"
  end
  -- Is Purge Order Bitfield 1 Mass Cancel Id flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Mass Cancel Id"
  end
  -- Is Purge Order Bitfield 1 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Reserved 32"
  end
  -- Is Purge Order Bitfield 1 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Reserved 64"
  end
  -- Is Purge Order Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Purge Order Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Purge Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Purge Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_clearing_firm, range, value)

  -- Purge Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_2, range, value)

  -- Purge Order Bitfield 1 Mass Cancel Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_mass_cancel_inst, range, value)

  -- Purge Order Bitfield 1 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_8, range, value)

  -- Purge Order Bitfield 1 Mass Cancel Id: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_mass_cancel_id, range, value)

  -- Purge Order Bitfield 1 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_32, range, value)

  -- Purge Order Bitfield 1 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_64, range, value)

  -- Purge Order Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1_reserved_128, range, value)
end

-- Dissect: Purge Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_bitfield_1, range, display)

  if show.purge_order_bitfield_1 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Purge Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message = {}

-- Read runtime size of: Purge Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Purge Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Purge Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.fields = function(buffer, offset, packet, parent, size_of_purge_order_message)
  local index = offset

  -- Reserved 1: Alphanumeric
  index, reserved_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Purge Order Bitfields: Binary
  index, number_of_purge_order_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_purge_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Purge Order Bitfield 1
  local purge_order_bitfield_1 = nil

  local purge_order_bitfield_1_exists = number_of_purge_order_bitfields >= 1

  if purge_order_bitfield_1_exists then

    -- Purge Order Bitfield 1: Struct of 8 fields
    index, purge_order_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Purge Order Bitfield 2
  local purge_order_bitfield_2 = nil

  local purge_order_bitfield_2_exists = number_of_purge_order_bitfields >= 2

  if purge_order_bitfield_2_exists then

    -- Purge Order Bitfield 2: Struct of 8 fields
    index, purge_order_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Inst
  local mass_cancel_inst = nil

  local mass_cancel_inst_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x04) > 0

  if mass_cancel_inst_exists then
    index, mass_cancel_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Id
  local mass_cancel_id = nil

  local mass_cancel_id_exists = number_of_purge_order_bitfields >= 1 and bit.band(purge_order_bitfield_1, 0x10) > 0

  if mass_cancel_id_exists then
    index, mass_cancel_id = cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_id.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_purge_order_bitfields >= 2 and bit.band(purge_order_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_purge_order_bitfields >= 2 and bit.band(purge_order_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Purge Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.dissect = function(buffer, offset, packet, parent, size_of_purge_order_message)
  local size_of_purge_order_message = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.size(buffer, offset)
  local index = offset + size_of_purge_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.purge_order_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.fields(buffer, offset, packet, parent, size_of_purge_order_message)
    parent:set_len(size_of_purge_order_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.fields(buffer, offset, packet, parent, size_of_purge_order_message)

    return index
  end
end

-- Modify Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2 = {}

-- Size: Modify Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.size = 1

-- Display: Modify Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order Bitfield 2 Max Floor flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Max Floor"
  end
  -- Is Modify Order Bitfield 2 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Stop Px"
  end
  -- Is Modify Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 4"
  end
  -- Is Modify Order Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 8"
  end
  -- Is Modify Order Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 16"
  end
  -- Is Modify Order Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 32"
  end
  -- Is Modify Order Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 64"
  end
  -- Is Modify Order Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Modify Order Bitfield 2 Max Floor: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_max_floor, range, value)

  -- Modify Order Bitfield 2 Stop Px: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_stop_px, range, value)

  -- Modify Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_4, range, value)

  -- Modify Order Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_8, range, value)

  -- Modify Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_16, range, value)

  -- Modify Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_32, range, value)

  -- Modify Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_64, range, value)

  -- Modify Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: Modify Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_2, range, display)

  if show.modify_order_bitfield_2 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1 = {}

-- Size: Modify Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.size = 1

-- Display: Modify Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Modify Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Clearing Firm"
  end
  -- Is Modify Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Reserved 2"
  end
  -- Is Modify Order Bitfield 1 Order Qty flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Order Qty"
  end
  -- Is Modify Order Bitfield 1 Price flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Price"
  end
  -- Is Modify Order Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Ord Type"
  end
  -- Is Modify Order Bitfield 1 Cancel Orig On Reject flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Cancel Orig On Reject"
  end
  -- Is Modify Order Bitfield 1 Exec Inst flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Exec Inst"
  end
  -- Is Modify Order Bitfield 1 Side flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Modify Order Bitfield 1 Side"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Modify Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_clearing_firm, range, value)

  -- Modify Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_reserved_2, range, value)

  -- Modify Order Bitfield 1 Order Qty: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_order_qty, range, value)

  -- Modify Order Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_price, range, value)

  -- Modify Order Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_ord_type, range, value)

  -- Modify Order Bitfield 1 Cancel Orig On Reject: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_cancel_orig_on_reject, range, value)

  -- Modify Order Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_exec_inst, range, value)

  -- Modify Order Bitfield 1 Side: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1_side, range, value)
end

-- Dissect: Modify Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_bitfield_1, range, display)

  if show.modify_order_bitfield_1 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message = {}

-- Read runtime size of: Modify Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Modify Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.fields = function(buffer, offset, packet, parent, size_of_modify_order_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Modify Order Bitfields: Binary
  index, number_of_modify_order_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_modify_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Order Bitfield 1
  local modify_order_bitfield_1 = nil

  local modify_order_bitfield_1_exists = number_of_modify_order_bitfields >= 1

  if modify_order_bitfield_1_exists then

    -- Modify Order Bitfield 1: Struct of 8 fields
    index, modify_order_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Modify Order Bitfield 2
  local modify_order_bitfield_2 = nil

  local modify_order_bitfield_2_exists = number_of_modify_order_bitfields >= 2

  if modify_order_bitfield_2_exists then

    -- Modify Order Bitfield 2: Struct of 8 fields
    index, modify_order_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Qty
  local order_qty = nil

  local order_qty_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x04) > 0

  if order_qty_exists then
    index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x08) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Orig On Reject
  local cancel_orig_on_reject = nil

  local cancel_orig_on_reject_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x20) > 0

  if cancel_orig_on_reject_exists then
    index, cancel_orig_on_reject = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_orig_on_reject.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x40) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Side
  local side = nil

  local side_exists = number_of_modify_order_bitfields >= 1 and bit.band(modify_order_bitfield_1, 0x80) > 0

  if side_exists then
    index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x01) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_modify_order_bitfields >= 2 and bit.band(modify_order_bitfield_2, 0x02) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.dissect = function(buffer, offset, packet, parent, size_of_modify_order_message)
  local size_of_modify_order_message = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.size(buffer, offset)
  local index = offset + size_of_modify_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.modify_order_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.fields(buffer, offset, packet, parent, size_of_modify_order_message)
    parent:set_len(size_of_modify_order_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.fields(buffer, offset, packet, parent, size_of_modify_order_message)

    return index
  end
end

-- Cancel Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2 = {}

-- Size: Cancel Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.size = 1

-- Display: Cancel Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order Bitfield 2 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 1"
  end
  -- Is Cancel Order Bitfield 2 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 2"
  end
  -- Is Cancel Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 4"
  end
  -- Is Cancel Order Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 8"
  end
  -- Is Cancel Order Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 16"
  end
  -- Is Cancel Order Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 32"
  end
  -- Is Cancel Order Bitfield 2 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 64"
  end
  -- Is Cancel Order Bitfield 2 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 2 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Cancel Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.bits = function(range, value, packet, parent)

  -- Cancel Order Bitfield 2 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_1, range, value)

  -- Cancel Order Bitfield 2 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_2, range, value)

  -- Cancel Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_4, range, value)

  -- Cancel Order Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_8, range, value)

  -- Cancel Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_16, range, value)

  -- Cancel Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_32, range, value)

  -- Cancel Order Bitfield 2 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_64, range, value)

  -- Cancel Order Bitfield 2 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2_reserved_128, range, value)
end

-- Dissect: Cancel Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_2, range, display)

  if show.cancel_order_bitfield_2 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1 = {}

-- Size: Cancel Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.size = 1

-- Display: Cancel Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Cancel Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Clearing Firm"
  end
  -- Is Cancel Order Bitfield 1 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 2"
  end
  -- Is Cancel Order Bitfield 1 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 4"
  end
  -- Is Cancel Order Bitfield 1 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 8"
  end
  -- Is Cancel Order Bitfield 1 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 16"
  end
  -- Is Cancel Order Bitfield 1 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 32"
  end
  -- Is Cancel Order Bitfield 1 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 64"
  end
  -- Is Cancel Order Bitfield 1 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "Cancel Order Bitfield 1 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Cancel Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.bits = function(range, value, packet, parent)

  -- Cancel Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_clearing_firm, range, value)

  -- Cancel Order Bitfield 1 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_2, range, value)

  -- Cancel Order Bitfield 1 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_4, range, value)

  -- Cancel Order Bitfield 1 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_8, range, value)

  -- Cancel Order Bitfield 1 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_16, range, value)

  -- Cancel Order Bitfield 1 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_32, range, value)

  -- Cancel Order Bitfield 1 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_64, range, value)

  -- Cancel Order Bitfield 1 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1_reserved_128, range, value)
end

-- Dissect: Cancel Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_bitfield_1, range, display)

  if show.cancel_order_bitfield_1 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Cancel Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message = {}

-- Read runtime size of: Cancel Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Cancel Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.fields = function(buffer, offset, packet, parent, size_of_cancel_order_message)
  local index = offset

  -- Orig Cl Ord Id: Text
  index, orig_cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Number Of Cancel Order Bitfields: Binary
  index, number_of_cancel_order_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_cancel_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Cancel Order Bitfield 1
  local cancel_order_bitfield_1 = nil

  local cancel_order_bitfield_1_exists = number_of_cancel_order_bitfields >= 1

  if cancel_order_bitfield_1_exists then

    -- Cancel Order Bitfield 1: Struct of 8 fields
    index, cancel_order_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Cancel Order Bitfield 2
  local cancel_order_bitfield_2 = nil

  local cancel_order_bitfield_2_exists = number_of_cancel_order_bitfields >= 2

  if cancel_order_bitfield_2_exists then

    -- Cancel Order Bitfield 2: Struct of 8 fields
    index, cancel_order_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_cancel_order_bitfields >= 1 and bit.band(cancel_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Cancel Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.dissect = function(buffer, offset, packet, parent, size_of_cancel_order_message)
  local size_of_cancel_order_message = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.size(buffer, offset)
  local index = offset + size_of_cancel_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.cancel_order_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.fields(buffer, offset, packet, parent, size_of_cancel_order_message)
    parent:set_len(size_of_cancel_order_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.fields(buffer, offset, packet, parent, size_of_cancel_order_message)

    return index
  end
end

-- New Order Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7 = {}

-- Size: New Order Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.size = 1

-- Display: New Order Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 7 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 1"
  end
  -- Is New Order Bitfield 7 Custom Group Id flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Custom Group Id"
  end
  -- Is New Order Bitfield 7 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 4"
  end
  -- Is New Order Bitfield 7 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 8"
  end
  -- Is New Order Bitfield 7 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 16"
  end
  -- Is New Order Bitfield 7 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 32"
  end
  -- Is New Order Bitfield 7 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 64"
  end
  -- Is New Order Bitfield 7 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 7 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.bits = function(range, value, packet, parent)

  -- New Order Bitfield 7 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_1, range, value)

  -- New Order Bitfield 7 Custom Group Id: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_custom_group_id, range, value)

  -- New Order Bitfield 7 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_4, range, value)

  -- New Order Bitfield 7 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_8, range, value)

  -- New Order Bitfield 7 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_16, range, value)

  -- New Order Bitfield 7 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_32, range, value)

  -- New Order Bitfield 7 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_64, range, value)

  -- New Order Bitfield 7 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 7
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_7, range, display)

  if show.new_order_bitfield_7 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6 = {}

-- Size: New Order Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.size = 1

-- Display: New Order Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 6 Display Range flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Display Range"
  end
  -- Is New Order Bitfield 6 Stop Px flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Stop Px"
  end
  -- Is New Order Bitfield 6 Rout Strategy flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Rout Strategy"
  end
  -- Is New Order Bitfield 6 Route Delivery Method flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Route Delivery Method"
  end
  -- Is New Order Bitfield 6 Ex Destination flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Ex Destination"
  end
  -- Is New Order Bitfield 6 Echo Text flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Echo Text"
  end
  -- Is New Order Bitfield 6 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 64"
  end
  -- Is New Order Bitfield 6 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 6 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.bits = function(range, value, packet, parent)

  -- New Order Bitfield 6 Display Range: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_display_range, range, value)

  -- New Order Bitfield 6 Stop Px: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_stop_px, range, value)

  -- New Order Bitfield 6 Rout Strategy: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_rout_strategy, range, value)

  -- New Order Bitfield 6 Route Delivery Method: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_route_delivery_method, range, value)

  -- New Order Bitfield 6 Ex Destination: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_ex_destination, range, value)

  -- New Order Bitfield 6 Echo Text: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_echo_text, range, value)

  -- New Order Bitfield 6 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_reserved_64, range, value)

  -- New Order Bitfield 6 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 6
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_6, range, display)

  if show.new_order_bitfield_6 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5 = {}

-- Size: New Order Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.size = 1

-- Display: New Order Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 5 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 1"
  end
  -- Is New Order Bitfield 5 Attributed Quote flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Attributed Quote"
  end
  -- Is New Order Bitfield 5 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 4"
  end
  -- Is New Order Bitfield 5 Ext Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Ext Exec Inst"
  end
  -- Is New Order Bitfield 5 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 16"
  end
  -- Is New Order Bitfield 5 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 32"
  end
  -- Is New Order Bitfield 5 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 64"
  end
  -- Is New Order Bitfield 5 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 5 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.bits = function(range, value, packet, parent)

  -- New Order Bitfield 5 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_1, range, value)

  -- New Order Bitfield 5 Attributed Quote: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_attributed_quote, range, value)

  -- New Order Bitfield 5 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_4, range, value)

  -- New Order Bitfield 5 Ext Exec Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_ext_exec_inst, range, value)

  -- New Order Bitfield 5 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_16, range, value)

  -- New Order Bitfield 5 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_32, range, value)

  -- New Order Bitfield 5 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_64, range, value)

  -- New Order Bitfield 5 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 5
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_5, range, display)

  if show.new_order_bitfield_5 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4 = {}

-- Size: New Order Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.size = 1

-- Display: New Order Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 4 Reserved 1 flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 1"
  end
  -- Is New Order Bitfield 4 Reserved 2 flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 2"
  end
  -- Is New Order Bitfield 4 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 4"
  end
  -- Is New Order Bitfield 4 Risk Reset flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Risk Reset"
  end
  -- Is New Order Bitfield 4 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 16"
  end
  -- Is New Order Bitfield 4 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 32"
  end
  -- Is New Order Bitfield 4 Reserved 64 flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 64"
  end
  -- Is New Order Bitfield 4 Reserved 128 flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 4 Reserved 128"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.bits = function(range, value, packet, parent)

  -- New Order Bitfield 4 Reserved 1: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_1, range, value)

  -- New Order Bitfield 4 Reserved 2: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_2, range, value)

  -- New Order Bitfield 4 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_4, range, value)

  -- New Order Bitfield 4 Risk Reset: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_risk_reset, range, value)

  -- New Order Bitfield 4 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_16, range, value)

  -- New Order Bitfield 4 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_32, range, value)

  -- New Order Bitfield 4 Reserved 64: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_64, range, value)

  -- New Order Bitfield 4 Reserved 128: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4_reserved_128, range, value)
end

-- Dissect: New Order Bitfield 4
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_4, range, display)

  if show.new_order_bitfield_4 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3 = {}

-- Size: New Order Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.size = 1

-- Display: New Order Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 3 Account flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Account"
  end
  -- Is New Order Bitfield 3 Display Indicator flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Display Indicator"
  end
  -- Is New Order Bitfield 3 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Reserved 4"
  end
  -- Is New Order Bitfield 3 Discretion Amount flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Discretion Amount"
  end
  -- Is New Order Bitfield 3 Peg Difference flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Peg Difference"
  end
  -- Is New Order Bitfield 3 Prevent Match flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Prevent Match"
  end
  -- Is New Order Bitfield 3 Locate Reqd flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Locate Reqd"
  end
  -- Is New Order Bitfield 3 Expire Time flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 3 Expire Time"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.bits = function(range, value, packet, parent)

  -- New Order Bitfield 3 Account: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_account, range, value)

  -- New Order Bitfield 3 Display Indicator: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_display_indicator, range, value)

  -- New Order Bitfield 3 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_reserved_4, range, value)

  -- New Order Bitfield 3 Discretion Amount: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_discretion_amount, range, value)

  -- New Order Bitfield 3 Peg Difference: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_peg_difference, range, value)

  -- New Order Bitfield 3 Prevent Match: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_prevent_match, range, value)

  -- New Order Bitfield 3 Locate Reqd: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_locate_reqd, range, value)

  -- New Order Bitfield 3 Expire Time: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3_expire_time, range, value)
end

-- Dissect: New Order Bitfield 3
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_3, range, display)

  if show.new_order_bitfield_3 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2 = {}

-- Size: New Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.size = 1

-- Display: New Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 2 Symbol flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Symbol"
  end
  -- Is New Order Bitfield 2 Symbol Sfx flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Symbol Sfx"
  end
  -- Is New Order Bitfield 2 Reserved 4 flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 4"
  end
  -- Is New Order Bitfield 2 Reserved 8 flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 8"
  end
  -- Is New Order Bitfield 2 Reserved 16 flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 16"
  end
  -- Is New Order Bitfield 2 Reserved 32 flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Reserved 32"
  end
  -- Is New Order Bitfield 2 Capacity flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Capacity"
  end
  -- Is New Order Bitfield 2 Routing Inst flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 2 Routing Inst"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.bits = function(range, value, packet, parent)

  -- New Order Bitfield 2 Symbol: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_symbol, range, value)

  -- New Order Bitfield 2 Symbol Sfx: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_symbol_sfx, range, value)

  -- New Order Bitfield 2 Reserved 4: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_4, range, value)

  -- New Order Bitfield 2 Reserved 8: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_8, range, value)

  -- New Order Bitfield 2 Reserved 16: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_16, range, value)

  -- New Order Bitfield 2 Reserved 32: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_reserved_32, range, value)

  -- New Order Bitfield 2 Capacity: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_capacity, range, value)

  -- New Order Bitfield 2 Routing Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2_routing_inst, range, value)
end

-- Dissect: New Order Bitfield 2
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_2, range, display)

  if show.new_order_bitfield_2 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1 = {}

-- Size: New Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.size = 1

-- Display: New Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.display = function(range, value, packet, parent)
  local flags = {}

  -- Is New Order Bitfield 1 Clearing Firm flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Clearing Firm"
  end
  -- Is New Order Bitfield 1 Clearing Account flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Clearing Account"
  end
  -- Is New Order Bitfield 1 Price flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Price"
  end
  -- Is New Order Bitfield 1 Exec Inst flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Exec Inst"
  end
  -- Is New Order Bitfield 1 Ord Type flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Ord Type"
  end
  -- Is New Order Bitfield 1 Time In Force flag set?
  if bit.band(value, 0x20) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Time In Force"
  end
  -- Is New Order Bitfield 1 Min Qty flag set?
  if bit.band(value, 0x40) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Min Qty"
  end
  -- Is New Order Bitfield 1 Max Floor flag set?
  if bit.band(value, 0x80) ~= 0 then
    flags[#flags + 1] = "New Order Bitfield 1 Max Floor"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: New Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.bits = function(range, value, packet, parent)

  -- New Order Bitfield 1 Clearing Firm: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_clearing_firm, range, value)

  -- New Order Bitfield 1 Clearing Account: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_clearing_account, range, value)

  -- New Order Bitfield 1 Price: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_price, range, value)

  -- New Order Bitfield 1 Exec Inst: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_exec_inst, range, value)

  -- New Order Bitfield 1 Ord Type: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_ord_type, range, value)

  -- New Order Bitfield 1 Time In Force: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_time_in_force, range, value)

  -- New Order Bitfield 1 Min Qty: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_min_qty, range, value)

  -- New Order Bitfield 1 Max Floor: 1 Bit
  parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1_max_floor, range, value)
end

-- Dissect: New Order Bitfield 1
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.dissect = function(buffer, offset, packet, parent)
  local size = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.display(range, value, packet, parent)
  local element = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_bitfield_1, range, display)

  if show.new_order_bitfield_1 then
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- New Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message = {}

-- Read runtime size of: New Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: New Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.fields = function(buffer, offset, packet, parent, size_of_new_order_message)
  local index = offset

  -- Cl Ord Id: Text
  index, cl_ord_id = cboe_bzxequities_binaryorderentry_boe_v2_3.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Side: Alphanumeric
  index, side = cboe_bzxequities_binaryorderentry_boe_v2_3.side.dissect(buffer, index, packet, parent)

  -- Order Qty: Binary
  index, order_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.order_qty.dissect(buffer, index, packet, parent)

  -- Number Of New Order Bitfields: Binary
  index, number_of_new_order_bitfields = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_new_order_bitfields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: New Order Bitfield 1
  local new_order_bitfield_1 = nil

  local new_order_bitfield_1_exists = number_of_new_order_bitfields >= 1

  if new_order_bitfield_1_exists then

    -- New Order Bitfield 1: Struct of 8 fields
    index, new_order_bitfield_1 = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_1.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 2
  local new_order_bitfield_2 = nil

  local new_order_bitfield_2_exists = number_of_new_order_bitfields >= 2

  if new_order_bitfield_2_exists then

    -- New Order Bitfield 2: Struct of 8 fields
    index, new_order_bitfield_2 = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_2.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 3
  local new_order_bitfield_3 = nil

  local new_order_bitfield_3_exists = number_of_new_order_bitfields >= 3

  if new_order_bitfield_3_exists then

    -- New Order Bitfield 3: Struct of 8 fields
    index, new_order_bitfield_3 = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_3.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 4
  local new_order_bitfield_4 = nil

  local new_order_bitfield_4_exists = number_of_new_order_bitfields >= 4

  if new_order_bitfield_4_exists then

    -- New Order Bitfield 4: Struct of 8 fields
    index, new_order_bitfield_4 = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_4.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 5
  local new_order_bitfield_5 = nil

  local new_order_bitfield_5_exists = number_of_new_order_bitfields >= 5

  if new_order_bitfield_5_exists then

    -- New Order Bitfield 5: Struct of 8 fields
    index, new_order_bitfield_5 = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_5.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 6
  local new_order_bitfield_6 = nil

  local new_order_bitfield_6_exists = number_of_new_order_bitfields >= 6

  if new_order_bitfield_6_exists then

    -- New Order Bitfield 6: Struct of 8 fields
    index, new_order_bitfield_6 = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_6.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: New Order Bitfield 7
  local new_order_bitfield_7 = nil

  local new_order_bitfield_7_exists = number_of_new_order_bitfields >= 7

  if new_order_bitfield_7_exists then

    -- New Order Bitfield 7: Struct of 8 fields
    index, new_order_bitfield_7 = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_bitfield_7.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Firm
  local clearing_firm = nil

  local clearing_firm_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x01) > 0

  if clearing_firm_exists then
    index, clearing_firm = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_firm.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Clearing Account
  local clearing_account = nil

  local clearing_account_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x02) > 0

  if clearing_account_exists then
    index, clearing_account = cboe_bzxequities_binaryorderentry_boe_v2_3.clearing_account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Price
  local price = nil

  local price_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x04) > 0

  if price_exists then
    index, price = cboe_bzxequities_binaryorderentry_boe_v2_3.price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Exec Inst
  local exec_inst = nil

  local exec_inst_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x08) > 0

  if exec_inst_exists then
    index, exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ord Type
  local ord_type = nil

  local ord_type_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x10) > 0

  if ord_type_exists then
    index, ord_type = cboe_bzxequities_binaryorderentry_boe_v2_3.ord_type.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Time In Force
  local time_in_force = nil

  local time_in_force_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x20) > 0

  if time_in_force_exists then
    index, time_in_force = cboe_bzxequities_binaryorderentry_boe_v2_3.time_in_force.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Min Qty
  local min_qty = nil

  local min_qty_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x40) > 0

  if min_qty_exists then
    index, min_qty = cboe_bzxequities_binaryorderentry_boe_v2_3.min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Max Floor
  local max_floor = nil

  local max_floor_exists = number_of_new_order_bitfields >= 1 and bit.band(new_order_bitfield_1, 0x80) > 0

  if max_floor_exists then
    index, max_floor = cboe_bzxequities_binaryorderentry_boe_v2_3.max_floor.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol
  local symbol = nil

  local symbol_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x01) > 0

  if symbol_exists then
    index, symbol = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Sfx
  local symbol_sfx = nil

  local symbol_sfx_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x02) > 0

  if symbol_sfx_exists then
    index, symbol_sfx = cboe_bzxequities_binaryorderentry_boe_v2_3.symbol_sfx.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Capacity
  local capacity = nil

  local capacity_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x40) > 0

  if capacity_exists then
    index, capacity = cboe_bzxequities_binaryorderentry_boe_v2_3.capacity.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Routing Inst
  local routing_inst = nil

  local routing_inst_exists = number_of_new_order_bitfields >= 2 and bit.band(new_order_bitfield_2, 0x80) > 0

  if routing_inst_exists then
    index, routing_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.routing_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Account
  local account = nil

  local account_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x01) > 0

  if account_exists then
    index, account = cboe_bzxequities_binaryorderentry_boe_v2_3.account.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Indicator
  local display_indicator = nil

  local display_indicator_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x02) > 0

  if display_indicator_exists then
    index, display_indicator = cboe_bzxequities_binaryorderentry_boe_v2_3.display_indicator.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Discretion Amount
  local discretion_amount = nil

  local discretion_amount_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x08) > 0

  if discretion_amount_exists then
    index, discretion_amount = cboe_bzxequities_binaryorderentry_boe_v2_3.discretion_amount.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Peg Difference
  local peg_difference = nil

  local peg_difference_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x10) > 0

  if peg_difference_exists then
    index, peg_difference = cboe_bzxequities_binaryorderentry_boe_v2_3.peg_difference.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Prevent Match
  local prevent_match = nil

  local prevent_match_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x20) > 0

  if prevent_match_exists then
    index, prevent_match = cboe_bzxequities_binaryorderentry_boe_v2_3.prevent_match.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Locate Reqd
  local locate_reqd = nil

  local locate_reqd_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x40) > 0

  if locate_reqd_exists then
    index, locate_reqd = cboe_bzxequities_binaryorderentry_boe_v2_3.locate_reqd.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Expire Time
  local expire_time = nil

  local expire_time_exists = number_of_new_order_bitfields >= 3 and bit.band(new_order_bitfield_3, 0x80) > 0

  if expire_time_exists then
    index, expire_time = cboe_bzxequities_binaryorderentry_boe_v2_3.expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Risk Reset
  local risk_reset = nil

  local risk_reset_exists = number_of_new_order_bitfields >= 4 and bit.band(new_order_bitfield_4, 0x08) > 0

  if risk_reset_exists then
    index, risk_reset = cboe_bzxequities_binaryorderentry_boe_v2_3.risk_reset.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Attributed Quote
  local attributed_quote = nil

  local attributed_quote_exists = number_of_new_order_bitfields >= 5 and bit.band(new_order_bitfield_5, 0x02) > 0

  if attributed_quote_exists then
    index, attributed_quote = cboe_bzxequities_binaryorderentry_boe_v2_3.attributed_quote.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ext Exec Inst
  local ext_exec_inst = nil

  local ext_exec_inst_exists = number_of_new_order_bitfields >= 5 and bit.band(new_order_bitfield_5, 0x08) > 0

  if ext_exec_inst_exists then
    index, ext_exec_inst = cboe_bzxequities_binaryorderentry_boe_v2_3.ext_exec_inst.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Display Range
  local display_range = nil

  local display_range_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x01) > 0

  if display_range_exists then
    index, display_range = cboe_bzxequities_binaryorderentry_boe_v2_3.display_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Stop Px
  local stop_px = nil

  local stop_px_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x02) > 0

  if stop_px_exists then
    index, stop_px = cboe_bzxequities_binaryorderentry_boe_v2_3.stop_px.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Rout Strategy
  local rout_strategy = nil

  local rout_strategy_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x04) > 0

  if rout_strategy_exists then
    index, rout_strategy = cboe_bzxequities_binaryorderentry_boe_v2_3.rout_strategy.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Route Delivery Method
  local route_delivery_method = nil

  local route_delivery_method_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x08) > 0

  if route_delivery_method_exists then
    index, route_delivery_method = cboe_bzxequities_binaryorderentry_boe_v2_3.route_delivery_method.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Ex Destination
  local ex_destination = nil

  local ex_destination_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x10) > 0

  if ex_destination_exists then
    index, ex_destination = cboe_bzxequities_binaryorderentry_boe_v2_3.ex_destination.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Echo Text
  local echo_text = nil

  local echo_text_exists = number_of_new_order_bitfields >= 6 and bit.band(new_order_bitfield_6, 0x20) > 0

  if echo_text_exists then
    index, echo_text = cboe_bzxequities_binaryorderentry_boe_v2_3.echo_text.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Custom Group Id
  local custom_group_id = nil

  local custom_group_id_exists = number_of_new_order_bitfields >= 7 and bit.band(new_order_bitfield_7, 0x02) > 0

  if custom_group_id_exists then
    index, custom_group_id = cboe_bzxequities_binaryorderentry_boe_v2_3.custom_group_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: New Order Message
cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.dissect = function(buffer, offset, packet, parent, size_of_new_order_message)
  local size_of_new_order_message = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.size(buffer, offset)
  local index = offset + size_of_new_order_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.new_order_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)
    parent:set_len(size_of_new_order_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.fields(buffer, offset, packet, parent, size_of_new_order_message)

    return index
  end
end

-- Logout Message
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message = {}

-- Read runtime size of: Logout Message
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Logout Message
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logout Message
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.fields = function(buffer, offset, packet, parent, size_of_logout_message)
  local index = offset

  -- Logout Reason: Alphanumeric
  index, logout_reason = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason.dissect(buffer, index, packet, parent)

  -- Logout Reason Text: Text
  index, logout_reason_text = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_reason_text.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units.dissect(buffer, index, packet, parent)

  -- Unit Sequence: Binary
  index, unit_sequence = cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logout Message
cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.dissect = function(buffer, offset, packet, parent, size_of_logout_message)
  local size_of_logout_message = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.size(buffer, offset)
  local index = offset + size_of_logout_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.logout_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)
    parent:set_len(size_of_logout_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.fields(buffer, offset, packet, parent, size_of_logout_message)

    return index
  end
end

-- Param Group
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group = {}

-- Size: Param Group
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.size =
  cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length.size + 
  cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type.size

-- Display: Param Group
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Param Group
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.fields = function(buffer, offset, packet, parent, param_group_index)
  local index = offset

  -- Implicit Param Group Index
  if param_group_index ~= nil and show.param_group_index then
    local iteration = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group_index, param_group_index)
    iteration:set_generated()
  end

  -- Param Group Length: Binary
  index, param_group_length = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_length.dissect(buffer, index, packet, parent)

  -- Param Group Type: Binary
  index, param_group_type = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Param Group
cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.dissect = function(buffer, offset, packet, parent, param_group_index)
  if show.param_group then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.param_group, buffer(offset, 0))
    local index = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.fields(buffer, offset, packet, parent, param_group_index)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.fields(buffer, offset, packet, parent, param_group_index)
  end
end

-- Login Response Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message = {}

-- Read runtime size of: Login Response Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Response Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Response Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.fields = function(buffer, offset, packet, parent, size_of_login_response_message)
  local index = offset

  -- Login Response Status: Alphanumeric
  index, login_response_status = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_status.dissect(buffer, index, packet, parent)

  -- Login Response Text: Text
  index, login_response_text = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_text.dissect(buffer, index, packet, parent)

  -- No Unspecified Unit Replay: Alphanumeric
  index, no_unspecified_unit_replay = cboe_bzxequities_binaryorderentry_boe_v2_3.no_unspecified_unit_replay.dissect(buffer, index, packet, parent)

  -- Last Received Sequence Number: Binary
  index, last_received_sequence_number = cboe_bzxequities_binaryorderentry_boe_v2_3.last_received_sequence_number.dissect(buffer, index, packet, parent)

  -- Number Of Units: Binary
  index, number_of_units = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_units.dissect(buffer, index, packet, parent)

  -- Unit Sequence: Binary
  index, unit_sequence = cboe_bzxequities_binaryorderentry_boe_v2_3.unit_sequence.dissect(buffer, index, packet, parent)

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Response Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.dissect = function(buffer, offset, packet, parent, size_of_login_response_message)
  local size_of_login_response_message = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.size(buffer, offset)
  local index = offset + size_of_login_response_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_response_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.fields(buffer, offset, packet, parent, size_of_login_response_message)
    parent:set_len(size_of_login_response_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.fields(buffer, offset, packet, parent, size_of_login_response_message)

    return index
  end
end

-- Login Request Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message = {}

-- Read runtime size of: Login Request Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 8, 2):le_uint()

  return message_length - 8
end

-- Display: Login Request Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Login Request Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.fields = function(buffer, offset, packet, parent, size_of_login_request_message)
  local index = offset

  -- Session Sub Id: Alphanumeric
  index, session_sub_id = cboe_bzxequities_binaryorderentry_boe_v2_3.session_sub_id.dissect(buffer, index, packet, parent)

  -- Username: Alphanumeric
  index, username = cboe_bzxequities_binaryorderentry_boe_v2_3.username.dissect(buffer, index, packet, parent)

  -- Password: Alphanumeric
  index, password = cboe_bzxequities_binaryorderentry_boe_v2_3.password.dissect(buffer, index, packet, parent)

  -- Number Of Param Groups: Binary
  index, number_of_param_groups = cboe_bzxequities_binaryorderentry_boe_v2_3.number_of_param_groups.dissect(buffer, index, packet, parent)

  -- Repeating: Param Group
  for param_group_index = 1, number_of_param_groups do
    index, param_group = cboe_bzxequities_binaryorderentry_boe_v2_3.param_group.dissect(buffer, index, packet, parent, param_group_index)
  end

  return index
end

-- Dissect: Login Request Message
cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.dissect = function(buffer, offset, packet, parent, size_of_login_request_message)
  local size_of_login_request_message = cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.size(buffer, offset)
  local index = offset + size_of_login_request_message

  -- Optionally add group/struct element to protocol tree
  if show.application_messages then
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.login_request_message, buffer(offset, 0))
    local current = cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.fields(buffer, offset, packet, parent, size_of_login_request_message)
    parent:set_len(size_of_login_request_message)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.fields(buffer, offset, packet, parent, size_of_login_request_message)

    return index
  end
end

-- Message
cboe_bzxequities_binaryorderentry_boe_v2_3.message = {}

-- Dissect: Message
cboe_bzxequities_binaryorderentry_boe_v2_3.message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Login Request Message
  if message_type == 0x37 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.login_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Request Message
  if message_type == 0x02 then
    return offset
  end
  -- Dissect Client Heartbeat Message
  if message_type == 0x03 then
    return offset
  end
  -- Dissect Login Response Message
  if message_type == 0x24 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.login_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Logout Message
  if message_type == 0x08 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.logout_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Server Heartbeat Message
  if message_type == 0x09 then
    return offset
  end
  -- Dissect Replay Complete Message
  if message_type == 0x13 then
    return offset
  end
  -- Dissect New Order Message
  if message_type == 0x38 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.new_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == 0x39 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 0x3A then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Order Message
  if message_type == 0x47 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.purge_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Acknowledgment Message
  if message_type == 0x25 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.order_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Rejected Message
  if message_type == 0x26 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 0x27 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if message_type == 0x28 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Modify Rejected Message
  if message_type == 0x29 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.user_modify_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancelled Message
  if message_type == 0x2A then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.order_cancelled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if message_type == 0x2B then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Execution Message
  if message_type == 0x2C then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.order_execution_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Cancel Or Correct Message
  if message_type == 0x2D then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.trade_cancel_or_correct_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Acknowledgment Message
  if message_type == 0x36 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.mass_cancel_acknowledgment_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Purge Rejected Message
  if message_type == 0x48 then
    return cboe_bzxequities_binaryorderentry_boe_v2_3.purge_rejected_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
cboe_bzxequities_binaryorderentry_boe_v2_3.message_header = {}

-- Size: Message Header
cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.size =
  cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message.size + 
  cboe_bzxequities_binaryorderentry_boe_v2_3.message_length.size + 
  cboe_bzxequities_binaryorderentry_boe_v2_3.message_type.size + 
  cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit.size + 
  cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number.size

-- Display: Message Header
cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Start Of Message: 2 Byte Unsigned Fixed Width Integer
  index, start_of_message = cboe_bzxequities_binaryorderentry_boe_v2_3.start_of_message.dissect(buffer, index, packet, parent)

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = cboe_bzxequities_binaryorderentry_boe_v2_3.message_length.dissect(buffer, index, packet, parent)

  -- Message Type: Binary
  index, message_type = cboe_bzxequities_binaryorderentry_boe_v2_3.message_type.dissect(buffer, index, packet, parent)

  -- Matching Unit: 1 Byte Unsigned Fixed Width Integer
  index, matching_unit = cboe_bzxequities_binaryorderentry_boe_v2_3.matching_unit.dissect(buffer, index, packet, parent)

  -- Sequence Number: 4 Byte Unsigned Fixed Width Integer
  index, sequence_number = cboe_bzxequities_binaryorderentry_boe_v2_3.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.dissect = function(buffer, offset, packet, parent)
  if show.message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3.fields.message_header, buffer(offset, 0))
    local index = cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Packet
cboe_bzxequities_binaryorderentry_boe_v2_3.packet = {}

-- Verify required size of Tcp packet
cboe_bzxequities_binaryorderentry_boe_v2_3.packet.requiredsize = function(buffer)
  return buffer:len() >= cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.size
end

-- Dissect Packet
cboe_bzxequities_binaryorderentry_boe_v2_3.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Message Header: Struct of 5 fields
  index, message_header = cboe_bzxequities_binaryorderentry_boe_v2_3.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Type
  local message_type = buffer(index - 6, 1):le_uint()

  -- Message: Runtime Type with 22 branches
  index = cboe_bzxequities_binaryorderentry_boe_v2_3.message.dissect(buffer, index, packet, parent, message_type)

  return index
end


-----------------------------------------------------------------------
-- Protocol Dissector and Components
-----------------------------------------------------------------------

-- Initialize Dissector
function omi_cboe_bzxequities_binaryorderentry_boe_v2_3.init()
end

-- Dissector for Cboe BzxEquities BinaryOrderEntry Boe 2.3
function omi_cboe_bzxequities_binaryorderentry_boe_v2_3.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_cboe_bzxequities_binaryorderentry_boe_v2_3.name

  -- Dissect protocol
  local protocol = parent:add(omi_cboe_bzxequities_binaryorderentry_boe_v2_3, buffer(), omi_cboe_bzxequities_binaryorderentry_boe_v2_3.description, "("..buffer:len().." Bytes)")
  return cboe_bzxequities_binaryorderentry_boe_v2_3.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Cboe BzxEquities BinaryOrderEntry Boe 2.3 (Tcp)
local function omi_cboe_bzxequities_binaryorderentry_boe_v2_3_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not cboe_bzxequities_binaryorderentry_boe_v2_3.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_cboe_bzxequities_binaryorderentry_boe_v2_3
  omi_cboe_bzxequities_binaryorderentry_boe_v2_3.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Cboe BzxEquities BinaryOrderEntry Boe 2.3
omi_cboe_bzxequities_binaryorderentry_boe_v2_3:register_heuristic("tcp", omi_cboe_bzxequities_binaryorderentry_boe_v2_3_tcp_heuristic)

-- Register Cboe BzxEquities BinaryOrderEntry Boe 2.3 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_cboe_bzxequities_binaryorderentry_boe_v2_3)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Chicago Board Options Exchange
--   Version: 2.3
--   Date: Monday, March 11, 2019
--   Specification: Cboe_US_Equities_BOE_Specification.pdf
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
