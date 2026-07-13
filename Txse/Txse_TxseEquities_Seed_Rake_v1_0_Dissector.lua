-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Txse TxseEquities Seed Rake 1.0 Protocol
local omi_txse_txseequities_seed_rake_v1_0 = Proto("Omi.Txse.TxseEquities.Seed.Rake.v1.0", "Txse TxseEquities Seed Rake 1.0")

-- Protocol table
local txse_txseequities_seed_rake_v1_0 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Txse TxseEquities Seed Rake 1.0 Fields
omi_txse_txseequities_seed_rake_v1_0.fields.cancel_at_entry_if_crossed = ProtoField.new("Cancel At Entry If Crossed", "txse.txseequities.seed.rake.v1.0.cancelatentryifcrossed", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00004000)
omi_txse_txseequities_seed_rake_v1_0.fields.cancel_reason = ProtoField.new("Cancel Reason", "txse.txseequities.seed.rake.v1.0.cancelreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.cancel_rejected_reason = ProtoField.new("Cancel Rejected Reason", "txse.txseequities.seed.rake.v1.0.cancelrejectedreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.canceled_count = ProtoField.new("Canceled Count", "txse.txseequities.seed.rake.v1.0.canceledcount", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.canceled_qty = ProtoField.new("Canceled Qty", "txse.txseequities.seed.rake.v1.0.canceledqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.cl_ord_id = ProtoField.new("Cl Ord Id", "txse.txseequities.seed.rake.v1.0.clordid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.debug_message = ProtoField.new("Debug Message", "txse.txseequities.seed.rake.v1.0.debugmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.define_symbol_bit_fields = ProtoField.new("Define Symbol Bit Fields", "txse.txseequities.seed.rake.v1.0.definesymbolbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.display_qty = ProtoField.new("Display Qty", "txse.txseequities.seed.rake.v1.0.displayqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.exclude_auction_orders = ProtoField.new("Exclude Auction Orders", "txse.txseequities.seed.rake.v1.0.excludeauctionorders", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.exec_id = ProtoField.new("Exec Id", "txse.txseequities.seed.rake.v1.0.execid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.exec_price = ProtoField.new("Exec Price", "txse.txseequities.seed.rake.v1.0.execprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.exec_qty = ProtoField.new("Exec Qty", "txse.txseequities.seed.rake.v1.0.execqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.has_display_qty = ProtoField.new("Has Display Qty", "txse.txseequities.seed.rake.v1.0.hasdisplayqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_display_price = ProtoField.new("Has Limit Order Accepted Display Price", "txse.txseequities.seed.rake.v1.0.haslimitorderaccepteddisplayprice", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00004000)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_expire_time = ProtoField.new("Has Limit Order Accepted Expire Time", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedexpiretime", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000100)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_locate_broker = ProtoField.new("Has Limit Order Accepted Locate Broker", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedlocatebroker", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00001000)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_max_floor_qty = ProtoField.new("Has Limit Order Accepted Max Floor Qty", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedmaxfloorqty", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_max_replenish_qty_range = ProtoField.new("Has Limit Order Accepted Max Replenish Qty Range", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedmaxreplenishqtyrange", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_max_replenish_time_range = ProtoField.new("Has Limit Order Accepted Max Replenish Time Range", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedmaxreplenishtimerange", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000040)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_member_group = ProtoField.new("Has Limit Order Accepted Member Group", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedmembergroup", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000800)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_min_qty = ProtoField.new("Has Limit Order Accepted Min Qty", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedminqty", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000008)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_mpid = ProtoField.new("Has Limit Order Accepted Mpid", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedmpid", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000400)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_price_slide_instruction = ProtoField.new("Has Limit Order Accepted Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedpriceslideinstruction", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_rank_price = ProtoField.new("Has Limit Order Accepted Rank Price", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedrankprice", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00002000)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_reference_price_target = ProtoField.new("Has Limit Order Accepted Reference Price Target", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedreferencepricetarget", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000080)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_self_match_instruction = ProtoField.new("Has Limit Order Accepted Self Match Instruction", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedselfmatchinstruction", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_self_match_scope = ProtoField.new("Has Limit Order Accepted Self Match Scope", "txse.txseequities.seed.rake.v1.0.haslimitorderacceptedselfmatchscope", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000001)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_user_data = ProtoField.new("Has Limit Order Accepted User Data", "txse.txseequities.seed.rake.v1.0.haslimitorderaccepteduserdata", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000200)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_expire_time = ProtoField.new("Has Limit Order Expire Time", "txse.txseequities.seed.rake.v1.0.haslimitorderexpiretime", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000100)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_locate_broker = ProtoField.new("Has Limit Order Locate Broker", "txse.txseequities.seed.rake.v1.0.haslimitorderlocatebroker", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00001000)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_max_floor_qty = ProtoField.new("Has Limit Order Max Floor Qty", "txse.txseequities.seed.rake.v1.0.haslimitordermaxfloorqty", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_max_replenish_qty_range = ProtoField.new("Has Limit Order Max Replenish Qty Range", "txse.txseequities.seed.rake.v1.0.haslimitordermaxreplenishqtyrange", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_max_replenish_time_range = ProtoField.new("Has Limit Order Max Replenish Time Range", "txse.txseequities.seed.rake.v1.0.haslimitordermaxreplenishtimerange", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000040)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_member_group = ProtoField.new("Has Limit Order Member Group", "txse.txseequities.seed.rake.v1.0.haslimitordermembergroup", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000800)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_min_qty = ProtoField.new("Has Limit Order Min Qty", "txse.txseequities.seed.rake.v1.0.haslimitorderminqty", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000008)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_mpid = ProtoField.new("Has Limit Order Mpid", "txse.txseequities.seed.rake.v1.0.haslimitordermpid", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000400)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_price_slide_instruction = ProtoField.new("Has Limit Order Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.haslimitorderpriceslideinstruction", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_reference_price_target = ProtoField.new("Has Limit Order Reference Price Target", "txse.txseequities.seed.rake.v1.0.haslimitorderreferencepricetarget", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000080)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_expire_time = ProtoField.new("Has Limit Order Rejected Expire Time", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedexpiretime", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000100)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_locate_broker = ProtoField.new("Has Limit Order Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedlocatebroker", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00001000)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_max_floor_qty = ProtoField.new("Has Limit Order Rejected Max Floor Qty", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedmaxfloorqty", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_max_replenish_qty_range = ProtoField.new("Has Limit Order Rejected Max Replenish Qty Range", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedmaxreplenishqtyrange", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_max_replenish_time_range = ProtoField.new("Has Limit Order Rejected Max Replenish Time Range", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedmaxreplenishtimerange", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000040)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_member_group = ProtoField.new("Has Limit Order Rejected Member Group", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedmembergroup", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000800)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_min_qty = ProtoField.new("Has Limit Order Rejected Min Qty", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedminqty", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000008)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_mpid = ProtoField.new("Has Limit Order Rejected Mpid", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedmpid", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000400)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_price_slide_instruction = ProtoField.new("Has Limit Order Rejected Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedpriceslideinstruction", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_reference_price_target = ProtoField.new("Has Limit Order Rejected Reference Price Target", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedreferencepricetarget", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000080)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_self_match_instruction = ProtoField.new("Has Limit Order Rejected Self Match Instruction", "txse.txseequities.seed.rake.v1.0.haslimitorderrejectedselfmatchinstruction", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_user_data = ProtoField.new("Has Limit Order Rejected User Data", "txse.txseequities.seed.rake.v1.0.haslimitorderrejecteduserdata", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000200)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_self_match_instruction = ProtoField.new("Has Limit Order Self Match Instruction", "txse.txseequities.seed.rake.v1.0.haslimitorderselfmatchinstruction", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_user_data = ProtoField.new("Has Limit Order User Data", "txse.txseequities.seed.rake.v1.0.haslimitorderuserdata", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000200)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_locate_broker = ProtoField.new("Has Market Order Accepted Locate Broker", "txse.txseequities.seed.rake.v1.0.hasmarketorderacceptedlocatebroker", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_member_group = ProtoField.new("Has Market Order Accepted Member Group", "txse.txseequities.seed.rake.v1.0.hasmarketorderacceptedmembergroup", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_mpid = ProtoField.new("Has Market Order Accepted Mpid", "txse.txseequities.seed.rake.v1.0.hasmarketorderacceptedmpid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_self_match_instruction = ProtoField.new("Has Market Order Accepted Self Match Instruction", "txse.txseequities.seed.rake.v1.0.hasmarketorderacceptedselfmatchinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_user_data = ProtoField.new("Has Market Order Accepted User Data", "txse.txseequities.seed.rake.v1.0.hasmarketorderaccepteduserdata", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_locate_broker = ProtoField.new("Has Market Order Locate Broker", "txse.txseequities.seed.rake.v1.0.hasmarketorderlocatebroker", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_member_group = ProtoField.new("Has Market Order Member Group", "txse.txseequities.seed.rake.v1.0.hasmarketordermembergroup", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_mpid = ProtoField.new("Has Market Order Mpid", "txse.txseequities.seed.rake.v1.0.hasmarketordermpid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_locate_broker = ProtoField.new("Has Market Order Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.hasmarketorderrejectedlocatebroker", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_member_group = ProtoField.new("Has Market Order Rejected Member Group", "txse.txseequities.seed.rake.v1.0.hasmarketorderrejectedmembergroup", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_mpid = ProtoField.new("Has Market Order Rejected Mpid", "txse.txseequities.seed.rake.v1.0.hasmarketorderrejectedmpid", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_self_match_instruction = ProtoField.new("Has Market Order Rejected Self Match Instruction", "txse.txseequities.seed.rake.v1.0.hasmarketorderrejectedselfmatchinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_user_data = ProtoField.new("Has Market Order Rejected User Data", "txse.txseequities.seed.rake.v1.0.hasmarketorderrejecteduserdata", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_self_match_instruction = ProtoField.new("Has Market Order Self Match Instruction", "txse.txseequities.seed.rake.v1.0.hasmarketorderselfmatchinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_user_data = ProtoField.new("Has Market Order User Data", "txse.txseequities.seed.rake.v1.0.hasmarketorderuserdata", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_cl_ord_id = ProtoField.new("Has Mass Cancel Accepted Cl Ord Id", "txse.txseequities.seed.rake.v1.0.hasmasscancelacceptedclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_member_group = ProtoField.new("Has Mass Cancel Accepted Member Group", "txse.txseequities.seed.rake.v1.0.hasmasscancelacceptedmembergroup", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_mpid = ProtoField.new("Has Mass Cancel Accepted Mpid", "txse.txseequities.seed.rake.v1.0.hasmasscancelacceptedmpid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_sender_comp = ProtoField.new("Has Mass Cancel Accepted Sender Comp", "txse.txseequities.seed.rake.v1.0.hasmasscancelacceptedsendercomp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_cl_ord_id = ProtoField.new("Has Mass Cancel Cl Ord Id", "txse.txseequities.seed.rake.v1.0.hasmasscancelclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_member_group = ProtoField.new("Has Mass Cancel Member Group", "txse.txseequities.seed.rake.v1.0.hasmasscancelmembergroup", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_mpid = ProtoField.new("Has Mass Cancel Mpid", "txse.txseequities.seed.rake.v1.0.hasmasscancelmpid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_cl_ord_id = ProtoField.new("Has Mass Cancel Rejected Cl Ord Id", "txse.txseequities.seed.rake.v1.0.hasmasscancelrejectedclordid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x08)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_member_group = ProtoField.new("Has Mass Cancel Rejected Member Group", "txse.txseequities.seed.rake.v1.0.hasmasscancelrejectedmembergroup", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_mpid = ProtoField.new("Has Mass Cancel Rejected Mpid", "txse.txseequities.seed.rake.v1.0.hasmasscancelrejectedmpid", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_sender_comp = ProtoField.new("Has Mass Cancel Rejected Sender Comp", "txse.txseequities.seed.rake.v1.0.hasmasscancelrejectedsendercomp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_sender_comp = ProtoField.new("Has Mass Cancel Sender Comp", "txse.txseequities.seed.rake.v1.0.hasmasscancelsendercomp", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_order_bit_fields = ProtoField.new("Has Modify Order Bit Fields", "txse.txseequities.seed.rake.v1.0.hasmodifyorderbitfields", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_order_locate_broker = ProtoField.new("Has Modify Order Locate Broker", "txse.txseequities.seed.rake.v1.0.hasmodifyorderlocatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_order_order_qty = ProtoField.new("Has Modify Order Order Qty", "txse.txseequities.seed.rake.v1.0.hasmodifyorderorderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_rejected_bit_fields = ProtoField.new("Has Modify Rejected Bit Fields", "txse.txseequities.seed.rake.v1.0.hasmodifyrejectedbitfields", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_rejected_locate_broker = ProtoField.new("Has Modify Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.hasmodifyrejectedlocatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_rejected_order_qty = ProtoField.new("Has Modify Rejected Order Qty", "txse.txseequities.seed.rake.v1.0.hasmodifyrejectedorderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_modified_bit_fields = ProtoField.new("Has Order Modified Bit Fields", "txse.txseequities.seed.rake.v1.0.hasordermodifiedbitfields", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_modified_locate_broker = ProtoField.new("Has Order Modified Locate Broker", "txse.txseequities.seed.rake.v1.0.hasordermodifiedlocatebroker", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x04)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_modified_order_qty = ProtoField.new("Has Order Modified Order Qty", "txse.txseequities.seed.rake.v1.0.hasordermodifiedorderqty", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_display_price = ProtoField.new("Has Order Replaced Display Price", "txse.txseequities.seed.rake.v1.0.hasorderreplaceddisplayprice", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_locate_broker = ProtoField.new("Has Order Replaced Locate Broker", "txse.txseequities.seed.rake.v1.0.hasorderreplacedlocatebroker", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_max_floor_qty = ProtoField.new("Has Order Replaced Max Floor Qty", "txse.txseequities.seed.rake.v1.0.hasorderreplacedmaxfloorqty", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_order_qty = ProtoField.new("Has Order Replaced Order Qty", "txse.txseequities.seed.rake.v1.0.hasorderreplacedorderqty", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_price = ProtoField.new("Has Order Replaced Price", "txse.txseequities.seed.rake.v1.0.hasorderreplacedprice", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_price_slide_instruction = ProtoField.new("Has Order Replaced Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.hasorderreplacedpriceslideinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_rank_price = ProtoField.new("Has Order Replaced Rank Price", "txse.txseequities.seed.rake.v1.0.hasorderreplacedrankprice", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_reference_price_target = ProtoField.new("Has Order Replaced Reference Price Target", "txse.txseequities.seed.rake.v1.0.hasorderreplacedreferencepricetarget", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_self_match_instruction = ProtoField.new("Has Order Replaced Self Match Instruction", "txse.txseequities.seed.rake.v1.0.hasorderreplacedselfmatchinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_restated_display_price = ProtoField.new("Has Order Restated Display Price", "txse.txseequities.seed.rake.v1.0.hasorderrestateddisplayprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_order_restated_rank_price = ProtoField.new("Has Order Restated Rank Price", "txse.txseequities.seed.rake.v1.0.hasorderrestatedrankprice", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_locate_broker = ProtoField.new("Has Replace Order Locate Broker", "txse.txseequities.seed.rake.v1.0.hasreplaceorderlocatebroker", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_max_floor_qty = ProtoField.new("Has Replace Order Max Floor Qty", "txse.txseequities.seed.rake.v1.0.hasreplaceordermaxfloorqty", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_order_qty = ProtoField.new("Has Replace Order Order Qty", "txse.txseequities.seed.rake.v1.0.hasreplaceorderorderqty", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_price = ProtoField.new("Has Replace Order Price", "txse.txseequities.seed.rake.v1.0.hasreplaceorderprice", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_price_slide_instruction = ProtoField.new("Has Replace Order Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.hasreplaceorderpriceslideinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_reference_price_target = ProtoField.new("Has Replace Order Reference Price Target", "txse.txseequities.seed.rake.v1.0.hasreplaceorderreferencepricetarget", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_self_match_instruction = ProtoField.new("Has Replace Order Self Match Instruction", "txse.txseequities.seed.rake.v1.0.hasreplaceorderselfmatchinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_locate_broker = ProtoField.new("Has Replace Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.hasreplacerejectedlocatebroker", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_max_floor_qty = ProtoField.new("Has Replace Rejected Max Floor Qty", "txse.txseequities.seed.rake.v1.0.hasreplacerejectedmaxfloorqty", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0004)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_order_qty = ProtoField.new("Has Replace Rejected Order Qty", "txse.txseequities.seed.rake.v1.0.hasreplacerejectedorderqty", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0002)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_price = ProtoField.new("Has Replace Rejected Price", "txse.txseequities.seed.rake.v1.0.hasreplacerejectedprice", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_price_slide_instruction = ProtoField.new("Has Replace Rejected Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.hasreplacerejectedpriceslideinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_reference_price_target = ProtoField.new("Has Replace Rejected Reference Price Target", "txse.txseequities.seed.rake.v1.0.hasreplacerejectedreferencepricetarget", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_self_match_instruction = ProtoField.new("Has Replace Rejected Self Match Instruction", "txse.txseequities.seed.rake.v1.0.hasreplacerejectedselfmatchinstruction", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_txse_txseequities_seed_rake_v1_0.fields.has_symbol_status_operational_halt_reason = ProtoField.new("Has Symbol Status Operational Halt Reason", "txse.txseequities.seed.rake.v1.0.hassymbolstatusoperationalhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_symbol_status_regulatory_halt_reason = ProtoField.new("Has Symbol Status Regulatory Halt Reason", "txse.txseequities.seed.rake.v1.0.hassymbolstatusregulatoryhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.has_trading_session_status_operational_halt_reason = ProtoField.new("Has Trading Session Status Operational Halt Reason", "txse.txseequities.seed.rake.v1.0.hastradingsessionstatusoperationalhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.has_trading_session_status_regulatory_halt_reason = ProtoField.new("Has Trading Session Status Regulatory Halt Reason", "txse.txseequities.seed.rake.v1.0.hastradingsessionstatusregulatoryhaltreason", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_txse_txseequities_seed_rake_v1_0.fields.highest_known_sequence_number = ProtoField.new("Highest Known Sequence Number", "txse.txseequities.seed.rake.v1.0.highestknownsequencenumber", ftypes.UINT64)
omi_txse_txseequities_seed_rake_v1_0.fields.instance = ProtoField.new("Instance", "txse.txseequities.seed.rake.v1.0.instance", ftypes.UINT32)
omi_txse_txseequities_seed_rake_v1_0.fields.is_hidden = ProtoField.new("Is Hidden", "txse.txseequities.seed.rake.v1.0.ishidden", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00001000)
omi_txse_txseequities_seed_rake_v1_0.fields.is_iso = ProtoField.new("Is Iso", "txse.txseequities.seed.rake.v1.0.isiso", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000800)
omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required = ProtoField.new("Is Locate Required", "txse.txseequities.seed.rake.v1.0.islocaterequired", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000008)
omi_txse_txseequities_seed_rake_v1_0.fields.is_post_only = ProtoField.new("Is Post Only", "txse.txseequities.seed.rake.v1.0.ispostonly", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00002000)
omi_txse_txseequities_seed_rake_v1_0.fields.is_test = ProtoField.new("Is Test", "txse.txseequities.seed.rake.v1.0.istest", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_txse_txseequities_seed_rake_v1_0.fields.leaves_qty = ProtoField.new("Leaves Qty", "txse.txseequities.seed.rake.v1.0.leavesqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_bit_fields = ProtoField.new("Limit Order Accepted Bit Fields", "txse.txseequities.seed.rake.v1.0.limitorderacceptedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_display_price = ProtoField.new("Limit Order Accepted Display Price", "txse.txseequities.seed.rake.v1.0.limitorderaccepteddisplayprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_expire_time = ProtoField.new("Limit Order Accepted Expire Time", "txse.txseequities.seed.rake.v1.0.limitorderacceptedexpiretime", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_locate_broker = ProtoField.new("Limit Order Accepted Locate Broker", "txse.txseequities.seed.rake.v1.0.limitorderacceptedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_max_floor_qty = ProtoField.new("Limit Order Accepted Max Floor Qty", "txse.txseequities.seed.rake.v1.0.limitorderacceptedmaxfloorqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_max_replenish_qty_range = ProtoField.new("Limit Order Accepted Max Replenish Qty Range", "txse.txseequities.seed.rake.v1.0.limitorderacceptedmaxreplenishqtyrange", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_max_replenish_time_range = ProtoField.new("Limit Order Accepted Max Replenish Time Range", "txse.txseequities.seed.rake.v1.0.limitorderacceptedmaxreplenishtimerange", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_member_group = ProtoField.new("Limit Order Accepted Member Group", "txse.txseequities.seed.rake.v1.0.limitorderacceptedmembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_min_qty = ProtoField.new("Limit Order Accepted Min Qty", "txse.txseequities.seed.rake.v1.0.limitorderacceptedminqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_mpid = ProtoField.new("Limit Order Accepted Mpid", "txse.txseequities.seed.rake.v1.0.limitorderacceptedmpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_presence_bits = ProtoField.new("Limit Order Accepted Presence Bits", "txse.txseequities.seed.rake.v1.0.limitorderacceptedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_price_slide_instruction = ProtoField.new("Limit Order Accepted Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.limitorderacceptedpriceslideinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_rank_price = ProtoField.new("Limit Order Accepted Rank Price", "txse.txseequities.seed.rake.v1.0.limitorderacceptedrankprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_reference_price_target = ProtoField.new("Limit Order Accepted Reference Price Target", "txse.txseequities.seed.rake.v1.0.limitorderacceptedreferencepricetarget", ftypes.INT16)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_self_match_instruction = ProtoField.new("Limit Order Accepted Self Match Instruction", "txse.txseequities.seed.rake.v1.0.limitorderacceptedselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_user_data = ProtoField.new("Limit Order Accepted User Data", "txse.txseequities.seed.rake.v1.0.limitorderaccepteduserdata", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_bit_fields = ProtoField.new("Limit Order Bit Fields", "txse.txseequities.seed.rake.v1.0.limitorderbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_expire_time = ProtoField.new("Limit Order Expire Time", "txse.txseequities.seed.rake.v1.0.limitorderexpiretime", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_locate_broker = ProtoField.new("Limit Order Locate Broker", "txse.txseequities.seed.rake.v1.0.limitorderlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_max_floor_qty = ProtoField.new("Limit Order Max Floor Qty", "txse.txseequities.seed.rake.v1.0.limitordermaxfloorqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_max_replenish_qty_range = ProtoField.new("Limit Order Max Replenish Qty Range", "txse.txseequities.seed.rake.v1.0.limitordermaxreplenishqtyrange", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_max_replenish_time_range = ProtoField.new("Limit Order Max Replenish Time Range", "txse.txseequities.seed.rake.v1.0.limitordermaxreplenishtimerange", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_member_group = ProtoField.new("Limit Order Member Group", "txse.txseequities.seed.rake.v1.0.limitordermembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_min_qty = ProtoField.new("Limit Order Min Qty", "txse.txseequities.seed.rake.v1.0.limitorderminqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_mpid = ProtoField.new("Limit Order Mpid", "txse.txseequities.seed.rake.v1.0.limitordermpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_presence_bits = ProtoField.new("Limit Order Presence Bits", "txse.txseequities.seed.rake.v1.0.limitorderpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_price_slide_instruction = ProtoField.new("Limit Order Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.limitorderpriceslideinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_reference_price_target = ProtoField.new("Limit Order Reference Price Target", "txse.txseequities.seed.rake.v1.0.limitorderreferencepricetarget", ftypes.INT16)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_bit_fields = ProtoField.new("Limit Order Rejected Bit Fields", "txse.txseequities.seed.rake.v1.0.limitorderrejectedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_expire_time = ProtoField.new("Limit Order Rejected Expire Time", "txse.txseequities.seed.rake.v1.0.limitorderrejectedexpiretime", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_locate_broker = ProtoField.new("Limit Order Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.limitorderrejectedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_max_floor_qty = ProtoField.new("Limit Order Rejected Max Floor Qty", "txse.txseequities.seed.rake.v1.0.limitorderrejectedmaxfloorqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_max_replenish_qty_range = ProtoField.new("Limit Order Rejected Max Replenish Qty Range", "txse.txseequities.seed.rake.v1.0.limitorderrejectedmaxreplenishqtyrange", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_max_replenish_time_range = ProtoField.new("Limit Order Rejected Max Replenish Time Range", "txse.txseequities.seed.rake.v1.0.limitorderrejectedmaxreplenishtimerange", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_member_group = ProtoField.new("Limit Order Rejected Member Group", "txse.txseequities.seed.rake.v1.0.limitorderrejectedmembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_min_qty = ProtoField.new("Limit Order Rejected Min Qty", "txse.txseequities.seed.rake.v1.0.limitorderrejectedminqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_mpid = ProtoField.new("Limit Order Rejected Mpid", "txse.txseequities.seed.rake.v1.0.limitorderrejectedmpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_presence_bits = ProtoField.new("Limit Order Rejected Presence Bits", "txse.txseequities.seed.rake.v1.0.limitorderrejectedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_price_slide_instruction = ProtoField.new("Limit Order Rejected Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.limitorderrejectedpriceslideinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_reason = ProtoField.new("Limit Order Rejected Reason", "txse.txseequities.seed.rake.v1.0.limitorderrejectedreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_reference_price_target = ProtoField.new("Limit Order Rejected Reference Price Target", "txse.txseequities.seed.rake.v1.0.limitorderrejectedreferencepricetarget", ftypes.INT16)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_self_match_instruction = ProtoField.new("Limit Order Rejected Self Match Instruction", "txse.txseequities.seed.rake.v1.0.limitorderrejectedselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_user_data = ProtoField.new("Limit Order Rejected User Data", "txse.txseequities.seed.rake.v1.0.limitorderrejecteduserdata", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_self_match_instruction = ProtoField.new("Limit Order Self Match Instruction", "txse.txseequities.seed.rake.v1.0.limitorderselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_user_data = ProtoField.new("Limit Order User Data", "txse.txseequities.seed.rake.v1.0.limitorderuserdata", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.liquidity_indicator = ProtoField.new("Liquidity Indicator", "txse.txseequities.seed.rake.v1.0.liquidityindicator", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.listing_market = ProtoField.new("Listing Market", "txse.txseequities.seed.rake.v1.0.listingmarket", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.logon_request_packet = ProtoField.new("Logon Request Packet", "txse.txseequities.seed.rake.v1.0.logonrequestpacket", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.logon_response_code = ProtoField.new("Logon Response Code", "txse.txseequities.seed.rake.v1.0.logonresponsecode", ftypes.UINT8)
omi_txse_txseequities_seed_rake_v1_0.fields.logon_response_message = ProtoField.new("Logon Response Message", "txse.txseequities.seed.rake.v1.0.logonresponsemessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.lot_size = ProtoField.new("Lot Size", "txse.txseequities.seed.rake.v1.0.lotsize", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.market_hours_state = ProtoField.new("Market Hours State", "txse.txseequities.seed.rake.v1.0.markethoursstate", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_bit_fields = ProtoField.new("Market Order Accepted Bit Fields", "txse.txseequities.seed.rake.v1.0.marketorderacceptedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_locate_broker = ProtoField.new("Market Order Accepted Locate Broker", "txse.txseequities.seed.rake.v1.0.marketorderacceptedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_member_group = ProtoField.new("Market Order Accepted Member Group", "txse.txseequities.seed.rake.v1.0.marketorderacceptedmembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_mpid = ProtoField.new("Market Order Accepted Mpid", "txse.txseequities.seed.rake.v1.0.marketorderacceptedmpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_presence_bits = ProtoField.new("Market Order Accepted Presence Bits", "txse.txseequities.seed.rake.v1.0.marketorderacceptedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_self_match_instruction = ProtoField.new("Market Order Accepted Self Match Instruction", "txse.txseequities.seed.rake.v1.0.marketorderacceptedselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_user_data = ProtoField.new("Market Order Accepted User Data", "txse.txseequities.seed.rake.v1.0.marketorderaccepteduserdata", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_bit_fields = ProtoField.new("Market Order Bit Fields", "txse.txseequities.seed.rake.v1.0.marketorderbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_locate_broker = ProtoField.new("Market Order Locate Broker", "txse.txseequities.seed.rake.v1.0.marketorderlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_member_group = ProtoField.new("Market Order Member Group", "txse.txseequities.seed.rake.v1.0.marketordermembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_mpid = ProtoField.new("Market Order Mpid", "txse.txseequities.seed.rake.v1.0.marketordermpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_presence_bits = ProtoField.new("Market Order Presence Bits", "txse.txseequities.seed.rake.v1.0.marketorderpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_bit_fields = ProtoField.new("Market Order Rejected Bit Fields", "txse.txseequities.seed.rake.v1.0.marketorderrejectedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_locate_broker = ProtoField.new("Market Order Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.marketorderrejectedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_member_group = ProtoField.new("Market Order Rejected Member Group", "txse.txseequities.seed.rake.v1.0.marketorderrejectedmembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_mpid = ProtoField.new("Market Order Rejected Mpid", "txse.txseequities.seed.rake.v1.0.marketorderrejectedmpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_presence_bits = ProtoField.new("Market Order Rejected Presence Bits", "txse.txseequities.seed.rake.v1.0.marketorderrejectedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_reason = ProtoField.new("Market Order Rejected Reason", "txse.txseequities.seed.rake.v1.0.marketorderrejectedreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_self_match_instruction = ProtoField.new("Market Order Rejected Self Match Instruction", "txse.txseequities.seed.rake.v1.0.marketorderrejectedselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_user_data = ProtoField.new("Market Order Rejected User Data", "txse.txseequities.seed.rake.v1.0.marketorderrejecteduserdata", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_self_match_instruction = ProtoField.new("Market Order Self Match Instruction", "txse.txseequities.seed.rake.v1.0.marketorderselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_user_data = ProtoField.new("Market Order User Data", "txse.txseequities.seed.rake.v1.0.marketorderuserdata", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_bit_fields = ProtoField.new("Mass Cancel Accepted Bit Fields", "txse.txseequities.seed.rake.v1.0.masscancelacceptedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_cl_ord_id = ProtoField.new("Mass Cancel Accepted Cl Ord Id", "txse.txseequities.seed.rake.v1.0.masscancelacceptedclordid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_member_group = ProtoField.new("Mass Cancel Accepted Member Group", "txse.txseequities.seed.rake.v1.0.masscancelacceptedmembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_mpid = ProtoField.new("Mass Cancel Accepted Mpid", "txse.txseequities.seed.rake.v1.0.masscancelacceptedmpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_presence_bits = ProtoField.new("Mass Cancel Accepted Presence Bits", "txse.txseequities.seed.rake.v1.0.masscancelacceptedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_scope = ProtoField.new("Mass Cancel Accepted Scope", "txse.txseequities.seed.rake.v1.0.masscancelacceptedscope", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_sender_comp = ProtoField.new("Mass Cancel Accepted Sender Comp", "txse.txseequities.seed.rake.v1.0.masscancelacceptedsendercomp", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_bit_fields = ProtoField.new("Mass Cancel Bit Fields", "txse.txseequities.seed.rake.v1.0.masscancelbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_cl_ord_id = ProtoField.new("Mass Cancel Cl Ord Id", "txse.txseequities.seed.rake.v1.0.masscancelclordid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_id = ProtoField.new("Mass Cancel Id", "txse.txseequities.seed.rake.v1.0.masscancelid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_member_group = ProtoField.new("Mass Cancel Member Group", "txse.txseequities.seed.rake.v1.0.masscancelmembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_mpid = ProtoField.new("Mass Cancel Mpid", "txse.txseequities.seed.rake.v1.0.masscancelmpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_presence_bits = ProtoField.new("Mass Cancel Presence Bits", "txse.txseequities.seed.rake.v1.0.masscancelpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_bit_fields = ProtoField.new("Mass Cancel Rejected Bit Fields", "txse.txseequities.seed.rake.v1.0.masscancelrejectedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_cl_ord_id = ProtoField.new("Mass Cancel Rejected Cl Ord Id", "txse.txseequities.seed.rake.v1.0.masscancelrejectedclordid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_member_group = ProtoField.new("Mass Cancel Rejected Member Group", "txse.txseequities.seed.rake.v1.0.masscancelrejectedmembergroup", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_mpid = ProtoField.new("Mass Cancel Rejected Mpid", "txse.txseequities.seed.rake.v1.0.masscancelrejectedmpid", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_presence_bits = ProtoField.new("Mass Cancel Rejected Presence Bits", "txse.txseequities.seed.rake.v1.0.masscancelrejectedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_reason = ProtoField.new("Mass Cancel Rejected Reason", "txse.txseequities.seed.rake.v1.0.masscancelrejectedreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_scope = ProtoField.new("Mass Cancel Rejected Scope", "txse.txseequities.seed.rake.v1.0.masscancelrejectedscope", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_sender_comp = ProtoField.new("Mass Cancel Rejected Sender Comp", "txse.txseequities.seed.rake.v1.0.masscancelrejectedsendercomp", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_request_id = ProtoField.new("Mass Cancel Request Id", "txse.txseequities.seed.rake.v1.0.masscancelrequestid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_scope = ProtoField.new("Mass Cancel Scope", "txse.txseequities.seed.rake.v1.0.masscancelscope", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_sender_comp = ProtoField.new("Mass Cancel Sender Comp", "txse.txseequities.seed.rake.v1.0.masscancelsendercomp", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.matching_engine_id = ProtoField.new("Matching Engine Id", "txse.txseequities.seed.rake.v1.0.matchingengineid", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.message_length = ProtoField.new("Message Length", "txse.txseequities.seed.rake.v1.0.messagelength", ftypes.UINT16)
omi_txse_txseequities_seed_rake_v1_0.fields.message_type = ProtoField.new("Message Type", "txse.txseequities.seed.rake.v1.0.messagetype", ftypes.UINT8)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_bit_fields = ProtoField.new("Modify Order Bit Fields", "txse.txseequities.seed.rake.v1.0.modifyorderbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_locate_broker = ProtoField.new("Modify Order Locate Broker", "txse.txseequities.seed.rake.v1.0.modifyorderlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_order_qty = ProtoField.new("Modify Order Order Qty", "txse.txseequities.seed.rake.v1.0.modifyorderorderqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_presence_bits = ProtoField.new("Modify Order Presence Bits", "txse.txseequities.seed.rake.v1.0.modifyorderpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_bit_fields = ProtoField.new("Modify Rejected Bit Fields", "txse.txseequities.seed.rake.v1.0.modifyrejectedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_locate_broker = ProtoField.new("Modify Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.modifyrejectedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_order_qty = ProtoField.new("Modify Rejected Order Qty", "txse.txseequities.seed.rake.v1.0.modifyrejectedorderqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_presence_bits = ProtoField.new("Modify Rejected Presence Bits", "txse.txseequities.seed.rake.v1.0.modifyrejectedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_reason = ProtoField.new("Modify Rejected Reason", "txse.txseequities.seed.rake.v1.0.modifyrejectedreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.next_sequence_number = ProtoField.new("Next Sequence Number", "txse.txseequities.seed.rake.v1.0.nextsequencenumber", ftypes.UINT64)
omi_txse_txseequities_seed_rake_v1_0.fields.number_stream_ids = ProtoField.new("Number Stream Ids", "txse.txseequities.seed.rake.v1.0.numberstreamids", ftypes.UINT8)
omi_txse_txseequities_seed_rake_v1_0.fields.order_capacity = ProtoField.new("Order Capacity", "txse.txseequities.seed.rake.v1.0.ordercapacity", ftypes.UINT32, {[1]="Agency", [2]="Principal", [3]="Riskless Principal"}, base.DEC, 0x00000700)
omi_txse_txseequities_seed_rake_v1_0.fields.order_id = ProtoField.new("Order Id", "txse.txseequities.seed.rake.v1.0.orderid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_bit_fields = ProtoField.new("Order Modified Bit Fields", "txse.txseequities.seed.rake.v1.0.ordermodifiedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_locate_broker = ProtoField.new("Order Modified Locate Broker", "txse.txseequities.seed.rake.v1.0.ordermodifiedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_order_qty = ProtoField.new("Order Modified Order Qty", "txse.txseequities.seed.rake.v1.0.ordermodifiedorderqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_presence_bits = ProtoField.new("Order Modified Presence Bits", "txse.txseequities.seed.rake.v1.0.ordermodifiedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_qty = ProtoField.new("Order Qty", "txse.txseequities.seed.rake.v1.0.orderqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_bit_fields = ProtoField.new("Order Replaced Bit Fields", "txse.txseequities.seed.rake.v1.0.orderreplacedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_display_price = ProtoField.new("Order Replaced Display Price", "txse.txseequities.seed.rake.v1.0.orderreplaceddisplayprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_locate_broker = ProtoField.new("Order Replaced Locate Broker", "txse.txseequities.seed.rake.v1.0.orderreplacedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_max_floor_qty = ProtoField.new("Order Replaced Max Floor Qty", "txse.txseequities.seed.rake.v1.0.orderreplacedmaxfloorqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_order_qty = ProtoField.new("Order Replaced Order Qty", "txse.txseequities.seed.rake.v1.0.orderreplacedorderqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_presence_bits = ProtoField.new("Order Replaced Presence Bits", "txse.txseequities.seed.rake.v1.0.orderreplacedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_price = ProtoField.new("Order Replaced Price", "txse.txseequities.seed.rake.v1.0.orderreplacedprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_price_slide_instruction = ProtoField.new("Order Replaced Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.orderreplacedpriceslideinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_rank_price = ProtoField.new("Order Replaced Rank Price", "txse.txseequities.seed.rake.v1.0.orderreplacedrankprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_reference_price_target = ProtoField.new("Order Replaced Reference Price Target", "txse.txseequities.seed.rake.v1.0.orderreplacedreferencepricetarget", ftypes.INT16)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_self_match_instruction = ProtoField.new("Order Replaced Self Match Instruction", "txse.txseequities.seed.rake.v1.0.orderreplacedselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_display_price = ProtoField.new("Order Restated Display Price", "txse.txseequities.seed.rake.v1.0.orderrestateddisplayprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_presence_bits = ProtoField.new("Order Restated Presence Bits", "txse.txseequities.seed.rake.v1.0.orderrestatedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_rank_price = ProtoField.new("Order Restated Rank Price", "txse.txseequities.seed.rake.v1.0.orderrestatedrankprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.orig_cl_ord_id = ProtoField.new("Orig Cl Ord Id", "txse.txseequities.seed.rake.v1.0.origclordid", ftypes.INT64)
omi_txse_txseequities_seed_rake_v1_0.fields.packet = ProtoField.new("Packet", "txse.txseequities.seed.rake.v1.0.packet", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.packet_type = ProtoField.new("Packet Type", "txse.txseequities.seed.rake.v1.0.packettype", ftypes.UINT8)
omi_txse_txseequities_seed_rake_v1_0.fields.price = ProtoField.new("Price", "txse.txseequities.seed.rake.v1.0.price", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.rake_message_header = ProtoField.new("Rake Message Header", "txse.txseequities.seed.rake.v1.0.rakemessageheader", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.rake_tcp_message = ProtoField.new("Rake Tcp Message", "txse.txseequities.seed.rake.v1.0.raketcpmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_bit_fields = ProtoField.new("Replace Order Bit Fields", "txse.txseequities.seed.rake.v1.0.replaceorderbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_locate_broker = ProtoField.new("Replace Order Locate Broker", "txse.txseequities.seed.rake.v1.0.replaceorderlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_max_floor_qty = ProtoField.new("Replace Order Max Floor Qty", "txse.txseequities.seed.rake.v1.0.replaceordermaxfloorqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_order_qty = ProtoField.new("Replace Order Order Qty", "txse.txseequities.seed.rake.v1.0.replaceorderorderqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_presence_bits = ProtoField.new("Replace Order Presence Bits", "txse.txseequities.seed.rake.v1.0.replaceorderpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_price = ProtoField.new("Replace Order Price", "txse.txseequities.seed.rake.v1.0.replaceorderprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_price_slide_instruction = ProtoField.new("Replace Order Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.replaceorderpriceslideinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_reference_price_target = ProtoField.new("Replace Order Reference Price Target", "txse.txseequities.seed.rake.v1.0.replaceorderreferencepricetarget", ftypes.INT16)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_self_match_instruction = ProtoField.new("Replace Order Self Match Instruction", "txse.txseequities.seed.rake.v1.0.replaceorderselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_bit_fields = ProtoField.new("Replace Rejected Bit Fields", "txse.txseequities.seed.rake.v1.0.replacerejectedbitfields", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_locate_broker = ProtoField.new("Replace Rejected Locate Broker", "txse.txseequities.seed.rake.v1.0.replacerejectedlocatebroker", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_max_floor_qty = ProtoField.new("Replace Rejected Max Floor Qty", "txse.txseequities.seed.rake.v1.0.replacerejectedmaxfloorqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_order_qty = ProtoField.new("Replace Rejected Order Qty", "txse.txseequities.seed.rake.v1.0.replacerejectedorderqty", ftypes.INT32)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_presence_bits = ProtoField.new("Replace Rejected Presence Bits", "txse.txseequities.seed.rake.v1.0.replacerejectedpresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_price = ProtoField.new("Replace Rejected Price", "txse.txseequities.seed.rake.v1.0.replacerejectedprice", ftypes.DOUBLE)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_price_slide_instruction = ProtoField.new("Replace Rejected Price Slide Instruction", "txse.txseequities.seed.rake.v1.0.replacerejectedpriceslideinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_reason = ProtoField.new("Replace Rejected Reason", "txse.txseequities.seed.rake.v1.0.replacerejectedreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_reference_price_target = ProtoField.new("Replace Rejected Reference Price Target", "txse.txseequities.seed.rake.v1.0.replacerejectedreferencepricetarget", ftypes.INT16)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_self_match_instruction = ProtoField.new("Replace Rejected Self Match Instruction", "txse.txseequities.seed.rake.v1.0.replacerejectedselfmatchinstruction", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_10 = ProtoField.new("Reserved 10", "txse.txseequities.seed.rake.v1.0.reserved10", ftypes.UINT16, nil, base.DEC, 0xFFC0)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_17 = ProtoField.new("Reserved 17", "txse.txseequities.seed.rake.v1.0.reserved17", ftypes.UINT32, nil, base.DEC, 0xFFFF8000)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_19 = ProtoField.new("Reserved 19", "txse.txseequities.seed.rake.v1.0.reserved19", ftypes.UINT32, nil, base.DEC, 0xFFFFE000)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_4 = ProtoField.new("Reserved 4", "txse.txseequities.seed.rake.v1.0.reserved4", ftypes.UINT8, nil, base.DEC, 0xF0)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5 = ProtoField.new("Reserved 5", "txse.txseequities.seed.rake.v1.0.reserved5", ftypes.UINT16, nil, base.DEC, 0xF800)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_6 = ProtoField.new("Reserved 6", "txse.txseequities.seed.rake.v1.0.reserved6", ftypes.UINT8, nil, base.DEC, 0xFC)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_7 = ProtoField.new("Reserved 7", "txse.txseequities.seed.rake.v1.0.reserved7", ftypes.UINT8, nil, base.DEC, 0xFE)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_8 = ProtoField.new("Reserved 8", "txse.txseequities.seed.rake.v1.0.reserved8", ftypes.UINT16, nil, base.DEC, 0xFF00)
omi_txse_txseequities_seed_rake_v1_0.fields.reserved_9 = ProtoField.new("Reserved 9", "txse.txseequities.seed.rake.v1.0.reserved9", ftypes.UINT16, nil, base.DEC, 0xFF80)
omi_txse_txseequities_seed_rake_v1_0.fields.restatement_reason = ProtoField.new("Restatement Reason", "txse.txseequities.seed.rake.v1.0.restatementreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.scope = ProtoField.new("Scope", "txse.txseequities.seed.rake.v1.0.scope", ftypes.UINT32, {[0]="No", [1]="Yes"}, base.DEC, 0x00000001)
omi_txse_txseequities_seed_rake_v1_0.fields.self_match_scope = ProtoField.new("Self Match Scope", "txse.txseequities.seed.rake.v1.0.selfmatchscope", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.sender_comp = ProtoField.new("Sender Comp", "txse.txseequities.seed.rake.v1.0.sendercomp", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.session = ProtoField.new("Session", "txse.txseequities.seed.rake.v1.0.session", ftypes.UINT64)
omi_txse_txseequities_seed_rake_v1_0.fields.session_trading_state = ProtoField.new("Session Trading State", "txse.txseequities.seed.rake.v1.0.sessiontradingstate", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.short_sale_restriction_state = ProtoField.new("Short Sale Restriction State", "txse.txseequities.seed.rake.v1.0.shortsalerestrictionstate", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.side = ProtoField.new("Side", "txse.txseequities.seed.rake.v1.0.side", ftypes.UINT32, {[0]="Buy", [1]="Long Sell", [2]="Short Sell", [3]="Short Exempt"}, base.DEC, 0x00000007)
omi_txse_txseequities_seed_rake_v1_0.fields.stream_id = ProtoField.new("Stream Id", "txse.txseequities.seed.rake.v1.0.streamid", ftypes.UINT8)
omi_txse_txseequities_seed_rake_v1_0.fields.suffix = ProtoField.new("Suffix", "txse.txseequities.seed.rake.v1.0.suffix", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.symbol = ProtoField.new("Symbol", "txse.txseequities.seed.rake.v1.0.symbol", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.symbol_id = ProtoField.new("Symbol Id", "txse.txseequities.seed.rake.v1.0.symbolid", ftypes.INT16)
omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_operational_halt_reason = ProtoField.new("Symbol Status Operational Halt Reason", "txse.txseequities.seed.rake.v1.0.symbolstatusoperationalhaltreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_presence_bits = ProtoField.new("Symbol Status Presence Bits", "txse.txseequities.seed.rake.v1.0.symbolstatuspresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_regulatory_halt_reason = ProtoField.new("Symbol Status Regulatory Halt Reason", "txse.txseequities.seed.rake.v1.0.symbolstatusregulatoryhaltreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.symbol_trading_state = ProtoField.new("Symbol Trading State", "txse.txseequities.seed.rake.v1.0.symboltradingstate", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.tcp_sequenced_message = ProtoField.new("Tcp Sequenced Message", "txse.txseequities.seed.rake.v1.0.tcpsequencedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.tcp_unsequenced_message = ProtoField.new("Tcp Unsequenced Message", "txse.txseequities.seed.rake.v1.0.tcpunsequencedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.text = ProtoField.new("Text", "txse.txseequities.seed.rake.v1.0.text", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.time_in_force = ProtoField.new("Time In Force", "txse.txseequities.seed.rake.v1.0.timeinforce", ftypes.UINT32, {[1]="Sys", [2]="Ioc", [3]="Gtt", [4]="Day", [5]="Rho", [6]="At The Open", [7]="At The Close"}, base.DEC, 0x000000F0)
omi_txse_txseequities_seed_rake_v1_0.fields.token = ProtoField.new("Token", "txse.txseequities.seed.rake.v1.0.token", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_operational_halt_reason = ProtoField.new("Trading Session Status Operational Halt Reason", "txse.txseequities.seed.rake.v1.0.tradingsessionstatusoperationalhaltreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_presence_bits = ProtoField.new("Trading Session Status Presence Bits", "txse.txseequities.seed.rake.v1.0.tradingsessionstatuspresencebits", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_regulatory_halt_reason = ProtoField.new("Trading Session Status Regulatory Halt Reason", "txse.txseequities.seed.rake.v1.0.tradingsessionstatusregulatoryhaltreason", ftypes.INT8)
omi_txse_txseequities_seed_rake_v1_0.fields.transact_time = ProtoField.new("Transact Time", "txse.txseequities.seed.rake.v1.0.transacttime", ftypes.INT64)

-- Txse TxseEquities Rake Seed 1.0 Application Messages
omi_txse_txseequities_seed_rake_v1_0.fields.cancel_order_message = ProtoField.new("Cancel Order Message", "txse.txseequities.seed.rake.v1.0.cancelordermessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.cancel_rejected_message = ProtoField.new("Cancel Rejected Message", "txse.txseequities.seed.rake.v1.0.cancelrejectedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.define_symbol_message = ProtoField.new("Define Symbol Message", "txse.txseequities.seed.rake.v1.0.definesymbolmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_message = ProtoField.new("Limit Order Accepted Message", "txse.txseequities.seed.rake.v1.0.limitorderacceptedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_message = ProtoField.new("Limit Order Message", "txse.txseequities.seed.rake.v1.0.limitordermessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_message = ProtoField.new("Limit Order Rejected Message", "txse.txseequities.seed.rake.v1.0.limitorderrejectedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_message = ProtoField.new("Market Order Accepted Message", "txse.txseequities.seed.rake.v1.0.marketorderacceptedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_message = ProtoField.new("Market Order Message", "txse.txseequities.seed.rake.v1.0.marketordermessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_message = ProtoField.new("Market Order Rejected Message", "txse.txseequities.seed.rake.v1.0.marketorderrejectedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_message = ProtoField.new("Mass Cancel Accepted Message", "txse.txseequities.seed.rake.v1.0.masscancelacceptedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_message = ProtoField.new("Mass Cancel Message", "txse.txseequities.seed.rake.v1.0.masscancelmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_message = ProtoField.new("Mass Cancel Rejected Message", "txse.txseequities.seed.rake.v1.0.masscancelrejectedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_result_message = ProtoField.new("Mass Cancel Result Message", "txse.txseequities.seed.rake.v1.0.masscancelresultmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_message = ProtoField.new("Modify Order Message", "txse.txseequities.seed.rake.v1.0.modifyordermessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_message = ProtoField.new("Modify Rejected Message", "txse.txseequities.seed.rake.v1.0.modifyrejectedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_canceled_message = ProtoField.new("Order Canceled Message", "txse.txseequities.seed.rake.v1.0.ordercanceledmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_executed_message = ProtoField.new("Order Executed Message", "txse.txseequities.seed.rake.v1.0.orderexecutedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_message = ProtoField.new("Order Modified Message", "txse.txseequities.seed.rake.v1.0.ordermodifiedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_message = ProtoField.new("Order Replaced Message", "txse.txseequities.seed.rake.v1.0.orderreplacedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_message = ProtoField.new("Order Restated Message", "txse.txseequities.seed.rake.v1.0.orderrestatedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_message = ProtoField.new("Replace Order Message", "txse.txseequities.seed.rake.v1.0.replaceordermessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_message = ProtoField.new("Replace Rejected Message", "txse.txseequities.seed.rake.v1.0.replacerejectedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.self_match_prevented_message = ProtoField.new("Self Match Prevented Message", "txse.txseequities.seed.rake.v1.0.selfmatchpreventedmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_message = ProtoField.new("Symbol Status Message", "txse.txseequities.seed.rake.v1.0.symbolstatusmessage", ftypes.STRING)
omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_message = ProtoField.new("Trading Session Status Message", "txse.txseequities.seed.rake.v1.0.tradingsessionstatusmessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Txse TxseEquities Seed Rake 1.0 Element Dissection Options
show.application_messages = true
show.debug_message = true
show.define_symbol_bit_fields = true
show.limit_order_accepted_bit_fields = true
show.limit_order_accepted_presence_bits = true
show.limit_order_bit_fields = true
show.limit_order_presence_bits = true
show.limit_order_rejected_bit_fields = true
show.limit_order_rejected_presence_bits = true
show.logon_request_packet = true
show.logon_response_message = true
show.market_order_accepted_bit_fields = true
show.market_order_accepted_presence_bits = true
show.market_order_bit_fields = true
show.market_order_presence_bits = true
show.market_order_rejected_bit_fields = true
show.market_order_rejected_presence_bits = true
show.mass_cancel_accepted_bit_fields = true
show.mass_cancel_accepted_presence_bits = true
show.mass_cancel_bit_fields = true
show.mass_cancel_presence_bits = true
show.mass_cancel_rejected_bit_fields = true
show.mass_cancel_rejected_presence_bits = true
show.modify_order_bit_fields = true
show.modify_order_presence_bits = true
show.modify_rejected_bit_fields = true
show.modify_rejected_presence_bits = true
show.order_modified_bit_fields = true
show.order_modified_presence_bits = true
show.order_replaced_bit_fields = true
show.order_replaced_presence_bits = true
show.order_restated_presence_bits = true
show.packet = true
show.rake_message_header = true
show.rake_tcp_message = true
show.replace_order_bit_fields = true
show.replace_order_presence_bits = true
show.replace_rejected_bit_fields = true
show.replace_rejected_presence_bits = true
show.symbol_status_presence_bits = true
show.tcp_sequenced_message = true
show.tcp_unsequenced_message = true
show.trading_session_status_presence_bits = true

-- Register Txse TxseEquities Seed Rake 1.0 Show Options
omi_txse_txseequities_seed_rake_v1_0.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_debug_message = Pref.bool("Show Debug Message", show.debug_message, "Parse and add Debug Message to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_define_symbol_bit_fields = Pref.bool("Show Define Symbol Bit Fields", show.define_symbol_bit_fields, "Parse and add Define Symbol Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_accepted_bit_fields = Pref.bool("Show Limit Order Accepted Bit Fields", show.limit_order_accepted_bit_fields, "Parse and add Limit Order Accepted Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_accepted_presence_bits = Pref.bool("Show Limit Order Accepted Presence Bits", show.limit_order_accepted_presence_bits, "Parse and add Limit Order Accepted Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_bit_fields = Pref.bool("Show Limit Order Bit Fields", show.limit_order_bit_fields, "Parse and add Limit Order Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_presence_bits = Pref.bool("Show Limit Order Presence Bits", show.limit_order_presence_bits, "Parse and add Limit Order Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_rejected_bit_fields = Pref.bool("Show Limit Order Rejected Bit Fields", show.limit_order_rejected_bit_fields, "Parse and add Limit Order Rejected Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_rejected_presence_bits = Pref.bool("Show Limit Order Rejected Presence Bits", show.limit_order_rejected_presence_bits, "Parse and add Limit Order Rejected Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_logon_request_packet = Pref.bool("Show Logon Request Packet", show.logon_request_packet, "Parse and add Logon Request Packet to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_logon_response_message = Pref.bool("Show Logon Response Message", show.logon_response_message, "Parse and add Logon Response Message to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_accepted_bit_fields = Pref.bool("Show Market Order Accepted Bit Fields", show.market_order_accepted_bit_fields, "Parse and add Market Order Accepted Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_accepted_presence_bits = Pref.bool("Show Market Order Accepted Presence Bits", show.market_order_accepted_presence_bits, "Parse and add Market Order Accepted Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_bit_fields = Pref.bool("Show Market Order Bit Fields", show.market_order_bit_fields, "Parse and add Market Order Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_presence_bits = Pref.bool("Show Market Order Presence Bits", show.market_order_presence_bits, "Parse and add Market Order Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_rejected_bit_fields = Pref.bool("Show Market Order Rejected Bit Fields", show.market_order_rejected_bit_fields, "Parse and add Market Order Rejected Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_rejected_presence_bits = Pref.bool("Show Market Order Rejected Presence Bits", show.market_order_rejected_presence_bits, "Parse and add Market Order Rejected Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_accepted_bit_fields = Pref.bool("Show Mass Cancel Accepted Bit Fields", show.mass_cancel_accepted_bit_fields, "Parse and add Mass Cancel Accepted Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_accepted_presence_bits = Pref.bool("Show Mass Cancel Accepted Presence Bits", show.mass_cancel_accepted_presence_bits, "Parse and add Mass Cancel Accepted Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_bit_fields = Pref.bool("Show Mass Cancel Bit Fields", show.mass_cancel_bit_fields, "Parse and add Mass Cancel Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_presence_bits = Pref.bool("Show Mass Cancel Presence Bits", show.mass_cancel_presence_bits, "Parse and add Mass Cancel Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_rejected_bit_fields = Pref.bool("Show Mass Cancel Rejected Bit Fields", show.mass_cancel_rejected_bit_fields, "Parse and add Mass Cancel Rejected Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_rejected_presence_bits = Pref.bool("Show Mass Cancel Rejected Presence Bits", show.mass_cancel_rejected_presence_bits, "Parse and add Mass Cancel Rejected Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_order_bit_fields = Pref.bool("Show Modify Order Bit Fields", show.modify_order_bit_fields, "Parse and add Modify Order Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_order_presence_bits = Pref.bool("Show Modify Order Presence Bits", show.modify_order_presence_bits, "Parse and add Modify Order Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_rejected_bit_fields = Pref.bool("Show Modify Rejected Bit Fields", show.modify_rejected_bit_fields, "Parse and add Modify Rejected Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_rejected_presence_bits = Pref.bool("Show Modify Rejected Presence Bits", show.modify_rejected_presence_bits, "Parse and add Modify Rejected Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_modified_bit_fields = Pref.bool("Show Order Modified Bit Fields", show.order_modified_bit_fields, "Parse and add Order Modified Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_modified_presence_bits = Pref.bool("Show Order Modified Presence Bits", show.order_modified_presence_bits, "Parse and add Order Modified Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_replaced_bit_fields = Pref.bool("Show Order Replaced Bit Fields", show.order_replaced_bit_fields, "Parse and add Order Replaced Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_replaced_presence_bits = Pref.bool("Show Order Replaced Presence Bits", show.order_replaced_presence_bits, "Parse and add Order Replaced Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_restated_presence_bits = Pref.bool("Show Order Restated Presence Bits", show.order_restated_presence_bits, "Parse and add Order Restated Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_packet = Pref.bool("Show Packet", show.packet, "Parse and add Packet to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_rake_message_header = Pref.bool("Show Rake Message Header", show.rake_message_header, "Parse and add Rake Message Header to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_rake_tcp_message = Pref.bool("Show Rake Tcp Message", show.rake_tcp_message, "Parse and add Rake Tcp Message to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_order_bit_fields = Pref.bool("Show Replace Order Bit Fields", show.replace_order_bit_fields, "Parse and add Replace Order Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_order_presence_bits = Pref.bool("Show Replace Order Presence Bits", show.replace_order_presence_bits, "Parse and add Replace Order Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_rejected_bit_fields = Pref.bool("Show Replace Rejected Bit Fields", show.replace_rejected_bit_fields, "Parse and add Replace Rejected Bit Fields to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_rejected_presence_bits = Pref.bool("Show Replace Rejected Presence Bits", show.replace_rejected_presence_bits, "Parse and add Replace Rejected Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_symbol_status_presence_bits = Pref.bool("Show Symbol Status Presence Bits", show.symbol_status_presence_bits, "Parse and add Symbol Status Presence Bits to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_tcp_sequenced_message = Pref.bool("Show Tcp Sequenced Message", show.tcp_sequenced_message, "Parse and add Tcp Sequenced Message to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_tcp_unsequenced_message = Pref.bool("Show Tcp Unsequenced Message", show.tcp_unsequenced_message, "Parse and add Tcp Unsequenced Message to protocol tree")
omi_txse_txseequities_seed_rake_v1_0.prefs.show_trading_session_status_presence_bits = Pref.bool("Show Trading Session Status Presence Bits", show.trading_session_status_presence_bits, "Parse and add Trading Session Status Presence Bits to protocol tree")


-- Handle changed preferences
function omi_txse_txseequities_seed_rake_v1_0.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_application_messages then
    show.application_messages = omi_txse_txseequities_seed_rake_v1_0.prefs.show_application_messages
  end
  if show.debug_message ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_debug_message then
    show.debug_message = omi_txse_txseequities_seed_rake_v1_0.prefs.show_debug_message
  end
  if show.define_symbol_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_define_symbol_bit_fields then
    show.define_symbol_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_define_symbol_bit_fields
  end
  if show.limit_order_accepted_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_accepted_bit_fields then
    show.limit_order_accepted_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_accepted_bit_fields
  end
  if show.limit_order_accepted_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_accepted_presence_bits then
    show.limit_order_accepted_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_accepted_presence_bits
  end
  if show.limit_order_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_bit_fields then
    show.limit_order_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_bit_fields
  end
  if show.limit_order_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_presence_bits then
    show.limit_order_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_presence_bits
  end
  if show.limit_order_rejected_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_rejected_bit_fields then
    show.limit_order_rejected_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_rejected_bit_fields
  end
  if show.limit_order_rejected_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_rejected_presence_bits then
    show.limit_order_rejected_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_limit_order_rejected_presence_bits
  end
  if show.logon_request_packet ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_logon_request_packet then
    show.logon_request_packet = omi_txse_txseequities_seed_rake_v1_0.prefs.show_logon_request_packet
  end
  if show.logon_response_message ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_logon_response_message then
    show.logon_response_message = omi_txse_txseequities_seed_rake_v1_0.prefs.show_logon_response_message
  end
  if show.market_order_accepted_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_accepted_bit_fields then
    show.market_order_accepted_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_accepted_bit_fields
  end
  if show.market_order_accepted_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_accepted_presence_bits then
    show.market_order_accepted_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_accepted_presence_bits
  end
  if show.market_order_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_bit_fields then
    show.market_order_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_bit_fields
  end
  if show.market_order_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_presence_bits then
    show.market_order_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_presence_bits
  end
  if show.market_order_rejected_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_rejected_bit_fields then
    show.market_order_rejected_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_rejected_bit_fields
  end
  if show.market_order_rejected_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_rejected_presence_bits then
    show.market_order_rejected_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_market_order_rejected_presence_bits
  end
  if show.mass_cancel_accepted_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_accepted_bit_fields then
    show.mass_cancel_accepted_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_accepted_bit_fields
  end
  if show.mass_cancel_accepted_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_accepted_presence_bits then
    show.mass_cancel_accepted_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_accepted_presence_bits
  end
  if show.mass_cancel_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_bit_fields then
    show.mass_cancel_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_bit_fields
  end
  if show.mass_cancel_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_presence_bits then
    show.mass_cancel_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_presence_bits
  end
  if show.mass_cancel_rejected_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_rejected_bit_fields then
    show.mass_cancel_rejected_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_rejected_bit_fields
  end
  if show.mass_cancel_rejected_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_rejected_presence_bits then
    show.mass_cancel_rejected_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_mass_cancel_rejected_presence_bits
  end
  if show.modify_order_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_order_bit_fields then
    show.modify_order_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_order_bit_fields
  end
  if show.modify_order_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_order_presence_bits then
    show.modify_order_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_order_presence_bits
  end
  if show.modify_rejected_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_rejected_bit_fields then
    show.modify_rejected_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_rejected_bit_fields
  end
  if show.modify_rejected_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_rejected_presence_bits then
    show.modify_rejected_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_modify_rejected_presence_bits
  end
  if show.order_modified_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_modified_bit_fields then
    show.order_modified_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_modified_bit_fields
  end
  if show.order_modified_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_modified_presence_bits then
    show.order_modified_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_modified_presence_bits
  end
  if show.order_replaced_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_replaced_bit_fields then
    show.order_replaced_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_replaced_bit_fields
  end
  if show.order_replaced_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_replaced_presence_bits then
    show.order_replaced_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_replaced_presence_bits
  end
  if show.order_restated_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_restated_presence_bits then
    show.order_restated_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_order_restated_presence_bits
  end
  if show.packet ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_packet then
    show.packet = omi_txse_txseequities_seed_rake_v1_0.prefs.show_packet
  end
  if show.rake_message_header ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_rake_message_header then
    show.rake_message_header = omi_txse_txseequities_seed_rake_v1_0.prefs.show_rake_message_header
  end
  if show.rake_tcp_message ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_rake_tcp_message then
    show.rake_tcp_message = omi_txse_txseequities_seed_rake_v1_0.prefs.show_rake_tcp_message
  end
  if show.replace_order_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_order_bit_fields then
    show.replace_order_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_order_bit_fields
  end
  if show.replace_order_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_order_presence_bits then
    show.replace_order_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_order_presence_bits
  end
  if show.replace_rejected_bit_fields ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_rejected_bit_fields then
    show.replace_rejected_bit_fields = omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_rejected_bit_fields
  end
  if show.replace_rejected_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_rejected_presence_bits then
    show.replace_rejected_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_replace_rejected_presence_bits
  end
  if show.symbol_status_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_symbol_status_presence_bits then
    show.symbol_status_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_symbol_status_presence_bits
  end
  if show.tcp_sequenced_message ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_tcp_sequenced_message then
    show.tcp_sequenced_message = omi_txse_txseequities_seed_rake_v1_0.prefs.show_tcp_sequenced_message
  end
  if show.tcp_unsequenced_message ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_tcp_unsequenced_message then
    show.tcp_unsequenced_message = omi_txse_txseequities_seed_rake_v1_0.prefs.show_tcp_unsequenced_message
  end
  if show.trading_session_status_presence_bits ~= omi_txse_txseequities_seed_rake_v1_0.prefs.show_trading_session_status_presence_bits then
    show.trading_session_status_presence_bits = omi_txse_txseequities_seed_rake_v1_0.prefs.show_trading_session_status_presence_bits
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
-- Txse TxseEquities Seed Rake 1.0 Fields
-----------------------------------------------------------------------

-- Cancel Reason
txse_txseequities_seed_rake_v1_0.cancel_reason = {}

-- Size: Cancel Reason
txse_txseequities_seed_rake_v1_0.cancel_reason.size = 1

-- Display: Cancel Reason
txse_txseequities_seed_rake_v1_0.cancel_reason.display = function(value)
  if value == 1 then
    return "Cancel Reason: Requested By User (1)"
  end
  if value == 2 then
    return "Cancel Reason: Related To Time In Force (2)"
  end
  if value == 3 then
    return "Cancel Reason: Related To Min Qty (3)"
  end
  if value == 4 then
    return "Cancel Reason: Reg Nms Violation No Slide (4)"
  end
  if value == 5 then
    return "Cancel Reason: Marketable Reserve (5)"
  end
  if value == 6 then
    return "Cancel Reason: Self Match Prevention (6)"
  end
  if value == 7 then
    return "Cancel Reason: Replenishment Canceled Due To Reserve (7)"
  end
  if value == 8 then
    return "Cancel Reason: Related To Order Type (8)"
  end
  if value == 9 then
    return "Cancel Reason: Canceled Due To Crossed Markets (9)"
  end
  if value == 10 then
    return "Cancel Reason: Canceled Due To Mass Cancel Request (10)"
  end
  if value == 11 then
    return "Cancel Reason: Exchange Locked Or Crossed No Slide (11)"
  end
  if value == 12 then
    return "Cancel Reason: Reg Sho Violation No Slide (12)"
  end
  if value == 13 then
    return "Cancel Reason: Luld Breached No Slide (13)"
  end
  if value == 14 then
    return "Cancel Reason: Canceled As Price Breached Luld (14)"
  end
  if value == 15 then
    return "Cancel Reason: Canceled On Disconnect (15)"
  end
  if value == 16 then
    return "Cancel Reason: Auction Order Post Cross (16)"
  end
  if value == 17 then
    return "Cancel Reason: Peg Reference Price Breaches Limit Price (17)"
  end
  if value == 18 then
    return "Cancel Reason: Odd Lot Not Executable (18)"
  end

  return "Cancel Reason: Unknown("..value..")"
end

-- Dissect: Cancel Reason
txse_txseequities_seed_rake_v1_0.cancel_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.cancel_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.cancel_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_reason, range, value, display)

  return offset + length, value
end

-- Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.cancel_rejected_reason = {}

-- Size: Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.cancel_rejected_reason.size = 1

-- Display: Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.cancel_rejected_reason.display = function(value)
  if value == 1 then
    return "Cancel Rejected Reason: Invalid Client Order Id (1)"
  end
  if value == 2 then
    return "Cancel Rejected Reason: Duplicate Client Order Id (2)"
  end
  if value == 3 then
    return "Cancel Rejected Reason: Unknown Original Client Order Id (3)"
  end
  if value == 4 then
    return "Cancel Rejected Reason: No Longer On Book (4)"
  end
  if value == 5 then
    return "Cancel Rejected Reason: Invalid Symbol (5)"
  end
  if value == 6 then
    return "Cancel Rejected Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Cancel Rejected Reason: Invalid Order Quantity (7)"
  end
  if value == 8 then
    return "Cancel Rejected Reason: Invalid Reference Price Target (8)"
  end
  if value == 9 then
    return "Cancel Rejected Reason: Invalid Is Hidden Flag (9)"
  end
  if value == 10 then
    return "Cancel Rejected Reason: Invalid Order Type (10)"
  end
  if value == 11 then
    return "Cancel Rejected Reason: Invalid Side (11)"
  end
  if value == 12 then
    return "Cancel Rejected Reason: Invalid Max Floor Quantity (12)"
  end
  if value == 13 then
    return "Cancel Rejected Reason: Invalid Max Replenish Quantity Range (13)"
  end
  if value == 14 then
    return "Cancel Rejected Reason: Invalid Max Replenish Time Range (14)"
  end
  if value == 15 then
    return "Cancel Rejected Reason: Invalid Minimum Quantity (15)"
  end
  if value == 16 then
    return "Cancel Rejected Reason: Invalid Locate Required Flag (16)"
  end
  if value == 17 then
    return "Cancel Rejected Reason: Invalid Time In Force (17)"
  end
  if value == 18 then
    return "Cancel Rejected Reason: Modification Not Permitted (18)"
  end
  if value == 19 then
    return "Cancel Rejected Reason: Invalid Mpid (19)"
  end
  if value == 20 then
    return "Cancel Rejected Reason: Invalid Sender Comp (20)"
  end
  if value == 21 then
    return "Cancel Rejected Reason: Invalid Is Post Only Flag (21)"
  end
  if value == 22 then
    return "Cancel Rejected Reason: Invalid Expire Time (22)"
  end
  if value == 23 then
    return "Cancel Rejected Reason: Invalid For Trading Session (23)"
  end
  if value == 24 then
    return "Cancel Rejected Reason: Invalid For Trading Status (24)"
  end
  if value == 25 then
    return "Cancel Rejected Reason: Invalid For Symbol Status (25)"
  end
  if value == 26 then
    return "Cancel Rejected Reason: Invalid Is Iso Flag (26)"
  end
  if value == 27 then
    return "Cancel Rejected Reason: Trading Disabled For Mpid On Port (27)"
  end
  if value == 28 then
    return "Cancel Rejected Reason: Trading Disabled For Non Test Symbols (28)"
  end
  if value == 29 then
    return "Cancel Rejected Reason: Trading Disabled For Order Capacity (29)"
  end
  if value == 30 then
    return "Cancel Rejected Reason: Trading Disabled For Iso (30)"
  end
  if value == 31 then
    return "Cancel Rejected Reason: Maximum Order Quantity Breached (31)"
  end
  if value == 32 then
    return "Cancel Rejected Reason: Maximum Price Breached (32)"
  end
  if value == 33 then
    return "Cancel Rejected Reason: Maximum Notional Breached (33)"
  end
  if value == 34 then
    return "Cancel Rejected Reason: Invalid Mass Cancel Request Id (34)"
  end
  if value == 35 then
    return "Cancel Rejected Reason: Symbol On Restricted List (35)"
  end
  if value == 36 then
    return "Cancel Rejected Reason: Luld Band Breached (36)"
  end
  if value == 37 then
    return "Cancel Rejected Reason: Invalid Price Increment (37)"
  end
  if value == 38 then
    return "Cancel Rejected Reason: Auction Order Not Cancelable (38)"
  end
  if value == 39 then
    return "Cancel Rejected Reason: Invalid For Auction Order (39)"
  end

  return "Cancel Rejected Reason: Unknown("..value..")"
end

-- Dissect: Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.cancel_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.cancel_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.cancel_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_rejected_reason, range, value, display)

  return offset + length, value
end

-- Canceled Count
txse_txseequities_seed_rake_v1_0.canceled_count = {}

-- Size: Canceled Count
txse_txseequities_seed_rake_v1_0.canceled_count.size = 4

-- Display: Canceled Count
txse_txseequities_seed_rake_v1_0.canceled_count.display = function(value)
  return "Canceled Count: "..value
end

-- Dissect: Canceled Count
txse_txseequities_seed_rake_v1_0.canceled_count.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.canceled_count.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.canceled_count.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.canceled_count, range, value, display)

  return offset + length, value
end

-- Canceled Qty
txse_txseequities_seed_rake_v1_0.canceled_qty = {}

-- Size: Canceled Qty
txse_txseequities_seed_rake_v1_0.canceled_qty.size = 4

-- Display: Canceled Qty
txse_txseequities_seed_rake_v1_0.canceled_qty.display = function(value)
  return "Canceled Qty: "..value
end

-- Dissect: Canceled Qty
txse_txseequities_seed_rake_v1_0.canceled_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.canceled_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.canceled_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.canceled_qty, range, value, display)

  return offset + length, value
end

-- Cl Ord Id
txse_txseequities_seed_rake_v1_0.cl_ord_id = {}

-- Size: Cl Ord Id
txse_txseequities_seed_rake_v1_0.cl_ord_id.size = 8

-- Display: Cl Ord Id
txse_txseequities_seed_rake_v1_0.cl_ord_id.display = function(value)
  return "Cl Ord Id: "..value
end

-- Dissect: Cl Ord Id
txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cl_ord_id, range, value, display)

  return offset + length, value
end

-- Display Qty
txse_txseequities_seed_rake_v1_0.display_qty = {}

-- Size: Display Qty
txse_txseequities_seed_rake_v1_0.display_qty.size = 4

-- Display: Display Qty
txse_txseequities_seed_rake_v1_0.display_qty.display = function(value)
  return "Display Qty: "..value
end

-- Dissect: Display Qty
txse_txseequities_seed_rake_v1_0.display_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.display_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.display_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.display_qty, range, value, display)

  return offset + length, value
end

-- Exec Id
txse_txseequities_seed_rake_v1_0.exec_id = {}

-- Size: Exec Id
txse_txseequities_seed_rake_v1_0.exec_id.size = 8

-- Display: Exec Id
txse_txseequities_seed_rake_v1_0.exec_id.display = function(value)
  return "Exec Id: "..value
end

-- Dissect: Exec Id
txse_txseequities_seed_rake_v1_0.exec_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.exec_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.exec_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.exec_id, range, value, display)

  return offset + length, value
end

-- Exec Price
txse_txseequities_seed_rake_v1_0.exec_price = {}

-- Size: Exec Price
txse_txseequities_seed_rake_v1_0.exec_price.size = 8

-- Display: Exec Price
txse_txseequities_seed_rake_v1_0.exec_price.display = function(value)
  return "Exec Price: "..value
end

-- Translate: Exec Price
txse_txseequities_seed_rake_v1_0.exec_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Exec Price
txse_txseequities_seed_rake_v1_0.exec_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.exec_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.exec_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.exec_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.exec_price, range, value, display)

  return offset + length, value
end

-- Exec Qty
txse_txseequities_seed_rake_v1_0.exec_qty = {}

-- Size: Exec Qty
txse_txseequities_seed_rake_v1_0.exec_qty.size = 4

-- Display: Exec Qty
txse_txseequities_seed_rake_v1_0.exec_qty.display = function(value)
  return "Exec Qty: "..value
end

-- Dissect: Exec Qty
txse_txseequities_seed_rake_v1_0.exec_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.exec_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.exec_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.exec_qty, range, value, display)

  return offset + length, value
end

-- Highest Known Sequence Number
txse_txseequities_seed_rake_v1_0.highest_known_sequence_number = {}

-- Size: Highest Known Sequence Number
txse_txseequities_seed_rake_v1_0.highest_known_sequence_number.size = 8

-- Display: Highest Known Sequence Number
txse_txseequities_seed_rake_v1_0.highest_known_sequence_number.display = function(value)
  return "Highest Known Sequence Number: "..value
end

-- Dissect: Highest Known Sequence Number
txse_txseequities_seed_rake_v1_0.highest_known_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.highest_known_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_seed_rake_v1_0.highest_known_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.highest_known_sequence_number, range, value, display)

  return offset + length, value
end

-- Instance
txse_txseequities_seed_rake_v1_0.instance = {}

-- Size: Instance
txse_txseequities_seed_rake_v1_0.instance.size = 4

-- Display: Instance
txse_txseequities_seed_rake_v1_0.instance.display = function(value)
  return "Instance: "..value
end

-- Dissect: Instance
txse_txseequities_seed_rake_v1_0.instance.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.instance.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_seed_rake_v1_0.instance.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.instance, range, value, display)

  return offset + length, value
end

-- Leaves Qty
txse_txseequities_seed_rake_v1_0.leaves_qty = {}

-- Size: Leaves Qty
txse_txseequities_seed_rake_v1_0.leaves_qty.size = 4

-- Display: Leaves Qty
txse_txseequities_seed_rake_v1_0.leaves_qty.display = function(value)
  return "Leaves Qty: "..value
end

-- Dissect: Leaves Qty
txse_txseequities_seed_rake_v1_0.leaves_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.leaves_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.leaves_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.leaves_qty, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Display Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price = {}

-- Size: Limit Order Accepted Display Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.size = 8

-- Display: Limit Order Accepted Display Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.display = function(value)
  return "Limit Order Accepted Display Price: "..value
end

-- Translate: Limit Order Accepted Display Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Limit Order Accepted Display Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_display_price, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time = {}

-- Size: Limit Order Accepted Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time.size = 8

-- Display: Limit Order Accepted Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Limit Order Accepted Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Limit Order Accepted Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_expire_time, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker = {}

-- Size: Limit Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker.size = 4

-- Display: Limit Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker.display = function(value)
  return "Limit Order Accepted Locate Broker: "..value
end

-- Dissect: Limit Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_locate_broker, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty = {}

-- Size: Limit Order Accepted Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty.size = 4

-- Display: Limit Order Accepted Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty.display = function(value)
  return "Limit Order Accepted Max Floor Qty: "..value
end

-- Dissect: Limit Order Accepted Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_max_floor_qty, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range = {}

-- Size: Limit Order Accepted Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range.size = 4

-- Display: Limit Order Accepted Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range.display = function(value)
  return "Limit Order Accepted Max Replenish Qty Range: "..value
end

-- Dissect: Limit Order Accepted Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_max_replenish_qty_range, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range = {}

-- Size: Limit Order Accepted Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range.size = 8

-- Display: Limit Order Accepted Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range.display = function(value)
  return "Limit Order Accepted Max Replenish Time Range: "..value
end

-- Dissect: Limit Order Accepted Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_max_replenish_time_range, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group = {}

-- Size: Limit Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group.size = 2

-- Display: Limit Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group.display = function(value)
  return "Limit Order Accepted Member Group: "..value
end

-- Dissect: Limit Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_member_group, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty = {}

-- Size: Limit Order Accepted Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty.size = 4

-- Display: Limit Order Accepted Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty.display = function(value)
  return "Limit Order Accepted Min Qty: "..value
end

-- Dissect: Limit Order Accepted Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_min_qty, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid = {}

-- Size: Limit Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid.size = 4

-- Display: Limit Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid.display = function(value)
  return "Limit Order Accepted Mpid: "..value
end

-- Dissect: Limit Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_mpid, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction = {}

-- Size: Limit Order Accepted Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction.size = 1

-- Display: Limit Order Accepted Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction.display = function(value)
  if value == 0 then
    return "Limit Order Accepted Price Slide Instruction: No Price Slide (0)"
  end
  if value == 1 then
    return "Limit Order Accepted Price Slide Instruction: Single Price Slide On Lock And Cross (1)"
  end
  if value == 2 then
    return "Limit Order Accepted Price Slide Instruction: Multiple Price Slides On Lock And Cross (2)"
  end
  if value == 3 then
    return "Limit Order Accepted Price Slide Instruction: Single Price Slide Lock Only (3)"
  end

  return "Limit Order Accepted Price Slide Instruction: Unknown("..value..")"
end

-- Dissect: Limit Order Accepted Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_price_slide_instruction, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Rank Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price = {}

-- Size: Limit Order Accepted Rank Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.size = 8

-- Display: Limit Order Accepted Rank Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.display = function(value)
  return "Limit Order Accepted Rank Price: "..value
end

-- Translate: Limit Order Accepted Rank Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Limit Order Accepted Rank Price
txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_rank_price, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target = {}

-- Size: Limit Order Accepted Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target.size = 2

-- Display: Limit Order Accepted Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target.display = function(value)
  return "Limit Order Accepted Reference Price Target: "..value
end

-- Dissect: Limit Order Accepted Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_reference_price_target, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction = {}

-- Size: Limit Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction.size = 1

-- Display: Limit Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction.display = function(value)
  if value == 0 then
    return "Limit Order Accepted Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Limit Order Accepted Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Limit Order Accepted Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Limit Order Accepted Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Limit Order Accepted Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Limit Order Accepted Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Limit Order Accepted Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Limit Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Limit Order Accepted User Data
txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data = {}

-- Size: Limit Order Accepted User Data
txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data.size = 8

-- Display: Limit Order Accepted User Data
txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data.display = function(value)
  return "Limit Order Accepted User Data: "..value
end

-- Dissect: Limit Order Accepted User Data
txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_user_data, range, value, display)

  return offset + length, value
end

-- Limit Order Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_expire_time = {}

-- Size: Limit Order Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_expire_time.size = 8

-- Display: Limit Order Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Limit Order Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Limit Order Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_expire_time.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_expire_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_expire_time, range, value, display)

  return offset + length, value
end

-- Limit Order Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_locate_broker = {}

-- Size: Limit Order Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_locate_broker.size = 4

-- Display: Limit Order Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_locate_broker.display = function(value)
  return "Limit Order Locate Broker: "..value
end

-- Dissect: Limit Order Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_locate_broker, range, value, display)

  return offset + length, value
end

-- Limit Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty = {}

-- Size: Limit Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty.size = 4

-- Display: Limit Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty.display = function(value)
  return "Limit Order Max Floor Qty: "..value
end

-- Dissect: Limit Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_max_floor_qty, range, value, display)

  return offset + length, value
end

-- Limit Order Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range = {}

-- Size: Limit Order Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range.size = 4

-- Display: Limit Order Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range.display = function(value)
  return "Limit Order Max Replenish Qty Range: "..value
end

-- Dissect: Limit Order Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_max_replenish_qty_range, range, value, display)

  return offset + length, value
end

-- Limit Order Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range = {}

-- Size: Limit Order Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range.size = 8

-- Display: Limit Order Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range.display = function(value)
  return "Limit Order Max Replenish Time Range: "..value
end

-- Dissect: Limit Order Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_max_replenish_time_range, range, value, display)

  return offset + length, value
end

-- Limit Order Member Group
txse_txseequities_seed_rake_v1_0.limit_order_member_group = {}

-- Size: Limit Order Member Group
txse_txseequities_seed_rake_v1_0.limit_order_member_group.size = 2

-- Display: Limit Order Member Group
txse_txseequities_seed_rake_v1_0.limit_order_member_group.display = function(value)
  return "Limit Order Member Group: "..value
end

-- Dissect: Limit Order Member Group
txse_txseequities_seed_rake_v1_0.limit_order_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_member_group, range, value, display)

  return offset + length, value
end

-- Limit Order Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_min_qty = {}

-- Size: Limit Order Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_min_qty.size = 4

-- Display: Limit Order Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_min_qty.display = function(value)
  return "Limit Order Min Qty: "..value
end

-- Dissect: Limit Order Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_min_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_min_qty, range, value, display)

  return offset + length, value
end

-- Limit Order Mpid
txse_txseequities_seed_rake_v1_0.limit_order_mpid = {}

-- Size: Limit Order Mpid
txse_txseequities_seed_rake_v1_0.limit_order_mpid.size = 4

-- Display: Limit Order Mpid
txse_txseequities_seed_rake_v1_0.limit_order_mpid.display = function(value)
  return "Limit Order Mpid: "..value
end

-- Dissect: Limit Order Mpid
txse_txseequities_seed_rake_v1_0.limit_order_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_mpid, range, value, display)

  return offset + length, value
end

-- Limit Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction = {}

-- Size: Limit Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction.size = 1

-- Display: Limit Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction.display = function(value)
  if value == 0 then
    return "Limit Order Price Slide Instruction: No Price Slide (0)"
  end
  if value == 1 then
    return "Limit Order Price Slide Instruction: Single Price Slide On Lock And Cross (1)"
  end
  if value == 2 then
    return "Limit Order Price Slide Instruction: Multiple Price Slides On Lock And Cross (2)"
  end
  if value == 3 then
    return "Limit Order Price Slide Instruction: Single Price Slide Lock Only (3)"
  end

  return "Limit Order Price Slide Instruction: Unknown("..value..")"
end

-- Dissect: Limit Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_price_slide_instruction, range, value, display)

  return offset + length, value
end

-- Limit Order Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target = {}

-- Size: Limit Order Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target.size = 2

-- Display: Limit Order Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target.display = function(value)
  return "Limit Order Reference Price Target: "..value
end

-- Dissect: Limit Order Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_reference_price_target, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time = {}

-- Size: Limit Order Rejected Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time.size = 8

-- Display: Limit Order Rejected Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Limit Order Rejected Expire Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Limit Order Rejected Expire Time
txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_expire_time, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker = {}

-- Size: Limit Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker.size = 4

-- Display: Limit Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker.display = function(value)
  return "Limit Order Rejected Locate Broker: "..value
end

-- Dissect: Limit Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_locate_broker, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty = {}

-- Size: Limit Order Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty.size = 4

-- Display: Limit Order Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty.display = function(value)
  return "Limit Order Rejected Max Floor Qty: "..value
end

-- Dissect: Limit Order Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_max_floor_qty, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range = {}

-- Size: Limit Order Rejected Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range.size = 4

-- Display: Limit Order Rejected Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range.display = function(value)
  return "Limit Order Rejected Max Replenish Qty Range: "..value
end

-- Dissect: Limit Order Rejected Max Replenish Qty Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_max_replenish_qty_range, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range = {}

-- Size: Limit Order Rejected Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range.size = 8

-- Display: Limit Order Rejected Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range.display = function(value)
  return "Limit Order Rejected Max Replenish Time Range: "..value
end

-- Dissect: Limit Order Rejected Max Replenish Time Range
txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_max_replenish_time_range, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group = {}

-- Size: Limit Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group.size = 2

-- Display: Limit Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group.display = function(value)
  return "Limit Order Rejected Member Group: "..value
end

-- Dissect: Limit Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_member_group, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty = {}

-- Size: Limit Order Rejected Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty.size = 4

-- Display: Limit Order Rejected Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty.display = function(value)
  return "Limit Order Rejected Min Qty: "..value
end

-- Dissect: Limit Order Rejected Min Qty
txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_min_qty, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid = {}

-- Size: Limit Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid.size = 4

-- Display: Limit Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid.display = function(value)
  return "Limit Order Rejected Mpid: "..value
end

-- Dissect: Limit Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_mpid, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction = {}

-- Size: Limit Order Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction.size = 1

-- Display: Limit Order Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction.display = function(value)
  if value == 0 then
    return "Limit Order Rejected Price Slide Instruction: No Price Slide (0)"
  end
  if value == 1 then
    return "Limit Order Rejected Price Slide Instruction: Single Price Slide On Lock And Cross (1)"
  end
  if value == 2 then
    return "Limit Order Rejected Price Slide Instruction: Multiple Price Slides On Lock And Cross (2)"
  end
  if value == 3 then
    return "Limit Order Rejected Price Slide Instruction: Single Price Slide Lock Only (3)"
  end

  return "Limit Order Rejected Price Slide Instruction: Unknown("..value..")"
end

-- Dissect: Limit Order Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_price_slide_instruction, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Reason
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason = {}

-- Size: Limit Order Rejected Reason
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason.size = 1

-- Display: Limit Order Rejected Reason
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason.display = function(value)
  if value == 1 then
    return "Limit Order Rejected Reason: Invalid Client Order Id (1)"
  end
  if value == 2 then
    return "Limit Order Rejected Reason: Duplicate Client Order Id (2)"
  end
  if value == 3 then
    return "Limit Order Rejected Reason: Unknown Original Client Order Id (3)"
  end
  if value == 4 then
    return "Limit Order Rejected Reason: No Longer On Book (4)"
  end
  if value == 5 then
    return "Limit Order Rejected Reason: Invalid Symbol (5)"
  end
  if value == 6 then
    return "Limit Order Rejected Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Limit Order Rejected Reason: Invalid Order Quantity (7)"
  end
  if value == 8 then
    return "Limit Order Rejected Reason: Invalid Reference Price Target (8)"
  end
  if value == 9 then
    return "Limit Order Rejected Reason: Invalid Is Hidden Flag (9)"
  end
  if value == 10 then
    return "Limit Order Rejected Reason: Invalid Order Type (10)"
  end
  if value == 11 then
    return "Limit Order Rejected Reason: Invalid Side (11)"
  end
  if value == 12 then
    return "Limit Order Rejected Reason: Invalid Max Floor Quantity (12)"
  end
  if value == 13 then
    return "Limit Order Rejected Reason: Invalid Max Replenish Quantity Range (13)"
  end
  if value == 14 then
    return "Limit Order Rejected Reason: Invalid Max Replenish Time Range (14)"
  end
  if value == 15 then
    return "Limit Order Rejected Reason: Invalid Minimum Quantity (15)"
  end
  if value == 16 then
    return "Limit Order Rejected Reason: Invalid Locate Required Flag (16)"
  end
  if value == 17 then
    return "Limit Order Rejected Reason: Invalid Time In Force (17)"
  end
  if value == 18 then
    return "Limit Order Rejected Reason: Modification Not Permitted (18)"
  end
  if value == 19 then
    return "Limit Order Rejected Reason: Invalid Mpid (19)"
  end
  if value == 20 then
    return "Limit Order Rejected Reason: Invalid Sender Comp (20)"
  end
  if value == 21 then
    return "Limit Order Rejected Reason: Invalid Is Post Only Flag (21)"
  end
  if value == 22 then
    return "Limit Order Rejected Reason: Invalid Expire Time (22)"
  end
  if value == 23 then
    return "Limit Order Rejected Reason: Invalid For Trading Session (23)"
  end
  if value == 24 then
    return "Limit Order Rejected Reason: Invalid For Trading Status (24)"
  end
  if value == 25 then
    return "Limit Order Rejected Reason: Invalid For Symbol Status (25)"
  end
  if value == 26 then
    return "Limit Order Rejected Reason: Invalid Is Iso Flag (26)"
  end
  if value == 27 then
    return "Limit Order Rejected Reason: Trading Disabled For Mpid On Port (27)"
  end
  if value == 28 then
    return "Limit Order Rejected Reason: Trading Disabled For Non Test Symbols (28)"
  end
  if value == 29 then
    return "Limit Order Rejected Reason: Trading Disabled For Order Capacity (29)"
  end
  if value == 30 then
    return "Limit Order Rejected Reason: Trading Disabled For Iso (30)"
  end
  if value == 31 then
    return "Limit Order Rejected Reason: Maximum Order Quantity Breached (31)"
  end
  if value == 32 then
    return "Limit Order Rejected Reason: Maximum Price Breached (32)"
  end
  if value == 33 then
    return "Limit Order Rejected Reason: Maximum Notional Breached (33)"
  end
  if value == 34 then
    return "Limit Order Rejected Reason: Invalid Mass Cancel Request Id (34)"
  end
  if value == 35 then
    return "Limit Order Rejected Reason: Symbol On Restricted List (35)"
  end
  if value == 36 then
    return "Limit Order Rejected Reason: Luld Band Breached (36)"
  end
  if value == 37 then
    return "Limit Order Rejected Reason: Invalid Price Increment (37)"
  end
  if value == 38 then
    return "Limit Order Rejected Reason: Auction Order Not Cancelable (38)"
  end
  if value == 39 then
    return "Limit Order Rejected Reason: Invalid For Auction Order (39)"
  end

  return "Limit Order Rejected Reason: Unknown("..value..")"
end

-- Dissect: Limit Order Rejected Reason
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_reason, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target = {}

-- Size: Limit Order Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target.size = 2

-- Display: Limit Order Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target.display = function(value)
  return "Limit Order Rejected Reference Price Target: "..value
end

-- Dissect: Limit Order Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_reference_price_target, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction = {}

-- Size: Limit Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction.size = 1

-- Display: Limit Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction.display = function(value)
  if value == 0 then
    return "Limit Order Rejected Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Limit Order Rejected Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Limit Order Rejected Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Limit Order Rejected Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Limit Order Rejected Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Limit Order Rejected Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Limit Order Rejected Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Limit Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Limit Order Rejected User Data
txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data = {}

-- Size: Limit Order Rejected User Data
txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data.size = 8

-- Display: Limit Order Rejected User Data
txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data.display = function(value)
  return "Limit Order Rejected User Data: "..value
end

-- Dissect: Limit Order Rejected User Data
txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_user_data, range, value, display)

  return offset + length, value
end

-- Limit Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction = {}

-- Size: Limit Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction.size = 1

-- Display: Limit Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction.display = function(value)
  if value == 0 then
    return "Limit Order Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Limit Order Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Limit Order Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Limit Order Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Limit Order Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Limit Order Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Limit Order Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Limit Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Limit Order User Data
txse_txseequities_seed_rake_v1_0.limit_order_user_data = {}

-- Size: Limit Order User Data
txse_txseequities_seed_rake_v1_0.limit_order_user_data.size = 8

-- Display: Limit Order User Data
txse_txseequities_seed_rake_v1_0.limit_order_user_data.display = function(value)
  return "Limit Order User Data: "..value
end

-- Dissect: Limit Order User Data
txse_txseequities_seed_rake_v1_0.limit_order_user_data.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.limit_order_user_data.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_user_data, range, value, display)

  return offset + length, value
end

-- Liquidity Indicator
txse_txseequities_seed_rake_v1_0.liquidity_indicator = {}

-- Size: Liquidity Indicator
txse_txseequities_seed_rake_v1_0.liquidity_indicator.size = 1

-- Display: Liquidity Indicator
txse_txseequities_seed_rake_v1_0.liquidity_indicator.display = function(value)
  if value == 0 then
    return "Liquidity Indicator: Removed Hidden Liquidity (0)"
  end
  if value == 1 then
    return "Liquidity Indicator: Removed Displayed Liquidity (1)"
  end
  if value == 2 then
    return "Liquidity Indicator: Added Hidden Liquidity (2)"
  end
  if value == 3 then
    return "Liquidity Indicator: Added Displayed Liquidity (3)"
  end
  if value == 4 then
    return "Liquidity Indicator: Auction (4)"
  end

  return "Liquidity Indicator: Unknown("..value..")"
end

-- Dissect: Liquidity Indicator
txse_txseequities_seed_rake_v1_0.liquidity_indicator.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.liquidity_indicator.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.liquidity_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.liquidity_indicator, range, value, display)

  return offset + length, value
end

-- Listing Market
txse_txseequities_seed_rake_v1_0.listing_market = {}

-- Size: Listing Market
txse_txseequities_seed_rake_v1_0.listing_market.size = 1

-- Display: Listing Market
txse_txseequities_seed_rake_v1_0.listing_market.display = function(value)
  if value == 0 then
    return "Listing Market: Not Available (0)"
  end
  if value == 70 then
    return "Listing Market: Txse (70)"
  end

  return "Listing Market: Unknown("..value..")"
end

-- Dissect: Listing Market
txse_txseequities_seed_rake_v1_0.listing_market.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.listing_market.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.listing_market.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.listing_market, range, value, display)

  return offset + length, value
end

-- Logon Response Code
txse_txseequities_seed_rake_v1_0.logon_response_code = {}

-- Size: Logon Response Code
txse_txseequities_seed_rake_v1_0.logon_response_code.size = 1

-- Display: Logon Response Code
txse_txseequities_seed_rake_v1_0.logon_response_code.display = function(value)
  if value == 0 then
    return "Logon Response Code: Success (0)"
  end
  if value == 1 then
    return "Logon Response Code: Incorrect Sender Comp (1)"
  end
  if value == 2 then
    return "Logon Response Code: Incorrect Session (2)"
  end
  if value == 3 then
    return "Logon Response Code: Invalid Next Sequence (3)"
  end
  if value == 4 then
    return "Logon Response Code: Invalid Configuration (4)"
  end
  if value == 5 then
    return "Logon Response Code: Incorrect Token (5)"
  end

  return "Logon Response Code: Unknown("..value..")"
end

-- Dissect: Logon Response Code
txse_txseequities_seed_rake_v1_0.logon_response_code.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.logon_response_code.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_seed_rake_v1_0.logon_response_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.logon_response_code, range, value, display)

  return offset + length, value
end

-- Lot Size
txse_txseequities_seed_rake_v1_0.lot_size = {}

-- Size: Lot Size
txse_txseequities_seed_rake_v1_0.lot_size.size = 4

-- Display: Lot Size
txse_txseequities_seed_rake_v1_0.lot_size.display = function(value)
  return "Lot Size: "..value
end

-- Dissect: Lot Size
txse_txseequities_seed_rake_v1_0.lot_size.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.lot_size.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.lot_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.lot_size, range, value, display)

  return offset + length, value
end

-- Market Hours State
txse_txseequities_seed_rake_v1_0.market_hours_state = {}

-- Size: Market Hours State
txse_txseequities_seed_rake_v1_0.market_hours_state.size = 1

-- Display: Market Hours State
txse_txseequities_seed_rake_v1_0.market_hours_state.display = function(value)
  if value == 0 then
    return "Market Hours State: Closed Before Hours (0)"
  end
  if value == 1 then
    return "Market Hours State: Early Session (1)"
  end
  if value == 2 then
    return "Market Hours State: Regular Session (2)"
  end
  if value == 3 then
    return "Market Hours State: After Hours Session (3)"
  end
  if value == 4 then
    return "Market Hours State: Closed After Hours (4)"
  end

  return "Market Hours State: Unknown("..value..")"
end

-- Dissect: Market Hours State
txse_txseequities_seed_rake_v1_0.market_hours_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_hours_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.market_hours_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_hours_state, range, value, display)

  return offset + length, value
end

-- Market Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker = {}

-- Size: Market Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker.size = 4

-- Display: Market Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker.display = function(value)
  return "Market Order Accepted Locate Broker: "..value
end

-- Dissect: Market Order Accepted Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_locate_broker, range, value, display)

  return offset + length, value
end

-- Market Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group = {}

-- Size: Market Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group.size = 2

-- Display: Market Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group.display = function(value)
  return "Market Order Accepted Member Group: "..value
end

-- Dissect: Market Order Accepted Member Group
txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_member_group, range, value, display)

  return offset + length, value
end

-- Market Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid = {}

-- Size: Market Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid.size = 4

-- Display: Market Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid.display = function(value)
  return "Market Order Accepted Mpid: "..value
end

-- Dissect: Market Order Accepted Mpid
txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_mpid, range, value, display)

  return offset + length, value
end

-- Market Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction = {}

-- Size: Market Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction.size = 1

-- Display: Market Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction.display = function(value)
  if value == 0 then
    return "Market Order Accepted Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Market Order Accepted Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Market Order Accepted Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Market Order Accepted Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Market Order Accepted Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Market Order Accepted Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Market Order Accepted Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Market Order Accepted Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Market Order Accepted User Data
txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data = {}

-- Size: Market Order Accepted User Data
txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data.size = 8

-- Display: Market Order Accepted User Data
txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data.display = function(value)
  return "Market Order Accepted User Data: "..value
end

-- Dissect: Market Order Accepted User Data
txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_user_data, range, value, display)

  return offset + length, value
end

-- Market Order Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_locate_broker = {}

-- Size: Market Order Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_locate_broker.size = 4

-- Display: Market Order Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_locate_broker.display = function(value)
  return "Market Order Locate Broker: "..value
end

-- Dissect: Market Order Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_locate_broker, range, value, display)

  return offset + length, value
end

-- Market Order Member Group
txse_txseequities_seed_rake_v1_0.market_order_member_group = {}

-- Size: Market Order Member Group
txse_txseequities_seed_rake_v1_0.market_order_member_group.size = 2

-- Display: Market Order Member Group
txse_txseequities_seed_rake_v1_0.market_order_member_group.display = function(value)
  return "Market Order Member Group: "..value
end

-- Dissect: Market Order Member Group
txse_txseequities_seed_rake_v1_0.market_order_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_member_group, range, value, display)

  return offset + length, value
end

-- Market Order Mpid
txse_txseequities_seed_rake_v1_0.market_order_mpid = {}

-- Size: Market Order Mpid
txse_txseequities_seed_rake_v1_0.market_order_mpid.size = 4

-- Display: Market Order Mpid
txse_txseequities_seed_rake_v1_0.market_order_mpid.display = function(value)
  return "Market Order Mpid: "..value
end

-- Dissect: Market Order Mpid
txse_txseequities_seed_rake_v1_0.market_order_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_mpid, range, value, display)

  return offset + length, value
end

-- Market Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker = {}

-- Size: Market Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker.size = 4

-- Display: Market Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker.display = function(value)
  return "Market Order Rejected Locate Broker: "..value
end

-- Dissect: Market Order Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_locate_broker, range, value, display)

  return offset + length, value
end

-- Market Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group = {}

-- Size: Market Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group.size = 2

-- Display: Market Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group.display = function(value)
  return "Market Order Rejected Member Group: "..value
end

-- Dissect: Market Order Rejected Member Group
txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_member_group, range, value, display)

  return offset + length, value
end

-- Market Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid = {}

-- Size: Market Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid.size = 4

-- Display: Market Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid.display = function(value)
  return "Market Order Rejected Mpid: "..value
end

-- Dissect: Market Order Rejected Mpid
txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_mpid, range, value, display)

  return offset + length, value
end

-- Market Order Rejected Reason
txse_txseequities_seed_rake_v1_0.market_order_rejected_reason = {}

-- Size: Market Order Rejected Reason
txse_txseequities_seed_rake_v1_0.market_order_rejected_reason.size = 1

-- Display: Market Order Rejected Reason
txse_txseequities_seed_rake_v1_0.market_order_rejected_reason.display = function(value)
  if value == 1 then
    return "Market Order Rejected Reason: Invalid Client Order Id (1)"
  end
  if value == 2 then
    return "Market Order Rejected Reason: Duplicate Client Order Id (2)"
  end
  if value == 3 then
    return "Market Order Rejected Reason: Unknown Original Client Order Id (3)"
  end
  if value == 4 then
    return "Market Order Rejected Reason: No Longer On Book (4)"
  end
  if value == 5 then
    return "Market Order Rejected Reason: Invalid Symbol (5)"
  end
  if value == 6 then
    return "Market Order Rejected Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Market Order Rejected Reason: Invalid Order Quantity (7)"
  end
  if value == 8 then
    return "Market Order Rejected Reason: Invalid Reference Price Target (8)"
  end
  if value == 9 then
    return "Market Order Rejected Reason: Invalid Is Hidden Flag (9)"
  end
  if value == 10 then
    return "Market Order Rejected Reason: Invalid Order Type (10)"
  end
  if value == 11 then
    return "Market Order Rejected Reason: Invalid Side (11)"
  end
  if value == 12 then
    return "Market Order Rejected Reason: Invalid Max Floor Quantity (12)"
  end
  if value == 13 then
    return "Market Order Rejected Reason: Invalid Max Replenish Quantity Range (13)"
  end
  if value == 14 then
    return "Market Order Rejected Reason: Invalid Max Replenish Time Range (14)"
  end
  if value == 15 then
    return "Market Order Rejected Reason: Invalid Minimum Quantity (15)"
  end
  if value == 16 then
    return "Market Order Rejected Reason: Invalid Locate Required Flag (16)"
  end
  if value == 17 then
    return "Market Order Rejected Reason: Invalid Time In Force (17)"
  end
  if value == 18 then
    return "Market Order Rejected Reason: Modification Not Permitted (18)"
  end
  if value == 19 then
    return "Market Order Rejected Reason: Invalid Mpid (19)"
  end
  if value == 20 then
    return "Market Order Rejected Reason: Invalid Sender Comp (20)"
  end
  if value == 21 then
    return "Market Order Rejected Reason: Invalid Is Post Only Flag (21)"
  end
  if value == 22 then
    return "Market Order Rejected Reason: Invalid Expire Time (22)"
  end
  if value == 23 then
    return "Market Order Rejected Reason: Invalid For Trading Session (23)"
  end
  if value == 24 then
    return "Market Order Rejected Reason: Invalid For Trading Status (24)"
  end
  if value == 25 then
    return "Market Order Rejected Reason: Invalid For Symbol Status (25)"
  end
  if value == 26 then
    return "Market Order Rejected Reason: Invalid Is Iso Flag (26)"
  end
  if value == 27 then
    return "Market Order Rejected Reason: Trading Disabled For Mpid On Port (27)"
  end
  if value == 28 then
    return "Market Order Rejected Reason: Trading Disabled For Non Test Symbols (28)"
  end
  if value == 29 then
    return "Market Order Rejected Reason: Trading Disabled For Order Capacity (29)"
  end
  if value == 30 then
    return "Market Order Rejected Reason: Trading Disabled For Iso (30)"
  end
  if value == 31 then
    return "Market Order Rejected Reason: Maximum Order Quantity Breached (31)"
  end
  if value == 32 then
    return "Market Order Rejected Reason: Maximum Price Breached (32)"
  end
  if value == 33 then
    return "Market Order Rejected Reason: Maximum Notional Breached (33)"
  end
  if value == 34 then
    return "Market Order Rejected Reason: Invalid Mass Cancel Request Id (34)"
  end
  if value == 35 then
    return "Market Order Rejected Reason: Symbol On Restricted List (35)"
  end
  if value == 36 then
    return "Market Order Rejected Reason: Luld Band Breached (36)"
  end
  if value == 37 then
    return "Market Order Rejected Reason: Invalid Price Increment (37)"
  end
  if value == 38 then
    return "Market Order Rejected Reason: Auction Order Not Cancelable (38)"
  end
  if value == 39 then
    return "Market Order Rejected Reason: Invalid For Auction Order (39)"
  end

  return "Market Order Rejected Reason: Unknown("..value..")"
end

-- Dissect: Market Order Rejected Reason
txse_txseequities_seed_rake_v1_0.market_order_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_reason, range, value, display)

  return offset + length, value
end

-- Market Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction = {}

-- Size: Market Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction.size = 1

-- Display: Market Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction.display = function(value)
  if value == 0 then
    return "Market Order Rejected Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Market Order Rejected Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Market Order Rejected Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Market Order Rejected Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Market Order Rejected Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Market Order Rejected Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Market Order Rejected Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Market Order Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Market Order Rejected User Data
txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data = {}

-- Size: Market Order Rejected User Data
txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data.size = 8

-- Display: Market Order Rejected User Data
txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data.display = function(value)
  return "Market Order Rejected User Data: "..value
end

-- Dissect: Market Order Rejected User Data
txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_user_data, range, value, display)

  return offset + length, value
end

-- Market Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction = {}

-- Size: Market Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction.size = 1

-- Display: Market Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction.display = function(value)
  if value == 0 then
    return "Market Order Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Market Order Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Market Order Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Market Order Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Market Order Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Market Order Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Market Order Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Market Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Market Order User Data
txse_txseequities_seed_rake_v1_0.market_order_user_data = {}

-- Size: Market Order User Data
txse_txseequities_seed_rake_v1_0.market_order_user_data.size = 8

-- Display: Market Order User Data
txse_txseequities_seed_rake_v1_0.market_order_user_data.display = function(value)
  return "Market Order User Data: "..value
end

-- Dissect: Market Order User Data
txse_txseequities_seed_rake_v1_0.market_order_user_data.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.market_order_user_data.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.market_order_user_data.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_user_data, range, value, display)

  return offset + length, value
end

-- Mass Cancel Accepted Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id = {}

-- Size: Mass Cancel Accepted Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id.size = 8

-- Display: Mass Cancel Accepted Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id.display = function(value)
  return "Mass Cancel Accepted Cl Ord Id: "..value
end

-- Dissect: Mass Cancel Accepted Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Accepted Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group = {}

-- Size: Mass Cancel Accepted Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group.size = 2

-- Display: Mass Cancel Accepted Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group.display = function(value)
  return "Mass Cancel Accepted Member Group: "..value
end

-- Dissect: Mass Cancel Accepted Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_member_group, range, value, display)

  return offset + length, value
end

-- Mass Cancel Accepted Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid = {}

-- Size: Mass Cancel Accepted Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid.size = 4

-- Display: Mass Cancel Accepted Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid.display = function(value)
  return "Mass Cancel Accepted Mpid: "..value
end

-- Dissect: Mass Cancel Accepted Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_mpid, range, value, display)

  return offset + length, value
end

-- Mass Cancel Accepted Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope = {}

-- Size: Mass Cancel Accepted Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope.size = 1

-- Display: Mass Cancel Accepted Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope.display = function(value)
  if value == 0 then
    return "Mass Cancel Accepted Scope: By Member Owned Sender Comps (0)"
  end
  if value == 1 then
    return "Mass Cancel Accepted Scope: By Member Owned Mpids (1)"
  end

  return "Mass Cancel Accepted Scope: Unknown("..value..")"
end

-- Dissect: Mass Cancel Accepted Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_scope, range, value, display)

  return offset + length, value
end

-- Mass Cancel Accepted Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp = {}

-- Size: Mass Cancel Accepted Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp.size = 8

-- Display: Mass Cancel Accepted Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp.display = function(value)
  return "Mass Cancel Accepted Sender Comp: "..value
end

-- Dissect: Mass Cancel Accepted Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_sender_comp, range, value, display)

  return offset + length, value
end

-- Mass Cancel Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id = {}

-- Size: Mass Cancel Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id.size = 8

-- Display: Mass Cancel Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id.display = function(value)
  return "Mass Cancel Cl Ord Id: "..value
end

-- Dissect: Mass Cancel Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Id
txse_txseequities_seed_rake_v1_0.mass_cancel_id = {}

-- Size: Mass Cancel Id
txse_txseequities_seed_rake_v1_0.mass_cancel_id.size = 8

-- Display: Mass Cancel Id
txse_txseequities_seed_rake_v1_0.mass_cancel_id.display = function(value)
  return "Mass Cancel Id: "..value
end

-- Dissect: Mass Cancel Id
txse_txseequities_seed_rake_v1_0.mass_cancel_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_member_group = {}

-- Size: Mass Cancel Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_member_group.size = 2

-- Display: Mass Cancel Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_member_group.display = function(value)
  return "Mass Cancel Member Group: "..value
end

-- Dissect: Mass Cancel Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_member_group, range, value, display)

  return offset + length, value
end

-- Mass Cancel Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_mpid = {}

-- Size: Mass Cancel Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_mpid.size = 4

-- Display: Mass Cancel Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_mpid.display = function(value)
  return "Mass Cancel Mpid: "..value
end

-- Dissect: Mass Cancel Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_mpid, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id = {}

-- Size: Mass Cancel Rejected Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id.size = 8

-- Display: Mass Cancel Rejected Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id.display = function(value)
  return "Mass Cancel Rejected Cl Ord Id: "..value
end

-- Dissect: Mass Cancel Rejected Cl Ord Id
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group = {}

-- Size: Mass Cancel Rejected Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group.size = 2

-- Display: Mass Cancel Rejected Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group.display = function(value)
  return "Mass Cancel Rejected Member Group: "..value
end

-- Dissect: Mass Cancel Rejected Member Group
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_member_group, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid = {}

-- Size: Mass Cancel Rejected Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid.size = 4

-- Display: Mass Cancel Rejected Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid.display = function(value)
  return "Mass Cancel Rejected Mpid: "..value
end

-- Dissect: Mass Cancel Rejected Mpid
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_mpid, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason = {}

-- Size: Mass Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason.size = 1

-- Display: Mass Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason.display = function(value)
  if value == 1 then
    return "Mass Cancel Rejected Reason: Invalid Client Order Id (1)"
  end
  if value == 2 then
    return "Mass Cancel Rejected Reason: Duplicate Client Order Id (2)"
  end
  if value == 3 then
    return "Mass Cancel Rejected Reason: Unknown Original Client Order Id (3)"
  end
  if value == 4 then
    return "Mass Cancel Rejected Reason: No Longer On Book (4)"
  end
  if value == 5 then
    return "Mass Cancel Rejected Reason: Invalid Symbol (5)"
  end
  if value == 6 then
    return "Mass Cancel Rejected Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Mass Cancel Rejected Reason: Invalid Order Quantity (7)"
  end
  if value == 8 then
    return "Mass Cancel Rejected Reason: Invalid Reference Price Target (8)"
  end
  if value == 9 then
    return "Mass Cancel Rejected Reason: Invalid Is Hidden Flag (9)"
  end
  if value == 10 then
    return "Mass Cancel Rejected Reason: Invalid Order Type (10)"
  end
  if value == 11 then
    return "Mass Cancel Rejected Reason: Invalid Side (11)"
  end
  if value == 12 then
    return "Mass Cancel Rejected Reason: Invalid Max Floor Quantity (12)"
  end
  if value == 13 then
    return "Mass Cancel Rejected Reason: Invalid Max Replenish Quantity Range (13)"
  end
  if value == 14 then
    return "Mass Cancel Rejected Reason: Invalid Max Replenish Time Range (14)"
  end
  if value == 15 then
    return "Mass Cancel Rejected Reason: Invalid Minimum Quantity (15)"
  end
  if value == 16 then
    return "Mass Cancel Rejected Reason: Invalid Locate Required Flag (16)"
  end
  if value == 17 then
    return "Mass Cancel Rejected Reason: Invalid Time In Force (17)"
  end
  if value == 18 then
    return "Mass Cancel Rejected Reason: Modification Not Permitted (18)"
  end
  if value == 19 then
    return "Mass Cancel Rejected Reason: Invalid Mpid (19)"
  end
  if value == 20 then
    return "Mass Cancel Rejected Reason: Invalid Sender Comp (20)"
  end
  if value == 21 then
    return "Mass Cancel Rejected Reason: Invalid Is Post Only Flag (21)"
  end
  if value == 22 then
    return "Mass Cancel Rejected Reason: Invalid Expire Time (22)"
  end
  if value == 23 then
    return "Mass Cancel Rejected Reason: Invalid For Trading Session (23)"
  end
  if value == 24 then
    return "Mass Cancel Rejected Reason: Invalid For Trading Status (24)"
  end
  if value == 25 then
    return "Mass Cancel Rejected Reason: Invalid For Symbol Status (25)"
  end
  if value == 26 then
    return "Mass Cancel Rejected Reason: Invalid Is Iso Flag (26)"
  end
  if value == 27 then
    return "Mass Cancel Rejected Reason: Trading Disabled For Mpid On Port (27)"
  end
  if value == 28 then
    return "Mass Cancel Rejected Reason: Trading Disabled For Non Test Symbols (28)"
  end
  if value == 29 then
    return "Mass Cancel Rejected Reason: Trading Disabled For Order Capacity (29)"
  end
  if value == 30 then
    return "Mass Cancel Rejected Reason: Trading Disabled For Iso (30)"
  end
  if value == 31 then
    return "Mass Cancel Rejected Reason: Maximum Order Quantity Breached (31)"
  end
  if value == 32 then
    return "Mass Cancel Rejected Reason: Maximum Price Breached (32)"
  end
  if value == 33 then
    return "Mass Cancel Rejected Reason: Maximum Notional Breached (33)"
  end
  if value == 34 then
    return "Mass Cancel Rejected Reason: Invalid Mass Cancel Request Id (34)"
  end
  if value == 35 then
    return "Mass Cancel Rejected Reason: Symbol On Restricted List (35)"
  end
  if value == 36 then
    return "Mass Cancel Rejected Reason: Luld Band Breached (36)"
  end
  if value == 37 then
    return "Mass Cancel Rejected Reason: Invalid Price Increment (37)"
  end
  if value == 38 then
    return "Mass Cancel Rejected Reason: Auction Order Not Cancelable (38)"
  end
  if value == 39 then
    return "Mass Cancel Rejected Reason: Invalid For Auction Order (39)"
  end

  return "Mass Cancel Rejected Reason: Unknown("..value..")"
end

-- Dissect: Mass Cancel Rejected Reason
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_reason, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope = {}

-- Size: Mass Cancel Rejected Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope.size = 1

-- Display: Mass Cancel Rejected Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope.display = function(value)
  if value == 0 then
    return "Mass Cancel Rejected Scope: By Member Owned Sender Comps (0)"
  end
  if value == 1 then
    return "Mass Cancel Rejected Scope: By Member Owned Mpids (1)"
  end

  return "Mass Cancel Rejected Scope: Unknown("..value..")"
end

-- Dissect: Mass Cancel Rejected Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_scope, range, value, display)

  return offset + length, value
end

-- Mass Cancel Rejected Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp = {}

-- Size: Mass Cancel Rejected Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp.size = 8

-- Display: Mass Cancel Rejected Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp.display = function(value)
  return "Mass Cancel Rejected Sender Comp: "..value
end

-- Dissect: Mass Cancel Rejected Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_sender_comp, range, value, display)

  return offset + length, value
end

-- Mass Cancel Request Id
txse_txseequities_seed_rake_v1_0.mass_cancel_request_id = {}

-- Size: Mass Cancel Request Id
txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.size = 8

-- Display: Mass Cancel Request Id
txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.display = function(value)
  return "Mass Cancel Request Id: "..value
end

-- Dissect: Mass Cancel Request Id
txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_request_id, range, value, display)

  return offset + length, value
end

-- Mass Cancel Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_scope = {}

-- Size: Mass Cancel Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_scope.size = 1

-- Display: Mass Cancel Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_scope.display = function(value)
  if value == 0 then
    return "Mass Cancel Scope: By Member Owned Sender Comps (0)"
  end
  if value == 1 then
    return "Mass Cancel Scope: By Member Owned Mpids (1)"
  end

  return "Mass Cancel Scope: Unknown("..value..")"
end

-- Dissect: Mass Cancel Scope
txse_txseequities_seed_rake_v1_0.mass_cancel_scope.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_scope.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_scope, range, value, display)

  return offset + length, value
end

-- Mass Cancel Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp = {}

-- Size: Mass Cancel Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp.size = 8

-- Display: Mass Cancel Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp.display = function(value)
  return "Mass Cancel Sender Comp: "..value
end

-- Dissect: Mass Cancel Sender Comp
txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_sender_comp, range, value, display)

  return offset + length, value
end

-- Matching Engine Id
txse_txseequities_seed_rake_v1_0.matching_engine_id = {}

-- Size: Matching Engine Id
txse_txseequities_seed_rake_v1_0.matching_engine_id.size = 1

-- Display: Matching Engine Id
txse_txseequities_seed_rake_v1_0.matching_engine_id.display = function(value)
  return "Matching Engine Id: "..value
end

-- Dissect: Matching Engine Id
txse_txseequities_seed_rake_v1_0.matching_engine_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.matching_engine_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.matching_engine_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.matching_engine_id, range, value, display)

  return offset + length, value
end

-- Message Length
txse_txseequities_seed_rake_v1_0.message_length = {}

-- Size: Message Length
txse_txseequities_seed_rake_v1_0.message_length.size = 2

-- Display: Message Length
txse_txseequities_seed_rake_v1_0.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
txse_txseequities_seed_rake_v1_0.message_length.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.message_length.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
txse_txseequities_seed_rake_v1_0.message_type = {}

-- Size: Message Type
txse_txseequities_seed_rake_v1_0.message_type.size = 1

-- Display: Message Type
txse_txseequities_seed_rake_v1_0.message_type.display = function(value)
  if value == 76 then
    return "Message Type: Limit Order Message (76)"
  end
  if value == 65 then
    return "Message Type: Market Order Message (65)"
  end
  if value == 67 then
    return "Message Type: Cancel Order Message (67)"
  end
  if value == 77 then
    return "Message Type: Modify Order Message (77)"
  end
  if value == 82 then
    return "Message Type: Replace Order Message (82)"
  end
  if value == 86 then
    return "Message Type: Mass Cancel Message (86)"
  end
  if value == 105 then
    return "Message Type: Trading Session Status Message (105)"
  end
  if value == 115 then
    return "Message Type: Define Symbol Message (115)"
  end
  if value == 121 then
    return "Message Type: Symbol Status Message (121)"
  end
  if value == 73 then
    return "Message Type: Limit Order Accepted Message (73)"
  end
  if value == 85 then
    return "Message Type: Limit Order Rejected Message (85)"
  end
  if value == 68 then
    return "Message Type: Market Order Accepted Message (68)"
  end
  if value == 84 then
    return "Message Type: Market Order Rejected Message (84)"
  end
  if value == 88 then
    return "Message Type: Order Canceled Message (88)"
  end
  if value == 87 then
    return "Message Type: Cancel Rejected Message (87)"
  end
  if value == 89 then
    return "Message Type: Order Modified Message (89)"
  end
  if value == 78 then
    return "Message Type: Modify Rejected Message (78)"
  end
  if value == 74 then
    return "Message Type: Order Replaced Message (74)"
  end
  if value == 75 then
    return "Message Type: Replace Rejected Message (75)"
  end
  if value == 69 then
    return "Message Type: Order Executed Message (69)"
  end
  if value == 70 then
    return "Message Type: Order Restated Message (70)"
  end
  if value == 90 then
    return "Message Type: Self Match Prevented Message (90)"
  end
  if value == 79 then
    return "Message Type: Mass Cancel Accepted Message (79)"
  end
  if value == 80 then
    return "Message Type: Mass Cancel Rejected Message (80)"
  end
  if value == 81 then
    return "Message Type: Mass Cancel Result Message (81)"
  end

  return "Message Type: Unknown("..value..")"
end

-- Dissect: Message Type
txse_txseequities_seed_rake_v1_0.message_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.message_type.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_seed_rake_v1_0.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.message_type, range, value, display)

  return offset + length, value
end

-- Modify Order Locate Broker
txse_txseequities_seed_rake_v1_0.modify_order_locate_broker = {}

-- Size: Modify Order Locate Broker
txse_txseequities_seed_rake_v1_0.modify_order_locate_broker.size = 4

-- Display: Modify Order Locate Broker
txse_txseequities_seed_rake_v1_0.modify_order_locate_broker.display = function(value)
  return "Modify Order Locate Broker: "..value
end

-- Dissect: Modify Order Locate Broker
txse_txseequities_seed_rake_v1_0.modify_order_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.modify_order_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.modify_order_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_locate_broker, range, value, display)

  return offset + length, value
end

-- Modify Order Order Qty
txse_txseequities_seed_rake_v1_0.modify_order_order_qty = {}

-- Size: Modify Order Order Qty
txse_txseequities_seed_rake_v1_0.modify_order_order_qty.size = 4

-- Display: Modify Order Order Qty
txse_txseequities_seed_rake_v1_0.modify_order_order_qty.display = function(value)
  return "Modify Order Order Qty: "..value
end

-- Dissect: Modify Order Order Qty
txse_txseequities_seed_rake_v1_0.modify_order_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.modify_order_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.modify_order_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_order_qty, range, value, display)

  return offset + length, value
end

-- Modify Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker = {}

-- Size: Modify Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker.size = 4

-- Display: Modify Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker.display = function(value)
  return "Modify Rejected Locate Broker: "..value
end

-- Dissect: Modify Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_locate_broker, range, value, display)

  return offset + length, value
end

-- Modify Rejected Order Qty
txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty = {}

-- Size: Modify Rejected Order Qty
txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty.size = 4

-- Display: Modify Rejected Order Qty
txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty.display = function(value)
  return "Modify Rejected Order Qty: "..value
end

-- Dissect: Modify Rejected Order Qty
txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_order_qty, range, value, display)

  return offset + length, value
end

-- Modify Rejected Reason
txse_txseequities_seed_rake_v1_0.modify_rejected_reason = {}

-- Size: Modify Rejected Reason
txse_txseequities_seed_rake_v1_0.modify_rejected_reason.size = 1

-- Display: Modify Rejected Reason
txse_txseequities_seed_rake_v1_0.modify_rejected_reason.display = function(value)
  if value == 1 then
    return "Modify Rejected Reason: Invalid Client Order Id (1)"
  end
  if value == 2 then
    return "Modify Rejected Reason: Duplicate Client Order Id (2)"
  end
  if value == 3 then
    return "Modify Rejected Reason: Unknown Original Client Order Id (3)"
  end
  if value == 4 then
    return "Modify Rejected Reason: No Longer On Book (4)"
  end
  if value == 5 then
    return "Modify Rejected Reason: Invalid Symbol (5)"
  end
  if value == 6 then
    return "Modify Rejected Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Modify Rejected Reason: Invalid Order Quantity (7)"
  end
  if value == 8 then
    return "Modify Rejected Reason: Invalid Reference Price Target (8)"
  end
  if value == 9 then
    return "Modify Rejected Reason: Invalid Is Hidden Flag (9)"
  end
  if value == 10 then
    return "Modify Rejected Reason: Invalid Order Type (10)"
  end
  if value == 11 then
    return "Modify Rejected Reason: Invalid Side (11)"
  end
  if value == 12 then
    return "Modify Rejected Reason: Invalid Max Floor Quantity (12)"
  end
  if value == 13 then
    return "Modify Rejected Reason: Invalid Max Replenish Quantity Range (13)"
  end
  if value == 14 then
    return "Modify Rejected Reason: Invalid Max Replenish Time Range (14)"
  end
  if value == 15 then
    return "Modify Rejected Reason: Invalid Minimum Quantity (15)"
  end
  if value == 16 then
    return "Modify Rejected Reason: Invalid Locate Required Flag (16)"
  end
  if value == 17 then
    return "Modify Rejected Reason: Invalid Time In Force (17)"
  end
  if value == 18 then
    return "Modify Rejected Reason: Modification Not Permitted (18)"
  end
  if value == 19 then
    return "Modify Rejected Reason: Invalid Mpid (19)"
  end
  if value == 20 then
    return "Modify Rejected Reason: Invalid Sender Comp (20)"
  end
  if value == 21 then
    return "Modify Rejected Reason: Invalid Is Post Only Flag (21)"
  end
  if value == 22 then
    return "Modify Rejected Reason: Invalid Expire Time (22)"
  end
  if value == 23 then
    return "Modify Rejected Reason: Invalid For Trading Session (23)"
  end
  if value == 24 then
    return "Modify Rejected Reason: Invalid For Trading Status (24)"
  end
  if value == 25 then
    return "Modify Rejected Reason: Invalid For Symbol Status (25)"
  end
  if value == 26 then
    return "Modify Rejected Reason: Invalid Is Iso Flag (26)"
  end
  if value == 27 then
    return "Modify Rejected Reason: Trading Disabled For Mpid On Port (27)"
  end
  if value == 28 then
    return "Modify Rejected Reason: Trading Disabled For Non Test Symbols (28)"
  end
  if value == 29 then
    return "Modify Rejected Reason: Trading Disabled For Order Capacity (29)"
  end
  if value == 30 then
    return "Modify Rejected Reason: Trading Disabled For Iso (30)"
  end
  if value == 31 then
    return "Modify Rejected Reason: Maximum Order Quantity Breached (31)"
  end
  if value == 32 then
    return "Modify Rejected Reason: Maximum Price Breached (32)"
  end
  if value == 33 then
    return "Modify Rejected Reason: Maximum Notional Breached (33)"
  end
  if value == 34 then
    return "Modify Rejected Reason: Invalid Mass Cancel Request Id (34)"
  end
  if value == 35 then
    return "Modify Rejected Reason: Symbol On Restricted List (35)"
  end
  if value == 36 then
    return "Modify Rejected Reason: Luld Band Breached (36)"
  end
  if value == 37 then
    return "Modify Rejected Reason: Invalid Price Increment (37)"
  end
  if value == 38 then
    return "Modify Rejected Reason: Auction Order Not Cancelable (38)"
  end
  if value == 39 then
    return "Modify Rejected Reason: Invalid For Auction Order (39)"
  end

  return "Modify Rejected Reason: Unknown("..value..")"
end

-- Dissect: Modify Rejected Reason
txse_txseequities_seed_rake_v1_0.modify_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.modify_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.modify_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_reason, range, value, display)

  return offset + length, value
end

-- Next Sequence Number
txse_txseequities_seed_rake_v1_0.next_sequence_number = {}

-- Size: Next Sequence Number
txse_txseequities_seed_rake_v1_0.next_sequence_number.size = 8

-- Display: Next Sequence Number
txse_txseequities_seed_rake_v1_0.next_sequence_number.display = function(value)
  return "Next Sequence Number: "..value
end

-- Dissect: Next Sequence Number
txse_txseequities_seed_rake_v1_0.next_sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.next_sequence_number.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_seed_rake_v1_0.next_sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.next_sequence_number, range, value, display)

  return offset + length, value
end

-- Number Stream Ids
txse_txseequities_seed_rake_v1_0.number_stream_ids = {}

-- Size: Number Stream Ids
txse_txseequities_seed_rake_v1_0.number_stream_ids.size = 1

-- Display: Number Stream Ids
txse_txseequities_seed_rake_v1_0.number_stream_ids.display = function(value)
  return "Number Stream Ids: "..value
end

-- Dissect: Number Stream Ids
txse_txseequities_seed_rake_v1_0.number_stream_ids.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.number_stream_ids.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_seed_rake_v1_0.number_stream_ids.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.number_stream_ids, range, value, display)

  return offset + length, value
end

-- Order Id
txse_txseequities_seed_rake_v1_0.order_id = {}

-- Size: Order Id
txse_txseequities_seed_rake_v1_0.order_id.size = 8

-- Display: Order Id
txse_txseequities_seed_rake_v1_0.order_id.display = function(value)
  return "Order Id: "..value
end

-- Dissect: Order Id
txse_txseequities_seed_rake_v1_0.order_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.order_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_id, range, value, display)

  return offset + length, value
end

-- Order Modified Locate Broker
txse_txseequities_seed_rake_v1_0.order_modified_locate_broker = {}

-- Size: Order Modified Locate Broker
txse_txseequities_seed_rake_v1_0.order_modified_locate_broker.size = 4

-- Display: Order Modified Locate Broker
txse_txseequities_seed_rake_v1_0.order_modified_locate_broker.display = function(value)
  return "Order Modified Locate Broker: "..value
end

-- Dissect: Order Modified Locate Broker
txse_txseequities_seed_rake_v1_0.order_modified_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_modified_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.order_modified_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_locate_broker, range, value, display)

  return offset + length, value
end

-- Order Modified Order Qty
txse_txseequities_seed_rake_v1_0.order_modified_order_qty = {}

-- Size: Order Modified Order Qty
txse_txseequities_seed_rake_v1_0.order_modified_order_qty.size = 4

-- Display: Order Modified Order Qty
txse_txseequities_seed_rake_v1_0.order_modified_order_qty.display = function(value)
  return "Order Modified Order Qty: "..value
end

-- Dissect: Order Modified Order Qty
txse_txseequities_seed_rake_v1_0.order_modified_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_modified_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.order_modified_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_order_qty, range, value, display)

  return offset + length, value
end

-- Order Qty
txse_txseequities_seed_rake_v1_0.order_qty = {}

-- Size: Order Qty
txse_txseequities_seed_rake_v1_0.order_qty.size = 4

-- Display: Order Qty
txse_txseequities_seed_rake_v1_0.order_qty.display = function(value)
  return "Order Qty: "..value
end

-- Dissect: Order Qty
txse_txseequities_seed_rake_v1_0.order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_qty, range, value, display)

  return offset + length, value
end

-- Order Replaced Display Price
txse_txseequities_seed_rake_v1_0.order_replaced_display_price = {}

-- Size: Order Replaced Display Price
txse_txseequities_seed_rake_v1_0.order_replaced_display_price.size = 8

-- Display: Order Replaced Display Price
txse_txseequities_seed_rake_v1_0.order_replaced_display_price.display = function(value)
  return "Order Replaced Display Price: "..value
end

-- Translate: Order Replaced Display Price
txse_txseequities_seed_rake_v1_0.order_replaced_display_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Order Replaced Display Price
txse_txseequities_seed_rake_v1_0.order_replaced_display_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.order_replaced_display_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_display_price, range, value, display)

  return offset + length, value
end

-- Order Replaced Locate Broker
txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker = {}

-- Size: Order Replaced Locate Broker
txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker.size = 4

-- Display: Order Replaced Locate Broker
txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker.display = function(value)
  return "Order Replaced Locate Broker: "..value
end

-- Dissect: Order Replaced Locate Broker
txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_locate_broker, range, value, display)

  return offset + length, value
end

-- Order Replaced Max Floor Qty
txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty = {}

-- Size: Order Replaced Max Floor Qty
txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty.size = 4

-- Display: Order Replaced Max Floor Qty
txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty.display = function(value)
  return "Order Replaced Max Floor Qty: "..value
end

-- Dissect: Order Replaced Max Floor Qty
txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_max_floor_qty, range, value, display)

  return offset + length, value
end

-- Order Replaced Order Qty
txse_txseequities_seed_rake_v1_0.order_replaced_order_qty = {}

-- Size: Order Replaced Order Qty
txse_txseequities_seed_rake_v1_0.order_replaced_order_qty.size = 4

-- Display: Order Replaced Order Qty
txse_txseequities_seed_rake_v1_0.order_replaced_order_qty.display = function(value)
  return "Order Replaced Order Qty: "..value
end

-- Dissect: Order Replaced Order Qty
txse_txseequities_seed_rake_v1_0.order_replaced_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_order_qty, range, value, display)

  return offset + length, value
end

-- Order Replaced Price
txse_txseequities_seed_rake_v1_0.order_replaced_price = {}

-- Size: Order Replaced Price
txse_txseequities_seed_rake_v1_0.order_replaced_price.size = 8

-- Display: Order Replaced Price
txse_txseequities_seed_rake_v1_0.order_replaced_price.display = function(value)
  return "Order Replaced Price: "..value
end

-- Translate: Order Replaced Price
txse_txseequities_seed_rake_v1_0.order_replaced_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Order Replaced Price
txse_txseequities_seed_rake_v1_0.order_replaced_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.order_replaced_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_price, range, value, display)

  return offset + length, value
end

-- Order Replaced Price Slide Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction = {}

-- Size: Order Replaced Price Slide Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction.size = 1

-- Display: Order Replaced Price Slide Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction.display = function(value)
  if value == 0 then
    return "Order Replaced Price Slide Instruction: No Price Slide (0)"
  end
  if value == 1 then
    return "Order Replaced Price Slide Instruction: Single Price Slide On Lock And Cross (1)"
  end
  if value == 2 then
    return "Order Replaced Price Slide Instruction: Multiple Price Slides On Lock And Cross (2)"
  end
  if value == 3 then
    return "Order Replaced Price Slide Instruction: Single Price Slide Lock Only (3)"
  end

  return "Order Replaced Price Slide Instruction: Unknown("..value..")"
end

-- Dissect: Order Replaced Price Slide Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_price_slide_instruction, range, value, display)

  return offset + length, value
end

-- Order Replaced Rank Price
txse_txseequities_seed_rake_v1_0.order_replaced_rank_price = {}

-- Size: Order Replaced Rank Price
txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.size = 8

-- Display: Order Replaced Rank Price
txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.display = function(value)
  return "Order Replaced Rank Price: "..value
end

-- Translate: Order Replaced Rank Price
txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Order Replaced Rank Price
txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_rank_price, range, value, display)

  return offset + length, value
end

-- Order Replaced Reference Price Target
txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target = {}

-- Size: Order Replaced Reference Price Target
txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target.size = 2

-- Display: Order Replaced Reference Price Target
txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target.display = function(value)
  return "Order Replaced Reference Price Target: "..value
end

-- Dissect: Order Replaced Reference Price Target
txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_reference_price_target, range, value, display)

  return offset + length, value
end

-- Order Replaced Self Match Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction = {}

-- Size: Order Replaced Self Match Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction.size = 1

-- Display: Order Replaced Self Match Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction.display = function(value)
  if value == 0 then
    return "Order Replaced Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Order Replaced Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Order Replaced Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Order Replaced Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Order Replaced Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Order Replaced Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Order Replaced Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Order Replaced Self Match Instruction
txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Order Restated Display Price
txse_txseequities_seed_rake_v1_0.order_restated_display_price = {}

-- Size: Order Restated Display Price
txse_txseequities_seed_rake_v1_0.order_restated_display_price.size = 8

-- Display: Order Restated Display Price
txse_txseequities_seed_rake_v1_0.order_restated_display_price.display = function(value)
  return "Order Restated Display Price: "..value
end

-- Translate: Order Restated Display Price
txse_txseequities_seed_rake_v1_0.order_restated_display_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Order Restated Display Price
txse_txseequities_seed_rake_v1_0.order_restated_display_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_restated_display_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.order_restated_display_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.order_restated_display_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_display_price, range, value, display)

  return offset + length, value
end

-- Order Restated Rank Price
txse_txseequities_seed_rake_v1_0.order_restated_rank_price = {}

-- Size: Order Restated Rank Price
txse_txseequities_seed_rake_v1_0.order_restated_rank_price.size = 8

-- Display: Order Restated Rank Price
txse_txseequities_seed_rake_v1_0.order_restated_rank_price.display = function(value)
  return "Order Restated Rank Price: "..value
end

-- Translate: Order Restated Rank Price
txse_txseequities_seed_rake_v1_0.order_restated_rank_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Order Restated Rank Price
txse_txseequities_seed_rake_v1_0.order_restated_rank_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.order_restated_rank_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.order_restated_rank_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.order_restated_rank_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_rank_price, range, value, display)

  return offset + length, value
end

-- Orig Cl Ord Id
txse_txseequities_seed_rake_v1_0.orig_cl_ord_id = {}

-- Size: Orig Cl Ord Id
txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size = 8

-- Display: Orig Cl Ord Id
txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.display = function(value)
  return "Orig Cl Ord Id: "..value
end

-- Dissect: Orig Cl Ord Id
txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.orig_cl_ord_id, range, value, display)

  return offset + length, value
end

-- Packet Type
txse_txseequities_seed_rake_v1_0.packet_type = {}

-- Size: Packet Type
txse_txseequities_seed_rake_v1_0.packet_type.size = 1

-- Display: Packet Type
txse_txseequities_seed_rake_v1_0.packet_type.display = function(value)
  if value == 53 then
    return "Packet Type: Logon Request Packet (53)"
  end
  if value == 55 then
    return "Packet Type: Member Heartbeat Packet (55)"
  end
  if value == 54 then
    return "Packet Type: Tcp Unsequenced Message (54)"
  end
  if value == 48 then
    return "Packet Type: Debug Message (48)"
  end
  if value == 52 then
    return "Packet Type: End Of Session Message (52)"
  end
  if value == 49 then
    return "Packet Type: Logon Response Message (49)"
  end
  if value == 51 then
    return "Packet Type: Server Heartbeat Message (51)"
  end
  if value == 50 then
    return "Packet Type: Tcp Sequenced Message (50)"
  end

  return "Packet Type: Unknown("..value..")"
end

-- Dissect: Packet Type
txse_txseequities_seed_rake_v1_0.packet_type.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.packet_type.size
  local range = buffer(offset, length)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.packet_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.packet_type, range, value, display)

  return offset + length, value
end

-- Price
txse_txseequities_seed_rake_v1_0.price = {}

-- Size: Price
txse_txseequities_seed_rake_v1_0.price.size = 8

-- Display: Price
txse_txseequities_seed_rake_v1_0.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
txse_txseequities_seed_rake_v1_0.price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Price
txse_txseequities_seed_rake_v1_0.price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.price, range, value, display)

  return offset + length, value
end

-- Replace Order Locate Broker
txse_txseequities_seed_rake_v1_0.replace_order_locate_broker = {}

-- Size: Replace Order Locate Broker
txse_txseequities_seed_rake_v1_0.replace_order_locate_broker.size = 4

-- Display: Replace Order Locate Broker
txse_txseequities_seed_rake_v1_0.replace_order_locate_broker.display = function(value)
  return "Replace Order Locate Broker: "..value
end

-- Dissect: Replace Order Locate Broker
txse_txseequities_seed_rake_v1_0.replace_order_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_order_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.replace_order_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_locate_broker, range, value, display)

  return offset + length, value
end

-- Replace Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty = {}

-- Size: Replace Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty.size = 4

-- Display: Replace Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty.display = function(value)
  return "Replace Order Max Floor Qty: "..value
end

-- Dissect: Replace Order Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_max_floor_qty, range, value, display)

  return offset + length, value
end

-- Replace Order Order Qty
txse_txseequities_seed_rake_v1_0.replace_order_order_qty = {}

-- Size: Replace Order Order Qty
txse_txseequities_seed_rake_v1_0.replace_order_order_qty.size = 4

-- Display: Replace Order Order Qty
txse_txseequities_seed_rake_v1_0.replace_order_order_qty.display = function(value)
  return "Replace Order Order Qty: "..value
end

-- Dissect: Replace Order Order Qty
txse_txseequities_seed_rake_v1_0.replace_order_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_order_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_order_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_order_qty, range, value, display)

  return offset + length, value
end

-- Replace Order Price
txse_txseequities_seed_rake_v1_0.replace_order_price = {}

-- Size: Replace Order Price
txse_txseequities_seed_rake_v1_0.replace_order_price.size = 8

-- Display: Replace Order Price
txse_txseequities_seed_rake_v1_0.replace_order_price.display = function(value)
  return "Replace Order Price: "..value
end

-- Translate: Replace Order Price
txse_txseequities_seed_rake_v1_0.replace_order_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Replace Order Price
txse_txseequities_seed_rake_v1_0.replace_order_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_order_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.replace_order_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.replace_order_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_price, range, value, display)

  return offset + length, value
end

-- Replace Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction = {}

-- Size: Replace Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction.size = 1

-- Display: Replace Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction.display = function(value)
  if value == 0 then
    return "Replace Order Price Slide Instruction: No Price Slide (0)"
  end
  if value == 1 then
    return "Replace Order Price Slide Instruction: Single Price Slide On Lock And Cross (1)"
  end
  if value == 2 then
    return "Replace Order Price Slide Instruction: Multiple Price Slides On Lock And Cross (2)"
  end
  if value == 3 then
    return "Replace Order Price Slide Instruction: Single Price Slide Lock Only (3)"
  end

  return "Replace Order Price Slide Instruction: Unknown("..value..")"
end

-- Dissect: Replace Order Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_price_slide_instruction, range, value, display)

  return offset + length, value
end

-- Replace Order Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target = {}

-- Size: Replace Order Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target.size = 2

-- Display: Replace Order Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target.display = function(value)
  return "Replace Order Reference Price Target: "..value
end

-- Dissect: Replace Order Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_reference_price_target, range, value, display)

  return offset + length, value
end

-- Replace Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction = {}

-- Size: Replace Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction.size = 1

-- Display: Replace Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction.display = function(value)
  if value == 0 then
    return "Replace Order Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Replace Order Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Replace Order Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Replace Order Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Replace Order Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Replace Order Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Replace Order Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Replace Order Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Replace Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker = {}

-- Size: Replace Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker.size = 4

-- Display: Replace Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker.display = function(value)
  return "Replace Rejected Locate Broker: "..value
end

-- Dissect: Replace Rejected Locate Broker
txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_locate_broker, range, value, display)

  return offset + length, value
end

-- Replace Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty = {}

-- Size: Replace Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty.size = 4

-- Display: Replace Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty.display = function(value)
  return "Replace Rejected Max Floor Qty: "..value
end

-- Dissect: Replace Rejected Max Floor Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_max_floor_qty, range, value, display)

  return offset + length, value
end

-- Replace Rejected Order Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty = {}

-- Size: Replace Rejected Order Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty.size = 4

-- Display: Replace Rejected Order Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty.display = function(value)
  return "Replace Rejected Order Qty: "..value
end

-- Dissect: Replace Rejected Order Qty
txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_order_qty, range, value, display)

  return offset + length, value
end

-- Replace Rejected Price
txse_txseequities_seed_rake_v1_0.replace_rejected_price = {}

-- Size: Replace Rejected Price
txse_txseequities_seed_rake_v1_0.replace_rejected_price.size = 8

-- Display: Replace Rejected Price
txse_txseequities_seed_rake_v1_0.replace_rejected_price.display = function(value)
  return "Replace Rejected Price: "..value
end

-- Translate: Replace Rejected Price
txse_txseequities_seed_rake_v1_0.replace_rejected_price.translate = function(raw)
  return raw:tonumber()/100000000
end

-- Dissect: Replace Rejected Price
txse_txseequities_seed_rake_v1_0.replace_rejected_price.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_price.size
  local range = buffer(offset, length)
  local raw = range:le_int64()
  local value = txse_txseequities_seed_rake_v1_0.replace_rejected_price.translate(raw)
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_price, range, value, display)

  return offset + length, value
end

-- Replace Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction = {}

-- Size: Replace Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction.size = 1

-- Display: Replace Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction.display = function(value)
  if value == 0 then
    return "Replace Rejected Price Slide Instruction: No Price Slide (0)"
  end
  if value == 1 then
    return "Replace Rejected Price Slide Instruction: Single Price Slide On Lock And Cross (1)"
  end
  if value == 2 then
    return "Replace Rejected Price Slide Instruction: Multiple Price Slides On Lock And Cross (2)"
  end
  if value == 3 then
    return "Replace Rejected Price Slide Instruction: Single Price Slide Lock Only (3)"
  end

  return "Replace Rejected Price Slide Instruction: Unknown("..value..")"
end

-- Dissect: Replace Rejected Price Slide Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_price_slide_instruction, range, value, display)

  return offset + length, value
end

-- Replace Rejected Reason
txse_txseequities_seed_rake_v1_0.replace_rejected_reason = {}

-- Size: Replace Rejected Reason
txse_txseequities_seed_rake_v1_0.replace_rejected_reason.size = 1

-- Display: Replace Rejected Reason
txse_txseequities_seed_rake_v1_0.replace_rejected_reason.display = function(value)
  if value == 1 then
    return "Replace Rejected Reason: Invalid Client Order Id (1)"
  end
  if value == 2 then
    return "Replace Rejected Reason: Duplicate Client Order Id (2)"
  end
  if value == 3 then
    return "Replace Rejected Reason: Unknown Original Client Order Id (3)"
  end
  if value == 4 then
    return "Replace Rejected Reason: No Longer On Book (4)"
  end
  if value == 5 then
    return "Replace Rejected Reason: Invalid Symbol (5)"
  end
  if value == 6 then
    return "Replace Rejected Reason: Invalid Price (6)"
  end
  if value == 7 then
    return "Replace Rejected Reason: Invalid Order Quantity (7)"
  end
  if value == 8 then
    return "Replace Rejected Reason: Invalid Reference Price Target (8)"
  end
  if value == 9 then
    return "Replace Rejected Reason: Invalid Is Hidden Flag (9)"
  end
  if value == 10 then
    return "Replace Rejected Reason: Invalid Order Type (10)"
  end
  if value == 11 then
    return "Replace Rejected Reason: Invalid Side (11)"
  end
  if value == 12 then
    return "Replace Rejected Reason: Invalid Max Floor Quantity (12)"
  end
  if value == 13 then
    return "Replace Rejected Reason: Invalid Max Replenish Quantity Range (13)"
  end
  if value == 14 then
    return "Replace Rejected Reason: Invalid Max Replenish Time Range (14)"
  end
  if value == 15 then
    return "Replace Rejected Reason: Invalid Minimum Quantity (15)"
  end
  if value == 16 then
    return "Replace Rejected Reason: Invalid Locate Required Flag (16)"
  end
  if value == 17 then
    return "Replace Rejected Reason: Invalid Time In Force (17)"
  end
  if value == 18 then
    return "Replace Rejected Reason: Modification Not Permitted (18)"
  end
  if value == 19 then
    return "Replace Rejected Reason: Invalid Mpid (19)"
  end
  if value == 20 then
    return "Replace Rejected Reason: Invalid Sender Comp (20)"
  end
  if value == 21 then
    return "Replace Rejected Reason: Invalid Is Post Only Flag (21)"
  end
  if value == 22 then
    return "Replace Rejected Reason: Invalid Expire Time (22)"
  end
  if value == 23 then
    return "Replace Rejected Reason: Invalid For Trading Session (23)"
  end
  if value == 24 then
    return "Replace Rejected Reason: Invalid For Trading Status (24)"
  end
  if value == 25 then
    return "Replace Rejected Reason: Invalid For Symbol Status (25)"
  end
  if value == 26 then
    return "Replace Rejected Reason: Invalid Is Iso Flag (26)"
  end
  if value == 27 then
    return "Replace Rejected Reason: Trading Disabled For Mpid On Port (27)"
  end
  if value == 28 then
    return "Replace Rejected Reason: Trading Disabled For Non Test Symbols (28)"
  end
  if value == 29 then
    return "Replace Rejected Reason: Trading Disabled For Order Capacity (29)"
  end
  if value == 30 then
    return "Replace Rejected Reason: Trading Disabled For Iso (30)"
  end
  if value == 31 then
    return "Replace Rejected Reason: Maximum Order Quantity Breached (31)"
  end
  if value == 32 then
    return "Replace Rejected Reason: Maximum Price Breached (32)"
  end
  if value == 33 then
    return "Replace Rejected Reason: Maximum Notional Breached (33)"
  end
  if value == 34 then
    return "Replace Rejected Reason: Invalid Mass Cancel Request Id (34)"
  end
  if value == 35 then
    return "Replace Rejected Reason: Symbol On Restricted List (35)"
  end
  if value == 36 then
    return "Replace Rejected Reason: Luld Band Breached (36)"
  end
  if value == 37 then
    return "Replace Rejected Reason: Invalid Price Increment (37)"
  end
  if value == 38 then
    return "Replace Rejected Reason: Auction Order Not Cancelable (38)"
  end
  if value == 39 then
    return "Replace Rejected Reason: Invalid For Auction Order (39)"
  end

  return "Replace Rejected Reason: Unknown("..value..")"
end

-- Dissect: Replace Rejected Reason
txse_txseequities_seed_rake_v1_0.replace_rejected_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_reason, range, value, display)

  return offset + length, value
end

-- Replace Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target = {}

-- Size: Replace Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target.size = 2

-- Display: Replace Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target.display = function(value)
  return "Replace Rejected Reference Price Target: "..value
end

-- Dissect: Replace Rejected Reference Price Target
txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_reference_price_target, range, value, display)

  return offset + length, value
end

-- Replace Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction = {}

-- Size: Replace Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction.size = 1

-- Display: Replace Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction.display = function(value)
  if value == 0 then
    return "Replace Rejected Self Match Instruction: No Self Match Prevention (0)"
  end
  if value == 1 then
    return "Replace Rejected Self Match Instruction: Cancel Newest (1)"
  end
  if value == 2 then
    return "Replace Rejected Self Match Instruction: Cancel Oldest (2)"
  end
  if value == 3 then
    return "Replace Rejected Self Match Instruction: Cancel Both (3)"
  end
  if value == 4 then
    return "Replace Rejected Self Match Instruction: Cancel Smallest (4)"
  end
  if value == 5 then
    return "Replace Rejected Self Match Instruction: Decrement And Cancel (5)"
  end

  return "Replace Rejected Self Match Instruction: Unknown("..value..")"
end

-- Dissect: Replace Rejected Self Match Instruction
txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_self_match_instruction, range, value, display)

  return offset + length, value
end

-- Restatement Reason
txse_txseequities_seed_rake_v1_0.restatement_reason = {}

-- Size: Restatement Reason
txse_txseequities_seed_rake_v1_0.restatement_reason.size = 1

-- Display: Restatement Reason
txse_txseequities_seed_rake_v1_0.restatement_reason.display = function(value)
  if value == 1 then
    return "Restatement Reason: Reserve Replenished (1)"
  end
  if value == 2 then
    return "Restatement Reason: Repriced (2)"
  end
  if value == 3 then
    return "Restatement Reason: Post Auction (3)"
  end

  return "Restatement Reason: Unknown("..value..")"
end

-- Dissect: Restatement Reason
txse_txseequities_seed_rake_v1_0.restatement_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.restatement_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.restatement_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.restatement_reason, range, value, display)

  return offset + length, value
end

-- Self Match Scope
txse_txseequities_seed_rake_v1_0.self_match_scope = {}

-- Size: Self Match Scope
txse_txseequities_seed_rake_v1_0.self_match_scope.size = 1

-- Display: Self Match Scope
txse_txseequities_seed_rake_v1_0.self_match_scope.display = function(value)
  if value == 0 then
    return "Self Match Scope: By Member (0)"
  end
  if value == 1 then
    return "Self Match Scope: By Mpid (1)"
  end
  if value == 2 then
    return "Self Match Scope: By Member Group (2)"
  end
  if value == 3 then
    return "Self Match Scope: By Mpid And Member Group (3)"
  end

  return "Self Match Scope: Unknown("..value..")"
end

-- Dissect: Self Match Scope
txse_txseequities_seed_rake_v1_0.self_match_scope.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.self_match_scope.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.self_match_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.self_match_scope, range, value, display)

  return offset + length, value
end

-- Sender Comp
txse_txseequities_seed_rake_v1_0.sender_comp = {}

-- Size: Sender Comp
txse_txseequities_seed_rake_v1_0.sender_comp.size = 8

-- Display: Sender Comp
txse_txseequities_seed_rake_v1_0.sender_comp.display = function(value)
  return "Sender Comp: "..value
end

-- Dissect: Sender Comp
txse_txseequities_seed_rake_v1_0.sender_comp.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.sender_comp.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = txse_txseequities_seed_rake_v1_0.sender_comp.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.sender_comp, range, value, display)

  return offset + length, value
end

-- Session
txse_txseequities_seed_rake_v1_0.session = {}

-- Size: Session
txse_txseequities_seed_rake_v1_0.session.size = 8

-- Display: Session
txse_txseequities_seed_rake_v1_0.session.display = function(value)
  return "Session: "..value
end

-- Dissect: Session
txse_txseequities_seed_rake_v1_0.session.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.session.size
  local range = buffer(offset, length)
  local value = range:le_uint64()
  local display = txse_txseequities_seed_rake_v1_0.session.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.session, range, value, display)

  return offset + length, value
end

-- Session Trading State
txse_txseequities_seed_rake_v1_0.session_trading_state = {}

-- Size: Session Trading State
txse_txseequities_seed_rake_v1_0.session_trading_state.size = 1

-- Display: Session Trading State
txse_txseequities_seed_rake_v1_0.session_trading_state.display = function(value)
  if value == 0 then
    return "Session Trading State: Closed (0)"
  end
  if value == 1 then
    return "Session Trading State: Trading (1)"
  end
  if value == 2 then
    return "Session Trading State: Halted (2)"
  end

  return "Session Trading State: Unknown("..value..")"
end

-- Dissect: Session Trading State
txse_txseequities_seed_rake_v1_0.session_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.session_trading_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.session_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.session_trading_state, range, value, display)

  return offset + length, value
end

-- Short Sale Restriction State
txse_txseequities_seed_rake_v1_0.short_sale_restriction_state = {}

-- Size: Short Sale Restriction State
txse_txseequities_seed_rake_v1_0.short_sale_restriction_state.size = 1

-- Display: Short Sale Restriction State
txse_txseequities_seed_rake_v1_0.short_sale_restriction_state.display = function(value)
  if value == 0 then
    return "Short Sale Restriction State: None (0)"
  end
  if value == 1 then
    return "Short Sale Restriction State: Activated (1)"
  end
  if value == 2 then
    return "Short Sale Restriction State: Continued (2)"
  end
  if value == 3 then
    return "Short Sale Restriction State: Deactivated (3)"
  end
  if value == 4 then
    return "Short Sale Restriction State: In Effect (4)"
  end

  return "Short Sale Restriction State: Unknown("..value..")"
end

-- Dissect: Short Sale Restriction State
txse_txseequities_seed_rake_v1_0.short_sale_restriction_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.short_sale_restriction_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.short_sale_restriction_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.short_sale_restriction_state, range, value, display)

  return offset + length, value
end

-- Stream Id
txse_txseequities_seed_rake_v1_0.stream_id = {}

-- Size: Stream Id
txse_txseequities_seed_rake_v1_0.stream_id.size = 1

-- Display: Stream Id
txse_txseequities_seed_rake_v1_0.stream_id.display = function(value)
  return "Stream Id: "..value
end

-- Dissect: Stream Id
txse_txseequities_seed_rake_v1_0.stream_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.stream_id.size
  local range = buffer(offset, length)
  local value = range:uint()
  local display = txse_txseequities_seed_rake_v1_0.stream_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.stream_id, range, value, display)

  return offset + length, value
end

-- Suffix
txse_txseequities_seed_rake_v1_0.suffix = {}

-- Size: Suffix
txse_txseequities_seed_rake_v1_0.suffix.size = 8

-- Display: Suffix
txse_txseequities_seed_rake_v1_0.suffix.display = function(value)
  return "Suffix: "..value
end

-- Dissect: Suffix
txse_txseequities_seed_rake_v1_0.suffix.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.suffix.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.suffix.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.suffix, range, value, display)

  return offset + length, value
end

-- Symbol
txse_txseequities_seed_rake_v1_0.symbol = {}

-- Size: Symbol
txse_txseequities_seed_rake_v1_0.symbol.size = 8

-- Display: Symbol
txse_txseequities_seed_rake_v1_0.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
txse_txseequities_seed_rake_v1_0.symbol.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = txse_txseequities_seed_rake_v1_0.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol Id
txse_txseequities_seed_rake_v1_0.symbol_id = {}

-- Size: Symbol Id
txse_txseequities_seed_rake_v1_0.symbol_id.size = 2

-- Display: Symbol Id
txse_txseequities_seed_rake_v1_0.symbol_id.display = function(value)
  return "Symbol Id: "..value
end

-- Dissect: Symbol Id
txse_txseequities_seed_rake_v1_0.symbol_id.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.symbol_id.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.symbol_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.symbol_id, range, value, display)

  return offset + length, value
end

-- Symbol Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason = {}

-- Size: Symbol Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason.size = 1

-- Display: Symbol Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason.display = function(value)
  if value == 0 then
    return "Symbol Status Operational Halt Reason: Administrative (0)"
  end

  return "Symbol Status Operational Halt Reason: Unknown("..value..")"
end

-- Dissect: Symbol Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_operational_halt_reason, range, value, display)

  return offset + length, value
end

-- Symbol Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason = {}

-- Size: Symbol Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason.size = 1

-- Display: Symbol Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason.display = function(value)
  if value == 0 then
    return "Symbol Status Regulatory Halt Reason: Reason Not Available (0)"
  end
  if value == 1 then
    return "Symbol Status Regulatory Halt Reason: News Pending (1)"
  end
  if value == 2 then
    return "Symbol Status Regulatory Halt Reason: News Dissemination (2)"
  end
  if value == 3 then
    return "Symbol Status Regulatory Halt Reason: Info Requested (3)"
  end
  if value == 4 then
    return "Symbol Status Regulatory Halt Reason: Order Imbalance (4)"
  end
  if value == 5 then
    return "Symbol Status Regulatory Halt Reason: Extraordinary Market Activity (5)"
  end
  if value == 6 then
    return "Symbol Status Regulatory Halt Reason: Luld Pause (6)"
  end
  if value == 7 then
    return "Symbol Status Regulatory Halt Reason: Non Compliance (7)"
  end
  if value == 8 then
    return "Symbol Status Regulatory Halt Reason: Filings Not Current (8)"
  end
  if value == 9 then
    return "Symbol Status Regulatory Halt Reason: Sec Suspension (9)"
  end
  if value == 10 then
    return "Symbol Status Regulatory Halt Reason: Regulatory Concern (10)"
  end
  if value == 11 then
    return "Symbol Status Regulatory Halt Reason: Sub Penny Trading (11)"
  end
  if value == 12 then
    return "Symbol Status Regulatory Halt Reason: Etf (12)"
  end
  if value == 13 then
    return "Symbol Status Regulatory Halt Reason: Ipo Not Trading (13)"
  end
  if value == 14 then
    return "Symbol Status Regulatory Halt Reason: Corporate Action (14)"
  end
  if value == 15 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker L 1 (15)"
  end
  if value == 16 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker L 2 (16)"
  end
  if value == 17 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker L 3 (17)"
  end
  if value == 18 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker Carryover (18)"
  end
  if value == 19 then
    return "Symbol Status Regulatory Halt Reason: Merger Effective (19)"
  end
  if value == 20 then
    return "Symbol Status Regulatory Halt Reason: New Security Offering (20)"
  end
  if value == 21 then
    return "Symbol Status Regulatory Halt Reason: Indicative Value Not Available (21)"
  end
  if value == 22 then
    return "Symbol Status Regulatory Halt Reason: Quotation Not Available (22)"
  end
  if value == 23 then
    return "Symbol Status Regulatory Halt Reason: Single Stock Trading Pause (23)"
  end
  if value == 24 then
    return "Symbol Status Regulatory Halt Reason: Operational (24)"
  end
  if value == 25 then
    return "Symbol Status Regulatory Halt Reason: Luld Pause Straddle (25)"
  end
  if value == 26 then
    return "Symbol Status Regulatory Halt Reason: News Resumption Times (26)"
  end
  if value == 27 then
    return "Symbol Status Regulatory Halt Reason: Single Stock Trading Pause Quoting (27)"
  end
  if value == 28 then
    return "Symbol Status Regulatory Halt Reason: Qualifications Issues Resolved (28)"
  end
  if value == 29 then
    return "Symbol Status Regulatory Halt Reason: Filing Requirements Satisfied (29)"
  end
  if value == 30 then
    return "Symbol Status Regulatory Halt Reason: Issuer News Not Forthcoming (30)"
  end
  if value == 31 then
    return "Symbol Status Regulatory Halt Reason: Qualifications Halt Ended (31)"
  end
  if value == 32 then
    return "Symbol Status Regulatory Halt Reason: Qualifications Halt Concluded (32)"
  end
  if value == 33 then
    return "Symbol Status Regulatory Halt Reason: Regulatory Authority Halt Concluded (33)"
  end
  if value == 34 then
    return "Symbol Status Regulatory Halt Reason: New Issue Available (34)"
  end
  if value == 35 then
    return "Symbol Status Regulatory Halt Reason: Issue Available (35)"
  end
  if value == 36 then
    return "Symbol Status Regulatory Halt Reason: Ipo Quotation Released (36)"
  end
  if value == 37 then
    return "Symbol Status Regulatory Halt Reason: Ipo Positioning Window Extension (37)"
  end
  if value == 38 then
    return "Symbol Status Regulatory Halt Reason: Circuit Breaker Quotation Resumption (38)"
  end

  return "Symbol Status Regulatory Halt Reason: Unknown("..value..")"
end

-- Dissect: Symbol Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_regulatory_halt_reason, range, value, display)

  return offset + length, value
end

-- Symbol Trading State
txse_txseequities_seed_rake_v1_0.symbol_trading_state = {}

-- Size: Symbol Trading State
txse_txseequities_seed_rake_v1_0.symbol_trading_state.size = 1

-- Display: Symbol Trading State
txse_txseequities_seed_rake_v1_0.symbol_trading_state.display = function(value)
  if value == 1 then
    return "Symbol Trading State: Trading (1)"
  end
  if value == 2 then
    return "Symbol Trading State: Halted (2)"
  end
  if value == 3 then
    return "Symbol Trading State: Resume Pending (3)"
  end

  return "Symbol Trading State: Unknown("..value..")"
end

-- Dissect: Symbol Trading State
txse_txseequities_seed_rake_v1_0.symbol_trading_state.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.symbol_trading_state.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.symbol_trading_state.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.symbol_trading_state, range, value, display)

  return offset + length, value
end

-- Text
txse_txseequities_seed_rake_v1_0.text = {}

-- Display: Text
txse_txseequities_seed_rake_v1_0.text.display = function(value)
  return "Text: "..value
end

-- Dissect runtime sized field: Text
txse_txseequities_seed_rake_v1_0.text.dissect = function(buffer, offset, packet, parent, size)
  local range = buffer(offset, size)
  local value = range:string()
  local display = txse_txseequities_seed_rake_v1_0.text.display(value, packet, parent, size)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.text, range, value, display)

  return offset + size, value
end

-- Token
txse_txseequities_seed_rake_v1_0.token = {}

-- Size: Token
txse_txseequities_seed_rake_v1_0.token.size = 8

-- Display: Token
txse_txseequities_seed_rake_v1_0.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
txse_txseequities_seed_rake_v1_0.token.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.token.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = txse_txseequities_seed_rake_v1_0.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.token, range, value, display)

  return offset + length, value
end

-- Trading Session Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason = {}

-- Size: Trading Session Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason.size = 1

-- Display: Trading Session Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason.display = function(value)
  if value == 0 then
    return "Trading Session Status Operational Halt Reason: Administrative (0)"
  end

  return "Trading Session Status Operational Halt Reason: Unknown("..value..")"
end

-- Dissect: Trading Session Status Operational Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_operational_halt_reason, range, value, display)

  return offset + length, value
end

-- Trading Session Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason = {}

-- Size: Trading Session Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason.size = 1

-- Display: Trading Session Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason.display = function(value)
  if value == 0 then
    return "Trading Session Status Regulatory Halt Reason: Reason Not Available (0)"
  end
  if value == 1 then
    return "Trading Session Status Regulatory Halt Reason: News Pending (1)"
  end
  if value == 2 then
    return "Trading Session Status Regulatory Halt Reason: News Dissemination (2)"
  end
  if value == 3 then
    return "Trading Session Status Regulatory Halt Reason: Info Requested (3)"
  end
  if value == 4 then
    return "Trading Session Status Regulatory Halt Reason: Order Imbalance (4)"
  end
  if value == 5 then
    return "Trading Session Status Regulatory Halt Reason: Extraordinary Market Activity (5)"
  end
  if value == 6 then
    return "Trading Session Status Regulatory Halt Reason: Luld Pause (6)"
  end
  if value == 7 then
    return "Trading Session Status Regulatory Halt Reason: Non Compliance (7)"
  end
  if value == 8 then
    return "Trading Session Status Regulatory Halt Reason: Filings Not Current (8)"
  end
  if value == 9 then
    return "Trading Session Status Regulatory Halt Reason: Sec Suspension (9)"
  end
  if value == 10 then
    return "Trading Session Status Regulatory Halt Reason: Regulatory Concern (10)"
  end
  if value == 11 then
    return "Trading Session Status Regulatory Halt Reason: Sub Penny Trading (11)"
  end
  if value == 12 then
    return "Trading Session Status Regulatory Halt Reason: Etf (12)"
  end
  if value == 13 then
    return "Trading Session Status Regulatory Halt Reason: Ipo Not Trading (13)"
  end
  if value == 14 then
    return "Trading Session Status Regulatory Halt Reason: Corporate Action (14)"
  end
  if value == 15 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker L 1 (15)"
  end
  if value == 16 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker L 2 (16)"
  end
  if value == 17 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker L 3 (17)"
  end
  if value == 18 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker Carryover (18)"
  end
  if value == 19 then
    return "Trading Session Status Regulatory Halt Reason: Merger Effective (19)"
  end
  if value == 20 then
    return "Trading Session Status Regulatory Halt Reason: New Security Offering (20)"
  end
  if value == 21 then
    return "Trading Session Status Regulatory Halt Reason: Indicative Value Not Available (21)"
  end
  if value == 22 then
    return "Trading Session Status Regulatory Halt Reason: Quotation Not Available (22)"
  end
  if value == 23 then
    return "Trading Session Status Regulatory Halt Reason: Single Stock Trading Pause (23)"
  end
  if value == 24 then
    return "Trading Session Status Regulatory Halt Reason: Operational (24)"
  end
  if value == 25 then
    return "Trading Session Status Regulatory Halt Reason: Luld Pause Straddle (25)"
  end
  if value == 26 then
    return "Trading Session Status Regulatory Halt Reason: News Resumption Times (26)"
  end
  if value == 27 then
    return "Trading Session Status Regulatory Halt Reason: Single Stock Trading Pause Quoting (27)"
  end
  if value == 28 then
    return "Trading Session Status Regulatory Halt Reason: Qualifications Issues Resolved (28)"
  end
  if value == 29 then
    return "Trading Session Status Regulatory Halt Reason: Filing Requirements Satisfied (29)"
  end
  if value == 30 then
    return "Trading Session Status Regulatory Halt Reason: Issuer News Not Forthcoming (30)"
  end
  if value == 31 then
    return "Trading Session Status Regulatory Halt Reason: Qualifications Halt Ended (31)"
  end
  if value == 32 then
    return "Trading Session Status Regulatory Halt Reason: Qualifications Halt Concluded (32)"
  end
  if value == 33 then
    return "Trading Session Status Regulatory Halt Reason: Regulatory Authority Halt Concluded (33)"
  end
  if value == 34 then
    return "Trading Session Status Regulatory Halt Reason: New Issue Available (34)"
  end
  if value == 35 then
    return "Trading Session Status Regulatory Halt Reason: Issue Available (35)"
  end
  if value == 36 then
    return "Trading Session Status Regulatory Halt Reason: Ipo Quotation Released (36)"
  end
  if value == 37 then
    return "Trading Session Status Regulatory Halt Reason: Ipo Positioning Window Extension (37)"
  end
  if value == 38 then
    return "Trading Session Status Regulatory Halt Reason: Circuit Breaker Quotation Resumption (38)"
  end

  return "Trading Session Status Regulatory Halt Reason: Unknown("..value..")"
end

-- Dissect: Trading Session Status Regulatory Halt Reason
txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason.size
  local range = buffer(offset, length)
  local value = range:le_int()
  local display = txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_regulatory_halt_reason, range, value, display)

  return offset + length, value
end

-- Transact Time
txse_txseequities_seed_rake_v1_0.transact_time = {}

-- Size: Transact Time
txse_txseequities_seed_rake_v1_0.transact_time.size = 8

-- Display: Transact Time
txse_txseequities_seed_rake_v1_0.transact_time.display = function(value)
  -- Parse unix nanosecond timestamp
  local seconds = (value / UInt64(1000000000)):tonumber()
  local nanoseconds = (value % UInt64(1000000000)):tonumber()

  return "Transact Time: "..os.date("%Y-%m-%d %H:%M:%S.", seconds)..string.format("%09d", nanoseconds)
end

-- Dissect: Transact Time
txse_txseequities_seed_rake_v1_0.transact_time.dissect = function(buffer, offset, packet, parent)
  local length = txse_txseequities_seed_rake_v1_0.transact_time.size
  local range = buffer(offset, length)
  local value = range:le_int64()
  local display = txse_txseequities_seed_rake_v1_0.transact_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.transact_time, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Txse TxseEquities Seed Rake 1.0
-----------------------------------------------------------------------

-- Mass Cancel Result Message
txse_txseequities_seed_rake_v1_0.mass_cancel_result_message = {}

-- Size: Mass Cancel Result Message
txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.size =
  txse_txseequities_seed_rake_v1_0.transact_time.size + 
  txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.size + 
  txse_txseequities_seed_rake_v1_0.mass_cancel_id.size + 
  txse_txseequities_seed_rake_v1_0.canceled_count.size

-- Display: Mass Cancel Result Message
txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Result Message
txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Long
  index, mass_cancel_id = txse_txseequities_seed_rake_v1_0.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Canceled Count: Int
  index, canceled_count = txse_txseequities_seed_rake_v1_0.canceled_count.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mass Cancel Result Message
txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_result_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields = {}

-- Size: Mass Cancel Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.size = 1

-- Display: Mass Cancel Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Exclude Auction Orders flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Exclude Auction Orders"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Cancel Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.bits = function(range, value, packet, parent)

  -- Exclude Auction Orders: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.exclude_auction_orders, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Mass Cancel Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_bit_fields, range, display)

  if show.mass_cancel_rejected_bit_fields then
    txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits = {}

-- Size: Mass Cancel Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.size = 1

-- Display: Mass Cancel Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Mass Cancel Rejected Mpid flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Rejected Mpid"
  end
  -- Is Has Mass Cancel Rejected Sender Comp flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Rejected Sender Comp"
  end
  -- Is Has Mass Cancel Rejected Member Group flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Rejected Member Group"
  end
  -- Is Has Mass Cancel Rejected Cl Ord Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Rejected Cl Ord Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Cancel Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Has Mass Cancel Rejected Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_mpid, range, value)

  -- Has Mass Cancel Rejected Sender Comp: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_sender_comp, range, value)

  -- Has Mass Cancel Rejected Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_member_group, range, value)

  -- Has Mass Cancel Rejected Cl Ord Id: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_rejected_cl_ord_id, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_4, range, value)
end

-- Dissect: Mass Cancel Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_presence_bits, range, display)

  if show.mass_cancel_rejected_presence_bits then
    txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message = {}

-- Calculate size of: Mass Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason.size

  local has_mass_cancel_rejected_mpid = buffer(offset + index - 19, 1):uint()

  if bit.band(mass_cancel_rejected_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid.size

  end

  local has_mass_cancel_rejected_sender_comp = buffer(offset + index - 23, 1):uint()

  if bit.band(mass_cancel_rejected_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp.size

  end

  local has_mass_cancel_rejected_member_group = buffer(offset + index - 31, 1):uint()

  if bit.band(mass_cancel_rejected_presence_bits, 0x04) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group.size

  end

  local has_mass_cancel_rejected_cl_ord_id = buffer(offset + index - 33, 1):uint()

  if bit.band(mass_cancel_rejected_presence_bits, 0x08) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id.size

  end

  return index
end

-- Display: Mass Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Rejected Presence Bits: Struct of 5 fields
  index, mass_cancel_rejected_presence_bits = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Rejected Scope: Enum
  index, mass_cancel_rejected_scope = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_scope.dissect(buffer, index, packet, parent)

  -- Mass Cancel Rejected Bit Fields: Struct of 2 fields
  index, mass_cancel_rejected_bit_fields = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_bit_fields.dissect(buffer, index, packet, parent)

  -- Mass Cancel Rejected Reason: Enum
  index, mass_cancel_rejected_reason = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Mass Cancel Rejected Mpid
  local mass_cancel_rejected_mpid = nil

  local mass_cancel_rejected_mpid_exists = bit.band(mass_cancel_rejected_presence_bits, 0x01) == 1

  if mass_cancel_rejected_mpid_exists then
    index, mass_cancel_rejected_mpid = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Rejected Sender Comp
  local mass_cancel_rejected_sender_comp = nil

  local mass_cancel_rejected_sender_comp_exists = bit.band(mass_cancel_rejected_presence_bits, 0x02) == 1

  if mass_cancel_rejected_sender_comp_exists then
    index, mass_cancel_rejected_sender_comp = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_sender_comp.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Rejected Member Group
  local mass_cancel_rejected_member_group = nil

  local mass_cancel_rejected_member_group_exists = bit.band(mass_cancel_rejected_presence_bits, 0x04) == 1

  if mass_cancel_rejected_member_group_exists then
    index, mass_cancel_rejected_member_group = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Rejected Cl Ord Id
  local mass_cancel_rejected_cl_ord_id = nil

  local mass_cancel_rejected_cl_ord_id_exists = bit.band(mass_cancel_rejected_presence_bits, 0x08) == 1

  if mass_cancel_rejected_cl_ord_id_exists then
    index, mass_cancel_rejected_cl_ord_id = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_rejected_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields = {}

-- Size: Mass Cancel Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.size = 1

-- Display: Mass Cancel Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Exclude Auction Orders flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Exclude Auction Orders"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Cancel Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.bits = function(range, value, packet, parent)

  -- Exclude Auction Orders: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.exclude_auction_orders, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Mass Cancel Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_bit_fields, range, display)

  if show.mass_cancel_accepted_bit_fields then
    txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits = {}

-- Size: Mass Cancel Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.size = 1

-- Display: Mass Cancel Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Mass Cancel Accepted Mpid flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Accepted Mpid"
  end
  -- Is Has Mass Cancel Accepted Sender Comp flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Accepted Sender Comp"
  end
  -- Is Has Mass Cancel Accepted Member Group flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Accepted Member Group"
  end
  -- Is Has Mass Cancel Accepted Cl Ord Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Accepted Cl Ord Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Cancel Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.bits = function(range, value, packet, parent)

  -- Has Mass Cancel Accepted Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_mpid, range, value)

  -- Has Mass Cancel Accepted Sender Comp: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_sender_comp, range, value)

  -- Has Mass Cancel Accepted Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_member_group, range, value)

  -- Has Mass Cancel Accepted Cl Ord Id: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_accepted_cl_ord_id, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_4, range, value)
end

-- Dissect: Mass Cancel Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_presence_bits, range, display)

  if show.mass_cancel_accepted_presence_bits then
    txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Accepted Message
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message = {}

-- Calculate size of: Mass Cancel Accepted Message
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_id.size

  local has_mass_cancel_accepted_mpid = buffer(offset + index - 26, 1):uint()

  if bit.band(mass_cancel_accepted_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid.size

  end

  local has_mass_cancel_accepted_sender_comp = buffer(offset + index - 30, 1):uint()

  if bit.band(mass_cancel_accepted_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp.size

  end

  local has_mass_cancel_accepted_member_group = buffer(offset + index - 38, 1):uint()

  if bit.band(mass_cancel_accepted_presence_bits, 0x04) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group.size

  end

  local has_mass_cancel_accepted_cl_ord_id = buffer(offset + index - 40, 1):uint()

  if bit.band(mass_cancel_accepted_presence_bits, 0x08) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id.size

  end

  return index
end

-- Display: Mass Cancel Accepted Message
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Accepted Message
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Accepted Presence Bits: Struct of 5 fields
  index, mass_cancel_accepted_presence_bits = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Accepted Scope: Enum
  index, mass_cancel_accepted_scope = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_scope.dissect(buffer, index, packet, parent)

  -- Mass Cancel Accepted Bit Fields: Struct of 2 fields
  index, mass_cancel_accepted_bit_fields = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_bit_fields.dissect(buffer, index, packet, parent)

  -- Mass Cancel Id: Long
  index, mass_cancel_id = txse_txseequities_seed_rake_v1_0.mass_cancel_id.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Mass Cancel Accepted Mpid
  local mass_cancel_accepted_mpid = nil

  local mass_cancel_accepted_mpid_exists = bit.band(mass_cancel_accepted_presence_bits, 0x01) == 1

  if mass_cancel_accepted_mpid_exists then
    index, mass_cancel_accepted_mpid = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Accepted Sender Comp
  local mass_cancel_accepted_sender_comp = nil

  local mass_cancel_accepted_sender_comp_exists = bit.band(mass_cancel_accepted_presence_bits, 0x02) == 1

  if mass_cancel_accepted_sender_comp_exists then
    index, mass_cancel_accepted_sender_comp = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_sender_comp.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Accepted Member Group
  local mass_cancel_accepted_member_group = nil

  local mass_cancel_accepted_member_group_exists = bit.band(mass_cancel_accepted_presence_bits, 0x04) == 1

  if mass_cancel_accepted_member_group_exists then
    index, mass_cancel_accepted_member_group = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Accepted Cl Ord Id
  local mass_cancel_accepted_cl_ord_id = nil

  local mass_cancel_accepted_cl_ord_id_exists = bit.band(mass_cancel_accepted_presence_bits, 0x08) == 1

  if mass_cancel_accepted_cl_ord_id_exists then
    index, mass_cancel_accepted_cl_ord_id = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Cancel Accepted Message
txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_accepted_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Self Match Prevented Message
txse_txseequities_seed_rake_v1_0.self_match_prevented_message = {}

-- Size: Self Match Prevented Message
txse_txseequities_seed_rake_v1_0.self_match_prevented_message.size =
  txse_txseequities_seed_rake_v1_0.transact_time.size + 
  txse_txseequities_seed_rake_v1_0.order_id.size + 
  txse_txseequities_seed_rake_v1_0.cl_ord_id.size + 
  txse_txseequities_seed_rake_v1_0.exec_price.size + 
  txse_txseequities_seed_rake_v1_0.exec_id.size + 
  txse_txseequities_seed_rake_v1_0.exec_qty.size + 
  txse_txseequities_seed_rake_v1_0.canceled_qty.size + 
  txse_txseequities_seed_rake_v1_0.leaves_qty.size + 
  txse_txseequities_seed_rake_v1_0.liquidity_indicator.size

-- Display: Self Match Prevented Message
txse_txseequities_seed_rake_v1_0.self_match_prevented_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Self Match Prevented Message
txse_txseequities_seed_rake_v1_0.self_match_prevented_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Price: Price
  index, exec_price = txse_txseequities_seed_rake_v1_0.exec_price.dissect(buffer, index, packet, parent)

  -- Exec Id: Long
  index, exec_id = txse_txseequities_seed_rake_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Qty: Int
  index, exec_qty = txse_txseequities_seed_rake_v1_0.exec_qty.dissect(buffer, index, packet, parent)

  -- Canceled Qty: Int
  index, canceled_qty = txse_txseequities_seed_rake_v1_0.canceled_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int
  index, leaves_qty = txse_txseequities_seed_rake_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Enum
  index, liquidity_indicator = txse_txseequities_seed_rake_v1_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Self Match Prevented Message
txse_txseequities_seed_rake_v1_0.self_match_prevented_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.self_match_prevented_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.self_match_prevented_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.self_match_prevented_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.self_match_prevented_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Restated Presence Bits
txse_txseequities_seed_rake_v1_0.order_restated_presence_bits = {}

-- Size: Order Restated Presence Bits
txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.size = 1

-- Display: Order Restated Presence Bits
txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Order Restated Rank Price flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Order Restated Rank Price"
  end
  -- Is Has Order Restated Display Price flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Order Restated Display Price"
  end
  -- Is Has Display Qty flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Display Qty"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Restated Presence Bits
txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.bits = function(range, value, packet, parent)

  -- Has Order Restated Rank Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_restated_rank_price, range, value)

  -- Has Order Restated Display Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_restated_display_price, range, value)

  -- Has Display Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_display_qty, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5, range, value)
end

-- Dissect: Order Restated Presence Bits
txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_presence_bits, range, display)

  if show.order_restated_presence_bits then
    txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Restated Message
txse_txseequities_seed_rake_v1_0.order_restated_message = {}

-- Calculate size of: Order Restated Message
txse_txseequities_seed_rake_v1_0.order_restated_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.order_id.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.restatement_reason.size

  local has_order_restated_rank_price = buffer(offset + index - 25, 1):uint()

  if bit.band(order_restated_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_restated_rank_price.size

  end

  local has_order_restated_display_price = buffer(offset + index - 33, 1):uint()

  if bit.band(order_restated_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_restated_display_price.size

  end

  index = index + txse_txseequities_seed_rake_v1_0.display_qty.size

  return index
end

-- Display: Order Restated Message
txse_txseequities_seed_rake_v1_0.order_restated_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Restated Message
txse_txseequities_seed_rake_v1_0.order_restated_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Restated Presence Bits: Struct of 4 fields
  index, order_restated_presence_bits = txse_txseequities_seed_rake_v1_0.order_restated_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Restatement Reason: Enum
  index, restatement_reason = txse_txseequities_seed_rake_v1_0.restatement_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Order Restated Rank Price
  local order_restated_rank_price = nil

  local order_restated_rank_price_exists = bit.band(order_restated_presence_bits, 0x01) == 1

  if order_restated_rank_price_exists then
    index, order_restated_rank_price = txse_txseequities_seed_rake_v1_0.order_restated_rank_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Restated Display Price
  local order_restated_display_price = nil

  local order_restated_display_price_exists = bit.band(order_restated_presence_bits, 0x02) == 1

  if order_restated_display_price_exists then
    index, order_restated_display_price = txse_txseequities_seed_rake_v1_0.order_restated_display_price.dissect(buffer, index, packet, parent)
  end

  -- Display Qty: Int
  index, display_qty = txse_txseequities_seed_rake_v1_0.display_qty.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Restated Message
txse_txseequities_seed_rake_v1_0.order_restated_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_restated_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.order_restated_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.order_restated_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.order_restated_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Executed Message
txse_txseequities_seed_rake_v1_0.order_executed_message = {}

-- Size: Order Executed Message
txse_txseequities_seed_rake_v1_0.order_executed_message.size =
  txse_txseequities_seed_rake_v1_0.transact_time.size + 
  txse_txseequities_seed_rake_v1_0.order_id.size + 
  txse_txseequities_seed_rake_v1_0.cl_ord_id.size + 
  txse_txseequities_seed_rake_v1_0.exec_price.size + 
  txse_txseequities_seed_rake_v1_0.exec_id.size + 
  txse_txseequities_seed_rake_v1_0.exec_qty.size + 
  txse_txseequities_seed_rake_v1_0.leaves_qty.size + 
  txse_txseequities_seed_rake_v1_0.liquidity_indicator.size

-- Display: Order Executed Message
txse_txseequities_seed_rake_v1_0.order_executed_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Executed Message
txse_txseequities_seed_rake_v1_0.order_executed_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Exec Price: Price
  index, exec_price = txse_txseequities_seed_rake_v1_0.exec_price.dissect(buffer, index, packet, parent)

  -- Exec Id: Long
  index, exec_id = txse_txseequities_seed_rake_v1_0.exec_id.dissect(buffer, index, packet, parent)

  -- Exec Qty: Int
  index, exec_qty = txse_txseequities_seed_rake_v1_0.exec_qty.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int
  index, leaves_qty = txse_txseequities_seed_rake_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Liquidity Indicator: Enum
  index, liquidity_indicator = txse_txseequities_seed_rake_v1_0.liquidity_indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Executed Message
txse_txseequities_seed_rake_v1_0.order_executed_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_executed_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.order_executed_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.order_executed_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.order_executed_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields = {}

-- Size: Replace Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.size = 2

-- Display: Replace Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Is Iso"
  end
  -- Is Is Post Only flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Is Post Only"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Cancel At Entry If Crossed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Replace Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_iso, range, value)

  -- Is Post Only: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_post_only, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 9: 9 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_9, range, value)
end

-- Dissect: Replace Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_bit_fields, range, display)

  if show.replace_rejected_bit_fields then
    txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Replace Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits = {}

-- Size: Replace Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.size = 2

-- Display: Replace Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Replace Rejected Price flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Has Replace Rejected Price"
  end
  -- Is Has Replace Rejected Order Qty flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Has Replace Rejected Order Qty"
  end
  -- Is Has Replace Rejected Max Floor Qty flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Has Replace Rejected Max Floor Qty"
  end
  -- Is Scope flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Replace Rejected Self Match Instruction flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Has Replace Rejected Self Match Instruction"
  end
  -- Is Has Replace Rejected Price Slide Instruction flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Has Replace Rejected Price Slide Instruction"
  end
  -- Is Has Replace Rejected Reference Price Target flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Has Replace Rejected Reference Price Target"
  end
  -- Is Has Replace Rejected Locate Broker flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Has Replace Rejected Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Replace Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Has Replace Rejected Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_price, range, value)

  -- Has Replace Rejected Order Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_order_qty, range, value)

  -- Has Replace Rejected Max Floor Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_max_floor_qty, range, value)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Replace Rejected Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_self_match_instruction, range, value)

  -- Has Replace Rejected Price Slide Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_price_slide_instruction, range, value)

  -- Has Replace Rejected Reference Price Target: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_reference_price_target, range, value)

  -- Has Replace Rejected Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_rejected_locate_broker, range, value)

  -- Reserved 8: 8 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_8, range, value)
end

-- Dissect: Replace Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_presence_bits, range, display)

  if show.replace_rejected_presence_bits then
    txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Replace Rejected Message
txse_txseequities_seed_rake_v1_0.replace_rejected_message = {}

-- Calculate size of: Replace Rejected Message
txse_txseequities_seed_rake_v1_0.replace_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_reason.size

  local has_replace_rejected_price = buffer(offset + index - 27, 1):uint()

  if bit.band(replace_rejected_presence_bits, 0x0001) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_price.size

  end

  local has_replace_rejected_order_qty = buffer(offset + index - 35, 1):uint()

  if bit.band(replace_rejected_presence_bits, 0x0002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty.size

  end

  local has_replace_rejected_max_floor_qty = buffer(offset + index - 39, 1):uint()

  if bit.band(replace_rejected_presence_bits, 0x0004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty.size

  end

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_replace_rejected_self_match_instruction = buffer(offset + index - 44, 1):uint()

  if bit.band(replace_rejected_presence_bits, 0x0010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction.size

  end

  local has_replace_rejected_price_slide_instruction = buffer(offset + index - 45, 1):uint()

  if bit.band(replace_rejected_presence_bits, 0x0020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction.size

  end

  local has_replace_rejected_reference_price_target = buffer(offset + index - 46, 1):uint()

  if bit.band(replace_rejected_presence_bits, 0x0040) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target.size

  end

  local has_replace_rejected_locate_broker = buffer(offset + index - 48, 1):uint()

  if bit.band(replace_rejected_presence_bits, 0x0080) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker.size

  end

  return index
end

-- Display: Replace Rejected Message
txse_txseequities_seed_rake_v1_0.replace_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Rejected Message
txse_txseequities_seed_rake_v1_0.replace_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replace Rejected Presence Bits: Struct of 9 fields
  index, replace_rejected_presence_bits = txse_txseequities_seed_rake_v1_0.replace_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Replace Rejected Bit Fields: Struct of 6 fields
  index, replace_rejected_bit_fields = txse_txseequities_seed_rake_v1_0.replace_rejected_bit_fields.dissect(buffer, index, packet, parent)

  -- Replace Rejected Reason: Enum
  index, replace_rejected_reason = txse_txseequities_seed_rake_v1_0.replace_rejected_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Replace Rejected Price
  local replace_rejected_price = nil

  local replace_rejected_price_exists = bit.band(replace_rejected_presence_bits, 0x0001) == 1

  if replace_rejected_price_exists then
    index, replace_rejected_price = txse_txseequities_seed_rake_v1_0.replace_rejected_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Rejected Order Qty
  local replace_rejected_order_qty = nil

  local replace_rejected_order_qty_exists = bit.band(replace_rejected_presence_bits, 0x0002) == 1

  if replace_rejected_order_qty_exists then
    index, replace_rejected_order_qty = txse_txseequities_seed_rake_v1_0.replace_rejected_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Rejected Max Floor Qty
  local replace_rejected_max_floor_qty = nil

  local replace_rejected_max_floor_qty_exists = bit.band(replace_rejected_presence_bits, 0x0004) == 1

  if replace_rejected_max_floor_qty_exists then
    index, replace_rejected_max_floor_qty = txse_txseequities_seed_rake_v1_0.replace_rejected_max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Replace Rejected Self Match Instruction
  local replace_rejected_self_match_instruction = nil

  local replace_rejected_self_match_instruction_exists = bit.band(replace_rejected_presence_bits, 0x0010) == 1

  if replace_rejected_self_match_instruction_exists then
    index, replace_rejected_self_match_instruction = txse_txseequities_seed_rake_v1_0.replace_rejected_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Rejected Price Slide Instruction
  local replace_rejected_price_slide_instruction = nil

  local replace_rejected_price_slide_instruction_exists = bit.band(replace_rejected_presence_bits, 0x0020) == 1

  if replace_rejected_price_slide_instruction_exists then
    index, replace_rejected_price_slide_instruction = txse_txseequities_seed_rake_v1_0.replace_rejected_price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Rejected Reference Price Target
  local replace_rejected_reference_price_target = nil

  local replace_rejected_reference_price_target_exists = bit.band(replace_rejected_presence_bits, 0x0040) == 1

  if replace_rejected_reference_price_target_exists then
    index, replace_rejected_reference_price_target = txse_txseequities_seed_rake_v1_0.replace_rejected_reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Rejected Locate Broker
  local replace_rejected_locate_broker = nil

  local replace_rejected_locate_broker_exists = bit.band(replace_rejected_presence_bits, 0x0080) == 1

  if replace_rejected_locate_broker_exists then
    index, replace_rejected_locate_broker = txse_txseequities_seed_rake_v1_0.replace_rejected_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Replace Rejected Message
txse_txseequities_seed_rake_v1_0.replace_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_rejected_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.replace_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.replace_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.replace_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Replaced Bit Fields
txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields = {}

-- Size: Order Replaced Bit Fields
txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.size = 2

-- Display: Order Replaced Bit Fields
txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Is Iso"
  end
  -- Is Is Post Only flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Is Post Only"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Cancel At Entry If Crossed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Replaced Bit Fields
txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_iso, range, value)

  -- Is Post Only: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_post_only, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 9: 9 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_9, range, value)
end

-- Dissect: Order Replaced Bit Fields
txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_bit_fields, range, display)

  if show.order_replaced_bit_fields then
    txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Replaced Presence Bits
txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits = {}

-- Size: Order Replaced Presence Bits
txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.size = 2

-- Display: Order Replaced Presence Bits
txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Order Replaced Price flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Price"
  end
  -- Is Has Order Replaced Order Qty flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Order Qty"
  end
  -- Is Has Order Replaced Max Floor Qty flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Max Floor Qty"
  end
  -- Is Scope flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Order Replaced Self Match Instruction flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Self Match Instruction"
  end
  -- Is Has Order Replaced Price Slide Instruction flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Price Slide Instruction"
  end
  -- Is Has Order Replaced Reference Price Target flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Reference Price Target"
  end
  -- Is Has Order Replaced Locate Broker flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Locate Broker"
  end
  -- Is Has Order Replaced Rank Price flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Rank Price"
  end
  -- Is Has Order Replaced Display Price flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Has Order Replaced Display Price"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Replaced Presence Bits
txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.bits = function(range, value, packet, parent)

  -- Has Order Replaced Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_price, range, value)

  -- Has Order Replaced Order Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_order_qty, range, value)

  -- Has Order Replaced Max Floor Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_max_floor_qty, range, value)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Order Replaced Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_self_match_instruction, range, value)

  -- Has Order Replaced Price Slide Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_price_slide_instruction, range, value)

  -- Has Order Replaced Reference Price Target: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_reference_price_target, range, value)

  -- Has Order Replaced Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_locate_broker, range, value)

  -- Has Order Replaced Rank Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_rank_price, range, value)

  -- Has Order Replaced Display Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_replaced_display_price, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_6, range, value)
end

-- Dissect: Order Replaced Presence Bits
txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_presence_bits, range, display)

  if show.order_replaced_presence_bits then
    txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Replaced Message
txse_txseequities_seed_rake_v1_0.order_replaced_message = {}

-- Calculate size of: Order Replaced Message
txse_txseequities_seed_rake_v1_0.order_replaced_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.order_id.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.leaves_qty.size

  local has_order_replaced_price = buffer(offset + index - 38, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0001) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_price.size

  end

  local has_order_replaced_order_qty = buffer(offset + index - 46, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_order_qty.size

  end

  local has_order_replaced_max_floor_qty = buffer(offset + index - 50, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty.size

  end

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_order_replaced_self_match_instruction = buffer(offset + index - 55, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction.size

  end

  local has_order_replaced_price_slide_instruction = buffer(offset + index - 56, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction.size

  end

  local has_order_replaced_reference_price_target = buffer(offset + index - 57, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0040) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target.size

  end

  local has_order_replaced_locate_broker = buffer(offset + index - 59, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0080) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker.size

  end

  local has_order_replaced_rank_price = buffer(offset + index - 63, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0100) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.size

  end

  local has_order_replaced_display_price = buffer(offset + index - 71, 1):uint()

  if bit.band(order_replaced_presence_bits, 0x0200) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_replaced_display_price.size

  end

  return index
end

-- Display: Order Replaced Message
txse_txseequities_seed_rake_v1_0.order_replaced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Replaced Message
txse_txseequities_seed_rake_v1_0.order_replaced_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Replaced Presence Bits: Struct of 11 fields
  index, order_replaced_presence_bits = txse_txseequities_seed_rake_v1_0.order_replaced_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Replaced Bit Fields: Struct of 6 fields
  index, order_replaced_bit_fields = txse_txseequities_seed_rake_v1_0.order_replaced_bit_fields.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int
  index, leaves_qty = txse_txseequities_seed_rake_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Order Replaced Price
  local order_replaced_price = nil

  local order_replaced_price_exists = bit.band(order_replaced_presence_bits, 0x0001) == 1

  if order_replaced_price_exists then
    index, order_replaced_price = txse_txseequities_seed_rake_v1_0.order_replaced_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Replaced Order Qty
  local order_replaced_order_qty = nil

  local order_replaced_order_qty_exists = bit.band(order_replaced_presence_bits, 0x0002) == 1

  if order_replaced_order_qty_exists then
    index, order_replaced_order_qty = txse_txseequities_seed_rake_v1_0.order_replaced_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Replaced Max Floor Qty
  local order_replaced_max_floor_qty = nil

  local order_replaced_max_floor_qty_exists = bit.band(order_replaced_presence_bits, 0x0004) == 1

  if order_replaced_max_floor_qty_exists then
    index, order_replaced_max_floor_qty = txse_txseequities_seed_rake_v1_0.order_replaced_max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Order Replaced Self Match Instruction
  local order_replaced_self_match_instruction = nil

  local order_replaced_self_match_instruction_exists = bit.band(order_replaced_presence_bits, 0x0010) == 1

  if order_replaced_self_match_instruction_exists then
    index, order_replaced_self_match_instruction = txse_txseequities_seed_rake_v1_0.order_replaced_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Replaced Price Slide Instruction
  local order_replaced_price_slide_instruction = nil

  local order_replaced_price_slide_instruction_exists = bit.band(order_replaced_presence_bits, 0x0020) == 1

  if order_replaced_price_slide_instruction_exists then
    index, order_replaced_price_slide_instruction = txse_txseequities_seed_rake_v1_0.order_replaced_price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Replaced Reference Price Target
  local order_replaced_reference_price_target = nil

  local order_replaced_reference_price_target_exists = bit.band(order_replaced_presence_bits, 0x0040) == 1

  if order_replaced_reference_price_target_exists then
    index, order_replaced_reference_price_target = txse_txseequities_seed_rake_v1_0.order_replaced_reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Replaced Locate Broker
  local order_replaced_locate_broker = nil

  local order_replaced_locate_broker_exists = bit.band(order_replaced_presence_bits, 0x0080) == 1

  if order_replaced_locate_broker_exists then
    index, order_replaced_locate_broker = txse_txseequities_seed_rake_v1_0.order_replaced_locate_broker.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Replaced Rank Price
  local order_replaced_rank_price = nil

  local order_replaced_rank_price_exists = bit.band(order_replaced_presence_bits, 0x0100) == 1

  if order_replaced_rank_price_exists then
    index, order_replaced_rank_price = txse_txseequities_seed_rake_v1_0.order_replaced_rank_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Order Replaced Display Price
  local order_replaced_display_price = nil

  local order_replaced_display_price_exists = bit.band(order_replaced_presence_bits, 0x0200) == 1

  if order_replaced_display_price_exists then
    index, order_replaced_display_price = txse_txseequities_seed_rake_v1_0.order_replaced_display_price.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Replaced Message
txse_txseequities_seed_rake_v1_0.order_replaced_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_replaced_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.order_replaced_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.order_replaced_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.order_replaced_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields = {}

-- Size: Modify Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.size = 1

-- Display: Modify Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_4, range, value)
end

-- Dissect: Modify Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_bit_fields, range, display)

  if show.modify_rejected_bit_fields then
    txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits = {}

-- Size: Modify Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.size = 1

-- Display: Modify Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Modify Rejected Order Qty flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Modify Rejected Order Qty"
  end
  -- Is Has Modify Rejected Bit Fields flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Modify Rejected Bit Fields"
  end
  -- Is Has Modify Rejected Locate Broker flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Modify Rejected Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Has Modify Rejected Order Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_rejected_order_qty, range, value)

  -- Has Modify Rejected Bit Fields: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_rejected_bit_fields, range, value)

  -- Has Modify Rejected Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_rejected_locate_broker, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5, range, value)
end

-- Dissect: Modify Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_presence_bits, range, display)

  if show.modify_rejected_presence_bits then
    txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Rejected Message
txse_txseequities_seed_rake_v1_0.modify_rejected_message = {}

-- Calculate size of: Modify Rejected Message
txse_txseequities_seed_rake_v1_0.modify_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.modify_rejected_reason.size

  local has_modify_rejected_order_qty = buffer(offset + index - 25, 1):uint()

  if bit.band(modify_rejected_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty.size

  end

  index = index + txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.size

  local has_modify_rejected_locate_broker = buffer(offset + index - 30, 1):uint()

  if bit.band(modify_rejected_presence_bits, 0x04) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker.size

  end

  return index
end

-- Display: Modify Rejected Message
txse_txseequities_seed_rake_v1_0.modify_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Rejected Message
txse_txseequities_seed_rake_v1_0.modify_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Modify Rejected Presence Bits: Struct of 4 fields
  index, modify_rejected_presence_bits = txse_txseequities_seed_rake_v1_0.modify_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Modify Rejected Reason: Enum
  index, modify_rejected_reason = txse_txseequities_seed_rake_v1_0.modify_rejected_reason.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Rejected Order Qty
  local modify_rejected_order_qty = nil

  local modify_rejected_order_qty_exists = bit.band(modify_rejected_presence_bits, 0x01) == 1

  if modify_rejected_order_qty_exists then
    index, modify_rejected_order_qty = txse_txseequities_seed_rake_v1_0.modify_rejected_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Modify Rejected Bit Fields: Struct of 3 fields
  index, modify_rejected_bit_fields = txse_txseequities_seed_rake_v1_0.modify_rejected_bit_fields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Rejected Locate Broker
  local modify_rejected_locate_broker = nil

  local modify_rejected_locate_broker_exists = bit.band(modify_rejected_presence_bits, 0x04) == 1

  if modify_rejected_locate_broker_exists then
    index, modify_rejected_locate_broker = txse_txseequities_seed_rake_v1_0.modify_rejected_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Rejected Message
txse_txseequities_seed_rake_v1_0.modify_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_rejected_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.modify_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.modify_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.modify_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Modified Bit Fields
txse_txseequities_seed_rake_v1_0.order_modified_bit_fields = {}

-- Size: Order Modified Bit Fields
txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.size = 1

-- Display: Order Modified Bit Fields
txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Modified Bit Fields
txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_4, range, value)
end

-- Dissect: Order Modified Bit Fields
txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_bit_fields, range, display)

  if show.order_modified_bit_fields then
    txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modified Presence Bits
txse_txseequities_seed_rake_v1_0.order_modified_presence_bits = {}

-- Size: Order Modified Presence Bits
txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.size = 1

-- Display: Order Modified Presence Bits
txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Order Modified Order Qty flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Order Modified Order Qty"
  end
  -- Is Has Order Modified Bit Fields flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Order Modified Bit Fields"
  end
  -- Is Has Order Modified Locate Broker flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Order Modified Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Order Modified Presence Bits
txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.bits = function(range, value, packet, parent)

  -- Has Order Modified Order Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_modified_order_qty, range, value)

  -- Has Order Modified Bit Fields: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_modified_bit_fields, range, value)

  -- Has Order Modified Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_order_modified_locate_broker, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5, range, value)
end

-- Dissect: Order Modified Presence Bits
txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_presence_bits, range, display)

  if show.order_modified_presence_bits then
    txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Order Modified Message
txse_txseequities_seed_rake_v1_0.order_modified_message = {}

-- Calculate size of: Order Modified Message
txse_txseequities_seed_rake_v1_0.order_modified_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.order_id.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.leaves_qty.size

  local has_order_modified_order_qty = buffer(offset + index - 36, 1):uint()

  if bit.band(order_modified_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_modified_order_qty.size

  end

  index = index + txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.size

  local has_order_modified_locate_broker = buffer(offset + index - 41, 1):uint()

  if bit.band(order_modified_presence_bits, 0x04) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.order_modified_locate_broker.size

  end

  return index
end

-- Display: Order Modified Message
txse_txseequities_seed_rake_v1_0.order_modified_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Modified Message
txse_txseequities_seed_rake_v1_0.order_modified_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Modified Presence Bits: Struct of 4 fields
  index, order_modified_presence_bits = txse_txseequities_seed_rake_v1_0.order_modified_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Leaves Qty: Int
  index, leaves_qty = txse_txseequities_seed_rake_v1_0.leaves_qty.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Order Modified Order Qty
  local order_modified_order_qty = nil

  local order_modified_order_qty_exists = bit.band(order_modified_presence_bits, 0x01) == 1

  if order_modified_order_qty_exists then
    index, order_modified_order_qty = txse_txseequities_seed_rake_v1_0.order_modified_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Order Modified Bit Fields: Struct of 3 fields
  index, order_modified_bit_fields = txse_txseequities_seed_rake_v1_0.order_modified_bit_fields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Order Modified Locate Broker
  local order_modified_locate_broker = nil

  local order_modified_locate_broker_exists = bit.band(order_modified_presence_bits, 0x04) == 1

  if order_modified_locate_broker_exists then
    index, order_modified_locate_broker = txse_txseequities_seed_rake_v1_0.order_modified_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Order Modified Message
txse_txseequities_seed_rake_v1_0.order_modified_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_modified_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.order_modified_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.order_modified_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.order_modified_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.cancel_rejected_message = {}

-- Size: Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.cancel_rejected_message.size =
  txse_txseequities_seed_rake_v1_0.transact_time.size + 
  txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size + 
  txse_txseequities_seed_rake_v1_0.cancel_rejected_reason.size

-- Display: Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.cancel_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.cancel_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Rejected Reason: Enum
  index, cancel_rejected_reason = txse_txseequities_seed_rake_v1_0.cancel_rejected_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Rejected Message
txse_txseequities_seed_rake_v1_0.cancel_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_rejected_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.cancel_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.cancel_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.cancel_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Canceled Message
txse_txseequities_seed_rake_v1_0.order_canceled_message = {}

-- Size: Order Canceled Message
txse_txseequities_seed_rake_v1_0.order_canceled_message.size =
  txse_txseequities_seed_rake_v1_0.transact_time.size + 
  txse_txseequities_seed_rake_v1_0.order_id.size + 
  txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size + 
  txse_txseequities_seed_rake_v1_0.cancel_reason.size

-- Display: Order Canceled Message
txse_txseequities_seed_rake_v1_0.order_canceled_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Canceled Message
txse_txseequities_seed_rake_v1_0.order_canceled_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Cancel Reason: Enum
  index, cancel_reason = txse_txseequities_seed_rake_v1_0.cancel_reason.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Canceled Message
txse_txseequities_seed_rake_v1_0.order_canceled_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_canceled_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.order_canceled_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.order_canceled_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.order_canceled_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields = {}

-- Size: Market Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.size = 2

-- Display: Market Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 7 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_capacity, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5, range, value)
end

-- Dissect: Market Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_bit_fields, range, display)

  if show.market_order_rejected_bit_fields then
    txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits = {}

-- Size: Market Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.size = 2

-- Display: Market Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Scope flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Market Order Rejected Self Match Instruction flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Has Market Order Rejected Self Match Instruction"
  end
  -- Is Has Market Order Rejected User Data flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Has Market Order Rejected User Data"
  end
  -- Is Has Market Order Rejected Mpid flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Has Market Order Rejected Mpid"
  end
  -- Is Has Market Order Rejected Member Group flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Has Market Order Rejected Member Group"
  end
  -- Is Has Market Order Rejected Locate Broker flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Has Market Order Rejected Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Market Order Rejected Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_self_match_instruction, range, value)

  -- Has Market Order Rejected User Data: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_user_data, range, value)

  -- Has Market Order Rejected Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_mpid, range, value)

  -- Has Market Order Rejected Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_member_group, range, value)

  -- Has Market Order Rejected Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_rejected_locate_broker, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_10, range, value)
end

-- Dissect: Market Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_presence_bits, range, display)

  if show.market_order_rejected_presence_bits then
    txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Rejected Message
txse_txseequities_seed_rake_v1_0.market_order_rejected_message = {}

-- Calculate size of: Market Order Rejected Message
txse_txseequities_seed_rake_v1_0.market_order_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.order_qty.size

  index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_reason.size

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_market_order_rejected_self_match_instruction = buffer(offset + index - 26, 1):uint()

  if bit.band(market_order_rejected_presence_bits, 0x0002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction.size

  end

  local has_market_order_rejected_user_data = buffer(offset + index - 27, 1):uint()

  if bit.band(market_order_rejected_presence_bits, 0x0004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data.size

  end

  local has_market_order_rejected_mpid = buffer(offset + index - 35, 1):uint()

  if bit.band(market_order_rejected_presence_bits, 0x0008) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid.size

  end

  local has_market_order_rejected_member_group = buffer(offset + index - 39, 1):uint()

  if bit.band(market_order_rejected_presence_bits, 0x0010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group.size

  end

  local has_market_order_rejected_locate_broker = buffer(offset + index - 41, 1):uint()

  if bit.band(market_order_rejected_presence_bits, 0x0020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker.size

  end

  return index
end

-- Display: Market Order Rejected Message
txse_txseequities_seed_rake_v1_0.market_order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Rejected Message
txse_txseequities_seed_rake_v1_0.market_order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Order Rejected Presence Bits: Struct of 7 fields
  index, market_order_rejected_presence_bits = txse_txseequities_seed_rake_v1_0.market_order_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_txseequities_seed_rake_v1_0.order_qty.dissect(buffer, index, packet, parent)

  -- Market Order Rejected Bit Fields: Struct of 5 fields
  index, market_order_rejected_bit_fields = txse_txseequities_seed_rake_v1_0.market_order_rejected_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Market Order Rejected Reason: Enum
  index, market_order_rejected_reason = txse_txseequities_seed_rake_v1_0.market_order_rejected_reason.dissect(buffer, index, packet, parent)

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Market Order Rejected Self Match Instruction
  local market_order_rejected_self_match_instruction = nil

  local market_order_rejected_self_match_instruction_exists = bit.band(market_order_rejected_presence_bits, 0x0002) == 1

  if market_order_rejected_self_match_instruction_exists then
    index, market_order_rejected_self_match_instruction = txse_txseequities_seed_rake_v1_0.market_order_rejected_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Rejected User Data
  local market_order_rejected_user_data = nil

  local market_order_rejected_user_data_exists = bit.band(market_order_rejected_presence_bits, 0x0004) == 1

  if market_order_rejected_user_data_exists then
    index, market_order_rejected_user_data = txse_txseequities_seed_rake_v1_0.market_order_rejected_user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Rejected Mpid
  local market_order_rejected_mpid = nil

  local market_order_rejected_mpid_exists = bit.band(market_order_rejected_presence_bits, 0x0008) == 1

  if market_order_rejected_mpid_exists then
    index, market_order_rejected_mpid = txse_txseequities_seed_rake_v1_0.market_order_rejected_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Rejected Member Group
  local market_order_rejected_member_group = nil

  local market_order_rejected_member_group_exists = bit.band(market_order_rejected_presence_bits, 0x0010) == 1

  if market_order_rejected_member_group_exists then
    index, market_order_rejected_member_group = txse_txseequities_seed_rake_v1_0.market_order_rejected_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Rejected Locate Broker
  local market_order_rejected_locate_broker = nil

  local market_order_rejected_locate_broker_exists = bit.band(market_order_rejected_presence_bits, 0x0020) == 1

  if market_order_rejected_locate_broker_exists then
    index, market_order_rejected_locate_broker = txse_txseequities_seed_rake_v1_0.market_order_rejected_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Order Rejected Message
txse_txseequities_seed_rake_v1_0.market_order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_rejected_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.market_order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.market_order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.market_order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields = {}

-- Size: Market Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.size = 2

-- Display: Market Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 7 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_capacity, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5, range, value)
end

-- Dissect: Market Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_bit_fields, range, display)

  if show.market_order_accepted_bit_fields then
    txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits = {}

-- Size: Market Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.size = 2

-- Display: Market Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Scope flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Market Order Accepted Self Match Instruction flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Has Market Order Accepted Self Match Instruction"
  end
  -- Is Has Market Order Accepted User Data flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Has Market Order Accepted User Data"
  end
  -- Is Has Market Order Accepted Mpid flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Has Market Order Accepted Mpid"
  end
  -- Is Has Market Order Accepted Member Group flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Has Market Order Accepted Member Group"
  end
  -- Is Has Market Order Accepted Locate Broker flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Has Market Order Accepted Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.bits = function(range, value, packet, parent)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Market Order Accepted Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_self_match_instruction, range, value)

  -- Has Market Order Accepted User Data: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_user_data, range, value)

  -- Has Market Order Accepted Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_mpid, range, value)

  -- Has Market Order Accepted Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_member_group, range, value)

  -- Has Market Order Accepted Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_accepted_locate_broker, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_10, range, value)
end

-- Dissect: Market Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_presence_bits, range, display)

  if show.market_order_accepted_presence_bits then
    txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Accepted Message
txse_txseequities_seed_rake_v1_0.market_order_accepted_message = {}

-- Calculate size of: Market Order Accepted Message
txse_txseequities_seed_rake_v1_0.market_order_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.order_id.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.order_qty.size

  index = index + txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_market_order_accepted_self_match_instruction = buffer(offset + index - 33, 1):uint()

  if bit.band(market_order_accepted_presence_bits, 0x0002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction.size

  end

  local has_market_order_accepted_user_data = buffer(offset + index - 34, 1):uint()

  if bit.band(market_order_accepted_presence_bits, 0x0004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data.size

  end

  local has_market_order_accepted_mpid = buffer(offset + index - 42, 1):uint()

  if bit.band(market_order_accepted_presence_bits, 0x0008) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid.size

  end

  local has_market_order_accepted_member_group = buffer(offset + index - 46, 1):uint()

  if bit.band(market_order_accepted_presence_bits, 0x0010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group.size

  end

  local has_market_order_accepted_locate_broker = buffer(offset + index - 48, 1):uint()

  if bit.band(market_order_accepted_presence_bits, 0x0020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker.size

  end

  return index
end

-- Display: Market Order Accepted Message
txse_txseequities_seed_rake_v1_0.market_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Accepted Message
txse_txseequities_seed_rake_v1_0.market_order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Order Accepted Presence Bits: Struct of 7 fields
  index, market_order_accepted_presence_bits = txse_txseequities_seed_rake_v1_0.market_order_accepted_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_txseequities_seed_rake_v1_0.order_qty.dissect(buffer, index, packet, parent)

  -- Market Order Accepted Bit Fields: Struct of 5 fields
  index, market_order_accepted_bit_fields = txse_txseequities_seed_rake_v1_0.market_order_accepted_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Market Order Accepted Self Match Instruction
  local market_order_accepted_self_match_instruction = nil

  local market_order_accepted_self_match_instruction_exists = bit.band(market_order_accepted_presence_bits, 0x0002) == 1

  if market_order_accepted_self_match_instruction_exists then
    index, market_order_accepted_self_match_instruction = txse_txseequities_seed_rake_v1_0.market_order_accepted_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Accepted User Data
  local market_order_accepted_user_data = nil

  local market_order_accepted_user_data_exists = bit.band(market_order_accepted_presence_bits, 0x0004) == 1

  if market_order_accepted_user_data_exists then
    index, market_order_accepted_user_data = txse_txseequities_seed_rake_v1_0.market_order_accepted_user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Accepted Mpid
  local market_order_accepted_mpid = nil

  local market_order_accepted_mpid_exists = bit.band(market_order_accepted_presence_bits, 0x0008) == 1

  if market_order_accepted_mpid_exists then
    index, market_order_accepted_mpid = txse_txseequities_seed_rake_v1_0.market_order_accepted_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Accepted Member Group
  local market_order_accepted_member_group = nil

  local market_order_accepted_member_group_exists = bit.band(market_order_accepted_presence_bits, 0x0010) == 1

  if market_order_accepted_member_group_exists then
    index, market_order_accepted_member_group = txse_txseequities_seed_rake_v1_0.market_order_accepted_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Accepted Locate Broker
  local market_order_accepted_locate_broker = nil

  local market_order_accepted_locate_broker_exists = bit.band(market_order_accepted_presence_bits, 0x0020) == 1

  if market_order_accepted_locate_broker_exists then
    index, market_order_accepted_locate_broker = txse_txseequities_seed_rake_v1_0.market_order_accepted_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Order Accepted Message
txse_txseequities_seed_rake_v1_0.market_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_accepted_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.market_order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.market_order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.market_order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields = {}

-- Size: Limit Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.size = 4

-- Display: Limit Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    flags[#flags + 1] = "Is Iso"
  end
  -- Is Is Hidden flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    flags[#flags + 1] = "Is Hidden"
  end
  -- Is Is Post Only flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    flags[#flags + 1] = "Is Post Only"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    flags[#flags + 1] = "Cancel At Entry If Crossed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Limit Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 7 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_capacity, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_iso, range, value)

  -- Is Hidden: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_hidden, range, value)

  -- Is Post Only: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_post_only, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 17: 17 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_17, range, value)
end

-- Dissect: Limit Order Rejected Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_bit_fields, range, display)

  if show.limit_order_rejected_bit_fields then
    txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits = {}

-- Size: Limit Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.size = 4

-- Display: Limit Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Limit Order Rejected Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Self Match Instruction"
  end
  -- Is Has Limit Order Rejected Price Slide Instruction flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Price Slide Instruction"
  end
  -- Is Has Limit Order Rejected Min Qty flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Min Qty"
  end
  -- Is Has Limit Order Rejected Max Floor Qty flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Max Floor Qty"
  end
  -- Is Has Limit Order Rejected Max Replenish Qty Range flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Max Replenish Qty Range"
  end
  -- Is Has Limit Order Rejected Max Replenish Time Range flag set?
  if bit.band(value, 0x00000040) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Max Replenish Time Range"
  end
  -- Is Has Limit Order Rejected Reference Price Target flag set?
  if bit.band(value, 0x00000080) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Reference Price Target"
  end
  -- Is Has Limit Order Rejected Expire Time flag set?
  if bit.band(value, 0x00000100) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Expire Time"
  end
  -- Is Has Limit Order Rejected User Data flag set?
  if bit.band(value, 0x00000200) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected User Data"
  end
  -- Is Has Limit Order Rejected Mpid flag set?
  if bit.band(value, 0x00000400) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Mpid"
  end
  -- Is Has Limit Order Rejected Member Group flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Member Group"
  end
  -- Is Has Limit Order Rejected Locate Broker flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Rejected Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Limit Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.bits = function(range, value, packet, parent)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Limit Order Rejected Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_self_match_instruction, range, value)

  -- Has Limit Order Rejected Price Slide Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_price_slide_instruction, range, value)

  -- Has Limit Order Rejected Min Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_min_qty, range, value)

  -- Has Limit Order Rejected Max Floor Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_max_floor_qty, range, value)

  -- Has Limit Order Rejected Max Replenish Qty Range: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_max_replenish_qty_range, range, value)

  -- Has Limit Order Rejected Max Replenish Time Range: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_max_replenish_time_range, range, value)

  -- Has Limit Order Rejected Reference Price Target: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_reference_price_target, range, value)

  -- Has Limit Order Rejected Expire Time: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_expire_time, range, value)

  -- Has Limit Order Rejected User Data: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_user_data, range, value)

  -- Has Limit Order Rejected Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_mpid, range, value)

  -- Has Limit Order Rejected Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_member_group, range, value)

  -- Has Limit Order Rejected Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_rejected_locate_broker, range, value)

  -- Reserved 19: 19 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_19, range, value)
end

-- Dissect: Limit Order Rejected Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_presence_bits, range, display)

  if show.limit_order_rejected_presence_bits then
    txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Rejected Message
txse_txseequities_seed_rake_v1_0.limit_order_rejected_message = {}

-- Calculate size of: Limit Order Rejected Message
txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.order_qty.size

  index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_seed_rake_v1_0.price.size

  index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason.size

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_limit_order_rejected_self_match_instruction = buffer(offset + index - 36, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction.size

  end

  local has_limit_order_rejected_price_slide_instruction = buffer(offset + index - 37, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction.size

  end

  local has_limit_order_rejected_min_qty = buffer(offset + index - 38, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000008) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty.size

  end

  local has_limit_order_rejected_max_floor_qty = buffer(offset + index - 42, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty.size

  end

  local has_limit_order_rejected_max_replenish_qty_range = buffer(offset + index - 46, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range.size

  end

  local has_limit_order_rejected_max_replenish_time_range = buffer(offset + index - 50, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000040) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range.size

  end

  local has_limit_order_rejected_reference_price_target = buffer(offset + index - 58, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000080) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target.size

  end

  local has_limit_order_rejected_expire_time = buffer(offset + index - 60, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000100) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time.size

  end

  local has_limit_order_rejected_user_data = buffer(offset + index - 68, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000200) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data.size

  end

  local has_limit_order_rejected_mpid = buffer(offset + index - 76, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000400) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid.size

  end

  local has_limit_order_rejected_member_group = buffer(offset + index - 80, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00000800) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group.size

  end

  local has_limit_order_rejected_locate_broker = buffer(offset + index - 82, 1):uint()

  if bit.band(limit_order_rejected_presence_bits, 0x00001000) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker.size

  end

  return index
end

-- Display: Limit Order Rejected Message
txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Order Rejected Message
txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Limit Order Rejected Presence Bits: Struct of 14 fields
  index, limit_order_rejected_presence_bits = txse_txseequities_seed_rake_v1_0.limit_order_rejected_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_txseequities_seed_rake_v1_0.order_qty.dissect(buffer, index, packet, parent)

  -- Limit Order Rejected Bit Fields: Struct of 9 fields
  index, limit_order_rejected_bit_fields = txse_txseequities_seed_rake_v1_0.limit_order_rejected_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = txse_txseequities_seed_rake_v1_0.price.dissect(buffer, index, packet, parent)

  -- Limit Order Rejected Reason: Enum
  index, limit_order_rejected_reason = txse_txseequities_seed_rake_v1_0.limit_order_rejected_reason.dissect(buffer, index, packet, parent)

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Limit Order Rejected Self Match Instruction
  local limit_order_rejected_self_match_instruction = nil

  local limit_order_rejected_self_match_instruction_exists = bit.band(limit_order_rejected_presence_bits, 0x00000002) == 1

  if limit_order_rejected_self_match_instruction_exists then
    index, limit_order_rejected_self_match_instruction = txse_txseequities_seed_rake_v1_0.limit_order_rejected_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Price Slide Instruction
  local limit_order_rejected_price_slide_instruction = nil

  local limit_order_rejected_price_slide_instruction_exists = bit.band(limit_order_rejected_presence_bits, 0x00000004) == 1

  if limit_order_rejected_price_slide_instruction_exists then
    index, limit_order_rejected_price_slide_instruction = txse_txseequities_seed_rake_v1_0.limit_order_rejected_price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Min Qty
  local limit_order_rejected_min_qty = nil

  local limit_order_rejected_min_qty_exists = bit.band(limit_order_rejected_presence_bits, 0x00000008) == 1

  if limit_order_rejected_min_qty_exists then
    index, limit_order_rejected_min_qty = txse_txseequities_seed_rake_v1_0.limit_order_rejected_min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Max Floor Qty
  local limit_order_rejected_max_floor_qty = nil

  local limit_order_rejected_max_floor_qty_exists = bit.band(limit_order_rejected_presence_bits, 0x00000010) == 1

  if limit_order_rejected_max_floor_qty_exists then
    index, limit_order_rejected_max_floor_qty = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Max Replenish Qty Range
  local limit_order_rejected_max_replenish_qty_range = nil

  local limit_order_rejected_max_replenish_qty_range_exists = bit.band(limit_order_rejected_presence_bits, 0x00000020) == 1

  if limit_order_rejected_max_replenish_qty_range_exists then
    index, limit_order_rejected_max_replenish_qty_range = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_qty_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Max Replenish Time Range
  local limit_order_rejected_max_replenish_time_range = nil

  local limit_order_rejected_max_replenish_time_range_exists = bit.band(limit_order_rejected_presence_bits, 0x00000040) == 1

  if limit_order_rejected_max_replenish_time_range_exists then
    index, limit_order_rejected_max_replenish_time_range = txse_txseequities_seed_rake_v1_0.limit_order_rejected_max_replenish_time_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Reference Price Target
  local limit_order_rejected_reference_price_target = nil

  local limit_order_rejected_reference_price_target_exists = bit.band(limit_order_rejected_presence_bits, 0x00000080) == 1

  if limit_order_rejected_reference_price_target_exists then
    index, limit_order_rejected_reference_price_target = txse_txseequities_seed_rake_v1_0.limit_order_rejected_reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Expire Time
  local limit_order_rejected_expire_time = nil

  local limit_order_rejected_expire_time_exists = bit.band(limit_order_rejected_presence_bits, 0x00000100) == 1

  if limit_order_rejected_expire_time_exists then
    index, limit_order_rejected_expire_time = txse_txseequities_seed_rake_v1_0.limit_order_rejected_expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected User Data
  local limit_order_rejected_user_data = nil

  local limit_order_rejected_user_data_exists = bit.band(limit_order_rejected_presence_bits, 0x00000200) == 1

  if limit_order_rejected_user_data_exists then
    index, limit_order_rejected_user_data = txse_txseequities_seed_rake_v1_0.limit_order_rejected_user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Mpid
  local limit_order_rejected_mpid = nil

  local limit_order_rejected_mpid_exists = bit.band(limit_order_rejected_presence_bits, 0x00000400) == 1

  if limit_order_rejected_mpid_exists then
    index, limit_order_rejected_mpid = txse_txseequities_seed_rake_v1_0.limit_order_rejected_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Member Group
  local limit_order_rejected_member_group = nil

  local limit_order_rejected_member_group_exists = bit.band(limit_order_rejected_presence_bits, 0x00000800) == 1

  if limit_order_rejected_member_group_exists then
    index, limit_order_rejected_member_group = txse_txseequities_seed_rake_v1_0.limit_order_rejected_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Rejected Locate Broker
  local limit_order_rejected_locate_broker = nil

  local limit_order_rejected_locate_broker_exists = bit.band(limit_order_rejected_presence_bits, 0x00001000) == 1

  if limit_order_rejected_locate_broker_exists then
    index, limit_order_rejected_locate_broker = txse_txseequities_seed_rake_v1_0.limit_order_rejected_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Limit Order Rejected Message
txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_rejected_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields = {}

-- Size: Limit Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.size = 4

-- Display: Limit Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    flags[#flags + 1] = "Is Iso"
  end
  -- Is Is Hidden flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    flags[#flags + 1] = "Is Hidden"
  end
  -- Is Is Post Only flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    flags[#flags + 1] = "Is Post Only"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    flags[#flags + 1] = "Cancel At Entry If Crossed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Limit Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 7 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_capacity, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_iso, range, value)

  -- Is Hidden: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_hidden, range, value)

  -- Is Post Only: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_post_only, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 17: 17 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_17, range, value)
end

-- Dissect: Limit Order Accepted Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_bit_fields, range, display)

  if show.limit_order_accepted_bit_fields then
    txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits = {}

-- Size: Limit Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.size = 4

-- Display: Limit Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Limit Order Accepted Self Match Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Self Match Scope"
  end
  -- Is Has Limit Order Accepted Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Self Match Instruction"
  end
  -- Is Has Limit Order Accepted Price Slide Instruction flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Price Slide Instruction"
  end
  -- Is Has Limit Order Accepted Min Qty flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Min Qty"
  end
  -- Is Has Limit Order Accepted Max Floor Qty flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Max Floor Qty"
  end
  -- Is Has Limit Order Accepted Max Replenish Qty Range flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Max Replenish Qty Range"
  end
  -- Is Has Limit Order Accepted Max Replenish Time Range flag set?
  if bit.band(value, 0x00000040) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Max Replenish Time Range"
  end
  -- Is Has Limit Order Accepted Reference Price Target flag set?
  if bit.band(value, 0x00000080) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Reference Price Target"
  end
  -- Is Has Limit Order Accepted Expire Time flag set?
  if bit.band(value, 0x00000100) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Expire Time"
  end
  -- Is Has Limit Order Accepted User Data flag set?
  if bit.band(value, 0x00000200) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted User Data"
  end
  -- Is Has Limit Order Accepted Mpid flag set?
  if bit.band(value, 0x00000400) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Mpid"
  end
  -- Is Has Limit Order Accepted Member Group flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Member Group"
  end
  -- Is Has Limit Order Accepted Locate Broker flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Locate Broker"
  end
  -- Is Has Limit Order Accepted Rank Price flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Rank Price"
  end
  -- Is Has Limit Order Accepted Display Price flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Accepted Display Price"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Limit Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.bits = function(range, value, packet, parent)

  -- Has Limit Order Accepted Self Match Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_self_match_scope, range, value)

  -- Has Limit Order Accepted Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_self_match_instruction, range, value)

  -- Has Limit Order Accepted Price Slide Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_price_slide_instruction, range, value)

  -- Has Limit Order Accepted Min Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_min_qty, range, value)

  -- Has Limit Order Accepted Max Floor Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_max_floor_qty, range, value)

  -- Has Limit Order Accepted Max Replenish Qty Range: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_max_replenish_qty_range, range, value)

  -- Has Limit Order Accepted Max Replenish Time Range: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_max_replenish_time_range, range, value)

  -- Has Limit Order Accepted Reference Price Target: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_reference_price_target, range, value)

  -- Has Limit Order Accepted Expire Time: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_expire_time, range, value)

  -- Has Limit Order Accepted User Data: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_user_data, range, value)

  -- Has Limit Order Accepted Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_mpid, range, value)

  -- Has Limit Order Accepted Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_member_group, range, value)

  -- Has Limit Order Accepted Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_locate_broker, range, value)

  -- Has Limit Order Accepted Rank Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_rank_price, range, value)

  -- Has Limit Order Accepted Display Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_accepted_display_price, range, value)

  -- Reserved 17: 17 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_17, range, value)
end

-- Dissect: Limit Order Accepted Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_presence_bits, range, display)

  if show.limit_order_accepted_presence_bits then
    txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Accepted Message
txse_txseequities_seed_rake_v1_0.limit_order_accepted_message = {}

-- Calculate size of: Limit Order Accepted Message
txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.order_id.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.order_qty.size

  index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_seed_rake_v1_0.price.size

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_limit_order_accepted_self_match_instruction = buffer(offset + index - 43, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction.size

  end

  local has_limit_order_accepted_price_slide_instruction = buffer(offset + index - 44, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction.size

  end

  local has_limit_order_accepted_min_qty = buffer(offset + index - 45, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000008) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty.size

  end

  local has_limit_order_accepted_max_floor_qty = buffer(offset + index - 49, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty.size

  end

  local has_limit_order_accepted_max_replenish_qty_range = buffer(offset + index - 53, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range.size

  end

  local has_limit_order_accepted_max_replenish_time_range = buffer(offset + index - 57, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000040) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range.size

  end

  local has_limit_order_accepted_reference_price_target = buffer(offset + index - 65, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000080) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target.size

  end

  local has_limit_order_accepted_expire_time = buffer(offset + index - 67, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000100) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time.size

  end

  local has_limit_order_accepted_user_data = buffer(offset + index - 75, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000200) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data.size

  end

  local has_limit_order_accepted_mpid = buffer(offset + index - 83, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000400) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid.size

  end

  local has_limit_order_accepted_member_group = buffer(offset + index - 87, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00000800) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group.size

  end

  local has_limit_order_accepted_locate_broker = buffer(offset + index - 89, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00001000) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker.size

  end

  local has_limit_order_accepted_rank_price = buffer(offset + index - 93, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00002000) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.size

  end

  local has_limit_order_accepted_display_price = buffer(offset + index - 101, 1):uint()

  if bit.band(limit_order_accepted_presence_bits, 0x00004000) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.size

  end

  return index
end

-- Display: Limit Order Accepted Message
txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Order Accepted Message
txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Limit Order Accepted Presence Bits: Struct of 16 fields
  index, limit_order_accepted_presence_bits = txse_txseequities_seed_rake_v1_0.limit_order_accepted_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Order Id: Long
  index, order_id = txse_txseequities_seed_rake_v1_0.order_id.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_txseequities_seed_rake_v1_0.order_qty.dissect(buffer, index, packet, parent)

  -- Limit Order Accepted Bit Fields: Struct of 9 fields
  index, limit_order_accepted_bit_fields = txse_txseequities_seed_rake_v1_0.limit_order_accepted_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = txse_txseequities_seed_rake_v1_0.price.dissect(buffer, index, packet, parent)

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Limit Order Accepted Self Match Instruction
  local limit_order_accepted_self_match_instruction = nil

  local limit_order_accepted_self_match_instruction_exists = bit.band(limit_order_accepted_presence_bits, 0x00000002) == 1

  if limit_order_accepted_self_match_instruction_exists then
    index, limit_order_accepted_self_match_instruction = txse_txseequities_seed_rake_v1_0.limit_order_accepted_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Price Slide Instruction
  local limit_order_accepted_price_slide_instruction = nil

  local limit_order_accepted_price_slide_instruction_exists = bit.band(limit_order_accepted_presence_bits, 0x00000004) == 1

  if limit_order_accepted_price_slide_instruction_exists then
    index, limit_order_accepted_price_slide_instruction = txse_txseequities_seed_rake_v1_0.limit_order_accepted_price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Min Qty
  local limit_order_accepted_min_qty = nil

  local limit_order_accepted_min_qty_exists = bit.band(limit_order_accepted_presence_bits, 0x00000008) == 1

  if limit_order_accepted_min_qty_exists then
    index, limit_order_accepted_min_qty = txse_txseequities_seed_rake_v1_0.limit_order_accepted_min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Max Floor Qty
  local limit_order_accepted_max_floor_qty = nil

  local limit_order_accepted_max_floor_qty_exists = bit.band(limit_order_accepted_presence_bits, 0x00000010) == 1

  if limit_order_accepted_max_floor_qty_exists then
    index, limit_order_accepted_max_floor_qty = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Max Replenish Qty Range
  local limit_order_accepted_max_replenish_qty_range = nil

  local limit_order_accepted_max_replenish_qty_range_exists = bit.band(limit_order_accepted_presence_bits, 0x00000020) == 1

  if limit_order_accepted_max_replenish_qty_range_exists then
    index, limit_order_accepted_max_replenish_qty_range = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_qty_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Max Replenish Time Range
  local limit_order_accepted_max_replenish_time_range = nil

  local limit_order_accepted_max_replenish_time_range_exists = bit.band(limit_order_accepted_presence_bits, 0x00000040) == 1

  if limit_order_accepted_max_replenish_time_range_exists then
    index, limit_order_accepted_max_replenish_time_range = txse_txseequities_seed_rake_v1_0.limit_order_accepted_max_replenish_time_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Reference Price Target
  local limit_order_accepted_reference_price_target = nil

  local limit_order_accepted_reference_price_target_exists = bit.band(limit_order_accepted_presence_bits, 0x00000080) == 1

  if limit_order_accepted_reference_price_target_exists then
    index, limit_order_accepted_reference_price_target = txse_txseequities_seed_rake_v1_0.limit_order_accepted_reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Expire Time
  local limit_order_accepted_expire_time = nil

  local limit_order_accepted_expire_time_exists = bit.band(limit_order_accepted_presence_bits, 0x00000100) == 1

  if limit_order_accepted_expire_time_exists then
    index, limit_order_accepted_expire_time = txse_txseequities_seed_rake_v1_0.limit_order_accepted_expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted User Data
  local limit_order_accepted_user_data = nil

  local limit_order_accepted_user_data_exists = bit.band(limit_order_accepted_presence_bits, 0x00000200) == 1

  if limit_order_accepted_user_data_exists then
    index, limit_order_accepted_user_data = txse_txseequities_seed_rake_v1_0.limit_order_accepted_user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Mpid
  local limit_order_accepted_mpid = nil

  local limit_order_accepted_mpid_exists = bit.band(limit_order_accepted_presence_bits, 0x00000400) == 1

  if limit_order_accepted_mpid_exists then
    index, limit_order_accepted_mpid = txse_txseequities_seed_rake_v1_0.limit_order_accepted_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Member Group
  local limit_order_accepted_member_group = nil

  local limit_order_accepted_member_group_exists = bit.band(limit_order_accepted_presence_bits, 0x00000800) == 1

  if limit_order_accepted_member_group_exists then
    index, limit_order_accepted_member_group = txse_txseequities_seed_rake_v1_0.limit_order_accepted_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Locate Broker
  local limit_order_accepted_locate_broker = nil

  local limit_order_accepted_locate_broker_exists = bit.band(limit_order_accepted_presence_bits, 0x00001000) == 1

  if limit_order_accepted_locate_broker_exists then
    index, limit_order_accepted_locate_broker = txse_txseequities_seed_rake_v1_0.limit_order_accepted_locate_broker.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Rank Price
  local limit_order_accepted_rank_price = nil

  local limit_order_accepted_rank_price_exists = bit.band(limit_order_accepted_presence_bits, 0x00002000) == 1

  if limit_order_accepted_rank_price_exists then
    index, limit_order_accepted_rank_price = txse_txseequities_seed_rake_v1_0.limit_order_accepted_rank_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Accepted Display Price
  local limit_order_accepted_display_price = nil

  local limit_order_accepted_display_price_exists = bit.band(limit_order_accepted_presence_bits, 0x00004000) == 1

  if limit_order_accepted_display_price_exists then
    index, limit_order_accepted_display_price = txse_txseequities_seed_rake_v1_0.limit_order_accepted_display_price.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Limit Order Accepted Message
txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_accepted_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.fields(buffer, offset, packet, parent)
  end
end

-- Symbol Status Presence Bits
txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits = {}

-- Size: Symbol Status Presence Bits
txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.size = 1

-- Display: Symbol Status Presence Bits
txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Symbol Status Operational Halt Reason flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Symbol Status Operational Halt Reason"
  end
  -- Is Has Symbol Status Regulatory Halt Reason flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Symbol Status Regulatory Halt Reason"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Symbol Status Presence Bits
txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.bits = function(range, value, packet, parent)

  -- Has Symbol Status Operational Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_symbol_status_operational_halt_reason, range, value)

  -- Has Symbol Status Regulatory Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_symbol_status_regulatory_halt_reason, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_6, range, value)
end

-- Dissect: Symbol Status Presence Bits
txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_presence_bits, range, display)

  if show.symbol_status_presence_bits then
    txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Symbol Status Message
txse_txseequities_seed_rake_v1_0.symbol_status_message = {}

-- Calculate size of: Symbol Status Message
txse_txseequities_seed_rake_v1_0.symbol_status_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_trading_state.size

  index = index + txse_txseequities_seed_rake_v1_0.short_sale_restriction_state.size

  local has_symbol_status_operational_halt_reason = buffer(offset + index - 12, 1):uint()

  if bit.band(symbol_status_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason.size

  end

  local has_symbol_status_regulatory_halt_reason = buffer(offset + index - 13, 1):uint()

  if bit.band(symbol_status_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason.size

  end

  return index
end

-- Display: Symbol Status Message
txse_txseequities_seed_rake_v1_0.symbol_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Symbol Status Message
txse_txseequities_seed_rake_v1_0.symbol_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Symbol Status Presence Bits: Struct of 3 fields
  index, symbol_status_presence_bits = txse_txseequities_seed_rake_v1_0.symbol_status_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol Trading State: Enum
  index, symbol_trading_state = txse_txseequities_seed_rake_v1_0.symbol_trading_state.dissect(buffer, index, packet, parent)

  -- Short Sale Restriction State: Enum
  index, short_sale_restriction_state = txse_txseequities_seed_rake_v1_0.short_sale_restriction_state.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Symbol Status Operational Halt Reason
  local symbol_status_operational_halt_reason = nil

  local symbol_status_operational_halt_reason_exists = bit.band(symbol_status_presence_bits, 0x01) == 1

  if symbol_status_operational_halt_reason_exists then
    index, symbol_status_operational_halt_reason = txse_txseequities_seed_rake_v1_0.symbol_status_operational_halt_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Symbol Status Regulatory Halt Reason
  local symbol_status_regulatory_halt_reason = nil

  local symbol_status_regulatory_halt_reason_exists = bit.band(symbol_status_presence_bits, 0x02) == 1

  if symbol_status_regulatory_halt_reason_exists then
    index, symbol_status_regulatory_halt_reason = txse_txseequities_seed_rake_v1_0.symbol_status_regulatory_halt_reason.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Symbol Status Message
txse_txseequities_seed_rake_v1_0.symbol_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.symbol_status_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.symbol_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.symbol_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.symbol_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Define Symbol Bit Fields
txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields = {}

-- Size: Define Symbol Bit Fields
txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.size = 1

-- Display: Define Symbol Bit Fields
txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Test flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Is Test"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Define Symbol Bit Fields
txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.bits = function(range, value, packet, parent)

  -- Is Test: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_test, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Define Symbol Bit Fields
txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.define_symbol_bit_fields, range, display)

  if show.define_symbol_bit_fields then
    txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Define Symbol Message
txse_txseequities_seed_rake_v1_0.define_symbol_message = {}

-- Size: Define Symbol Message
txse_txseequities_seed_rake_v1_0.define_symbol_message.size =
  txse_txseequities_seed_rake_v1_0.transact_time.size + 
  txse_txseequities_seed_rake_v1_0.symbol_id.size + 
  txse_txseequities_seed_rake_v1_0.symbol.size + 
  txse_txseequities_seed_rake_v1_0.suffix.size + 
  txse_txseequities_seed_rake_v1_0.matching_engine_id.size + 
  txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.size + 
  txse_txseequities_seed_rake_v1_0.lot_size.size + 
  txse_txseequities_seed_rake_v1_0.listing_market.size

-- Display: Define Symbol Message
txse_txseequities_seed_rake_v1_0.define_symbol_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Define Symbol Message
txse_txseequities_seed_rake_v1_0.define_symbol_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Symbol: Str(8)
  index, symbol = txse_txseequities_seed_rake_v1_0.symbol.dissect(buffer, index, packet, parent)

  -- Suffix: Str(8)
  index, suffix = txse_txseequities_seed_rake_v1_0.suffix.dissect(buffer, index, packet, parent)

  -- Matching Engine Id: Byte
  index, matching_engine_id = txse_txseequities_seed_rake_v1_0.matching_engine_id.dissect(buffer, index, packet, parent)

  -- Define Symbol Bit Fields: Struct of 2 fields
  index, define_symbol_bit_fields = txse_txseequities_seed_rake_v1_0.define_symbol_bit_fields.dissect(buffer, index, packet, parent)

  -- Lot Size: Int
  index, lot_size = txse_txseequities_seed_rake_v1_0.lot_size.dissect(buffer, index, packet, parent)

  -- Listing Market: Enum
  index, listing_market = txse_txseequities_seed_rake_v1_0.listing_market.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Define Symbol Message
txse_txseequities_seed_rake_v1_0.define_symbol_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.define_symbol_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.define_symbol_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.define_symbol_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.define_symbol_message.fields(buffer, offset, packet, parent)
  end
end

-- Trading Session Status Presence Bits
txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits = {}

-- Size: Trading Session Status Presence Bits
txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.size = 1

-- Display: Trading Session Status Presence Bits
txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Trading Session Status Operational Halt Reason flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Trading Session Status Operational Halt Reason"
  end
  -- Is Has Trading Session Status Regulatory Halt Reason flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Trading Session Status Regulatory Halt Reason"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Trading Session Status Presence Bits
txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.bits = function(range, value, packet, parent)

  -- Has Trading Session Status Operational Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_trading_session_status_operational_halt_reason, range, value)

  -- Has Trading Session Status Regulatory Halt Reason: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_trading_session_status_regulatory_halt_reason, range, value)

  -- Reserved 6: 6 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_6, range, value)
end

-- Dissect: Trading Session Status Presence Bits
txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_presence_bits, range, display)

  if show.trading_session_status_presence_bits then
    txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Trading Session Status Message
txse_txseequities_seed_rake_v1_0.trading_session_status_message = {}

-- Calculate size of: Trading Session Status Message
txse_txseequities_seed_rake_v1_0.trading_session_status_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.transact_time.size

  index = index + txse_txseequities_seed_rake_v1_0.market_hours_state.size

  index = index + txse_txseequities_seed_rake_v1_0.session_trading_state.size

  local has_trading_session_status_operational_halt_reason = buffer(offset + index - 10, 1):uint()

  if bit.band(trading_session_status_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason.size

  end

  local has_trading_session_status_regulatory_halt_reason = buffer(offset + index - 11, 1):uint()

  if bit.band(trading_session_status_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason.size

  end

  return index
end

-- Display: Trading Session Status Message
txse_txseequities_seed_rake_v1_0.trading_session_status_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trading Session Status Message
txse_txseequities_seed_rake_v1_0.trading_session_status_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trading Session Status Presence Bits: Struct of 3 fields
  index, trading_session_status_presence_bits = txse_txseequities_seed_rake_v1_0.trading_session_status_presence_bits.dissect(buffer, index, packet, parent)

  -- Transact Time: TimeStamp
  index, transact_time = txse_txseequities_seed_rake_v1_0.transact_time.dissect(buffer, index, packet, parent)

  -- Market Hours State: Enum
  index, market_hours_state = txse_txseequities_seed_rake_v1_0.market_hours_state.dissect(buffer, index, packet, parent)

  -- Session Trading State: Enum
  index, session_trading_state = txse_txseequities_seed_rake_v1_0.session_trading_state.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Trading Session Status Operational Halt Reason
  local trading_session_status_operational_halt_reason = nil

  local trading_session_status_operational_halt_reason_exists = bit.band(trading_session_status_presence_bits, 0x01) == 1

  if trading_session_status_operational_halt_reason_exists then
    index, trading_session_status_operational_halt_reason = txse_txseequities_seed_rake_v1_0.trading_session_status_operational_halt_reason.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Trading Session Status Regulatory Halt Reason
  local trading_session_status_regulatory_halt_reason = nil

  local trading_session_status_regulatory_halt_reason_exists = bit.band(trading_session_status_presence_bits, 0x02) == 1

  if trading_session_status_regulatory_halt_reason_exists then
    index, trading_session_status_regulatory_halt_reason = txse_txseequities_seed_rake_v1_0.trading_session_status_regulatory_halt_reason.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Trading Session Status Message
txse_txseequities_seed_rake_v1_0.trading_session_status_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.trading_session_status_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.trading_session_status_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.trading_session_status_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.trading_session_status_message.fields(buffer, offset, packet, parent)
  end
end

-- Sequenced Message
txse_txseequities_seed_rake_v1_0.sequenced_message = {}

-- Dissect: Sequenced Message
txse_txseequities_seed_rake_v1_0.sequenced_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Trading Session Status Message
  if message_type == 105 then
    return txse_txseequities_seed_rake_v1_0.trading_session_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Define Symbol Message
  if message_type == 115 then
    return txse_txseequities_seed_rake_v1_0.define_symbol_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Symbol Status Message
  if message_type == 121 then
    return txse_txseequities_seed_rake_v1_0.symbol_status_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Order Accepted Message
  if message_type == 73 then
    return txse_txseequities_seed_rake_v1_0.limit_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Limit Order Rejected Message
  if message_type == 85 then
    return txse_txseequities_seed_rake_v1_0.limit_order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Order Accepted Message
  if message_type == 68 then
    return txse_txseequities_seed_rake_v1_0.market_order_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Order Rejected Message
  if message_type == 84 then
    return txse_txseequities_seed_rake_v1_0.market_order_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Canceled Message
  if message_type == 88 then
    return txse_txseequities_seed_rake_v1_0.order_canceled_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Rejected Message
  if message_type == 87 then
    return txse_txseequities_seed_rake_v1_0.cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Modified Message
  if message_type == 89 then
    return txse_txseequities_seed_rake_v1_0.order_modified_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Rejected Message
  if message_type == 78 then
    return txse_txseequities_seed_rake_v1_0.modify_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Replaced Message
  if message_type == 74 then
    return txse_txseequities_seed_rake_v1_0.order_replaced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Rejected Message
  if message_type == 75 then
    return txse_txseequities_seed_rake_v1_0.replace_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Executed Message
  if message_type == 69 then
    return txse_txseequities_seed_rake_v1_0.order_executed_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Restated Message
  if message_type == 70 then
    return txse_txseequities_seed_rake_v1_0.order_restated_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Self Match Prevented Message
  if message_type == 90 then
    return txse_txseequities_seed_rake_v1_0.self_match_prevented_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Accepted Message
  if message_type == 79 then
    return txse_txseequities_seed_rake_v1_0.mass_cancel_accepted_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Rejected Message
  if message_type == 80 then
    return txse_txseequities_seed_rake_v1_0.mass_cancel_rejected_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Result Message
  if message_type == 81 then
    return txse_txseequities_seed_rake_v1_0.mass_cancel_result_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tcp Sequenced Message
txse_txseequities_seed_rake_v1_0.tcp_sequenced_message = {}

-- Read runtime size of: Tcp Sequenced Message
txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  return message_length - 1
end

-- Display: Tcp Sequenced Message
txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Sequenced Message
txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.fields = function(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
  local index = offset

  -- Stream Id: 1 Byte Unsigned Fixed Width Integer
  index, stream_id = txse_txseequities_seed_rake_v1_0.stream_id.dissect(buffer, index, packet, parent)

  -- Message Type: Byte
  index, message_type = txse_txseequities_seed_rake_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Sequenced Message: Runtime Type with 19 branches
  index = txse_txseequities_seed_rake_v1_0.sequenced_message.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Tcp Sequenced Message
txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.dissect = function(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
  local size_of_tcp_sequenced_message = txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.size(buffer, offset)
  local index = offset + size_of_tcp_sequenced_message

  -- Optionally add group/struct element to protocol tree
  if show.tcp_sequenced_message then
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.tcp_sequenced_message, buffer(offset, 0))
    local current = txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_sequenced_message)
    parent:set_len(size_of_tcp_sequenced_message)
    local display = txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_sequenced_message)

    return index
  end
end

-- Logon Response Message
txse_txseequities_seed_rake_v1_0.logon_response_message = {}

-- Size: Logon Response Message
txse_txseequities_seed_rake_v1_0.logon_response_message.size =
  txse_txseequities_seed_rake_v1_0.session.size + 
  txse_txseequities_seed_rake_v1_0.next_sequence_number.size + 
  txse_txseequities_seed_rake_v1_0.highest_known_sequence_number.size + 
  txse_txseequities_seed_rake_v1_0.logon_response_code.size + 
  txse_txseequities_seed_rake_v1_0.number_stream_ids.size + 
  txse_txseequities_seed_rake_v1_0.instance.size

-- Display: Logon Response Message
txse_txseequities_seed_rake_v1_0.logon_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Response Message
txse_txseequities_seed_rake_v1_0.logon_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Long
  index, session = txse_txseequities_seed_rake_v1_0.session.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Long
  index, next_sequence_number = txse_txseequities_seed_rake_v1_0.next_sequence_number.dissect(buffer, index, packet, parent)

  -- Highest Known Sequence Number: Long
  index, highest_known_sequence_number = txse_txseequities_seed_rake_v1_0.highest_known_sequence_number.dissect(buffer, index, packet, parent)

  -- Logon Response Code: Enum
  index, logon_response_code = txse_txseequities_seed_rake_v1_0.logon_response_code.dissect(buffer, index, packet, parent)

  -- Number Stream Ids: Byte
  index, number_stream_ids = txse_txseequities_seed_rake_v1_0.number_stream_ids.dissect(buffer, index, packet, parent)

  -- Instance: Int
  index, instance = txse_txseequities_seed_rake_v1_0.instance.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Response Message
txse_txseequities_seed_rake_v1_0.logon_response_message.dissect = function(buffer, offset, packet, parent)
  if show.logon_response_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.logon_response_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.logon_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.logon_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.logon_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Debug Message
txse_txseequities_seed_rake_v1_0.debug_message = {}

-- Calculate size of: Debug Message
txse_txseequities_seed_rake_v1_0.debug_message.size = function(buffer, offset)
  local index = 0

  -- Parse runtime size of: Text
  index = index + buffer(offset + index - 3, 2):le_uint()

  return index
end

-- Display: Debug Message
txse_txseequities_seed_rake_v1_0.debug_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Debug Message
txse_txseequities_seed_rake_v1_0.debug_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  -- Runtime Size Of: Text
  local size_of_text = message_length - 1

  -- Text: 1 Byte Ascii String
  index, text = txse_txseequities_seed_rake_v1_0.text.dissect(buffer, index, packet, parent, size_of_text)

  return index
end

-- Dissect: Debug Message
txse_txseequities_seed_rake_v1_0.debug_message.dissect = function(buffer, offset, packet, parent)
  if show.debug_message then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.debug_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.debug_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.debug_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.debug_message.fields(buffer, offset, packet, parent)
  end
end

-- Mass Cancel Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields = {}

-- Size: Mass Cancel Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.size = 1

-- Display: Mass Cancel Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Exclude Auction Orders flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Exclude Auction Orders"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Cancel Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.bits = function(range, value, packet, parent)

  -- Exclude Auction Orders: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.exclude_auction_orders, range, value)

  -- Reserved 7: 7 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_7, range, value)
end

-- Dissect: Mass Cancel Bit Fields
txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_bit_fields, range, display)

  if show.mass_cancel_bit_fields then
    txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits = {}

-- Size: Mass Cancel Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.size = 1

-- Display: Mass Cancel Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Mass Cancel Mpid flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Mpid"
  end
  -- Is Has Mass Cancel Sender Comp flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Sender Comp"
  end
  -- Is Has Mass Cancel Member Group flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Member Group"
  end
  -- Is Has Mass Cancel Cl Ord Id flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Has Mass Cancel Cl Ord Id"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Mass Cancel Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.bits = function(range, value, packet, parent)

  -- Has Mass Cancel Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_mpid, range, value)

  -- Has Mass Cancel Sender Comp: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_sender_comp, range, value)

  -- Has Mass Cancel Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_member_group, range, value)

  -- Has Mass Cancel Cl Ord Id: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_mass_cancel_cl_ord_id, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_4, range, value)
end

-- Dissect: Mass Cancel Presence Bits
txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_presence_bits, range, display)

  if show.mass_cancel_presence_bits then
    txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Mass Cancel Message
txse_txseequities_seed_rake_v1_0.mass_cancel_message = {}

-- Calculate size of: Mass Cancel Message
txse_txseequities_seed_rake_v1_0.mass_cancel_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_scope.size

  index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.size

  local has_mass_cancel_mpid = buffer(offset + index - 10, 1):uint()

  if bit.band(mass_cancel_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_mpid.size

  end

  local has_mass_cancel_sender_comp = buffer(offset + index - 14, 1):uint()

  if bit.band(mass_cancel_presence_bits, 0x02) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp.size

  end

  local has_mass_cancel_member_group = buffer(offset + index - 22, 1):uint()

  if bit.band(mass_cancel_presence_bits, 0x04) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_member_group.size

  end

  local has_mass_cancel_cl_ord_id = buffer(offset + index - 24, 1):uint()

  if bit.band(mass_cancel_presence_bits, 0x08) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id.size

  end

  return index
end

-- Display: Mass Cancel Message
txse_txseequities_seed_rake_v1_0.mass_cancel_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mass Cancel Message
txse_txseequities_seed_rake_v1_0.mass_cancel_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Mass Cancel Presence Bits: Struct of 5 fields
  index, mass_cancel_presence_bits = txse_txseequities_seed_rake_v1_0.mass_cancel_presence_bits.dissect(buffer, index, packet, parent)

  -- Mass Cancel Request Id: Long
  index, mass_cancel_request_id = txse_txseequities_seed_rake_v1_0.mass_cancel_request_id.dissect(buffer, index, packet, parent)

  -- Mass Cancel Scope: Enum
  index, mass_cancel_scope = txse_txseequities_seed_rake_v1_0.mass_cancel_scope.dissect(buffer, index, packet, parent)

  -- Mass Cancel Bit Fields: Struct of 2 fields
  index, mass_cancel_bit_fields = txse_txseequities_seed_rake_v1_0.mass_cancel_bit_fields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Mass Cancel Mpid
  local mass_cancel_mpid = nil

  local mass_cancel_mpid_exists = bit.band(mass_cancel_presence_bits, 0x01) == 1

  if mass_cancel_mpid_exists then
    index, mass_cancel_mpid = txse_txseequities_seed_rake_v1_0.mass_cancel_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Sender Comp
  local mass_cancel_sender_comp = nil

  local mass_cancel_sender_comp_exists = bit.band(mass_cancel_presence_bits, 0x02) == 1

  if mass_cancel_sender_comp_exists then
    index, mass_cancel_sender_comp = txse_txseequities_seed_rake_v1_0.mass_cancel_sender_comp.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Member Group
  local mass_cancel_member_group = nil

  local mass_cancel_member_group_exists = bit.band(mass_cancel_presence_bits, 0x04) == 1

  if mass_cancel_member_group_exists then
    index, mass_cancel_member_group = txse_txseequities_seed_rake_v1_0.mass_cancel_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Mass Cancel Cl Ord Id
  local mass_cancel_cl_ord_id = nil

  local mass_cancel_cl_ord_id_exists = bit.band(mass_cancel_presence_bits, 0x08) == 1

  if mass_cancel_cl_ord_id_exists then
    index, mass_cancel_cl_ord_id = txse_txseequities_seed_rake_v1_0.mass_cancel_cl_ord_id.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Mass Cancel Message
txse_txseequities_seed_rake_v1_0.mass_cancel_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.mass_cancel_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.mass_cancel_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.mass_cancel_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.mass_cancel_message.fields(buffer, offset, packet, parent)
  end
end

-- Replace Order Bit Fields
txse_txseequities_seed_rake_v1_0.replace_order_bit_fields = {}

-- Size: Replace Order Bit Fields
txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.size = 2

-- Display: Replace Order Bit Fields
txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Is Iso"
  end
  -- Is Is Post Only flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Is Post Only"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Cancel At Entry If Crossed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Replace Order Bit Fields
txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_iso, range, value)

  -- Is Post Only: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_post_only, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 9: 9 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_9, range, value)
end

-- Dissect: Replace Order Bit Fields
txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_bit_fields, range, display)

  if show.replace_order_bit_fields then
    txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Replace Order Presence Bits
txse_txseequities_seed_rake_v1_0.replace_order_presence_bits = {}

-- Size: Replace Order Presence Bits
txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.size = 2

-- Display: Replace Order Presence Bits
txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Replace Order Price flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Has Replace Order Price"
  end
  -- Is Has Replace Order Order Qty flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Has Replace Order Order Qty"
  end
  -- Is Has Replace Order Max Floor Qty flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Has Replace Order Max Floor Qty"
  end
  -- Is Scope flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Replace Order Self Match Instruction flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Has Replace Order Self Match Instruction"
  end
  -- Is Has Replace Order Price Slide Instruction flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Has Replace Order Price Slide Instruction"
  end
  -- Is Has Replace Order Reference Price Target flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Has Replace Order Reference Price Target"
  end
  -- Is Has Replace Order Locate Broker flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Has Replace Order Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Replace Order Presence Bits
txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.bits = function(range, value, packet, parent)

  -- Has Replace Order Price: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_price, range, value)

  -- Has Replace Order Order Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_order_qty, range, value)

  -- Has Replace Order Max Floor Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_max_floor_qty, range, value)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Replace Order Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_self_match_instruction, range, value)

  -- Has Replace Order Price Slide Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_price_slide_instruction, range, value)

  -- Has Replace Order Reference Price Target: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_reference_price_target, range, value)

  -- Has Replace Order Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_replace_order_locate_broker, range, value)

  -- Reserved 8: 8 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_8, range, value)
end

-- Dissect: Replace Order Presence Bits
txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_presence_bits, range, display)

  if show.replace_order_presence_bits then
    txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Replace Order Message
txse_txseequities_seed_rake_v1_0.replace_order_message = {}

-- Calculate size of: Replace Order Message
txse_txseequities_seed_rake_v1_0.replace_order_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.size

  local has_replace_order_price = buffer(offset + index - 18, 1):uint()

  if bit.band(replace_order_presence_bits, 0x0001) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_order_price.size

  end

  local has_replace_order_order_qty = buffer(offset + index - 26, 1):uint()

  if bit.band(replace_order_presence_bits, 0x0002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_order_order_qty.size

  end

  local has_replace_order_max_floor_qty = buffer(offset + index - 30, 1):uint()

  if bit.band(replace_order_presence_bits, 0x0004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty.size

  end

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_replace_order_self_match_instruction = buffer(offset + index - 35, 1):uint()

  if bit.band(replace_order_presence_bits, 0x0010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction.size

  end

  local has_replace_order_price_slide_instruction = buffer(offset + index - 36, 1):uint()

  if bit.band(replace_order_presence_bits, 0x0020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction.size

  end

  local has_replace_order_reference_price_target = buffer(offset + index - 37, 1):uint()

  if bit.band(replace_order_presence_bits, 0x0040) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target.size

  end

  local has_replace_order_locate_broker = buffer(offset + index - 39, 1):uint()

  if bit.band(replace_order_presence_bits, 0x0080) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.replace_order_locate_broker.size

  end

  return index
end

-- Display: Replace Order Message
txse_txseequities_seed_rake_v1_0.replace_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Replace Order Message
txse_txseequities_seed_rake_v1_0.replace_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Replace Order Presence Bits: Struct of 9 fields
  index, replace_order_presence_bits = txse_txseequities_seed_rake_v1_0.replace_order_presence_bits.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Replace Order Bit Fields: Struct of 6 fields
  index, replace_order_bit_fields = txse_txseequities_seed_rake_v1_0.replace_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Replace Order Price
  local replace_order_price = nil

  local replace_order_price_exists = bit.band(replace_order_presence_bits, 0x0001) == 1

  if replace_order_price_exists then
    index, replace_order_price = txse_txseequities_seed_rake_v1_0.replace_order_price.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Order Order Qty
  local replace_order_order_qty = nil

  local replace_order_order_qty_exists = bit.band(replace_order_presence_bits, 0x0002) == 1

  if replace_order_order_qty_exists then
    index, replace_order_order_qty = txse_txseequities_seed_rake_v1_0.replace_order_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Order Max Floor Qty
  local replace_order_max_floor_qty = nil

  local replace_order_max_floor_qty_exists = bit.band(replace_order_presence_bits, 0x0004) == 1

  if replace_order_max_floor_qty_exists then
    index, replace_order_max_floor_qty = txse_txseequities_seed_rake_v1_0.replace_order_max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Replace Order Self Match Instruction
  local replace_order_self_match_instruction = nil

  local replace_order_self_match_instruction_exists = bit.band(replace_order_presence_bits, 0x0010) == 1

  if replace_order_self_match_instruction_exists then
    index, replace_order_self_match_instruction = txse_txseequities_seed_rake_v1_0.replace_order_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Order Price Slide Instruction
  local replace_order_price_slide_instruction = nil

  local replace_order_price_slide_instruction_exists = bit.band(replace_order_presence_bits, 0x0020) == 1

  if replace_order_price_slide_instruction_exists then
    index, replace_order_price_slide_instruction = txse_txseequities_seed_rake_v1_0.replace_order_price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Order Reference Price Target
  local replace_order_reference_price_target = nil

  local replace_order_reference_price_target_exists = bit.band(replace_order_presence_bits, 0x0040) == 1

  if replace_order_reference_price_target_exists then
    index, replace_order_reference_price_target = txse_txseequities_seed_rake_v1_0.replace_order_reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Replace Order Locate Broker
  local replace_order_locate_broker = nil

  local replace_order_locate_broker_exists = bit.band(replace_order_presence_bits, 0x0080) == 1

  if replace_order_locate_broker_exists then
    index, replace_order_locate_broker = txse_txseequities_seed_rake_v1_0.replace_order_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Replace Order Message
txse_txseequities_seed_rake_v1_0.replace_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.replace_order_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.replace_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.replace_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.replace_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Modify Order Bit Fields
txse_txseequities_seed_rake_v1_0.modify_order_bit_fields = {}

-- Size: Modify Order Bit Fields
txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.size = 1

-- Display: Modify Order Bit Fields
txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x08) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Bit Fields
txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Reserved 4: 4 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_4, range, value)
end

-- Dissect: Modify Order Bit Fields
txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_bit_fields, range, display)

  if show.modify_order_bit_fields then
    txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Presence Bits
txse_txseequities_seed_rake_v1_0.modify_order_presence_bits = {}

-- Size: Modify Order Presence Bits
txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.size = 1

-- Display: Modify Order Presence Bits
txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Has Modify Order Order Qty flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Has Modify Order Order Qty"
  end
  -- Is Has Modify Order Bit Fields flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Has Modify Order Bit Fields"
  end
  -- Is Has Modify Order Locate Broker flag set?
  if bit.band(value, 0x04) ~= 0 then
    flags[#flags + 1] = "Has Modify Order Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Modify Order Presence Bits
txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.bits = function(range, value, packet, parent)

  -- Has Modify Order Order Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_order_order_qty, range, value)

  -- Has Modify Order Bit Fields: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_order_bit_fields, range, value)

  -- Has Modify Order Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_modify_order_locate_broker, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5, range, value)
end

-- Dissect: Modify Order Presence Bits
txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_presence_bits, range, display)

  if show.modify_order_presence_bits then
    txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Modify Order Message
txse_txseequities_seed_rake_v1_0.modify_order_message = {}

-- Calculate size of: Modify Order Message
txse_txseequities_seed_rake_v1_0.modify_order_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size

  local has_modify_order_order_qty = buffer(offset + index - 16, 1):uint()

  if bit.band(modify_order_presence_bits, 0x01) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.modify_order_order_qty.size

  end

  index = index + txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.size

  local has_modify_order_locate_broker = buffer(offset + index - 21, 1):uint()

  if bit.band(modify_order_presence_bits, 0x04) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.modify_order_locate_broker.size

  end

  return index
end

-- Display: Modify Order Message
txse_txseequities_seed_rake_v1_0.modify_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Modify Order Message
txse_txseequities_seed_rake_v1_0.modify_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Modify Order Presence Bits: Struct of 4 fields
  index, modify_order_presence_bits = txse_txseequities_seed_rake_v1_0.modify_order_presence_bits.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Order Order Qty
  local modify_order_order_qty = nil

  local modify_order_order_qty_exists = bit.band(modify_order_presence_bits, 0x01) == 1

  if modify_order_order_qty_exists then
    index, modify_order_order_qty = txse_txseequities_seed_rake_v1_0.modify_order_order_qty.dissect(buffer, index, packet, parent)
  end

  -- Modify Order Bit Fields: Struct of 3 fields
  index, modify_order_bit_fields = txse_txseequities_seed_rake_v1_0.modify_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Modify Order Locate Broker
  local modify_order_locate_broker = nil

  local modify_order_locate_broker_exists = bit.band(modify_order_presence_bits, 0x04) == 1

  if modify_order_locate_broker_exists then
    index, modify_order_locate_broker = txse_txseequities_seed_rake_v1_0.modify_order_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Modify Order Message
txse_txseequities_seed_rake_v1_0.modify_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.modify_order_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.modify_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.modify_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.modify_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Cancel Order Message
txse_txseequities_seed_rake_v1_0.cancel_order_message = {}

-- Size: Cancel Order Message
txse_txseequities_seed_rake_v1_0.cancel_order_message.size =
  txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.size

-- Display: Cancel Order Message
txse_txseequities_seed_rake_v1_0.cancel_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cancel Order Message
txse_txseequities_seed_rake_v1_0.cancel_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Orig Cl Ord Id: Long
  index, orig_cl_ord_id = txse_txseequities_seed_rake_v1_0.orig_cl_ord_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Cancel Order Message
txse_txseequities_seed_rake_v1_0.cancel_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_order_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.cancel_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.cancel_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.cancel_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Market Order Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_bit_fields = {}

-- Size: Market Order Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_bit_fields.size = 2

-- Display: Market Order Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Order Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 7 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_capacity, range, value)

  -- Reserved 5: 5 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_5, range, value)
end

-- Dissect: Market Order Bit Fields
txse_txseequities_seed_rake_v1_0.market_order_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.market_order_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.market_order_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_bit_fields, range, display)

  if show.market_order_bit_fields then
    txse_txseequities_seed_rake_v1_0.market_order_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_presence_bits = {}

-- Size: Market Order Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_presence_bits.size = 2

-- Display: Market Order Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Scope flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Market Order Self Match Instruction flag set?
  if bit.band(value, 0x0002) ~= 0 then
    flags[#flags + 1] = "Has Market Order Self Match Instruction"
  end
  -- Is Has Market Order User Data flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Has Market Order User Data"
  end
  -- Is Has Market Order Mpid flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Has Market Order Mpid"
  end
  -- Is Has Market Order Member Group flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Has Market Order Member Group"
  end
  -- Is Has Market Order Locate Broker flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Has Market Order Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Market Order Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_presence_bits.bits = function(range, value, packet, parent)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Market Order Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_self_match_instruction, range, value)

  -- Has Market Order User Data: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_user_data, range, value)

  -- Has Market Order Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_mpid, range, value)

  -- Has Market Order Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_member_group, range, value)

  -- Has Market Order Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_market_order_locate_broker, range, value)

  -- Reserved 10: 10 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_10, range, value)
end

-- Dissect: Market Order Presence Bits
txse_txseequities_seed_rake_v1_0.market_order_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.market_order_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.market_order_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_presence_bits, range, display)

  if show.market_order_presence_bits then
    txse_txseequities_seed_rake_v1_0.market_order_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Market Order Message
txse_txseequities_seed_rake_v1_0.market_order_message = {}

-- Calculate size of: Market Order Message
txse_txseequities_seed_rake_v1_0.market_order_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.market_order_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.order_qty.size

  index = index + txse_txseequities_seed_rake_v1_0.market_order_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_market_order_self_match_instruction = buffer(offset + index - 17, 1):uint()

  if bit.band(market_order_presence_bits, 0x0002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction.size

  end

  local has_market_order_user_data = buffer(offset + index - 18, 1):uint()

  if bit.band(market_order_presence_bits, 0x0004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_user_data.size

  end

  local has_market_order_mpid = buffer(offset + index - 26, 1):uint()

  if bit.band(market_order_presence_bits, 0x0008) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_mpid.size

  end

  local has_market_order_member_group = buffer(offset + index - 30, 1):uint()

  if bit.band(market_order_presence_bits, 0x0010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_member_group.size

  end

  local has_market_order_locate_broker = buffer(offset + index - 32, 1):uint()

  if bit.band(market_order_presence_bits, 0x0020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.market_order_locate_broker.size

  end

  return index
end

-- Display: Market Order Message
txse_txseequities_seed_rake_v1_0.market_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Order Message
txse_txseequities_seed_rake_v1_0.market_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Order Presence Bits: Struct of 7 fields
  index, market_order_presence_bits = txse_txseequities_seed_rake_v1_0.market_order_presence_bits.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_txseequities_seed_rake_v1_0.order_qty.dissect(buffer, index, packet, parent)

  -- Market Order Bit Fields: Struct of 5 fields
  index, market_order_bit_fields = txse_txseequities_seed_rake_v1_0.market_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Market Order Self Match Instruction
  local market_order_self_match_instruction = nil

  local market_order_self_match_instruction_exists = bit.band(market_order_presence_bits, 0x0002) == 1

  if market_order_self_match_instruction_exists then
    index, market_order_self_match_instruction = txse_txseequities_seed_rake_v1_0.market_order_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order User Data
  local market_order_user_data = nil

  local market_order_user_data_exists = bit.band(market_order_presence_bits, 0x0004) == 1

  if market_order_user_data_exists then
    index, market_order_user_data = txse_txseequities_seed_rake_v1_0.market_order_user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Mpid
  local market_order_mpid = nil

  local market_order_mpid_exists = bit.band(market_order_presence_bits, 0x0008) == 1

  if market_order_mpid_exists then
    index, market_order_mpid = txse_txseequities_seed_rake_v1_0.market_order_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Member Group
  local market_order_member_group = nil

  local market_order_member_group_exists = bit.band(market_order_presence_bits, 0x0010) == 1

  if market_order_member_group_exists then
    index, market_order_member_group = txse_txseequities_seed_rake_v1_0.market_order_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Market Order Locate Broker
  local market_order_locate_broker = nil

  local market_order_locate_broker_exists = bit.band(market_order_presence_bits, 0x0020) == 1

  if market_order_locate_broker_exists then
    index, market_order_locate_broker = txse_txseequities_seed_rake_v1_0.market_order_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Market Order Message
txse_txseequities_seed_rake_v1_0.market_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.market_order_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.market_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.market_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.market_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Limit Order Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_bit_fields = {}

-- Size: Limit Order Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.size = 4

-- Display: Limit Order Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Is Locate Required flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Is Locate Required"
  end
  -- Is Is Iso flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    flags[#flags + 1] = "Is Iso"
  end
  -- Is Is Hidden flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    flags[#flags + 1] = "Is Hidden"
  end
  -- Is Is Post Only flag set?
  if bit.band(value, 0x00002000) ~= 0 then
    flags[#flags + 1] = "Is Post Only"
  end
  -- Is Cancel At Entry If Crossed flag set?
  if bit.band(value, 0x00004000) ~= 0 then
    flags[#flags + 1] = "Cancel At Entry If Crossed"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Limit Order Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.bits = function(range, value, packet, parent)

  -- Side: 3 Bit Enum with 4 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.side, range, value)

  -- Is Locate Required: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_locate_required, range, value)

  -- Time In Force: 4 Bit Enum with 7 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.time_in_force, range, value)

  -- Order Capacity: 3 Bit Enum with 3 values
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.order_capacity, range, value)

  -- Is Iso: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_iso, range, value)

  -- Is Hidden: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_hidden, range, value)

  -- Is Post Only: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.is_post_only, range, value)

  -- Cancel At Entry If Crossed: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.cancel_at_entry_if_crossed, range, value)

  -- Reserved 17: 17 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_17, range, value)
end

-- Dissect: Limit Order Bit Fields
txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_bit_fields, range, display)

  if show.limit_order_bit_fields then
    txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_presence_bits = {}

-- Size: Limit Order Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.size = 4

-- Display: Limit Order Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Scope flag set?
  if bit.band(value, 0x00000001) ~= 0 then
    flags[#flags + 1] = "Scope"
  end
  -- Is Has Limit Order Self Match Instruction flag set?
  if bit.band(value, 0x00000002) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Self Match Instruction"
  end
  -- Is Has Limit Order Price Slide Instruction flag set?
  if bit.band(value, 0x00000004) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Price Slide Instruction"
  end
  -- Is Has Limit Order Min Qty flag set?
  if bit.band(value, 0x00000008) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Min Qty"
  end
  -- Is Has Limit Order Max Floor Qty flag set?
  if bit.band(value, 0x00000010) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Max Floor Qty"
  end
  -- Is Has Limit Order Max Replenish Qty Range flag set?
  if bit.band(value, 0x00000020) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Max Replenish Qty Range"
  end
  -- Is Has Limit Order Max Replenish Time Range flag set?
  if bit.band(value, 0x00000040) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Max Replenish Time Range"
  end
  -- Is Has Limit Order Reference Price Target flag set?
  if bit.band(value, 0x00000080) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Reference Price Target"
  end
  -- Is Has Limit Order Expire Time flag set?
  if bit.band(value, 0x00000100) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Expire Time"
  end
  -- Is Has Limit Order User Data flag set?
  if bit.band(value, 0x00000200) ~= 0 then
    flags[#flags + 1] = "Has Limit Order User Data"
  end
  -- Is Has Limit Order Mpid flag set?
  if bit.band(value, 0x00000400) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Mpid"
  end
  -- Is Has Limit Order Member Group flag set?
  if bit.band(value, 0x00000800) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Member Group"
  end
  -- Is Has Limit Order Locate Broker flag set?
  if bit.band(value, 0x00001000) ~= 0 then
    flags[#flags + 1] = "Has Limit Order Locate Broker"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Limit Order Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.bits = function(range, value, packet, parent)

  -- Scope: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.scope, range, value)

  -- Has Limit Order Self Match Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_self_match_instruction, range, value)

  -- Has Limit Order Price Slide Instruction: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_price_slide_instruction, range, value)

  -- Has Limit Order Min Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_min_qty, range, value)

  -- Has Limit Order Max Floor Qty: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_max_floor_qty, range, value)

  -- Has Limit Order Max Replenish Qty Range: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_max_replenish_qty_range, range, value)

  -- Has Limit Order Max Replenish Time Range: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_max_replenish_time_range, range, value)

  -- Has Limit Order Reference Price Target: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_reference_price_target, range, value)

  -- Has Limit Order Expire Time: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_expire_time, range, value)

  -- Has Limit Order User Data: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_user_data, range, value)

  -- Has Limit Order Mpid: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_mpid, range, value)

  -- Has Limit Order Member Group: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_member_group, range, value)

  -- Has Limit Order Locate Broker: 1 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.has_limit_order_locate_broker, range, value)

  -- Reserved 19: 19 Bit
  parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.reserved_19, range, value)
end

-- Dissect: Limit Order Presence Bits
txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.dissect = function(buffer, offset, packet, parent)
  local size = txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.display(range, value, packet, parent)
  local element = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_presence_bits, range, display)

  if show.limit_order_presence_bits then
    txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Limit Order Message
txse_txseequities_seed_rake_v1_0.limit_order_message = {}

-- Calculate size of: Limit Order Message
txse_txseequities_seed_rake_v1_0.limit_order_message.size = function(buffer, offset)
  local index = 0

  index = index + txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.size

  index = index + txse_txseequities_seed_rake_v1_0.cl_ord_id.size

  index = index + txse_txseequities_seed_rake_v1_0.order_qty.size

  index = index + txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.size

  index = index + txse_txseequities_seed_rake_v1_0.symbol_id.size

  index = index + txse_txseequities_seed_rake_v1_0.price.size

  index = index + txse_txseequities_seed_rake_v1_0.self_match_scope.size

  local has_limit_order_self_match_instruction = buffer(offset + index - 27, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000002) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction.size

  end

  local has_limit_order_price_slide_instruction = buffer(offset + index - 28, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000004) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction.size

  end

  local has_limit_order_min_qty = buffer(offset + index - 29, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000008) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_min_qty.size

  end

  local has_limit_order_max_floor_qty = buffer(offset + index - 33, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000010) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty.size

  end

  local has_limit_order_max_replenish_qty_range = buffer(offset + index - 37, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000020) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range.size

  end

  local has_limit_order_max_replenish_time_range = buffer(offset + index - 41, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000040) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range.size

  end

  local has_limit_order_reference_price_target = buffer(offset + index - 49, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000080) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target.size

  end

  local has_limit_order_expire_time = buffer(offset + index - 51, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000100) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_expire_time.size

  end

  local has_limit_order_user_data = buffer(offset + index - 59, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000200) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_user_data.size

  end

  local has_limit_order_mpid = buffer(offset + index - 67, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000400) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_mpid.size

  end

  local has_limit_order_member_group = buffer(offset + index - 71, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00000800) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_member_group.size

  end

  local has_limit_order_locate_broker = buffer(offset + index - 73, 1):uint()

  if bit.band(limit_order_presence_bits, 0x00001000) == 1 then
    index = index + txse_txseequities_seed_rake_v1_0.limit_order_locate_broker.size

  end

  return index
end

-- Display: Limit Order Message
txse_txseequities_seed_rake_v1_0.limit_order_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Limit Order Message
txse_txseequities_seed_rake_v1_0.limit_order_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Limit Order Presence Bits: Struct of 14 fields
  index, limit_order_presence_bits = txse_txseequities_seed_rake_v1_0.limit_order_presence_bits.dissect(buffer, index, packet, parent)

  -- Cl Ord Id: Long
  index, cl_ord_id = txse_txseequities_seed_rake_v1_0.cl_ord_id.dissect(buffer, index, packet, parent)

  -- Order Qty: Int
  index, order_qty = txse_txseequities_seed_rake_v1_0.order_qty.dissect(buffer, index, packet, parent)

  -- Limit Order Bit Fields: Struct of 9 fields
  index, limit_order_bit_fields = txse_txseequities_seed_rake_v1_0.limit_order_bit_fields.dissect(buffer, index, packet, parent)

  -- Symbol Id: Short
  index, symbol_id = txse_txseequities_seed_rake_v1_0.symbol_id.dissect(buffer, index, packet, parent)

  -- Price: Price
  index, price = txse_txseequities_seed_rake_v1_0.price.dissect(buffer, index, packet, parent)

  -- Self Match Scope: Enum
  index, self_match_scope = txse_txseequities_seed_rake_v1_0.self_match_scope.dissect(buffer, index, packet, parent)

  -- Runtime optional field: Limit Order Self Match Instruction
  local limit_order_self_match_instruction = nil

  local limit_order_self_match_instruction_exists = bit.band(limit_order_presence_bits, 0x00000002) == 1

  if limit_order_self_match_instruction_exists then
    index, limit_order_self_match_instruction = txse_txseequities_seed_rake_v1_0.limit_order_self_match_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Price Slide Instruction
  local limit_order_price_slide_instruction = nil

  local limit_order_price_slide_instruction_exists = bit.band(limit_order_presence_bits, 0x00000004) == 1

  if limit_order_price_slide_instruction_exists then
    index, limit_order_price_slide_instruction = txse_txseequities_seed_rake_v1_0.limit_order_price_slide_instruction.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Min Qty
  local limit_order_min_qty = nil

  local limit_order_min_qty_exists = bit.band(limit_order_presence_bits, 0x00000008) == 1

  if limit_order_min_qty_exists then
    index, limit_order_min_qty = txse_txseequities_seed_rake_v1_0.limit_order_min_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Max Floor Qty
  local limit_order_max_floor_qty = nil

  local limit_order_max_floor_qty_exists = bit.band(limit_order_presence_bits, 0x00000010) == 1

  if limit_order_max_floor_qty_exists then
    index, limit_order_max_floor_qty = txse_txseequities_seed_rake_v1_0.limit_order_max_floor_qty.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Max Replenish Qty Range
  local limit_order_max_replenish_qty_range = nil

  local limit_order_max_replenish_qty_range_exists = bit.band(limit_order_presence_bits, 0x00000020) == 1

  if limit_order_max_replenish_qty_range_exists then
    index, limit_order_max_replenish_qty_range = txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_qty_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Max Replenish Time Range
  local limit_order_max_replenish_time_range = nil

  local limit_order_max_replenish_time_range_exists = bit.band(limit_order_presence_bits, 0x00000040) == 1

  if limit_order_max_replenish_time_range_exists then
    index, limit_order_max_replenish_time_range = txse_txseequities_seed_rake_v1_0.limit_order_max_replenish_time_range.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Reference Price Target
  local limit_order_reference_price_target = nil

  local limit_order_reference_price_target_exists = bit.band(limit_order_presence_bits, 0x00000080) == 1

  if limit_order_reference_price_target_exists then
    index, limit_order_reference_price_target = txse_txseequities_seed_rake_v1_0.limit_order_reference_price_target.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Expire Time
  local limit_order_expire_time = nil

  local limit_order_expire_time_exists = bit.band(limit_order_presence_bits, 0x00000100) == 1

  if limit_order_expire_time_exists then
    index, limit_order_expire_time = txse_txseequities_seed_rake_v1_0.limit_order_expire_time.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order User Data
  local limit_order_user_data = nil

  local limit_order_user_data_exists = bit.band(limit_order_presence_bits, 0x00000200) == 1

  if limit_order_user_data_exists then
    index, limit_order_user_data = txse_txseequities_seed_rake_v1_0.limit_order_user_data.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Mpid
  local limit_order_mpid = nil

  local limit_order_mpid_exists = bit.band(limit_order_presence_bits, 0x00000400) == 1

  if limit_order_mpid_exists then
    index, limit_order_mpid = txse_txseequities_seed_rake_v1_0.limit_order_mpid.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Member Group
  local limit_order_member_group = nil

  local limit_order_member_group_exists = bit.band(limit_order_presence_bits, 0x00000800) == 1

  if limit_order_member_group_exists then
    index, limit_order_member_group = txse_txseequities_seed_rake_v1_0.limit_order_member_group.dissect(buffer, index, packet, parent)
  end

  -- Runtime optional field: Limit Order Locate Broker
  local limit_order_locate_broker = nil

  local limit_order_locate_broker_exists = bit.band(limit_order_presence_bits, 0x00001000) == 1

  if limit_order_locate_broker_exists then
    index, limit_order_locate_broker = txse_txseequities_seed_rake_v1_0.limit_order_locate_broker.dissect(buffer, index, packet, parent)
  end

  return index
end

-- Dissect: Limit Order Message
txse_txseequities_seed_rake_v1_0.limit_order_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.limit_order_message, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.limit_order_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.limit_order_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.limit_order_message.fields(buffer, offset, packet, parent)
  end
end

-- Unsequenced Message
txse_txseequities_seed_rake_v1_0.unsequenced_message = {}

-- Dissect: Unsequenced Message
txse_txseequities_seed_rake_v1_0.unsequenced_message.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Limit Order Message
  if message_type == 76 then
    return txse_txseequities_seed_rake_v1_0.limit_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Order Message
  if message_type == 65 then
    return txse_txseequities_seed_rake_v1_0.market_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Cancel Order Message
  if message_type == 67 then
    return txse_txseequities_seed_rake_v1_0.cancel_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Modify Order Message
  if message_type == 77 then
    return txse_txseequities_seed_rake_v1_0.modify_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Replace Order Message
  if message_type == 82 then
    return txse_txseequities_seed_rake_v1_0.replace_order_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Mass Cancel Message
  if message_type == 86 then
    return txse_txseequities_seed_rake_v1_0.mass_cancel_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Tcp Unsequenced Message
txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message = {}

-- Read runtime size of: Tcp Unsequenced Message
txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.size = function(buffer, offset)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 3, 2):le_uint()

  return message_length - 1
end

-- Display: Tcp Unsequenced Message
txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Tcp Unsequenced Message
txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.fields = function(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)
  local index = offset

  -- Message Type: Byte
  index, message_type = txse_txseequities_seed_rake_v1_0.message_type.dissect(buffer, index, packet, parent)

  -- Unsequenced Message: Runtime Type with 6 branches
  index = txse_txseequities_seed_rake_v1_0.unsequenced_message.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Tcp Unsequenced Message
txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.dissect = function(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)
  local size_of_tcp_unsequenced_message = txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.size(buffer, offset)
  local index = offset + size_of_tcp_unsequenced_message

  -- Optionally add group/struct element to protocol tree
  if show.tcp_unsequenced_message then
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.tcp_unsequenced_message, buffer(offset, 0))
    local current = txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)
    parent:set_len(size_of_tcp_unsequenced_message)
    local display = txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.fields(buffer, offset, packet, parent, size_of_tcp_unsequenced_message)

    return index
  end
end

-- Logon Request Packet
txse_txseequities_seed_rake_v1_0.logon_request_packet = {}

-- Size: Logon Request Packet
txse_txseequities_seed_rake_v1_0.logon_request_packet.size =
  txse_txseequities_seed_rake_v1_0.session.size + 
  txse_txseequities_seed_rake_v1_0.sender_comp.size + 
  txse_txseequities_seed_rake_v1_0.token.size + 
  txse_txseequities_seed_rake_v1_0.next_sequence_number.size

-- Display: Logon Request Packet
txse_txseequities_seed_rake_v1_0.logon_request_packet.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Logon Request Packet
txse_txseequities_seed_rake_v1_0.logon_request_packet.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Session: Long
  index, session = txse_txseequities_seed_rake_v1_0.session.dissect(buffer, index, packet, parent)

  -- Sender Comp: Long
  index, sender_comp = txse_txseequities_seed_rake_v1_0.sender_comp.dissect(buffer, index, packet, parent)

  -- Token: Long
  index, token = txse_txseequities_seed_rake_v1_0.token.dissect(buffer, index, packet, parent)

  -- Next Sequence Number: Long
  index, next_sequence_number = txse_txseequities_seed_rake_v1_0.next_sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Logon Request Packet
txse_txseequities_seed_rake_v1_0.logon_request_packet.dissect = function(buffer, offset, packet, parent)
  if show.logon_request_packet then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.logon_request_packet, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.logon_request_packet.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.logon_request_packet.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.logon_request_packet.fields(buffer, offset, packet, parent)
  end
end

-- Payload
txse_txseequities_seed_rake_v1_0.payload = {}

-- Dissect: Payload
txse_txseequities_seed_rake_v1_0.payload.dissect = function(buffer, offset, packet, parent, packet_type)
  -- Dissect Logon Request Packet
  if packet_type == 53 then
    return txse_txseequities_seed_rake_v1_0.logon_request_packet.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tcp Unsequenced Message
  if packet_type == 54 then
    return txse_txseequities_seed_rake_v1_0.tcp_unsequenced_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Debug Message
  if packet_type == 48 then
    return txse_txseequities_seed_rake_v1_0.debug_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect End Of Session Message
  if packet_type == 52 then
    return offset
  end
  -- Dissect Logon Response Message
  if packet_type == 49 then
    return txse_txseequities_seed_rake_v1_0.logon_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Tcp Sequenced Message
  if packet_type == 50 then
    return txse_txseequities_seed_rake_v1_0.tcp_sequenced_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Rake Message Header
txse_txseequities_seed_rake_v1_0.rake_message_header = {}

-- Size: Rake Message Header
txse_txseequities_seed_rake_v1_0.rake_message_header.size =
  txse_txseequities_seed_rake_v1_0.message_length.size + 
  txse_txseequities_seed_rake_v1_0.packet_type.size

-- Display: Rake Message Header
txse_txseequities_seed_rake_v1_0.rake_message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rake Message Header
txse_txseequities_seed_rake_v1_0.rake_message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Length: 2 Byte Unsigned Fixed Width Integer
  index, message_length = txse_txseequities_seed_rake_v1_0.message_length.dissect(buffer, index, packet, parent)

  -- Packet Type: 1 Byte Unsigned Fixed Width Integer Enum with 8 values
  index, packet_type = txse_txseequities_seed_rake_v1_0.packet_type.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Rake Message Header
txse_txseequities_seed_rake_v1_0.rake_message_header.dissect = function(buffer, offset, packet, parent)
  if show.rake_message_header then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.rake_message_header, buffer(offset, 0))
    local index = txse_txseequities_seed_rake_v1_0.rake_message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = txse_txseequities_seed_rake_v1_0.rake_message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return txse_txseequities_seed_rake_v1_0.rake_message_header.fields(buffer, offset, packet, parent)
  end
end

-- Rake Tcp Message
txse_txseequities_seed_rake_v1_0.rake_tcp_message = {}

-- Display: Rake Tcp Message
txse_txseequities_seed_rake_v1_0.rake_tcp_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Rake Tcp Message
txse_txseequities_seed_rake_v1_0.rake_tcp_message.fields = function(buffer, offset, packet, parent, size_of_rake_tcp_message)
  local index = offset

  -- Rake Message Header: Struct of 2 fields
  index, rake_message_header = txse_txseequities_seed_rake_v1_0.rake_message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Packet Type
  local packet_type = buffer(index - 1, 1):le_uint()

  -- Payload: Runtime Type with 6 branches
  index = txse_txseequities_seed_rake_v1_0.payload.dissect(buffer, index, packet, parent, packet_type)

  return index
end

-- Dissect: Rake Tcp Message
txse_txseequities_seed_rake_v1_0.rake_tcp_message.dissect = function(buffer, offset, packet, parent, size_of_rake_tcp_message)
  local index = offset + size_of_rake_tcp_message

  -- Optionally add group/struct element to protocol tree
  if show.rake_tcp_message then
    parent = parent:add(omi_txse_txseequities_seed_rake_v1_0.fields.rake_tcp_message, buffer(offset, 0))
    local current = txse_txseequities_seed_rake_v1_0.rake_tcp_message.fields(buffer, offset, packet, parent, size_of_rake_tcp_message)
    parent:set_len(size_of_rake_tcp_message)
    local display = txse_txseequities_seed_rake_v1_0.rake_tcp_message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    txse_txseequities_seed_rake_v1_0.rake_tcp_message.fields(buffer, offset, packet, parent, size_of_rake_tcp_message)

    return index
  end
end

-- Remaining Bytes For: Rake Tcp Message
local rake_tcp_message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < txse_txseequities_seed_rake_v1_0.rake_message_header.size then
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
txse_txseequities_seed_rake_v1_0.packet = {}

-- Verify required size of Tcp packet
txse_txseequities_seed_rake_v1_0.packet.requiredsize = function(buffer)
  return buffer:len() >= txse_txseequities_seed_rake_v1_0.rake_message_header.size
end

-- Dissect Packet
txse_txseequities_seed_rake_v1_0.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Rake Tcp Message
  local end_of_payload = buffer:len()

  -- Rake Tcp Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_rake_tcp_message = rake_tcp_message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = txse_txseequities_seed_rake_v1_0.rake_tcp_message.dissect(buffer, index, packet, parent, size_of_rake_tcp_message)
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
function omi_txse_txseequities_seed_rake_v1_0.init()
end

-- Dissector for Txse TxseEquities Seed Rake 1.0
function omi_txse_txseequities_seed_rake_v1_0.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_txse_txseequities_seed_rake_v1_0.name

  -- Dissect protocol
  local protocol = parent:add(omi_txse_txseequities_seed_rake_v1_0, buffer(), omi_txse_txseequities_seed_rake_v1_0.description, "("..buffer:len().." Bytes)")
  return txse_txseequities_seed_rake_v1_0.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Txse TxseEquities Seed Rake 1.0 (Tcp)
local function omi_txse_txseequities_seed_rake_v1_0_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not txse_txseequities_seed_rake_v1_0.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_txse_txseequities_seed_rake_v1_0
  omi_txse_txseequities_seed_rake_v1_0.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Txse TxseEquities Seed Rake 1.0
omi_txse_txseequities_seed_rake_v1_0:register_heuristic("tcp", omi_txse_txseequities_seed_rake_v1_0_tcp_heuristic)

-- Register Txse TxseEquities Seed Rake 1.0 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_txse_txseequities_seed_rake_v1_0)

-----------------------------------------------------------------------
-- Lua dissectors are an easily edited and modified cross-platform dissection solution.
-- Feel free to modify. Enjoy.
-----------------------------------------------------------------------
--
-- Protocol:
--   Organization: Texas Stock Exchange
--   Version: 1.0
--   Date: Friday, June 12, 2026
--   Specification: SEED.pdf
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
