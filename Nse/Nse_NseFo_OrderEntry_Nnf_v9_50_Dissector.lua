-----------------------------------------------------------------------
-- Lua Script Wireshark Dissector
--
-- Please see end of file for rules and regulations
-----------------------------------------------------------------------

-- Nse NseFo OrderEntry Nnf 9.50 Protocol
local omi_nse_nsefo_orderentry_nnf_v9_50 = Proto("Omi.Nse.NseFo.OrderEntry.Nnf.v9.50", "Nse NseFo OrderEntry Nnf 9.50")

-- Protocol table
local nse_nsefo_orderentry_nnf_v9_50 = {}

-----------------------------------------------------------------------
-- Declare Protocol Fields
-----------------------------------------------------------------------

-- Nse NseFo OrderEntry Nnf 9.50 Fields
omi_nse_nsefo_orderentry_nnf_v9_50.fields.account_number = ProtoField.new("Account Number", "nse.nsefo.orderentry.nnf.v9.50.accountnumber", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.account_number_1 = ProtoField.new("Account Number 1", "nse.nsefo.orderentry.nnf.v9.50.accountnumber1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.action_code = ProtoField.new("Action Code", "nse.nsefo.orderentry.nnf.v9.50.actioncode", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.activity_time = ProtoField.new("Activity Time", "nse.nsefo.orderentry.nnf.v9.50.activitytime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.activity_type = ProtoField.new("Activity Type", "nse.nsefo.orderentry.nnf.v9.50.activitytype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.additional_order_flags = ProtoField.new("Additional Order Flags", "nse.nsefo.orderentry.nnf.v9.50.additionalorderflags", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.algo_id = ProtoField.new("Algo Id", "nse.nsefo.orderentry.nnf.v9.50.algoid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.alpha_char = ProtoField.new("Alpha Char", "nse.nsefo.orderentry.nnf.v9.50.alphachar", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.aon = ProtoField.new("Aon", "nse.nsefo.orderentry.nnf.v9.50.aon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0100)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ask_price = ProtoField.new("Ask Price", "nse.nsefo.orderentry.nnf.v9.50.askprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ask_size = ProtoField.new("Ask Size", "nse.nsefo.orderentry.nnf.v9.50.asksize", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ato = ProtoField.new("Ato", "nse.nsefo.orderentry.nnf.v9.50.ato", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.auction_market = ProtoField.new("Auction Market", "nse.nsefo.orderentry.nnf.v9.50.auctionmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.batch_2_start_time = ProtoField.new("Batch 2 Start Time", "nse.nsefo.orderentry.nnf.v9.50.batch2starttime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.bid_price = ProtoField.new("Bid Price", "nse.nsefo.orderentry.nnf.v9.50.bidprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.bid_size = ProtoField.new("Bid Size", "nse.nsefo.orderentry.nnf.v9.50.bidsize", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.board_lot_quantity = ProtoField.new("Board Lot Quantity", "nse.nsefo.orderentry.nnf.v9.50.boardlotquantity", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.boc = ProtoField.new("Boc", "nse.nsefo.orderentry.nnf.v9.50.boc", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x01)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.book_type = ProtoField.new("Book Type", "nse.nsefo.orderentry.nnf.v9.50.booktype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.book_type_1 = ProtoField.new("Book Type 1", "nse.nsefo.orderentry.nnf.v9.50.booktype1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.books_merged = ProtoField.new("Books Merged", "nse.nsefo.orderentry.nnf.v9.50.booksmerged", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_id = ProtoField.new("Box Id", "nse.nsefo.orderentry.nnf.v9.50.boxid", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_buy_value_limit = ProtoField.new("Branch Buy Value Limit", "nse.nsefo.orderentry.nnf.v9.50.branchbuyvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_id = ProtoField.new("Branch Id", "nse.nsefo.orderentry.nnf.v9.50.branchid", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_id_1 = ProtoField.new("Branch Id 1", "nse.nsefo.orderentry.nnf.v9.50.branchid1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_limits = ProtoField.new("Branch Limits", "nse.nsefo.orderentry.nnf.v9.50.branchlimits", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_sell_value_limit = ProtoField.new("Branch Sell Value Limit", "nse.nsefo.orderentry.nnf.v9.50.branchsellvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_used_buy_value_limit = ProtoField.new("Branch Used Buy Value Limit", "nse.nsefo.orderentry.nnf.v9.50.branchusedbuyvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_used_sell_value_limit = ProtoField.new("Branch Used Sell Value Limit", "nse.nsefo.orderentry.nnf.v9.50.branchusedsellvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.broad_cast_message = ProtoField.new("Broad Cast Message", "nse.nsefo.orderentry.nnf.v9.50.broadcastmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.broad_cast_message_length = ProtoField.new("Broad Cast Message Length", "nse.nsefo.orderentry.nnf.v9.50.broadcastmessagelength", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_id = ProtoField.new("Broker Id", "nse.nsefo.orderentry.nnf.v9.50.brokerid", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_id_1 = ProtoField.new("Broker Id 1", "nse.nsefo.orderentry.nnf.v9.50.brokerid1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_name = ProtoField.new("Broker Name", "nse.nsefo.orderentry.nnf.v9.50.brokername", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_status = ProtoField.new("Broker Status", "nse.nsefo.orderentry.nnf.v9.50.brokerstatus", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.brokernumber = ProtoField.new("Brokernumber", "nse.nsefo.orderentry.nnf.v9.50.brokernumber", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_account_number = ProtoField.new("Buy Account Number", "nse.nsefo.orderentry.nnf.v9.50.buyaccountnumber", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_broker_id = ProtoField.new("Buy Broker Id", "nse.nsefo.orderentry.nnf.v9.50.buybrokerid", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_open_close = ProtoField.new("Buy Open Close", "nse.nsefo.orderentry.nnf.v9.50.buyopenclose", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_pan = ProtoField.new("Buy Pan", "nse.nsefo.orderentry.nnf.v9.50.buypan", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell = ProtoField.new("Buy Sell", "nse.nsefo.orderentry.nnf.v9.50.buysell", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell_1 = ProtoField.new("Buy Sell 1", "nse.nsefo.orderentry.nnf.v9.50.buysell1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell_2 = ProtoField.new("Buy Sell 2", "nse.nsefo.orderentry.nnf.v9.50.buysell2", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell_indicator = ProtoField.new("Buy Sell Indicator", "nse.nsefo.orderentry.nnf.v9.50.buysellindicator", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.c_ord_filler = ProtoField.new("C Ord Filler", "nse.nsefo.orderentry.nnf.v9.50.cordfiller", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ca_level = ProtoField.new("Ca Level", "nse.nsefo.orderentry.nnf.v9.50.calevel", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.calevel_1 = ProtoField.new("Calevel 1", "nse.nsefo.orderentry.nnf.v9.50.calevel1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.calevel_2 = ProtoField.new("Calevel 2", "nse.nsefo.orderentry.nnf.v9.50.calevel2", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.chg_open_interest = ProtoField.new("Chg Open Interest", "nse.nsefo.orderentry.nnf.v9.50.chgopeninterest", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.clearing_status = ProtoField.new("Clearing Status", "nse.nsefo.orderentry.nnf.v9.50.clearingstatus", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.close = ProtoField.new("Close", "nse.nsefo.orderentry.nnf.v9.50.close", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.closeout_flag = ProtoField.new("Closeout Flag", "nse.nsefo.orderentry.nnf.v9.50.closeoutflag", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.closing = ProtoField.new("Closing", "nse.nsefo.orderentry.nnf.v9.50.closing", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.closing_price = ProtoField.new("Closing Price", "nse.nsefo.orderentry.nnf.v9.50.closingprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.col = ProtoField.new("Col", "nse.nsefo.orderentry.nnf.v9.50.col", ftypes.UINT8, {[0]="No", [1]="Yes"}, base.DEC, 0x02)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.col_user_bit = ProtoField.new("Col User Bit", "nse.nsefo.orderentry.nnf.v9.50.coluserbit", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.colour = ProtoField.new("Colour", "nse.nsefo.orderentry.nnf.v9.50.colour", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.competitor_period = ProtoField.new("Competitor Period", "nse.nsefo.orderentry.nnf.v9.50.competitorperiod", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.competitor_period_1 = ProtoField.new("Competitor Period 1", "nse.nsefo.orderentry.nnf.v9.50.competitorperiod1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.contract_desc = ProtoField.new("Contract Desc", "nse.nsefo.orderentry.nnf.v9.50.contractdesc", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.contracts_details = ProtoField.new("Contracts Details", "nse.nsefo.orderentry.nnf.v9.50.contractsdetails", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.counter_broker_id = ProtoField.new("Counter Broker Id", "nse.nsefo.orderentry.nnf.v9.50.counterbrokerid", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.counter_party_broker_id = ProtoField.new("Counter Party Broker Id", "nse.nsefo.orderentry.nnf.v9.50.counterpartybrokerid", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.counter_trader_order_number = ProtoField.new("Counter Trader Order Number", "nse.nsefo.orderentry.nnf.v9.50.countertraderordernumber", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_additional_key = ProtoField.new("Cryptographic Additional Key", "nse.nsefo.orderentry.nnf.v9.50.cryptographicadditionalkey", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_iv = ProtoField.new("Cryptographic Iv", "nse.nsefo.orderentry.nnf.v9.50.cryptographiciv", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_key = ProtoField.new("Cryptographic Key", "nse.nsefo.orderentry.nnf.v9.50.cryptographickey", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_tail = ProtoField.new("Cryptographic Tail", "nse.nsefo.orderentry.nnf.v9.50.cryptographictail", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.data_payload = ProtoField.new("Data Payload", "nse.nsefo.orderentry.nnf.v9.50.datapayload", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.day = ProtoField.new("Day", "nse.nsefo.orderentry.nnf.v9.50.day", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0800)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.default_settlement_period_auction = ProtoField.new("Default Settlement Period Auction", "nse.nsefo.orderentry.nnf.v9.50.defaultsettlementperiodauction", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.default_settlement_period_normal = ProtoField.new("Default Settlement Period Normal", "nse.nsefo.orderentry.nnf.v9.50.defaultsettlementperiodnormal", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.default_settlement_period_spot = ProtoField.new("Default Settlement Period Spot", "nse.nsefo.orderentry.nnf.v9.50.defaultsettlementperiodspot", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.deleted = ProtoField.new("Deleted", "nse.nsefo.orderentry.nnf.v9.50.deleted", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_quantity_percent_allowed = ProtoField.new("Disclosed Quantity Percent Allowed", "nse.nsefo.orderentry.nnf.v9.50.disclosedquantitypercentallowed", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_1 = ProtoField.new("Disclosed Vol 1", "nse.nsefo.orderentry.nnf.v9.50.disclosedvol1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_2 = ProtoField.new("Disclosed Vol 2", "nse.nsefo.orderentry.nnf.v9.50.disclosedvol2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_remaining_1 = ProtoField.new("Disclosed Vol Remaining 1", "nse.nsefo.orderentry.nnf.v9.50.disclosedvolremaining1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_remaining_2 = ProtoField.new("Disclosed Vol Remaining 2", "nse.nsefo.orderentry.nnf.v9.50.disclosedvolremaining2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_volume = ProtoField.new("Disclosed Volume", "nse.nsefo.orderentry.nnf.v9.50.disclosedvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_volume_remaining = ProtoField.new("Disclosed Volume Remaining", "nse.nsefo.orderentry.nnf.v9.50.disclosedvolumeremaining", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.download_payload = ProtoField.new("Download Payload", "nse.nsefo.orderentry.nnf.v9.50.downloadpayload", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.dynamic_cryptographic_iv = ProtoField.new("Dynamic Cryptographic Iv", "nse.nsefo.orderentry.nnf.v9.50.dynamiccryptographiciv", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.eligible_aon = ProtoField.new("Eligible Aon", "nse.nsefo.orderentry.nnf.v9.50.eligibleaon", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.end_alpha_1 = ProtoField.new("End Alpha 1", "nse.nsefo.orderentry.nnf.v9.50.endalpha1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.end_time = ProtoField.new("End Time", "nse.nsefo.orderentry.nnf.v9.50.endtime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.enhncd_mkt_stats_data = ProtoField.new("Enhncd Mkt Stats Data", "nse.nsefo.orderentry.nnf.v9.50.enhncdmktstatsdata", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.entry_date_time = ProtoField.new("Entry Date Time", "nse.nsefo.orderentry.nnf.v9.50.entrydatetime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.entry_date_time_1 = ProtoField.new("Entry Date Time 1", "nse.nsefo.orderentry.nnf.v9.50.entrydatetime1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.error_code = ProtoField.new("Error Code", "nse.nsefo.orderentry.nnf.v9.50.errorcode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_auction = ProtoField.new("Ex Market Status Auction", "nse.nsefo.orderentry.nnf.v9.50.exmarketstatusauction", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_normal = ProtoField.new("Ex Market Status Normal", "nse.nsefo.orderentry.nnf.v9.50.exmarketstatusnormal", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_oddlot = ProtoField.new("Ex Market Status Oddlot", "nse.nsefo.orderentry.nnf.v9.50.exmarketstatusoddlot", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_spot = ProtoField.new("Ex Market Status Spot", "nse.nsefo.orderentry.nnf.v9.50.exmarketstatusspot", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.existing_encryption_tail = ProtoField.new("Existing Encryption Tail", "nse.nsefo.orderentry.nnf.v9.50.existingencryptiontail", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.exp_day = ProtoField.new("Exp Day", "nse.nsefo.orderentry.nnf.v9.50.expday", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.exp_month = ProtoField.new("Exp Month", "nse.nsefo.orderentry.nnf.v9.50.expmonth", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.exp_year = ProtoField.new("Exp Year", "nse.nsefo.orderentry.nnf.v9.50.expyear", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.expiry_date = ProtoField.new("Expiry Date", "nse.nsefo.orderentry.nnf.v9.50.expirydate", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.expirydate_1 = ProtoField.new("Expirydate 1", "nse.nsefo.orderentry.nnf.v9.50.expirydate1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.expirydate_2 = ProtoField.new("Expirydate 2", "nse.nsefo.orderentry.nnf.v9.50.expirydate2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_number = ProtoField.new("Fill Number", "nse.nsefo.orderentry.nnf.v9.50.fillnumber", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_price = ProtoField.new("Fill Price", "nse.nsefo.orderentry.nnf.v9.50.fillprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_quantity = ProtoField.new("Fill Quantity", "nse.nsefo.orderentry.nnf.v9.50.fillquantity", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_volume = ProtoField.new("Fill Volume", "nse.nsefo.orderentry.nnf.v9.50.fillvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler = ProtoField.new("Filler", "nse.nsefo.orderentry.nnf.v9.50.filler", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_1 = ProtoField.new("Filler 1", "nse.nsefo.orderentry.nnf.v9.50.filler1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_116 = ProtoField.new("Filler 116", "nse.nsefo.orderentry.nnf.v9.50.filler116", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_17 = ProtoField.new("Filler 17", "nse.nsefo.orderentry.nnf.v9.50.filler17", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_18 = ProtoField.new("Filler 18", "nse.nsefo.orderentry.nnf.v9.50.filler18", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_2 = ProtoField.new("Filler 2", "nse.nsefo.orderentry.nnf.v9.50.filler2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_3 = ProtoField.new("Filler 3", "nse.nsefo.orderentry.nnf.v9.50.filler3", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_9 = ProtoField.new("Filler 9", "nse.nsefo.orderentry.nnf.v9.50.filler9", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_options_1 = ProtoField.new("Filler Options 1", "nse.nsefo.orderentry.nnf.v9.50.filleroptions1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_y = ProtoField.new("Filler Y", "nse.nsefo.orderentry.nnf.v9.50.fillery", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.fillerx_1 = ProtoField.new("Fillerx 1", "nse.nsefo.orderentry.nnf.v9.50.fillerx1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.fillerx_2 = ProtoField.new("Fillerx 2", "nse.nsefo.orderentry.nnf.v9.50.fillerx2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.fillery_1 = ProtoField.new("Fillery 1", "nse.nsefo.orderentry.nnf.v9.50.fillery1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.firm_name = ProtoField.new("Firm Name", "nse.nsefo.orderentry.nnf.v9.50.firmname", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.frozen = ProtoField.new("Frozen", "nse.nsefo.orderentry.nnf.v9.50.frozen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0008)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.giveup = ProtoField.new("Giveup", "nse.nsefo.orderentry.nnf.v9.50.giveup", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.giveup_flag = ProtoField.new("Giveup Flag", "nse.nsefo.orderentry.nnf.v9.50.giveupflag", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.good_till_date = ProtoField.new("Good Till Date", "nse.nsefo.orderentry.nnf.v9.50.goodtilldate", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.good_till_date_1 = ProtoField.new("Good Till Date 1", "nse.nsefo.orderentry.nnf.v9.50.goodtilldate1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.gtc = ProtoField.new("Gtc", "nse.nsefo.orderentry.nnf.v9.50.gtc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0400)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.high = ProtoField.new("High", "nse.nsefo.orderentry.nnf.v9.50.high", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.high_price = ProtoField.new("High Price", "nse.nsefo.orderentry.nnf.v9.50.highprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.hipd = ProtoField.new("Hipd", "nse.nsefo.orderentry.nnf.v9.50.hipd", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.host_switch_context = ProtoField.new("Host Switch Context", "nse.nsefo.orderentry.nnf.v9.50.hostswitchcontext", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_data = ProtoField.new("Index Data", "nse.nsefo.orderentry.nnf.v9.50.indexdata", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_details = ProtoField.new("Index Details", "nse.nsefo.orderentry.nnf.v9.50.indexdetails", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_name = ProtoField.new("Index Name", "nse.nsefo.orderentry.nnf.v9.50.indexname", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_value = ProtoField.new("Index Value", "nse.nsefo.orderentry.nnf.v9.50.indexvalue", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.indicator = ProtoField.new("Indicator", "nse.nsefo.orderentry.nnf.v9.50.indicator", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.industry_index = ProtoField.new("Industry Index", "nse.nsefo.orderentry.nnf.v9.50.industryindex", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.industry_name = ProtoField.new("Industry Name", "nse.nsefo.orderentry.nnf.v9.50.industryname", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.initiated_by_control = ProtoField.new("Initiated By Control", "nse.nsefo.orderentry.nnf.v9.50.initiatedbycontrol", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_alpha_char = ProtoField.new("Inner Alpha Char", "nse.nsefo.orderentry.nnf.v9.50.inneralphachar", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_error_code = ProtoField.new("Inner Error Code", "nse.nsefo.orderentry.nnf.v9.50.innererrorcode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_header = ProtoField.new("Inner Header", "nse.nsefo.orderentry.nnf.v9.50.innerheader", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_log_time = ProtoField.new("Inner Log Time", "nse.nsefo.orderentry.nnf.v9.50.innerlogtime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_message_length = ProtoField.new("Inner Message Length", "nse.nsefo.orderentry.nnf.v9.50.innermessagelength", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_time_stamp_1 = ProtoField.new("Inner Time Stamp 1", "nse.nsefo.orderentry.nnf.v9.50.innertimestamp1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_time_stamp_2 = ProtoField.new("Inner Time Stamp 2", "nse.nsefo.orderentry.nnf.v9.50.innertimestamp2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_timestamp = ProtoField.new("Inner Timestamp", "nse.nsefo.orderentry.nnf.v9.50.innertimestamp", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_trader_id = ProtoField.new("Inner Trader Id", "nse.nsefo.orderentry.nnf.v9.50.innertraderid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_transaction_code = ProtoField.new("Inner Transaction Code", "nse.nsefo.orderentry.nnf.v9.50.innertransactioncode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrument_name = ProtoField.new("Instrument Name", "nse.nsefo.orderentry.nnf.v9.50.instrumentname", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrument_user = ProtoField.new("Instrument User", "nse.nsefo.orderentry.nnf.v9.50.instrumentuser", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrumentname_1 = ProtoField.new("Instrumentname 1", "nse.nsefo.orderentry.nnf.v9.50.instrumentname1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrumentname_2 = ProtoField.new("Instrumentname 2", "nse.nsefo.orderentry.nnf.v9.50.instrumentname2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ioc = ProtoField.new("Ioc", "nse.nsefo.orderentry.nnf.v9.50.ioc", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0200)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ip_address = ProtoField.new("Ip Address", "nse.nsefo.orderentry.nnf.v9.50.ipaddress", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last = ProtoField.new("Last", "nse.nsefo.orderentry.nnf.v9.50.last", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_activity_reference = ProtoField.new("Last Activity Reference", "nse.nsefo.orderentry.nnf.v9.50.lastactivityreference", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_modified = ProtoField.new("Last Modified", "nse.nsefo.orderentry.nnf.v9.50.lastmodified", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_modified_1 = ProtoField.new("Last Modified 1", "nse.nsefo.orderentry.nnf.v9.50.lastmodified1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_modified_date_time = ProtoField.new("Last Modified Date Time", "nse.nsefo.orderentry.nnf.v9.50.lastmodifieddatetime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_password_change_date = ProtoField.new("Last Password Change Date", "nse.nsefo.orderentry.nnf.v9.50.lastpasswordchangedate", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_index_time = ProtoField.new("Last Update Index Time", "nse.nsefo.orderentry.nnf.v9.50.lastupdateindextime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_instrument_time = ProtoField.new("Last Update Instrument Time", "nse.nsefo.orderentry.nnf.v9.50.lastupdateinstrumenttime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_participant_time = ProtoField.new("Last Update Participant Time", "nse.nsefo.orderentry.nnf.v9.50.lastupdateparticipanttime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_portfolio_t_ime = ProtoField.new("Last Update Portfolio T Ime", "nse.nsefo.orderentry.nnf.v9.50.lastupdateportfoliotime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_security_time = ProtoField.new("Last Update Security Time", "nse.nsefo.orderentry.nnf.v9.50.lastupdatesecuritytime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.lasttradedpd = ProtoField.new("Lasttradedpd", "nse.nsefo.orderentry.nnf.v9.50.lasttradedpd", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.life_high = ProtoField.new("Life High", "nse.nsefo.orderentry.nnf.v9.50.lifehigh", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.life_low = ProtoField.new("Life Low", "nse.nsefo.orderentry.nnf.v9.50.lifelow", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.limit_high = ProtoField.new("Limit High", "nse.nsefo.orderentry.nnf.v9.50.limithigh", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.limit_low = ProtoField.new("Limit Low", "nse.nsefo.orderentry.nnf.v9.50.limitlow", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.local_database_data = ProtoField.new("Local Database Data", "nse.nsefo.orderentry.nnf.v9.50.localdatabasedata", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.log_time = ProtoField.new("Log Time", "nse.nsefo.orderentry.nnf.v9.50.logtime", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.low = ProtoField.new("Low", "nse.nsefo.orderentry.nnf.v9.50.low", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.low_price = ProtoField.new("Low Price", "nse.nsefo.orderentry.nnf.v9.50.lowprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.lowpd = ProtoField.new("Lowpd", "nse.nsefo.orderentry.nnf.v9.50.lowpd", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market = ProtoField.new("Market", "nse.nsefo.orderentry.nnf.v9.50.market", ftypes.UINT16, {[0]="Market Order", [1]="Not A Market Order"}, base.DEC, 0x4000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_index = ProtoField.new("Market Index", "nse.nsefo.orderentry.nnf.v9.50.marketindex", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_auction = ProtoField.new("Market Status Auction", "nse.nsefo.orderentry.nnf.v9.50.marketstatusauction", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_normal = ProtoField.new("Market Status Normal", "nse.nsefo.orderentry.nnf.v9.50.marketstatusnormal", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_oddlot = ProtoField.new("Market Status Oddlot", "nse.nsefo.orderentry.nnf.v9.50.marketstatusoddlot", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_spot = ProtoField.new("Market Status Spot", "nse.nsefo.orderentry.nnf.v9.50.marketstatusspot", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_type = ProtoField.new("Market Type", "nse.nsefo.orderentry.nnf.v9.50.markettype", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.matched_ind = ProtoField.new("Matched Ind", "nse.nsefo.orderentry.nnf.v9.50.matchedind", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0040)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.maximum_gtc_days = ProtoField.new("Maximum Gtc Days", "nse.nsefo.orderentry.nnf.v9.50.maximumgtcdays", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.member_type = ProtoField.new("Member Type", "nse.nsefo.orderentry.nnf.v9.50.membertype", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_download_data = ProtoField.new("Message Download Data", "nse.nsefo.orderentry.nnf.v9.50.messagedownloaddata", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_length = ProtoField.new("Message Length", "nse.nsefo.orderentry.nnf.v9.50.messagelength", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_type = ProtoField.new("Message Type", "nse.nsefo.orderentry.nnf.v9.50.messagetype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.mf = ProtoField.new("Mf", "nse.nsefo.orderentry.nnf.v9.50.mf", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0080)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.min_fill_aon_1 = ProtoField.new("Min Fill Aon 1", "nse.nsefo.orderentry.nnf.v9.50.minfillaon1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.min_fill_aon_2 = ProtoField.new("Min Fill Aon 2", "nse.nsefo.orderentry.nnf.v9.50.minfillaon2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.minimum_fill = ProtoField.new("Minimum Fill", "nse.nsefo.orderentry.nnf.v9.50.minimumfill", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.minimum_fill_aon_volume = ProtoField.new("Minimum Fill Aon Volume", "nse.nsefo.orderentry.nnf.v9.50.minimumfillaonvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.mit = ProtoField.new("Mit", "nse.nsefo.orderentry.nnf.v9.50.mit", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x1000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_index = ProtoField.new("Mkt Index", "nse.nsefo.orderentry.nnf.v9.50.mktindex", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_replay = ProtoField.new("Mkt Replay", "nse.nsefo.orderentry.nnf.v9.50.mktreplay", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_stats_data = ProtoField.new("Mkt Stats Data", "nse.nsefo.orderentry.nnf.v9.50.mktstatsdata", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_type = ProtoField.new("Mkt Type", "nse.nsefo.orderentry.nnf.v9.50.mkttype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.mod_cxl_by_1 = ProtoField.new("Mod Cxl By 1", "nse.nsefo.orderentry.nnf.v9.50.modcxlby1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.modified = ProtoField.new("Modified", "nse.nsefo.orderentry.nnf.v9.50.modified", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0010)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.modified_cancelled_by = ProtoField.new("Modified Cancelled By", "nse.nsefo.orderentry.nnf.v9.50.modifiedcancelledby", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ms_spd_leg_info = ProtoField.new("Ms Spd Leg Info", "nse.nsefo.orderentry.nnf.v9.50.msspdleginfo", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.name = ProtoField.new("Name", "nse.nsefo.orderentry.nnf.v9.50.name", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.new_encryption_tail = ProtoField.new("New Encryption Tail", "nse.nsefo.orderentry.nnf.v9.50.newencryptiontail", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.new_password = ProtoField.new("New Password", "nse.nsefo.orderentry.nnf.v9.50.newpassword", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.nnf_field = ProtoField.new("Nnf Field", "nse.nsefo.orderentry.nnf.v9.50.nnffield", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.no_of_records = ProtoField.new("No Of Records", "nse.nsefo.orderentry.nnf.v9.50.noofrecords", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.noofcontractstraded = ProtoField.new("Noofcontractstraded", "nse.nsefo.orderentry.nnf.v9.50.noofcontractstraded", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.normal_market = ProtoField.new("Normal Market", "nse.nsefo.orderentry.nnf.v9.50.normalmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x8000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.nse_symbol = ProtoField.new("Nse Symbol", "nse.nsefo.orderentry.nnf.v9.50.nsesymbol", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.number_of_industry_records = ProtoField.new("Number Of Industry Records", "nse.nsefo.orderentry.nnf.v9.50.numberofindustryrecords", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.number_of_packets = ProtoField.new("Number Of Packets", "nse.nsefo.orderentry.nnf.v9.50.numberofpackets", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.number_of_records = ProtoField.new("Number Of Records", "nse.nsefo.orderentry.nnf.v9.50.numberofrecords", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.oddlot_market = ProtoField.new("Oddlot Market", "nse.nsefo.orderentry.nnf.v9.50.oddlotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x4000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_account_number = ProtoField.new("Old Account Number", "nse.nsefo.orderentry.nnf.v9.50.oldaccountnumber", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_open_close = ProtoField.new("Old Open Close", "nse.nsefo.orderentry.nnf.v9.50.oldopenclose", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_pan = ProtoField.new("Old Pan", "nse.nsefo.orderentry.nnf.v9.50.oldpan", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_participant = ProtoField.new("Old Participant", "nse.nsefo.orderentry.nnf.v9.50.oldparticipant", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.op_broker_id_1 = ProtoField.new("Op Broker Id 1", "nse.nsefo.orderentry.nnf.v9.50.opbrokerid1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.op_broker_id_2 = ProtoField.new("Op Broker Id 2", "nse.nsefo.orderentry.nnf.v9.50.opbrokerid2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.open = ProtoField.new("Open", "nse.nsefo.orderentry.nnf.v9.50.open", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_close = ProtoField.new("Open Close", "nse.nsefo.orderentry.nnf.v9.50.openclose", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_close_1 = ProtoField.new("Open Close 1", "nse.nsefo.orderentry.nnf.v9.50.openclose1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_close_2 = ProtoField.new("Open Close 2", "nse.nsefo.orderentry.nnf.v9.50.openclose2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_interest = ProtoField.new("Open Interest", "nse.nsefo.orderentry.nnf.v9.50.openinterest", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_price = ProtoField.new("Open Price", "nse.nsefo.orderentry.nnf.v9.50.openprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.opening = ProtoField.new("Opening", "nse.nsefo.orderentry.nnf.v9.50.opening", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.openpd = ProtoField.new("Openpd", "nse.nsefo.orderentry.nnf.v9.50.openpd", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.option_type = ProtoField.new("Option Type", "nse.nsefo.orderentry.nnf.v9.50.optiontype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.optiontype_1 = ProtoField.new("Optiontype 1", "nse.nsefo.orderentry.nnf.v9.50.optiontype1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.optiontype_2 = ProtoField.new("Optiontype 2", "nse.nsefo.orderentry.nnf.v9.50.optiontype2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ord_qty_buff = ProtoField.new("Ord Qty Buff", "nse.nsefo.orderentry.nnf.v9.50.ordqtybuff", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ord_val_buff = ProtoField.new("Ord Val Buff", "nse.nsefo.orderentry.nnf.v9.50.ordvalbuff", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_entry_body = ProtoField.new("Order Entry Body", "nse.nsefo.orderentry.nnf.v9.50.orderentrybody", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_number = ProtoField.new("Order Number", "nse.nsefo.orderentry.nnf.v9.50.ordernumber", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_number_1 = ProtoField.new("Order Number 1", "nse.nsefo.orderentry.nnf.v9.50.ordernumber1", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_pre_open = ProtoField.new("Order Pre Open", "nse.nsefo.orderentry.nnf.v9.50.orderpreopen", ftypes.UINT16, {[0]="Normal Market Order", [1]="Preopen Session Order"}, base.DEC, 0x0004)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_qty_limit = ProtoField.new("Order Qty Limit", "nse.nsefo.orderentry.nnf.v9.50.orderqtylimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_type = ProtoField.new("Order Type", "nse.nsefo.orderentry.nnf.v9.50.ordertype", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_type_1 = ProtoField.new("Order Type 1", "nse.nsefo.orderentry.nnf.v9.50.ordertype1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_type_2 = ProtoField.new("Order Type 2", "nse.nsefo.orderentry.nnf.v9.50.ordertype2", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_val_limit = ProtoField.new("Order Val Limit", "nse.nsefo.orderentry.nnf.v9.50.ordervallimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.org_scope = ProtoField.new("Org Scope", "nse.nsefo.orderentry.nnf.v9.50.orgscope", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.original_volume = ProtoField.new("Original Volume", "nse.nsefo.orderentry.nnf.v9.50.originalvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pan = ProtoField.new("Pan", "nse.nsefo.orderentry.nnf.v9.50.pan", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.participant = ProtoField.new("Participant", "nse.nsefo.orderentry.nnf.v9.50.participant", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.participant_type = ProtoField.new("Participant Type", "nse.nsefo.orderentry.nnf.v9.50.participanttype", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.participant_type_1 = ProtoField.new("Participant Type 1", "nse.nsefo.orderentry.nnf.v9.50.participanttype1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.password = ProtoField.new("Password", "nse.nsefo.orderentry.nnf.v9.50.password", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_auction = ProtoField.new("Pl Market Status Auction", "nse.nsefo.orderentry.nnf.v9.50.plmarketstatusauction", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_normal = ProtoField.new("Pl Market Status Normal", "nse.nsefo.orderentry.nnf.v9.50.plmarketstatusnormal", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_oddlot = ProtoField.new("Pl Market Status Oddlot", "nse.nsefo.orderentry.nnf.v9.50.plmarketstatusoddlot", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_spot = ProtoField.new("Pl Market Status Spot", "nse.nsefo.orderentry.nnf.v9.50.plmarketstatusspot", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.port = ProtoField.new("Port", "nse.nsefo.orderentry.nnf.v9.50.port", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pre_open = ProtoField.new("Pre Open", "nse.nsefo.orderentry.nnf.v9.50.preopen", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0001)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.prev_close = ProtoField.new("Prev Close", "nse.nsefo.orderentry.nnf.v9.50.prevclose", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.previous_close_price = ProtoField.new("Previous Close Price", "nse.nsefo.orderentry.nnf.v9.50.previouscloseprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.price = ProtoField.new("Price", "nse.nsefo.orderentry.nnf.v9.50.price", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_1 = ProtoField.new("Price 1", "nse.nsefo.orderentry.nnf.v9.50.price1", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_2 = ProtoField.new("Price 2", "nse.nsefo.orderentry.nnf.v9.50.price2", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_diff = ProtoField.new("Price Diff", "nse.nsefo.orderentry.nnf.v9.50.pricediff", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pro_client_1 = ProtoField.new("Pro Client 1", "nse.nsefo.orderentry.nnf.v9.50.proclient1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.pro_client_indicator = ProtoField.new("Pro Client Indicator", "nse.nsefo.orderentry.nnf.v9.50.proclientindicator", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reason_code = ProtoField.new("Reason Code", "nse.nsefo.orderentry.nnf.v9.50.reasoncode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reason_code_1 = ProtoField.new("Reason Code 1", "nse.nsefo.orderentry.nnf.v9.50.reasoncode1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reference = ProtoField.new("Reference", "nse.nsefo.orderentry.nnf.v9.50.reference", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.remaining_volume = ProtoField.new("Remaining Volume", "nse.nsefo.orderentry.nnf.v9.50.remainingvolume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_date = ProtoField.new("Report Date", "nse.nsefo.orderentry.nnf.v9.50.reportdate", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_header_body = ProtoField.new("Report Header Body", "nse.nsefo.orderentry.nnf.v9.50.reportheaderbody", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_statistics_body = ProtoField.new("Report Statistics Body", "nse.nsefo.orderentry.nnf.v9.50.reportstatisticsbody", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_trailer_body = ProtoField.new("Report Trailer Body", "nse.nsefo.orderentry.nnf.v9.50.reporttrailerbody", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.request_for_open_orders = ProtoField.new("Request For Open Orders", "nse.nsefo.orderentry.nnf.v9.50.requestforopenorders", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.requested_by = ProtoField.new("Requested By", "nse.nsefo.orderentry.nnf.v9.50.requestedby", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_1 = ProtoField.new("Reserved 1", "nse.nsefo.orderentry.nnf.v9.50.reserved1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_10 = ProtoField.new("Reserved 10", "nse.nsefo.orderentry.nnf.v9.50.reserved10", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_113 = ProtoField.new("Reserved 113", "nse.nsefo.orderentry.nnf.v9.50.reserved113", ftypes.UINT16, nil, base.DEC, 0x1FFF)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_12 = ProtoField.new("Reserved 12", "nse.nsefo.orderentry.nnf.v9.50.reserved12", ftypes.UINT16, nil, base.DEC, 0x0003)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_14 = ProtoField.new("Reserved 14", "nse.nsefo.orderentry.nnf.v9.50.reserved14", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_145 = ProtoField.new("Reserved 145", "nse.nsefo.orderentry.nnf.v9.50.reserved145", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_16 = ProtoField.new("Reserved 16", "nse.nsefo.orderentry.nnf.v9.50.reserved16", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_2 = ProtoField.new("Reserved 2", "nse.nsefo.orderentry.nnf.v9.50.reserved2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_200 = ProtoField.new("Reserved 200", "nse.nsefo.orderentry.nnf.v9.50.reserved200", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_212 = ProtoField.new("Reserved 212", "nse.nsefo.orderentry.nnf.v9.50.reserved212", ftypes.UINT16, nil, base.DEC, 0x0FFE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_24 = ProtoField.new("Reserved 24", "nse.nsefo.orderentry.nnf.v9.50.reserved24", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_25 = ProtoField.new("Reserved 25", "nse.nsefo.orderentry.nnf.v9.50.reserved25", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_26 = ProtoField.new("Reserved 26", "nse.nsefo.orderentry.nnf.v9.50.reserved26", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_32 = ProtoField.new("Reserved 32", "nse.nsefo.orderentry.nnf.v9.50.reserved32", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_34 = ProtoField.new("Reserved 34", "nse.nsefo.orderentry.nnf.v9.50.reserved34", ftypes.UINT8, nil, base.DEC, 0x0C)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_36 = ProtoField.new("Reserved 36", "nse.nsefo.orderentry.nnf.v9.50.reserved36", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_4 = ProtoField.new("Reserved 4", "nse.nsefo.orderentry.nnf.v9.50.reserved4", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_5 = ProtoField.new("Reserved 5", "nse.nsefo.orderentry.nnf.v9.50.reserved5", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_52 = ProtoField.new("Reserved 52", "nse.nsefo.orderentry.nnf.v9.50.reserved52", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_60 = ProtoField.new("Reserved 60", "nse.nsefo.orderentry.nnf.v9.50.reserved60", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_68 = ProtoField.new("Reserved 68", "nse.nsefo.orderentry.nnf.v9.50.reserved68", ftypes.UINT8, nil, base.DEC, 0xE0)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_7 = ProtoField.new("Reserved 7", "nse.nsefo.orderentry.nnf.v9.50.reserved7", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_70 = ProtoField.new("Reserved 70", "nse.nsefo.orderentry.nnf.v9.50.reserved70", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_8 = ProtoField.new("Reserved 8", "nse.nsefo.orderentry.nnf.v9.50.reserved8", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.response_order_number = ProtoField.new("Response Order Number", "nse.nsefo.orderentry.nnf.v9.50.responseordernumber", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.risk_free_interest_rate = ProtoField.new("Risk Free Interest Rate", "nse.nsefo.orderentry.nnf.v9.50.riskfreeinterestrate", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sector_name = ProtoField.new("Sector Name", "nse.nsefo.orderentry.nnf.v9.50.sectorname", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_account_number = ProtoField.new("Sell Account Number", "nse.nsefo.orderentry.nnf.v9.50.sellaccountnumber", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_broker_id = ProtoField.new("Sell Broker Id", "nse.nsefo.orderentry.nnf.v9.50.sellbrokerid", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_open_close = ProtoField.new("Sell Open Close", "nse.nsefo.orderentry.nnf.v9.50.sellopenclose", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_pan = ProtoField.new("Sell Pan", "nse.nsefo.orderentry.nnf.v9.50.sellpan", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sequence_number = ProtoField.new("Sequence Number", "nse.nsefo.orderentry.nnf.v9.50.sequencenumber", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.session_key = ProtoField.new("Session Key", "nse.nsefo.orderentry.nnf.v9.50.sessionkey", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlement_period = ProtoField.new("Settlement Period", "nse.nsefo.orderentry.nnf.v9.50.settlementperiod", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlement_period_1 = ProtoField.new("Settlement Period 1", "nse.nsefo.orderentry.nnf.v9.50.settlementperiod1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlor = ProtoField.new("Settlor", "nse.nsefo.orderentry.nnf.v9.50.settlor", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlor_1 = ProtoField.new("Settlor 1", "nse.nsefo.orderentry.nnf.v9.50.settlor1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.show_index = ProtoField.new("Show Index", "nse.nsefo.orderentry.nnf.v9.50.showindex", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sl = ProtoField.new("Sl", "nse.nsefo.orderentry.nnf.v9.50.sl", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.snap_quote_time = ProtoField.new("Snap Quote Time", "nse.nsefo.orderentry.nnf.v9.50.snapquotetime", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.solicitor_period = ProtoField.new("Solicitor Period", "nse.nsefo.orderentry.nnf.v9.50.solicitorperiod", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.solicitor_period_1 = ProtoField.new("Solicitor Period 1", "nse.nsefo.orderentry.nnf.v9.50.solicitorperiod1", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spd_ord_qty_buff = ProtoField.new("Spd Ord Qty Buff", "nse.nsefo.orderentry.nnf.v9.50.spdordqtybuff", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spd_ord_val_buff = ProtoField.new("Spd Ord Val Buff", "nse.nsefo.orderentry.nnf.v9.50.spdordvalbuff", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spd_stats_data = ProtoField.new("Spd Stats Data", "nse.nsefo.orderentry.nnf.v9.50.spdstatsdata", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spot_market = ProtoField.new("Spot Market", "nse.nsefo.orderentry.nnf.v9.50.spotmarket", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x2000)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_order_body = ProtoField.new("Spread Order Body", "nse.nsefo.orderentry.nnf.v9.50.spreadorderbody", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_report_header_body = ProtoField.new("Spread Report Header Body", "nse.nsefo.orderentry.nnf.v9.50.spreadreportheaderbody", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_report_statistics_body = ProtoField.new("Spread Report Statistics Body", "nse.nsefo.orderentry.nnf.v9.50.spreadreportstatisticsbody", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_broker_eligibility_per_mkt = ProtoField.new("St Broker Eligibility Per Mkt", "nse.nsefo.orderentry.nnf.v9.50.stbrokereligibilitypermkt", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_ex_market_status = ProtoField.new("St Ex Market Status", "nse.nsefo.orderentry.nnf.v9.50.stexmarketstatus", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_market_status = ProtoField.new("St Market Status", "nse.nsefo.orderentry.nnf.v9.50.stmarketstatus", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_order_flags = ProtoField.new("St Order Flags", "nse.nsefo.orderentry.nnf.v9.50.storderflags", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_pl_market_status = ProtoField.new("St Pl Market Status", "nse.nsefo.orderentry.nnf.v9.50.stplmarketstatus", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_stock_eligible_indicators = ProtoField.new("St Stock Eligible Indicators", "nse.nsefo.orderentry.nnf.v9.50.ststockeligibleindicators", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.start = ProtoField.new("Start", "nse.nsefo.orderentry.nnf.v9.50.start", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.start_alpha_1 = ProtoField.new("Start Alpha 1", "nse.nsefo.orderentry.nnf.v9.50.startalpha1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.static_cryptographic_iv = ProtoField.new("Static Cryptographic Iv", "nse.nsefo.orderentry.nnf.v9.50.staticcryptographiciv", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.status = ProtoField.new("Status", "nse.nsefo.orderentry.nnf.v9.50.status", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.stpc = ProtoField.new("Stpc", "nse.nsefo.orderentry.nnf.v9.50.stpc", ftypes.UINT8, {[0]="Cancel Order Resulting In Self Trade By Exchange Default", [1]="Cancel Active Order Resulting In Self Trade"}, base.DEC, 0x10)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.stream_number = ProtoField.new("Stream Number", "nse.nsefo.orderentry.nnf.v9.50.streamnumber", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.strike_price = ProtoField.new("Strike Price", "nse.nsefo.orderentry.nnf.v9.50.strikeprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.strikeprice_1 = ProtoField.new("Strikeprice 1", "nse.nsefo.orderentry.nnf.v9.50.strikeprice1", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.strikeprice_2 = ProtoField.new("Strikeprice 2", "nse.nsefo.orderentry.nnf.v9.50.strikeprice2", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.symbol = ProtoField.new("Symbol", "nse.nsefo.orderentry.nnf.v9.50.symbol", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.symbol_1 = ProtoField.new("Symbol 1", "nse.nsefo.orderentry.nnf.v9.50.symbol1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.symbol_2 = ProtoField.new("Symbol 2", "nse.nsefo.orderentry.nnf.v9.50.symbol2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.tick_size = ProtoField.new("Tick Size", "nse.nsefo.orderentry.nnf.v9.50.ticksize", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.time_stamp_1 = ProtoField.new("Time Stamp 1", "nse.nsefo.orderentry.nnf.v9.50.timestamp1", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.time_stamp_2 = ProtoField.new("Time Stamp 2", "nse.nsefo.orderentry.nnf.v9.50.timestamp2", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.timestamp = ProtoField.new("Timestamp", "nse.nsefo.orderentry.nnf.v9.50.timestamp", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.token = ProtoField.new("Token", "nse.nsefo.orderentry.nnf.v9.50.token", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.token_1 = ProtoField.new("Token 1", "nse.nsefo.orderentry.nnf.v9.50.token1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.token_2 = ProtoField.new("Token 2", "nse.nsefo.orderentry.nnf.v9.50.token2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.token_no = ProtoField.new("Token No", "nse.nsefo.orderentry.nnf.v9.50.tokenno", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_quantity_traded = ProtoField.new("Total Quantity Traded", "nse.nsefo.orderentry.nnf.v9.50.totalquantitytraded", ftypes.INT64)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_trades = ProtoField.new("Total Trades", "nse.nsefo.orderentry.nnf.v9.50.totaltrades", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_value_traded = ProtoField.new("Total Value Traded", "nse.nsefo.orderentry.nnf.v9.50.totalvaluetraded", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_vol_remaining_1 = ProtoField.new("Total Vol Remaining 1", "nse.nsefo.orderentry.nnf.v9.50.totalvolremaining1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_vol_remaining_2 = ProtoField.new("Total Vol Remaining 2", "nse.nsefo.orderentry.nnf.v9.50.totalvolremaining2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_volume_remaining = ProtoField.new("Total Volume Remaining", "nse.nsefo.orderentry.nnf.v9.50.totalvolumeremaining", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.traded = ProtoField.new("Traded", "nse.nsefo.orderentry.nnf.v9.50.traded", ftypes.UINT16, {[0]="No", [1]="Yes"}, base.DEC, 0x0020)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_id = ProtoField.new("Trader Id", "nse.nsefo.orderentry.nnf.v9.50.traderid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_id_1 = ProtoField.new("Trader Id 1", "nse.nsefo.orderentry.nnf.v9.50.traderid1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_name = ProtoField.new("Trader Name", "nse.nsefo.orderentry.nnf.v9.50.tradername", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_number = ProtoField.new("Trader Number", "nse.nsefo.orderentry.nnf.v9.50.tradernumber", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.transaction_code = ProtoField.new("Transaction Code", "nse.nsefo.orderentry.nnf.v9.50.transactioncode", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trd_mod_cxl_bit = ProtoField.new("Trd Mod Cxl Bit", "nse.nsefo.orderentry.nnf.v9.50.trdmodcxlbit", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trigger_price = ProtoField.new("Trigger Price", "nse.nsefo.orderentry.nnf.v9.50.triggerprice", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trigger_price_1 = ProtoField.new("Trigger Price 1", "nse.nsefo.orderentry.nnf.v9.50.triggerprice1", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trigger_price_2 = ProtoField.new("Trigger Price 2", "nse.nsefo.orderentry.nnf.v9.50.triggerprice2", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_portfolio = ProtoField.new("Update Portfolio", "nse.nsefo.orderentry.nnf.v9.50.updateportfolio", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_id = ProtoField.new("User Id", "nse.nsefo.orderentry.nnf.v9.50.userid", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_limits = ProtoField.new("User Limits", "nse.nsefo.orderentry.nnf.v9.50.userlimits", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_name = ProtoField.new("User Name", "nse.nsefo.orderentry.nnf.v9.50.username", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_buy_value_limit = ProtoField.new("User Order Buy Value Limit", "nse.nsefo.orderentry.nnf.v9.50.userorderbuyvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_sell_value_limit = ProtoField.new("User Order Sell Value Limit", "nse.nsefo.orderentry.nnf.v9.50.userordersellvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_used_buy_value_limit = ProtoField.new("User Order Used Buy Value Limit", "nse.nsefo.orderentry.nnf.v9.50.userorderusedbuyvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_used_sell_value_limit = ProtoField.new("User Order Used Sell Value Limit", "nse.nsefo.orderentry.nnf.v9.50.userorderusedsellvaluelimit", ftypes.DOUBLE)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_type = ProtoField.new("User Type", "nse.nsefo.orderentry.nnf.v9.50.usertype", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.version_number = ProtoField.new("Version Number", "nse.nsefo.orderentry.nnf.v9.50.versionnumber", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume = ProtoField.new("Volume", "nse.nsefo.orderentry.nnf.v9.50.volume", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_1 = ProtoField.new("Volume 1", "nse.nsefo.orderentry.nnf.v9.50.volume1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_2 = ProtoField.new("Volume 2", "nse.nsefo.orderentry.nnf.v9.50.volume2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_filled_today = ProtoField.new("Volume Filled Today", "nse.nsefo.orderentry.nnf.v9.50.volumefilledtoday", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_filled_today_1 = ProtoField.new("Volume Filled Today 1", "nse.nsefo.orderentry.nnf.v9.50.volumefilledtoday1", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_filled_today_2 = ProtoField.new("Volume Filled Today 2", "nse.nsefo.orderentry.nnf.v9.50.volumefilledtoday2", ftypes.INT32)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_freeze_percent = ProtoField.new("Volume Freeze Percent", "nse.nsefo.orderentry.nnf.v9.50.volumefreezepercent", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.warning_percent = ProtoField.new("Warning Percent", "nse.nsefo.orderentry.nnf.v9.50.warningpercent", ftypes.INT16)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.ws_class_name = ProtoField.new("Ws Class Name", "nse.nsefo.orderentry.nnf.v9.50.wsclassname", ftypes.STRING)

-- Nse NseFo OrderEntry Nnf 9.50 Headers
omi_nse_nsefo_orderentry_nnf_v9_50.fields.message = ProtoField.new("Message", "nse.nsefo.orderentry.nnf.v9.50.message", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_header = ProtoField.new("Message Header", "nse.nsefo.orderentry.nnf.v9.50.messageheader", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.packet = ProtoField.new("Packet", "nse.nsefo.orderentry.nnf.v9.50.packet", ftypes.STRING)

-- Nse NseFo OrderEntry 9.50 Application Messages
omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_sign_off_message = ProtoField.new("Box Sign Off Message", "nse.nsefo.orderentry.nnf.v9.50.boxsignoffmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_sign_on_request_in_message = ProtoField.new("Box Sign On Request In Message", "nse.nsefo.orderentry.nnf.v9.50.boxsignonrequestinmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_sign_on_request_out_message = ProtoField.new("Box Sign On Request Out Message", "nse.nsefo.orderentry.nnf.v9.50.boxsignonrequestoutmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_order_value_limit_update_message = ProtoField.new("Branch Order Value Limit Update Message", "nse.nsefo.orderentry.nnf.v9.50.branchordervaluelimitupdatemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.collateral_user_status_change_request_message = ProtoField.new("Collateral User Status Change Request Message", "nse.nsefo.orderentry.nnf.v9.50.collateraluserstatuschangerequestmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.collateral_user_status_change_response_message = ProtoField.new("Collateral User Status Change Response Message", "nse.nsefo.orderentry.nnf.v9.50.collateraluserstatuschangeresponsemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.contingency_broadcast_message = ProtoField.new("Contingency Broadcast Message", "nse.nsefo.orderentry.nnf.v9.50.contingencybroadcastmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.control_message_to_trader_message = ProtoField.new("Control Message To Trader Message", "nse.nsefo.orderentry.nnf.v9.50.controlmessagetotradermessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.dealer_limit_update_message = ProtoField.new("Dealer Limit Update Message", "nse.nsefo.orderentry.nnf.v9.50.dealerlimitupdatemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.download_request_message = ProtoField.new("Download Request Message", "nse.nsefo.orderentry.nnf.v9.50.downloadrequestmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.enhanced_market_statistics_report_message = ProtoField.new("Enhanced Market Statistics Report Message", "nse.nsefo.orderentry.nnf.v9.50.enhancedmarketstatisticsreportmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.gateway_router_request_message = ProtoField.new("Gateway Router Request Message", "nse.nsefo.orderentry.nnf.v9.50.gatewayrouterrequestmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.gateway_router_response_message = ProtoField.new("Gateway Router Response Message", "nse.nsefo.orderentry.nnf.v9.50.gatewayrouterresponsemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.giveup_confirmation_message = ProtoField.new("Giveup Confirmation Message", "nse.nsefo.orderentry.nnf.v9.50.giveupconfirmationmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.global_contracts_message = ProtoField.new("Global Contracts Message", "nse.nsefo.orderentry.nnf.v9.50.globalcontractsmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.global_indices_message = ProtoField.new("Global Indices Message", "nse.nsefo.orderentry.nnf.v9.50.globalindicesmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.header_record_message = ProtoField.new("Header Record Message", "nse.nsefo.orderentry.nnf.v9.50.headerrecordmessage", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.heartbeat_message = ProtoField.new("Heartbeat Message", "nse.nsefo.orderentry.nnf.v9.50.heartbeatmessage", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.industry_index_report_message = ProtoField.new("Industry Index Report Message", "nse.nsefo.orderentry.nnf.v9.50.industryindexreportmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_index_report_message = ProtoField.new("Market Index Report Message", "nse.nsefo.orderentry.nnf.v9.50.marketindexreportmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_statistics_report_message = ProtoField.new("Market Statistics Report Message", "nse.nsefo.orderentry.nnf.v9.50.marketstatisticsreportmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_record_message = ProtoField.new("Message Record Message", "nse.nsefo.orderentry.nnf.v9.50.messagerecordmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.normal_order_limit_update_message = ProtoField.new("Normal Order Limit Update Message", "nse.nsefo.orderentry.nnf.v9.50.normalorderlimitupdatemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_cancellation_confirmation_message = ProtoField.new("Order Cancellation Confirmation Message", "nse.nsefo.orderentry.nnf.v9.50.ordercancellationconfirmationmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_entry_message = ProtoField.new("Order Entry Message", "nse.nsefo.orderentry.nnf.v9.50.orderentrymessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_modification_message = ProtoField.new("Price Modification Message", "nse.nsefo.orderentry.nnf.v9.50.pricemodificationmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.reset_user_password_message = ProtoField.new("Reset User Password Message", "nse.nsefo.orderentry.nnf.v9.50.resetuserpasswordmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sector_index_report_message = ProtoField.new("Sector Index Report Message", "nse.nsefo.orderentry.nnf.v9.50.sectorindexreportmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.secure_box_registration_request_in_message = ProtoField.new("Secure Box Registration Request In Message", "nse.nsefo.orderentry.nnf.v9.50.secureboxregistrationrequestinmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.secure_box_registration_response_out_message = ProtoField.new("Secure Box Registration Response Out Message", "nse.nsefo.orderentry.nnf.v9.50.secureboxregistrationresponseoutmessage", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sign_off_request_in_message = ProtoField.new("Sign Off Request In Message", "nse.nsefo.orderentry.nnf.v9.50.signoffrequestinmessage", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sign_off_request_out_message = ProtoField.new("Sign Off Request Out Message", "nse.nsefo.orderentry.nnf.v9.50.signoffrequestoutmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sign_on_request_in_message = ProtoField.new("Sign On Request In Message", "nse.nsefo.orderentry.nnf.v9.50.signonrequestinmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.sign_on_request_out_message = ProtoField.new("Sign On Request Out Message", "nse.nsefo.orderentry.nnf.v9.50.signonrequestoutmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_bhavcopy_message = ProtoField.new("Spread Bhavcopy Message", "nse.nsefo.orderentry.nnf.v9.50.spreadbhavcopymessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_order_entry_message = ProtoField.new("Spread Order Entry Message", "nse.nsefo.orderentry.nnf.v9.50.spreadorderentrymessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_order_limit_update_message = ProtoField.new("Spread Order Limit Update Message", "nse.nsefo.orderentry.nnf.v9.50.spreadorderlimitupdatemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.system_information_in_message = ProtoField.new("System Information In Message", "nse.nsefo.orderentry.nnf.v9.50.systeminformationinmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.system_information_out_message = ProtoField.new("System Information Out Message", "nse.nsefo.orderentry.nnf.v9.50.systeminformationoutmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trade_confirmation_message = ProtoField.new("Trade Confirmation Message", "nse.nsefo.orderentry.nnf.v9.50.tradeconfirmationmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trade_inquiry_message = ProtoField.new("Trade Inquiry Message", "nse.nsefo.orderentry.nnf.v9.50.tradeinquirymessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.trailer_record_message = ProtoField.new("Trailer Record Message", "nse.nsefo.orderentry.nnf.v9.50.trailerrecordmessage", ftypes.BYTES)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_data_message = ProtoField.new("Update Local Database Data Message", "nse.nsefo.orderentry.nnf.v9.50.updatelocaldatabasedatamessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_header_message = ProtoField.new("Update Local Database Header Message", "nse.nsefo.orderentry.nnf.v9.50.updatelocaldatabaseheadermessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_in_message = ProtoField.new("Update Local Database In Message", "nse.nsefo.orderentry.nnf.v9.50.updatelocaldatabaseinmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_trailer_message = ProtoField.new("Update Local Database Trailer Message", "nse.nsefo.orderentry.nnf.v9.50.updatelocaldatabasetrailermessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_address_unlock_approve_message = ProtoField.new("User Address Unlock Approve Message", "nse.nsefo.orderentry.nnf.v9.50.useraddressunlockapprovemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_address_unlock_confirm_message = ProtoField.new("User Address Unlock Confirm Message", "nse.nsefo.orderentry.nnf.v9.50.useraddressunlockconfirmmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_address_unlock_request_message = ProtoField.new("User Address Unlock Request Message", "nse.nsefo.orderentry.nnf.v9.50.useraddressunlockrequestmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_limit_update_message = ProtoField.new("User Order Limit Update Message", "nse.nsefo.orderentry.nnf.v9.50.userorderlimitupdatemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_value_limit_update_message = ProtoField.new("User Order Value Limit Update Message", "nse.nsefo.orderentry.nnf.v9.50.userordervaluelimitupdatemessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_trade_modify_cancel_status_change_request_message = ProtoField.new("User Trade Modify Cancel Status Change Request Message", "nse.nsefo.orderentry.nnf.v9.50.usertrademodifycancelstatuschangerequestmessage", ftypes.STRING)
omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_trade_modify_cancel_status_change_response_message = ProtoField.new("User Trade Modify Cancel Status Change Response Message", "nse.nsefo.orderentry.nnf.v9.50.usertrademodifycancelstatuschangeresponsemessage", ftypes.STRING)

-----------------------------------------------------------------------
-- Declare Dissection Options
-----------------------------------------------------------------------

local show = {}

-- Nse NseFo OrderEntry Nnf 9.50 Element Dissection Options
show.structs = true
show.application_messages = true

-- Register Nse NseFo OrderEntry Nnf 9.50 Show Options
omi_nse_nsefo_orderentry_nnf_v9_50.prefs.show_structs = Pref.bool("Show Structs", show.structs, "Parse and add Structs to protocol tree")
omi_nse_nsefo_orderentry_nnf_v9_50.prefs.show_application_messages = Pref.bool("Show Application Messages", show.application_messages, "Parse and add Application Messages to protocol tree")

-- Handle changed preferences
function omi_nse_nsefo_orderentry_nnf_v9_50.prefs_changed()

  -- Check if preferences have changed
  if show.application_messages ~= omi_nse_nsefo_orderentry_nnf_v9_50.prefs.show_application_messages then
    show.application_messages = omi_nse_nsefo_orderentry_nnf_v9_50.prefs.show_application_messages
  end
  if show.structs ~= omi_nse_nsefo_orderentry_nnf_v9_50.prefs.show_structs then
    show.structs = omi_nse_nsefo_orderentry_nnf_v9_50.prefs.show_structs
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
-- Nse NseFo OrderEntry Nnf 9.50 Fields
-----------------------------------------------------------------------

-- Account Number
nse_nsefo_orderentry_nnf_v9_50.account_number = {}

-- Size: Account Number
nse_nsefo_orderentry_nnf_v9_50.account_number.size = 10

-- Display: Account Number
nse_nsefo_orderentry_nnf_v9_50.account_number.display = function(value)
  return "Account Number: "..value
end

-- Dissect: Account Number
nse_nsefo_orderentry_nnf_v9_50.account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.account_number, range, value, display)

  return offset + length, value
end

-- Account Number 1
nse_nsefo_orderentry_nnf_v9_50.account_number_1 = {}

-- Size: Account Number 1
nse_nsefo_orderentry_nnf_v9_50.account_number_1.size = 10

-- Display: Account Number 1
nse_nsefo_orderentry_nnf_v9_50.account_number_1.display = function(value)
  return "Account Number 1: "..value
end

-- Dissect: Account Number 1
nse_nsefo_orderentry_nnf_v9_50.account_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.account_number_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.account_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.account_number_1, range, value, display)

  return offset + length, value
end

-- Action Code
nse_nsefo_orderentry_nnf_v9_50.action_code = {}

-- Size: Action Code
nse_nsefo_orderentry_nnf_v9_50.action_code.size = 3

-- Display: Action Code
nse_nsefo_orderentry_nnf_v9_50.action_code.display = function(value)
  return "Action Code: "..value
end

-- Dissect: Action Code
nse_nsefo_orderentry_nnf_v9_50.action_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.action_code.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.action_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.action_code, range, value, display)

  return offset + length, value
end

-- Activity Time
nse_nsefo_orderentry_nnf_v9_50.activity_time = {}

-- Size: Activity Time
nse_nsefo_orderentry_nnf_v9_50.activity_time.size = 4

-- Display: Activity Time
nse_nsefo_orderentry_nnf_v9_50.activity_time.display = function(value)
  return "Activity Time: "..value
end

-- Dissect: Activity Time
nse_nsefo_orderentry_nnf_v9_50.activity_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.activity_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.activity_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.activity_time, range, value, display)

  return offset + length, value
end

-- Activity Type
nse_nsefo_orderentry_nnf_v9_50.activity_type = {}

-- Size: Activity Type
nse_nsefo_orderentry_nnf_v9_50.activity_type.size = 2

-- Display: Activity Type
nse_nsefo_orderentry_nnf_v9_50.activity_type.display = function(value)
  return "Activity Type: "..value
end

-- Dissect: Activity Type
nse_nsefo_orderentry_nnf_v9_50.activity_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.activity_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.activity_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.activity_type, range, value, display)

  return offset + length, value
end

-- Algo Id
nse_nsefo_orderentry_nnf_v9_50.algo_id = {}

-- Size: Algo Id
nse_nsefo_orderentry_nnf_v9_50.algo_id.size = 4

-- Display: Algo Id
nse_nsefo_orderentry_nnf_v9_50.algo_id.display = function(value)
  return "Algo Id: "..value
end

-- Dissect: Algo Id
nse_nsefo_orderentry_nnf_v9_50.algo_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.algo_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.algo_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.algo_id, range, value, display)

  return offset + length, value
end

-- Alpha Char
nse_nsefo_orderentry_nnf_v9_50.alpha_char = {}

-- Size: Alpha Char
nse_nsefo_orderentry_nnf_v9_50.alpha_char.size = 2

-- Display: Alpha Char
nse_nsefo_orderentry_nnf_v9_50.alpha_char.display = function(value)
  return "Alpha Char: "..value
end

-- Dissect: Alpha Char
nse_nsefo_orderentry_nnf_v9_50.alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.alpha_char.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.alpha_char, range, value, display)

  return offset + length, value
end

-- Ask Price
nse_nsefo_orderentry_nnf_v9_50.ask_price = {}

-- Size: Ask Price
nse_nsefo_orderentry_nnf_v9_50.ask_price.size = 4

-- Display: Ask Price
nse_nsefo_orderentry_nnf_v9_50.ask_price.display = function(value)
  return "Ask Price: "..value
end

-- Translate: Ask Price
nse_nsefo_orderentry_nnf_v9_50.ask_price.translate = function(raw)
  return raw/100
end

-- Dissect: Ask Price
nse_nsefo_orderentry_nnf_v9_50.ask_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ask_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.ask_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.ask_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ask_price, range, value, display)

  return offset + length, value
end

-- Ask Size
nse_nsefo_orderentry_nnf_v9_50.ask_size = {}

-- Size: Ask Size
nse_nsefo_orderentry_nnf_v9_50.ask_size.size = 8

-- Display: Ask Size
nse_nsefo_orderentry_nnf_v9_50.ask_size.display = function(value)
  return "Ask Size: "..value
end

-- Dissect: Ask Size
nse_nsefo_orderentry_nnf_v9_50.ask_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ask_size.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.ask_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ask_size, range, value, display)

  return offset + length, value
end

-- Batch 2 Start Time
nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time = {}

-- Size: Batch 2 Start Time
nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time.size = 4

-- Display: Batch 2 Start Time
nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time.display = function(value)
  return "Batch 2 Start Time: "..value
end

-- Dissect: Batch 2 Start Time
nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.batch_2_start_time, range, value, display)

  return offset + length, value
end

-- Bid Price
nse_nsefo_orderentry_nnf_v9_50.bid_price = {}

-- Size: Bid Price
nse_nsefo_orderentry_nnf_v9_50.bid_price.size = 4

-- Display: Bid Price
nse_nsefo_orderentry_nnf_v9_50.bid_price.display = function(value)
  return "Bid Price: "..value
end

-- Translate: Bid Price
nse_nsefo_orderentry_nnf_v9_50.bid_price.translate = function(raw)
  return raw/100
end

-- Dissect: Bid Price
nse_nsefo_orderentry_nnf_v9_50.bid_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.bid_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.bid_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.bid_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.bid_price, range, value, display)

  return offset + length, value
end

-- Bid Size
nse_nsefo_orderentry_nnf_v9_50.bid_size = {}

-- Size: Bid Size
nse_nsefo_orderentry_nnf_v9_50.bid_size.size = 8

-- Display: Bid Size
nse_nsefo_orderentry_nnf_v9_50.bid_size.display = function(value)
  return "Bid Size: "..value
end

-- Dissect: Bid Size
nse_nsefo_orderentry_nnf_v9_50.bid_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.bid_size.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.bid_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.bid_size, range, value, display)

  return offset + length, value
end

-- Board Lot Quantity
nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity = {}

-- Size: Board Lot Quantity
nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity.size = 4

-- Display: Board Lot Quantity
nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity.display = function(value)
  return "Board Lot Quantity: "..value
end

-- Dissect: Board Lot Quantity
nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.board_lot_quantity, range, value, display)

  return offset + length, value
end

-- Book Type
nse_nsefo_orderentry_nnf_v9_50.book_type = {}

-- Size: Book Type
nse_nsefo_orderentry_nnf_v9_50.book_type.size = 1

-- Display: Book Type
nse_nsefo_orderentry_nnf_v9_50.book_type.display = function(value)
  return "Book Type: "..value
end

-- Dissect: Book Type
nse_nsefo_orderentry_nnf_v9_50.book_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.book_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.book_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.book_type, range, value, display)

  return offset + length, value
end

-- Book Type 1
nse_nsefo_orderentry_nnf_v9_50.book_type_1 = {}

-- Size: Book Type 1
nse_nsefo_orderentry_nnf_v9_50.book_type_1.size = 2

-- Display: Book Type 1
nse_nsefo_orderentry_nnf_v9_50.book_type_1.display = function(value)
  return "Book Type 1: "..value
end

-- Dissect: Book Type 1
nse_nsefo_orderentry_nnf_v9_50.book_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.book_type_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.book_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.book_type_1, range, value, display)

  return offset + length, value
end

-- Box Id
nse_nsefo_orderentry_nnf_v9_50.box_id = {}

-- Size: Box Id
nse_nsefo_orderentry_nnf_v9_50.box_id.size = 2

-- Display: Box Id
nse_nsefo_orderentry_nnf_v9_50.box_id.display = function(value)
  return "Box Id: "..value
end

-- Dissect: Box Id
nse_nsefo_orderentry_nnf_v9_50.box_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.box_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.box_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_id, range, value, display)

  return offset + length, value
end

-- Branch Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit = {}

-- Size: Branch Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.size = 8

-- Display: Branch Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.display = function(value)
  return "Branch Buy Value Limit: "..value
end

-- Dissect: Branch Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_buy_value_limit, range, value, display)

  return offset + length, value
end

-- Branch Id
nse_nsefo_orderentry_nnf_v9_50.branch_id = {}

-- Size: Branch Id
nse_nsefo_orderentry_nnf_v9_50.branch_id.size = 2

-- Display: Branch Id
nse_nsefo_orderentry_nnf_v9_50.branch_id.display = function(value)
  return "Branch Id: "..value
end

-- Dissect: Branch Id
nse_nsefo_orderentry_nnf_v9_50.branch_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.branch_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.branch_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_id, range, value, display)

  return offset + length, value
end

-- Branch Id 1
nse_nsefo_orderentry_nnf_v9_50.branch_id_1 = {}

-- Size: Branch Id 1
nse_nsefo_orderentry_nnf_v9_50.branch_id_1.size = 2

-- Display: Branch Id 1
nse_nsefo_orderentry_nnf_v9_50.branch_id_1.display = function(value)
  return "Branch Id 1: "..value
end

-- Dissect: Branch Id 1
nse_nsefo_orderentry_nnf_v9_50.branch_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.branch_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.branch_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_id_1, range, value, display)

  return offset + length, value
end

-- Branch Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit = {}

-- Size: Branch Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.size = 8

-- Display: Branch Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.display = function(value)
  return "Branch Sell Value Limit: "..value
end

-- Dissect: Branch Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_sell_value_limit, range, value, display)

  return offset + length, value
end

-- Branch Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit = {}

-- Size: Branch Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit.size = 8

-- Display: Branch Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit.display = function(value)
  return "Branch Used Buy Value Limit: "..value
end

-- Dissect: Branch Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_used_buy_value_limit, range, value, display)

  return offset + length, value
end

-- Branch Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit = {}

-- Size: Branch Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit.size = 8

-- Display: Branch Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit.display = function(value)
  return "Branch Used Sell Value Limit: "..value
end

-- Dissect: Branch Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_used_sell_value_limit, range, value, display)

  return offset + length, value
end

-- Broad Cast Message
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message = {}

-- Size: Broad Cast Message
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message.size = 239

-- Display: Broad Cast Message
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message.display = function(value)
  return "Broad Cast Message: "..value
end

-- Dissect: Broad Cast Message
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.broad_cast_message.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.broad_cast_message.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.broad_cast_message, range, value, display)

  return offset + length, value
end

-- Broad Cast Message Length
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length = {}

-- Size: Broad Cast Message Length
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length.size = 2

-- Display: Broad Cast Message Length
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length.display = function(value)
  return "Broad Cast Message Length: "..value
end

-- Dissect: Broad Cast Message Length
nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.broad_cast_message_length, range, value, display)

  return offset + length, value
end

-- Broker Id
nse_nsefo_orderentry_nnf_v9_50.broker_id = {}

-- Size: Broker Id
nse_nsefo_orderentry_nnf_v9_50.broker_id.size = 5

-- Display: Broker Id
nse_nsefo_orderentry_nnf_v9_50.broker_id.display = function(value)
  return "Broker Id: "..value
end

-- Dissect: Broker Id
nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_id, range, value, display)

  return offset + length, value
end

-- Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.broker_id_1 = {}

-- Size: Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.broker_id_1.size = 5

-- Display: Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.broker_id_1.display = function(value)
  return "Broker Id 1: "..value
end

-- Dissect: Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.broker_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.broker_id_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.broker_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_id_1, range, value, display)

  return offset + length, value
end

-- Broker Name
nse_nsefo_orderentry_nnf_v9_50.broker_name = {}

-- Size: Broker Name
nse_nsefo_orderentry_nnf_v9_50.broker_name.size = 25

-- Display: Broker Name
nse_nsefo_orderentry_nnf_v9_50.broker_name.display = function(value)
  return "Broker Name: "..value
end

-- Dissect: Broker Name
nse_nsefo_orderentry_nnf_v9_50.broker_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.broker_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.broker_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_name, range, value, display)

  return offset + length, value
end

-- Broker Status
nse_nsefo_orderentry_nnf_v9_50.broker_status = {}

-- Size: Broker Status
nse_nsefo_orderentry_nnf_v9_50.broker_status.size = 1

-- Display: Broker Status
nse_nsefo_orderentry_nnf_v9_50.broker_status.display = function(value)
  return "Broker Status: "..value
end

-- Dissect: Broker Status
nse_nsefo_orderentry_nnf_v9_50.broker_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.broker_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.broker_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.broker_status, range, value, display)

  return offset + length, value
end

-- Brokernumber
nse_nsefo_orderentry_nnf_v9_50.brokernumber = {}

-- Size: Brokernumber
nse_nsefo_orderentry_nnf_v9_50.brokernumber.size = 5

-- Display: Brokernumber
nse_nsefo_orderentry_nnf_v9_50.brokernumber.display = function(value)
  return "Brokernumber: "..value
end

-- Dissect: Brokernumber
nse_nsefo_orderentry_nnf_v9_50.brokernumber.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.brokernumber.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.brokernumber.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.brokernumber, range, value, display)

  return offset + length, value
end

-- Buy Account Number
nse_nsefo_orderentry_nnf_v9_50.buy_account_number = {}

-- Size: Buy Account Number
nse_nsefo_orderentry_nnf_v9_50.buy_account_number.size = 10

-- Display: Buy Account Number
nse_nsefo_orderentry_nnf_v9_50.buy_account_number.display = function(value)
  return "Buy Account Number: "..value
end

-- Dissect: Buy Account Number
nse_nsefo_orderentry_nnf_v9_50.buy_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_account_number, range, value, display)

  return offset + length, value
end

-- Buy Broker Id
nse_nsefo_orderentry_nnf_v9_50.buy_broker_id = {}

-- Size: Buy Broker Id
nse_nsefo_orderentry_nnf_v9_50.buy_broker_id.size = 5

-- Display: Buy Broker Id
nse_nsefo_orderentry_nnf_v9_50.buy_broker_id.display = function(value)
  return "Buy Broker Id: "..value
end

-- Dissect: Buy Broker Id
nse_nsefo_orderentry_nnf_v9_50.buy_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_broker_id, range, value, display)

  return offset + length, value
end

-- Buy Open Close
nse_nsefo_orderentry_nnf_v9_50.buy_open_close = {}

-- Size: Buy Open Close
nse_nsefo_orderentry_nnf_v9_50.buy_open_close.size = 1

-- Display: Buy Open Close
nse_nsefo_orderentry_nnf_v9_50.buy_open_close.display = function(value)
  return "Buy Open Close: "..value
end

-- Dissect: Buy Open Close
nse_nsefo_orderentry_nnf_v9_50.buy_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_open_close, range, value, display)

  return offset + length, value
end

-- Buy Pan
nse_nsefo_orderentry_nnf_v9_50.buy_pan = {}

-- Size: Buy Pan
nse_nsefo_orderentry_nnf_v9_50.buy_pan.size = 10

-- Display: Buy Pan
nse_nsefo_orderentry_nnf_v9_50.buy_pan.display = function(value)
  return "Buy Pan: "..value
end

-- Dissect: Buy Pan
nse_nsefo_orderentry_nnf_v9_50.buy_pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_pan, range, value, display)

  return offset + length, value
end

-- Buy Sell
nse_nsefo_orderentry_nnf_v9_50.buy_sell = {}

-- Size: Buy Sell
nse_nsefo_orderentry_nnf_v9_50.buy_sell.size = 2

-- Display: Buy Sell
nse_nsefo_orderentry_nnf_v9_50.buy_sell.display = function(value)
  if value == 1 then
    return "Buy Sell: Buy Order (1)"
  end
  if value == 2 then
    return "Buy Sell: Sell Order (2)"
  end

  return "Buy Sell: Unknown("..value..")"
end

-- Dissect: Buy Sell
nse_nsefo_orderentry_nnf_v9_50.buy_sell.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_sell.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_sell.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell, range, value, display)

  return offset + length, value
end

-- Buy Sell 1
nse_nsefo_orderentry_nnf_v9_50.buy_sell_1 = {}

-- Size: Buy Sell 1
nse_nsefo_orderentry_nnf_v9_50.buy_sell_1.size = 2

-- Display: Buy Sell 1
nse_nsefo_orderentry_nnf_v9_50.buy_sell_1.display = function(value)
  return "Buy Sell 1: "..value
end

-- Dissect: Buy Sell 1
nse_nsefo_orderentry_nnf_v9_50.buy_sell_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_sell_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_sell_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell_1, range, value, display)

  return offset + length, value
end

-- Buy Sell 2
nse_nsefo_orderentry_nnf_v9_50.buy_sell_2 = {}

-- Size: Buy Sell 2
nse_nsefo_orderentry_nnf_v9_50.buy_sell_2.size = 2

-- Display: Buy Sell 2
nse_nsefo_orderentry_nnf_v9_50.buy_sell_2.display = function(value)
  return "Buy Sell 2: "..value
end

-- Dissect: Buy Sell 2
nse_nsefo_orderentry_nnf_v9_50.buy_sell_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_sell_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_sell_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell_2, range, value, display)

  return offset + length, value
end

-- Buy Sell Indicator
nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator = {}

-- Size: Buy Sell Indicator
nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.size = 2

-- Display: Buy Sell Indicator
nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.display = function(value)
  if value == 1 then
    return "Buy Sell Indicator: Buy Order (1)"
  end
  if value == 2 then
    return "Buy Sell Indicator: Sell Order (2)"
  end

  return "Buy Sell Indicator: Unknown("..value..")"
end

-- Dissect: Buy Sell Indicator
nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.buy_sell_indicator, range, value, display)

  return offset + length, value
end

-- C Ord Filler
nse_nsefo_orderentry_nnf_v9_50.c_ord_filler = {}

-- Size: C Ord Filler
nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.size = 24

-- Display: C Ord Filler
nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.display = function(value)
  return "C Ord Filler: "..value
end

-- Dissect: C Ord Filler
nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.c_ord_filler, range, value, display)

  return offset + length, value
end

-- Ca Level
nse_nsefo_orderentry_nnf_v9_50.ca_level = {}

-- Size: Ca Level
nse_nsefo_orderentry_nnf_v9_50.ca_level.size = 2

-- Display: Ca Level
nse_nsefo_orderentry_nnf_v9_50.ca_level.display = function(value)
  return "Ca Level: "..value
end

-- Dissect: Ca Level
nse_nsefo_orderentry_nnf_v9_50.ca_level.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ca_level.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.ca_level.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ca_level, range, value, display)

  return offset + length, value
end

-- Calevel 1
nse_nsefo_orderentry_nnf_v9_50.calevel_1 = {}

-- Size: Calevel 1
nse_nsefo_orderentry_nnf_v9_50.calevel_1.size = 2

-- Display: Calevel 1
nse_nsefo_orderentry_nnf_v9_50.calevel_1.display = function(value)
  return "Calevel 1: "..value
end

-- Dissect: Calevel 1
nse_nsefo_orderentry_nnf_v9_50.calevel_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.calevel_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.calevel_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.calevel_1, range, value, display)

  return offset + length, value
end

-- Calevel 2
nse_nsefo_orderentry_nnf_v9_50.calevel_2 = {}

-- Size: Calevel 2
nse_nsefo_orderentry_nnf_v9_50.calevel_2.size = 2

-- Display: Calevel 2
nse_nsefo_orderentry_nnf_v9_50.calevel_2.display = function(value)
  return "Calevel 2: "..value
end

-- Dissect: Calevel 2
nse_nsefo_orderentry_nnf_v9_50.calevel_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.calevel_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.calevel_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.calevel_2, range, value, display)

  return offset + length, value
end

-- Chg Open Interest
nse_nsefo_orderentry_nnf_v9_50.chg_open_interest = {}

-- Size: Chg Open Interest
nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.size = 8

-- Display: Chg Open Interest
nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.display = function(value)
  return "Chg Open Interest: "..value
end

-- Dissect: Chg Open Interest
nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.chg_open_interest, range, value, display)

  return offset + length, value
end

-- Clearing Status
nse_nsefo_orderentry_nnf_v9_50.clearing_status = {}

-- Size: Clearing Status
nse_nsefo_orderentry_nnf_v9_50.clearing_status.size = 1

-- Display: Clearing Status
nse_nsefo_orderentry_nnf_v9_50.clearing_status.display = function(value)
  return "Clearing Status: "..value
end

-- Dissect: Clearing Status
nse_nsefo_orderentry_nnf_v9_50.clearing_status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.clearing_status.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.clearing_status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.clearing_status, range, value, display)

  return offset + length, value
end

-- Close
nse_nsefo_orderentry_nnf_v9_50.close = {}

-- Size: Close
nse_nsefo_orderentry_nnf_v9_50.close.size = 4

-- Display: Close
nse_nsefo_orderentry_nnf_v9_50.close.display = function(value)
  return "Close: "..value
end

-- Dissect: Close
nse_nsefo_orderentry_nnf_v9_50.close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.close.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.close, range, value, display)

  return offset + length, value
end

-- Closeout Flag
nse_nsefo_orderentry_nnf_v9_50.closeout_flag = {}

-- Size: Closeout Flag
nse_nsefo_orderentry_nnf_v9_50.closeout_flag.size = 1

-- Display: Closeout Flag
nse_nsefo_orderentry_nnf_v9_50.closeout_flag.display = function(value)
  return "Closeout Flag: "..value
end

-- Dissect: Closeout Flag
nse_nsefo_orderentry_nnf_v9_50.closeout_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.closeout_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.closeout_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.closeout_flag, range, value, display)

  return offset + length, value
end

-- Closing
nse_nsefo_orderentry_nnf_v9_50.closing = {}

-- Size: Closing
nse_nsefo_orderentry_nnf_v9_50.closing.size = 2

-- Display: Closing
nse_nsefo_orderentry_nnf_v9_50.closing.display = function(value)
  return "Closing: "..value
end

-- Dissect: Closing
nse_nsefo_orderentry_nnf_v9_50.closing.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.closing.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.closing.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.closing, range, value, display)

  return offset + length, value
end

-- Closing Price
nse_nsefo_orderentry_nnf_v9_50.closing_price = {}

-- Size: Closing Price
nse_nsefo_orderentry_nnf_v9_50.closing_price.size = 4

-- Display: Closing Price
nse_nsefo_orderentry_nnf_v9_50.closing_price.display = function(value)
  return "Closing Price: "..value
end

-- Translate: Closing Price
nse_nsefo_orderentry_nnf_v9_50.closing_price.translate = function(raw)
  return raw/100
end

-- Dissect: Closing Price
nse_nsefo_orderentry_nnf_v9_50.closing_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.closing_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.closing_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.closing_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.closing_price, range, value, display)

  return offset + length, value
end

-- Col User Bit
nse_nsefo_orderentry_nnf_v9_50.col_user_bit = {}

-- Size: Col User Bit
nse_nsefo_orderentry_nnf_v9_50.col_user_bit.size = 1

-- Display: Col User Bit
nse_nsefo_orderentry_nnf_v9_50.col_user_bit.display = function(value)
  return "Col User Bit: "..value
end

-- Dissect: Col User Bit
nse_nsefo_orderentry_nnf_v9_50.col_user_bit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.col_user_bit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.col_user_bit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.col_user_bit, range, value, display)

  return offset + length, value
end

-- Colour
nse_nsefo_orderentry_nnf_v9_50.colour = {}

-- Size: Colour
nse_nsefo_orderentry_nnf_v9_50.colour.size = 50

-- Display: Colour
nse_nsefo_orderentry_nnf_v9_50.colour.display = function(value)
  return "Colour: "..value
end

-- Dissect: Colour
nse_nsefo_orderentry_nnf_v9_50.colour.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.colour.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.colour.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.colour, range, value, display)

  return offset + length, value
end

-- Competitor Period
nse_nsefo_orderentry_nnf_v9_50.competitor_period = {}

-- Size: Competitor Period
nse_nsefo_orderentry_nnf_v9_50.competitor_period.size = 2

-- Display: Competitor Period
nse_nsefo_orderentry_nnf_v9_50.competitor_period.display = function(value)
  return "Competitor Period: "..value
end

-- Dissect: Competitor Period
nse_nsefo_orderentry_nnf_v9_50.competitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.competitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.competitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.competitor_period, range, value, display)

  return offset + length, value
end

-- Competitor Period 1
nse_nsefo_orderentry_nnf_v9_50.competitor_period_1 = {}

-- Size: Competitor Period 1
nse_nsefo_orderentry_nnf_v9_50.competitor_period_1.size = 2

-- Display: Competitor Period 1
nse_nsefo_orderentry_nnf_v9_50.competitor_period_1.display = function(value)
  return "Competitor Period 1: "..value
end

-- Dissect: Competitor Period 1
nse_nsefo_orderentry_nnf_v9_50.competitor_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.competitor_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.competitor_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.competitor_period_1, range, value, display)

  return offset + length, value
end

-- Counter Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_broker_id = {}

-- Size: Counter Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_broker_id.size = 5

-- Display: Counter Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_broker_id.display = function(value)
  return "Counter Broker Id: "..value
end

-- Dissect: Counter Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.counter_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.counter_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.counter_broker_id, range, value, display)

  return offset + length, value
end

-- Counter Party Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id = {}

-- Size: Counter Party Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id.size = 5

-- Display: Counter Party Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id.display = function(value)
  return "Counter Party Broker Id: "..value
end

-- Dissect: Counter Party Broker Id
nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.counter_party_broker_id, range, value, display)

  return offset + length, value
end

-- Counter Trader Order Number
nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number = {}

-- Size: Counter Trader Order Number
nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number.size = 8

-- Display: Counter Trader Order Number
nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number.display = function(value)
  return "Counter Trader Order Number: "..value
end

-- Dissect: Counter Trader Order Number
nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.counter_trader_order_number, range, value, display)

  return offset + length, value
end

-- Cryptographic Additional Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key = {}

-- Size: Cryptographic Additional Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key.size = 12

-- Display: Cryptographic Additional Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key.display = function(value)
  return "Cryptographic Additional Key: "..value
end

-- Dissect: Cryptographic Additional Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_additional_key, range, value, display)

  return offset + length, value
end

-- Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv = {}

-- Size: Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv.size = 16

-- Display: Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv.display = function(value)
  return "Cryptographic Iv: "..value
end

-- Dissect: Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Cryptographic Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_key = {}

-- Size: Cryptographic Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_key.size = 32

-- Display: Cryptographic Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_key.display = function(value)
  return "Cryptographic Key: "..value
end

-- Dissect: Cryptographic Key
nse_nsefo_orderentry_nnf_v9_50.cryptographic_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.cryptographic_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.cryptographic_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_key, range, value, display)

  return offset + length, value
end

-- Data Payload
nse_nsefo_orderentry_nnf_v9_50.data_payload = {}

-- Size: Data Payload
nse_nsefo_orderentry_nnf_v9_50.data_payload.size = 0

-- Display: Data Payload
nse_nsefo_orderentry_nnf_v9_50.data_payload.display = function(value)
  return "Data Payload: "..value
end

-- Dissect: Data Payload
nse_nsefo_orderentry_nnf_v9_50.data_payload.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.data_payload.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_orderentry_nnf_v9_50.data_payload.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.data_payload, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Auction
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction = {}

-- Size: Default Settlement Period Auction
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction.size = 2

-- Display: Default Settlement Period Auction
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction.display = function(value)
  return "Default Settlement Period Auction: "..value
end

-- Dissect: Default Settlement Period Auction
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.default_settlement_period_auction, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Normal
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal = {}

-- Size: Default Settlement Period Normal
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal.size = 2

-- Display: Default Settlement Period Normal
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal.display = function(value)
  return "Default Settlement Period Normal: "..value
end

-- Dissect: Default Settlement Period Normal
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.default_settlement_period_normal, range, value, display)

  return offset + length, value
end

-- Default Settlement Period Spot
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot = {}

-- Size: Default Settlement Period Spot
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot.size = 2

-- Display: Default Settlement Period Spot
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot.display = function(value)
  return "Default Settlement Period Spot: "..value
end

-- Dissect: Default Settlement Period Spot
nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.default_settlement_period_spot, range, value, display)

  return offset + length, value
end

-- Deleted
nse_nsefo_orderentry_nnf_v9_50.deleted = {}

-- Size: Deleted
nse_nsefo_orderentry_nnf_v9_50.deleted.size = 1

-- Display: Deleted
nse_nsefo_orderentry_nnf_v9_50.deleted.display = function(value)
  return "Deleted: "..value
end

-- Dissect: Deleted
nse_nsefo_orderentry_nnf_v9_50.deleted.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.deleted.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.deleted.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.deleted, range, value, display)

  return offset + length, value
end

-- Disclosed Quantity Percent Allowed
nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed = {}

-- Size: Disclosed Quantity Percent Allowed
nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed.size = 2

-- Display: Disclosed Quantity Percent Allowed
nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed.display = function(value)
  return "Disclosed Quantity Percent Allowed: "..value
end

-- Dissect: Disclosed Quantity Percent Allowed
nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_quantity_percent_allowed, range, value, display)

  return offset + length, value
end

-- Disclosed Vol 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1 = {}

-- Size: Disclosed Vol 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1.size = 4

-- Display: Disclosed Vol 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1.display = function(value)
  return "Disclosed Vol 1: "..value
end

-- Dissect: Disclosed Vol 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_1, range, value, display)

  return offset + length, value
end

-- Disclosed Vol 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2 = {}

-- Size: Disclosed Vol 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2.size = 4

-- Display: Disclosed Vol 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2.display = function(value)
  return "Disclosed Vol 2: "..value
end

-- Dissect: Disclosed Vol 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_2, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1 = {}

-- Size: Disclosed Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1.size = 4

-- Display: Disclosed Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1.display = function(value)
  return "Disclosed Vol Remaining 1: "..value
end

-- Dissect: Disclosed Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_remaining_1, range, value, display)

  return offset + length, value
end

-- Disclosed Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2 = {}

-- Size: Disclosed Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2.size = 4

-- Display: Disclosed Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2.display = function(value)
  return "Disclosed Vol Remaining 2: "..value
end

-- Dissect: Disclosed Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_vol_remaining_2, range, value, display)

  return offset + length, value
end

-- Disclosed Volume
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume = {}

-- Size: Disclosed Volume
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.size = 4

-- Display: Disclosed Volume
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.display = function(value)
  return "Disclosed Volume: "..value
end

-- Dissect: Disclosed Volume
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_volume, range, value, display)

  return offset + length, value
end

-- Disclosed Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining = {}

-- Size: Disclosed Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.size = 4

-- Display: Disclosed Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.display = function(value)
  return "Disclosed Volume Remaining: "..value
end

-- Dissect: Disclosed Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.disclosed_volume_remaining, range, value, display)

  return offset + length, value
end

-- Download Payload
nse_nsefo_orderentry_nnf_v9_50.download_payload = {}

-- Size: Download Payload
nse_nsefo_orderentry_nnf_v9_50.download_payload.size = 0

-- Display: Download Payload
nse_nsefo_orderentry_nnf_v9_50.download_payload.display = function(value)
  return "Download Payload: "..value
end

-- Dissect: Download Payload
nse_nsefo_orderentry_nnf_v9_50.download_payload.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.download_payload.size
  local range = buffer(offset, length)
  local value = range:bytes():tohex(false, " ")
  local display = nse_nsefo_orderentry_nnf_v9_50.download_payload.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.download_payload, range, value, display)

  return offset + length, value
end

-- Dynamic Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv = {}

-- Size: Dynamic Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv.size = 8

-- Display: Dynamic Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv.display = function(value)
  return "Dynamic Cryptographic Iv: "..value
end

-- Dissect: Dynamic Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.dynamic_cryptographic_iv, range, value, display)

  return offset + length, value
end

-- End Alpha 1
nse_nsefo_orderentry_nnf_v9_50.end_alpha_1 = {}

-- Size: End Alpha 1
nse_nsefo_orderentry_nnf_v9_50.end_alpha_1.size = 2

-- Display: End Alpha 1
nse_nsefo_orderentry_nnf_v9_50.end_alpha_1.display = function(value)
  return "End Alpha 1: "..value
end

-- Dissect: End Alpha 1
nse_nsefo_orderentry_nnf_v9_50.end_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.end_alpha_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.end_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.end_alpha_1, range, value, display)

  return offset + length, value
end

-- End Time
nse_nsefo_orderentry_nnf_v9_50.end_time = {}

-- Size: End Time
nse_nsefo_orderentry_nnf_v9_50.end_time.size = 4

-- Display: End Time
nse_nsefo_orderentry_nnf_v9_50.end_time.display = function(value)
  return "End Time: "..value
end

-- Dissect: End Time
nse_nsefo_orderentry_nnf_v9_50.end_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.end_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.end_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.end_time, range, value, display)

  return offset + length, value
end

-- Entry Date Time
nse_nsefo_orderentry_nnf_v9_50.entry_date_time = {}

-- Size: Entry Date Time
nse_nsefo_orderentry_nnf_v9_50.entry_date_time.size = 4

-- Display: Entry Date Time
nse_nsefo_orderentry_nnf_v9_50.entry_date_time.display = function(value)
  return "Entry Date Time: "..value
end

-- Dissect: Entry Date Time
nse_nsefo_orderentry_nnf_v9_50.entry_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.entry_date_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.entry_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.entry_date_time, range, value, display)

  return offset + length, value
end

-- Entry Date Time 1
nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1 = {}

-- Size: Entry Date Time 1
nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1.size = 4

-- Display: Entry Date Time 1
nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1.display = function(value)
  return "Entry Date Time 1: "..value
end

-- Dissect: Entry Date Time 1
nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.entry_date_time_1, range, value, display)

  return offset + length, value
end

-- Error Code
nse_nsefo_orderentry_nnf_v9_50.error_code = {}

-- Size: Error Code
nse_nsefo_orderentry_nnf_v9_50.error_code.size = 2

-- Display: Error Code
nse_nsefo_orderentry_nnf_v9_50.error_code.display = function(value)
  if value == 293 then
    return "Error Code: Invalid Instrument Type (293)"
  end
  if value == 509 then
    return "Error Code: Order Number Invalid (509)"
  end
  if value == 8049 then
    return "Error Code: Ord Cxl Initiator Auc Not Allowed (8049)"
  end
  if value == 8485 then
    return "Error Code: Auction Number Invalid (8485)"
  end
  if value == 16000 then
    return "Error Code: Market Closed (16000)"
  end
  if value == 16001 then
    return "Error Code: E Invalid User (16001)"
  end
  if value == 16003 then
    return "Error Code: Error Bad Trans Code (16003)"
  end
  if value == 16004 then
    return "Error Code: E User Already Signed On (16004)"
  end
  if value == 16005 then
    return "Error Code: E Invalid Signoff (16005)"
  end
  if value == 16006 then
    return "Error Code: E Invalid Signon (16006)"
  end
  if value == 16007 then
    return "Error Code: E Signon Not Possible (16007)"
  end
  if value == 16012 then
    return "Error Code: Err Invalid Symbol (16012)"
  end
  if value == 16013 then
    return "Error Code: Err Invalid Order Number (16013)"
  end
  if value == 16014 then
    return "Error Code: E Not Your Order (16014)"
  end
  if value == 16015 then
    return "Error Code: E Not Your Fill (16015)"
  end
  if value == 16016 then
    return "Error Code: E Invalid Fill Number (16016)"
  end
  if value == 16019 then
    return "Error Code: E Stock Not Found (16019)"
  end
  if value == 16020 then
    return "Error Code: E Order Price Out Of Revised Price Ra (16020)"
  end
  if value == 16035 then
    return "Error Code: Security Not Available (16035)"
  end
  if value == 16041 then
    return "Error Code: Broker Not Found (16041)"
  end
  if value == 16042 then
    return "Error Code: User Not Found (16042)"
  end
  if value == 16043 then
    return "Error Code: Duplicate Record (16043)"
  end
  if value == 16044 then
    return "Error Code: E Order Modified (16044)"
  end
  if value == 16049 then
    return "Error Code: Stock Suspended (16049)"
  end
  if value == 16052 then
    return "Error Code: Err Function Not Available (16052)"
  end
  if value == 16053 then
    return "Error Code: E Change Password (16053)"
  end
  if value == 16054 then
    return "Error Code: Err Invalid Branch (16054)"
  end
  if value == 16056 then
    return "Error Code: Oe Program Error (16056)"
  end
  if value == 16063 then
    return "Error Code: Err Invalid Status (16063)"
  end
  if value == 16070 then
    return "Error Code: Err Data Not Changed (16070)"
  end
  if value == 16086 then
    return "Error Code: E Dup Trd Cxl Request (16086)"
  end
  if value == 16098 then
    return "Error Code: Err Invalid Buyer User Id (16098)"
  end
  if value == 16099 then
    return "Error Code: Err Invalid Seller User Id (16099)"
  end
  if value == 16100 then
    return "Error Code: E Invalid Version (16100)"
  end
  if value == 16104 then
    return "Error Code: Oe System Error (16104)"
  end
  if value == 16134 then
    return "Error Code: Err User Disabled (16134)"
  end
  if value == 16145 then
    return "Error Code: Oe Invalid Stock Status (16145)"
  end
  if value == 16148 then
    return "Error Code: Err Invalid User Id (16148)"
  end
  if value == 16154 then
    return "Error Code: Err Invalid Trader Id (16154)"
  end
  if value == 16169 then
    return "Error Code: Oe Ato In Open (16169)"
  end
  if value == 16198 then
    return "Error Code: E Dup Request (16198)"
  end
  if value == 16227 then
    return "Error Code: E Only Cp Allowed (16227)"
  end
  if value == 16228 then
    return "Error Code: E Sl Mit Nt Not Allowed Pclose (16228)"
  end
  if value == 16229 then
    return "Error Code: E Gtc Gtd Ord Not Allowed Pclose (16229)"
  end
  if value == 16230 then
    return "Error Code: Oe Cont Mod Not Allowed (16230)"
  end
  if value == 16231 then
    return "Error Code: Trd Cont Mod Not Allowed (16231)"
  end
  if value == 16233 then
    return "Error Code: Str Pro Partivipant Invalid (16233)"
  end
  if value == 16247 then
    return "Error Code: Error Invalid Price (16247)"
  end
  if value == 16251 then
    return "Error Code: Oe Diff Trd Mod Vol (16251)"
  end
  if value == 16260 then
    return "Error Code: Error User Not Exists In System (16260)"
  end
  if value == 16264 then
    return "Error Code: Err Already Deleted (16264)"
  end
  if value == 16273 then
    return "Error Code: Record Not Found (16273)"
  end
  if value == 16278 then
    return "Error Code: Oe Markets Closed (16278)"
  end
  if value == 16279 then
    return "Error Code: Oe Security Not Admitted (16279)"
  end
  if value == 16280 then
    return "Error Code: Oe Security Matured (16280)"
  end
  if value == 16281 then
    return "Error Code: Oe Security Expelled (16281)"
  end
  if value == 16282 then
    return "Error Code: Oe Issued Cap Exceeds (16282)"
  end
  if value == 16283 then
    return "Error Code: Oe Price Not Mult (16283)"
  end
  if value == 16284 then
    return "Error Code: Oe Price Exceeds Day Min Max (16284)"
  end
  if value == 16285 then
    return "Error Code: Oe Is Not Active (16285)"
  end
  if value == 16300 then
    return "Error Code: E System Wrong State (16300)"
  end
  if value == 16303 then
    return "Error Code: Oe Auction Pending (16303)"
  end
  if value == 16307 then
    return "Error Code: Oe Qty Freeze Can (16307)"
  end
  if value == 16308 then
    return "Error Code: Oe Price Freeze Can (16308)"
  end
  if value == 16311 then
    return "Error Code: Oe Sol Period Over (16311)"
  end
  if value == 16312 then
    return "Error Code: Oe Comp Period Over (16312)"
  end
  if value == 16313 then
    return "Error Code: Oe Auc Period Greater (16313)"
  end
  if value == 16315 then
    return "Error Code: Oe Limit Trigger (16315)"
  end
  if value == 16316 then
    return "Error Code: Oe Trigger Price Not Mult (16316)"
  end
  if value == 16317 then
    return "Error Code: Oe No Aon Attrib (16317)"
  end
  if value == 16318 then
    return "Error Code: Oe No Mf Attrib (16318)"
  end
  if value == 16319 then
    return "Error Code: Oe No Aon In Attrib 1 (16319)"
  end
  if value == 16320 then
    return "Error Code: Oe No Mf Attrib 1 (16320)"
  end
  if value == 16321 then
    return "Error Code: Oe Mf Greater Disc (16321)"
  end
  if value == 16322 then
    return "Error Code: Oe Mf Not Mult (16322)"
  end
  if value == 16323 then
    return "Error Code: Oe Mf Greater Original (16323)"
  end
  if value == 16324 then
    return "Error Code: Oe Disc Greater Original (16324)"
  end
  if value == 16325 then
    return "Error Code: Oe Disc Not Mult (16325)"
  end
  if value == 16326 then
    return "Error Code: Oe Gtd Greater (16326)"
  end
  if value == 16327 then
    return "Error Code: Oe Quantity Gerater Rl (16327)"
  end
  if value == 16328 then
    return "Error Code: Oe Quantity Not Mult Rl (16328)"
  end
  if value == 16329 then
    return "Error Code: Oe Broker Not Permitted (16329)"
  end
  if value == 16330 then
    return "Error Code: Oe Is Suspended (16330)"
  end
  if value == 16333 then
    return "Error Code: Oe Branch Li Mit Exceeded (16333)"
  end
  if value == 16343 then
    return "Error Code: Oe Ord Can Changed (16343)"
  end
  if value == 16344 then
    return "Error Code: Oe Ord Cannot Cancel (16344)"
  end
  if value == 16345 then
    return "Error Code: Oe Init Ord Cancel (16345)"
  end
  if value == 16346 then
    return "Error Code: Oe Ord Cannot Modify (16346)"
  end
  if value == 16348 then
    return "Error Code: Err Trading Not Allowed (16348)"
  end
  if value == 16357 then
    return "Error Code: Oe Nt Rejected (16357)"
  end
  if value == 16363 then
    return "Error Code: Chg St Exists (16363)"
  end
  if value == 16369 then
    return "Error Code: Oe Security In Preopen (16369)"
  end
  if value == 16372 then
    return "Error Code: Oe Inq Not Allowed (16372)"
  end
  if value == 16387 then
    return "Error Code: Oe Security Ineligible (16387)"
  end
  if value == 16388 then
    return "Error Code: E Fok Order Cancelled (16388)"
  end
  if value == 16392 then
    return "Error Code: Turnover Limit Not Provided (16392)"
  end
  if value == 16397 then
    return "Error Code: Err Cannot Mod Auc Order (16397)"
  end
  if value == 16400 then
    return "Error Code: Oe Max Dq Allowed (16400)"
  end
  if value == 16404 then
    return "Error Code: Oe Admin Susp Can (16404)"
  end
  if value == 16405 then
    return "Error Code: E Invalid Buy Sell Type (16405)"
  end
  if value == 16406 then
    return "Error Code: E Invalid Book Type (16406)"
  end
  if value == 16408 then
    return "Error Code: E Invalid Trigger Price (16408)"
  end
  if value == 16414 then
    return "Error Code: E Invalid Pro Client (16414)"
  end
  if value == 16415 then
    return "Error Code: E Invalid Instructions (16415)"
  end
  if value == 16416 then
    return "Error Code: E Invalid Order Parameters (16416)"
  end
  if value == 16418 then
    return "Error Code: E Nnf Req Exceeded (16418)"
  end
  if value == 16419 then
    return "Error Code: Invalid Order (16419)"
  end
  if value == 16420 then
    return "Error Code: Err Box Rate Exceeded At Millisecond Level (16420)"
  end
  if value == 16440 then
    return "Error Code: E Gtd Gt Maturity (16440)"
  end
  if value == 16441 then
    return "Error Code: Dq Not Allowed In Preopen (16441)"
  end
  if value == 16442 then
    return "Error Code: St Ord Not Allowed Popen (16442)"
  end
  if value == 16443 then
    return "Error Code: E Ord Lim Exceeds Ord Val Lim (16443)"
  end
  if value == 16444 then
    return "Error Code: Err Usr Ord Value Limit Exceeded (16444)"
  end
  if value == 16445 then
    return "Error Code: Sl Not Allowed (16445)"
  end
  if value == 16446 then
    return "Error Code: Mit Not Allowed (16446)"
  end
  if value == 16447 then
    return "Error Code: E Ord Not Allowed In Preopen (16447)"
  end
  if value == 16448 then
    return "Error Code: Error Sl Lmt Rsnblty Check (16448)"
  end
  if value == 16514 then
    return "Error Code: E Not Modifiable (16514)"
  end
  if value == 16518 then
    return "Error Code: E Tm Cm Does Not Exist (16518)"
  end
  if value == 16521 then
    return "Error Code: E Not Clg Mem (16521)"
  end
  if value == 16523 then
    return "Error Code: E User Not Corp Mgr (16523)"
  end
  if value == 16532 then
    return "Error Code: E Pm Cm Invalid (16532)"
  end
  if value == 16533 then
    return "Error Code: E Corp Mgr Vu Mod (16533)"
  end
  if value == 16541 then
    return "Error Code: E Invalid Participant (16541)"
  end
  if value == 16550 then
    return "Error Code: E Trade Approved By Cm (16550)"
  end
  if value == 16552 then
    return "Error Code: E Cm Stock Suspended (16552)"
  end
  if value == 16554 then
    return "Error Code: E Broker Not Permitted In Fut (16554)"
  end
  if value == 16555 then
    return "Error Code: E Broker Not Permitted In Opt (16555)"
  end
  if value == 16556 then
    return "Error Code: E Qty Less Than Min Lot (16556)"
  end
  if value == 16557 then
    return "Error Code: E Disc Qty Less Than Min Lot (16557)"
  end
  if value == 16558 then
    return "Error Code: E Mf Qty Less Than Min Lot (16558)"
  end
  if value == 16560 then
    return "Error Code: E Already Rejected (16560)"
  end
  if value == 16561 then
    return "Error Code: E Nt Orders Not Allowed (16561)"
  end
  if value == 16562 then
    return "Error Code: E Nt Trade Not Allowed (16562)"
  end
  if value == 16566 then
    return "Error Code: E Inconsistent Broker Branch (16566)"
  end
  if value == 16570 then
    return "Error Code: M Post Close Start (16570)"
  end
  if value == 16571 then
    return "Error Code: M Post Close Ended (16571)"
  end
  if value == 16572 then
    return "Error Code: M Post Close Trades (16572)"
  end
  if value == 16573 then
    return "Error Code: E Invalid Msg Length (16573)"
  end
  if value == 16574 then
    return "Error Code: E Invalid Open Close Type (16574)"
  end
  if value == 16576 then
    return "Error Code: E Nnf Inq Req Exceeded (16576)"
  end
  if value == 16577 then
    return "Error Code: E Participant And Volume Changed (16577)"
  end
  if value == 16578 then
    return "Error Code: E Invalid Cover Uncover Type (16578)"
  end
  if value == 16580 then
    return "Error Code: E Illegal Participant (16580)"
  end
  if value == 16581 then
    return "Error Code: E Invalid Fill Price (16581)"
  end
  if value == 16583 then
    return "Error Code: E Pro No Participant (16583)"
  end
  if value == 16585 then
    return "Error Code: E Invalid Account No (16585)"
  end
  if value == 16586 then
    return "Error Code: E Allow No Participant Order (16586)"
  end
  if value == 16589 then
    return "Error Code: M Delete All Orders (16589)"
  end
  if value == 16597 then
    return "Error Code: E Cum Ur Ord Val Limit Exceede (16597)"
  end
  if value == 16598 then
    return "Error Code: E Branch Ord Val Limit Exceeded (16598)"
  end
  if value == 16600 then
    return "Error Code: Err Ord Val Exceeded (16600)"
  end
  if value == 16601 then
    return "Error Code: Err Preopen Order Reject (16601)"
  end
  if value == 16602 then
    return "Error Code: E Dealer Value Limit Exceeds (16602)"
  end
  if value == 16604 then
    return "Error Code: E Participant Not Found (16604)"
  end
  if value == 16605 then
    return "Error Code: E Either Leg Failed (16605)"
  end
  if value == 16606 then
    return "Error Code: E Qty Greater Than Freeze Qty (16606)"
  end
  if value == 16607 then
    return "Error Code: E Spread Not Allowed (16607)"
  end
  if value == 16609 then
    return "Error Code: E Spread Allowed If Stock Open (16609)"
  end
  if value == 16610 then
    return "Error Code: E Qty Should Be Same (16610)"
  end
  if value == 16611 then
    return "Error Code: E Ord Mod Qty Frz Not Allowed (16611)"
  end
  if value == 16612 then
    return "Error Code: E Trade Rec Modified (16612)"
  end
  if value == 16615 then
    return "Error Code: E Tm Order Cant Be Modified (16615)"
  end
  if value == 16616 then
    return "Error Code: E Tm Order Cant Be Cancelled (16616)"
  end
  if value == 16617 then
    return "Error Code: E Tm Trade Cant Be Manipulated (16617)"
  end
  if value == 16625 then
    return "Error Code: E Cm Of Tm Suspended (16625)"
  end
  if value == 16626 then
    return "Error Code: E Expdate Not In Ascending Ord (16626)"
  end
  if value == 16627 then
    return "Error Code: E Invalid Contract Comb (16627)"
  end
  if value == 16628 then
    return "Error Code: E Bm Cannot Cancel Cm Orders (16628)"
  end
  if value == 16629 then
    return "Error Code: E Bm Cannot Cancel Bm Orders (16629)"
  end
  if value == 16630 then
    return "Error Code: E Cm Cannot Cancel Cm Orders (16630)"
  end
  if value == 16631 then
    return "Error Code: E Spread In Different Underlying (16631)"
  end
  if value == 16632 then
    return "Error Code: E Invalid Cli Ac (16632)"
  end
  if value == 16636 then
    return "Error Code: E Br Ord Limit Fut Buy Exceeded (16636)"
  end
  if value == 16637 then
    return "Error Code: E Br Ord Limit Fut Sell Exceeded (16637)"
  end
  if value == 16638 then
    return "Error Code: E Br Ord Limit Opt Buy Exceeded (16638)"
  end
  if value == 16639 then
    return "Error Code: E Br Ord Limit Opt Sell Exceeded (16639)"
  end
  if value == 16640 then
    return "Error Code: E Ur Ord Limit Fut Buy Exceeded (16640)"
  end
  if value == 16641 then
    return "Error Code: E Ur Ord Limit Fut Sell Exceeded (16641)"
  end
  if value == 16642 then
    return "Error Code: E Ur Ord Limit Opt Buy Exceeded (16642)"
  end
  if value == 16643 then
    return "Error Code: E Ur Ord Limit Opt Sell Exceeded (16643)"
  end
  if value == 16645 then
    return "Error Code: E Cant Appr Bhav Copy Generated (16645)"
  end
  if value == 16646 then
    return "Error Code: E Collateral Lmt Chk (16646)"
  end
  if value == 16656 then
    return "Error Code: E Address Not Found (16656)"
  end
  if value == 16662 then
    return "Error Code: E Stk In Popen (16662)"
  end
  if value == 16666 then
    return "Error Code: E Invalid Nnf Field (16666)"
  end
  if value == 16667 then
    return "Error Code: E Gtcgtd Not Allowed (16667)"
  end
  if value == 16683 then
    return "Error Code: Err User Already Signed Off (16683)"
  end
  if value == 16684 then
    return "Error Code: Err No Privilege (16684)"
  end
  if value == 16686 then
    return "Error Code: Closeout Order Reject (16686)"
  end
  if value == 16687 then
    return "Error Code: Closeout Frz Reject (16687)"
  end
  if value == 16688 then
    return "Error Code: Closeout Not Allowed (16688)"
  end
  if value == 16690 then
    return "Error Code: Closeout Trdmod Reject (16690)"
  end
  if value == 16706 then
    return "Error Code: Partial Order Reject (16706)"
  end
  if value == 16708 then
    return "Error Code: Partial Quick Order Cxl Rej (16708)"
  end
  if value == 16711 then
    return "Error Code: Error Invalid Sprd Combination (16711)"
  end
  if value == 16713 then
    return "Error Code: E Price Diff Out Of Range (16713)"
  end
  if value == 16725 then
    return "Error Code: Rms Rejected In Preopen (16725)"
  end
  if value == 16730 then
    return "Error Code: Error Algoid Nnfid Mismatch 1 (16730)"
  end
  if value == 16731 then
    return "Error Code: Error Algoid Nnfid Mismatch 2 (16731)"
  end
  if value == 16732 then
    return "Error Code: Error Algo Mkt Not Allowed (16732)"
  end
  if value == 16733 then
    return "Error Code: Error Invalid Nnf Id (16733)"
  end
  if value == 16749 then
    return "Error Code: Error Preopn Ato Mod Can Rej (16749)"
  end
  if value == 16752 then
    return "Error Code: Error Preopn Ato Not Allowed (16752)"
  end
  if value == 16778 then
    return "Error Code: Err Usr Not Found In Nnf File (16778)"
  end
  if value == 16793 then
    return "Error Code: E Vc Order Rejected (16793)"
  end
  if value == 16794 then
    return "Error Code: E Ssd Order Rejected (16794)"
  end
  if value == 16795 then
    return "Error Code: E Order Cancelled For Vc (16795)"
  end
  if value == 16796 then
    return "Error Code: E Order Cancelled For Ssd (16796)"
  end
  if value == 16797 then
    return "Error Code: Msg Code Voluntary Close Out Status (16797)"
  end
  if value == 16798 then
    return "Error Code: Msg Code Suspended Status (16798)"
  end
  if value == 16803 then
    return "Error Code: E Bo Price Out Of Range (16803)"
  end
  if value == 16804 then
    return "Error Code: E Bo Excess Quantity (16804)"
  end
  if value == 16805 then
    return "Error Code: E User Ineligible For Bulk Orders (16805)"
  end
  if value == 16806 then
    return "Error Code: E User Not Allowed For Regular (16806)"
  end
  if value == 16807 then
    return "Error Code: E Account Debarred (16807)"
  end
  if value == 16816 then
    return "Error Code: E Account Debarred By Pit (16816)"
  end
  if value == 16810 then
    return "Error Code: Err Usr Already Unlcked (16810)"
  end
  if value == 16811 then
    return "Error Code: Err Duplicate Unlck Alrt (16811)"
  end
  if value == 17022 then
    return "Error Code: Err Actv Num Of Usrs In Brnch Exceeded (17022)"
  end
  if value == 17039 then
    return "Error Code: Ec Trd Mod Rej Cli Cp Mod Not Allowed (17039)"
  end
  if value == 17045 then
    return "Error Code: Error Quantity Lim Exceeds Qty Val Lim (17045)"
  end
  if value == 17046 then
    return "Error Code: User Trd Mod Disabled (17046)"
  end
  if value == 16055 then
    return "Error Code: Preopen Trade Cancellation Not Allowed (16055)"
  end
  if value == 17063 then
    return "Error Code: Err Depndent Sessn Not Active (17063)"
  end
  if value == 17070 then
    return "Error Code: E Trd Price Out Of Stock Tpp (17070)"
  end
  if value == 17071 then
    return "Error Code: E Order Cancelled For Self Trade (17071)"
  end
  if value == 17101 then
    return "Error Code: E Invalid Packet (17101)"
  end
  if value == 17102 then
    return "Error Code: Sssssse Hearbeat Not Received (17102)"
  end
  if value == 17104 then
    return "Error Code: E Invalid Box Id (17104)"
  end
  if value == 17105 then
    return "Error Code: E Seq No Mismatch (17105)"
  end
  if value == 17106 then
    return "Error Code: E Box Rate Exceeded (17106)"
  end
  if value == 17107 then
    return "Error Code: Error Hb Rate Exceeded (17107)"
  end
  if value == 17142 then
    return "Error Code: E Max User Count Exceeded (17142)"
  end
  if value == 16403 then
    return "Error Code: E Invalid Box Ip Combination (16403)"
  end
  if value == 17177 then
    return "Error Code: Err Invalid Pan Id (17177)"
  end
  if value == 17179 then
    return "Error Code: Err Invalid Algo Id (17179)"
  end
  if value == 17180 then
    return "Error Code: Err Invalid Value In Reserved (17180)"
  end
  if value == 17185 then
    return "Error Code: Err Algo Id Disabled (17185)"
  end
  if value == 17186 then
    return "Error Code: Err Order Cancelled Algoid Disabled (17186)"
  end
  if value == 19028 then
    return "Error Code: Err Checksum Failed Gr (19028)"
  end
  if value == 19029 then
    return "Error Code: Err Multiple Gr Query Rcv (19029)"
  end
  if value == 17181 then
    return "Error Code: Err Mkt Order Not Allowed (17181)"
  end
  if value == 17182 then
    return "Error Code: Err Trade Beyond Markup Price (17182)"
  end
  if value == 19030 then
    return "Error Code: Err Encryption Flag Mismatch (19030)"
  end
  if value == 19031 then
    return "Error Code: Err Md 5 Checksum Failure (19031)"
  end
  if value == 17184 then
    return "Error Code: Err User Having Null Rights (17184)"
  end

  return "Error Code: Unknown("..value..")"
end

-- Dissect: Error Code
nse_nsefo_orderentry_nnf_v9_50.error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.error_code, range, value, display)

  return offset + length, value
end

-- Ex Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction = {}

-- Size: Ex Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction.size = 2

-- Display: Ex Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction.display = function(value)
  if value == 0 then
    return "Ex Market Status Auction: Pre Open (0)"
  end
  if value == 1 then
    return "Ex Market Status Auction: Open (1)"
  end
  if value == 2 then
    return "Ex Market Status Auction: Closed (2)"
  end
  if value == 3 then
    return "Ex Market Status Auction: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Ex Market Status Auction: Postclose (4)"
  end

  return "Ex Market Status Auction: Unknown("..value..")"
end

-- Dissect: Ex Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_auction, range, value, display)

  return offset + length, value
end

-- Ex Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal = {}

-- Size: Ex Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal.size = 2

-- Display: Ex Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal.display = function(value)
  if value == 0 then
    return "Ex Market Status Normal: Pre Open (0)"
  end
  if value == 1 then
    return "Ex Market Status Normal: Open (1)"
  end
  if value == 2 then
    return "Ex Market Status Normal: Closed (2)"
  end
  if value == 3 then
    return "Ex Market Status Normal: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Ex Market Status Normal: Postclose (4)"
  end

  return "Ex Market Status Normal: Unknown("..value..")"
end

-- Dissect: Ex Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_normal, range, value, display)

  return offset + length, value
end

-- Ex Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot = {}

-- Size: Ex Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot.size = 2

-- Display: Ex Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot.display = function(value)
  if value == 0 then
    return "Ex Market Status Oddlot: Pre Open (0)"
  end
  if value == 1 then
    return "Ex Market Status Oddlot: Open (1)"
  end
  if value == 2 then
    return "Ex Market Status Oddlot: Closed (2)"
  end
  if value == 3 then
    return "Ex Market Status Oddlot: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Ex Market Status Oddlot: Postclose (4)"
  end

  return "Ex Market Status Oddlot: Unknown("..value..")"
end

-- Dissect: Ex Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_oddlot, range, value, display)

  return offset + length, value
end

-- Ex Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot = {}

-- Size: Ex Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot.size = 2

-- Display: Ex Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot.display = function(value)
  if value == 0 then
    return "Ex Market Status Spot: Pre Open (0)"
  end
  if value == 1 then
    return "Ex Market Status Spot: Open (1)"
  end
  if value == 2 then
    return "Ex Market Status Spot: Closed (2)"
  end
  if value == 3 then
    return "Ex Market Status Spot: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Ex Market Status Spot: Postclose (4)"
  end

  return "Ex Market Status Spot: Unknown("..value..")"
end

-- Dissect: Ex Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ex_market_status_spot, range, value, display)

  return offset + length, value
end

-- Exp Day
nse_nsefo_orderentry_nnf_v9_50.exp_day = {}

-- Size: Exp Day
nse_nsefo_orderentry_nnf_v9_50.exp_day.size = 2

-- Display: Exp Day
nse_nsefo_orderentry_nnf_v9_50.exp_day.display = function(value)
  return "Exp Day: "..value
end

-- Dissect: Exp Day
nse_nsefo_orderentry_nnf_v9_50.exp_day.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.exp_day.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.exp_day.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.exp_day, range, value, display)

  return offset + length, value
end

-- Exp Month
nse_nsefo_orderentry_nnf_v9_50.exp_month = {}

-- Size: Exp Month
nse_nsefo_orderentry_nnf_v9_50.exp_month.size = 2

-- Display: Exp Month
nse_nsefo_orderentry_nnf_v9_50.exp_month.display = function(value)
  return "Exp Month: "..value
end

-- Dissect: Exp Month
nse_nsefo_orderentry_nnf_v9_50.exp_month.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.exp_month.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.exp_month.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.exp_month, range, value, display)

  return offset + length, value
end

-- Exp Year
nse_nsefo_orderentry_nnf_v9_50.exp_year = {}

-- Size: Exp Year
nse_nsefo_orderentry_nnf_v9_50.exp_year.size = 2

-- Display: Exp Year
nse_nsefo_orderentry_nnf_v9_50.exp_year.display = function(value)
  return "Exp Year: "..value
end

-- Dissect: Exp Year
nse_nsefo_orderentry_nnf_v9_50.exp_year.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.exp_year.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.exp_year.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.exp_year, range, value, display)

  return offset + length, value
end

-- Expiry Date
nse_nsefo_orderentry_nnf_v9_50.expiry_date = {}

-- Size: Expiry Date
nse_nsefo_orderentry_nnf_v9_50.expiry_date.size = 4

-- Display: Expiry Date
nse_nsefo_orderentry_nnf_v9_50.expiry_date.display = function(value)
  return "Expiry Date: "..value
end

-- Dissect: Expiry Date
nse_nsefo_orderentry_nnf_v9_50.expiry_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.expiry_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.expiry_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.expiry_date, range, value, display)

  return offset + length, value
end

-- Expirydate 1
nse_nsefo_orderentry_nnf_v9_50.expirydate_1 = {}

-- Size: Expirydate 1
nse_nsefo_orderentry_nnf_v9_50.expirydate_1.size = 4

-- Display: Expirydate 1
nse_nsefo_orderentry_nnf_v9_50.expirydate_1.display = function(value)
  return "Expirydate 1: "..value
end

-- Dissect: Expirydate 1
nse_nsefo_orderentry_nnf_v9_50.expirydate_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.expirydate_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.expirydate_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.expirydate_1, range, value, display)

  return offset + length, value
end

-- Expirydate 2
nse_nsefo_orderentry_nnf_v9_50.expirydate_2 = {}

-- Size: Expirydate 2
nse_nsefo_orderentry_nnf_v9_50.expirydate_2.size = 4

-- Display: Expirydate 2
nse_nsefo_orderentry_nnf_v9_50.expirydate_2.display = function(value)
  return "Expirydate 2: "..value
end

-- Dissect: Expirydate 2
nse_nsefo_orderentry_nnf_v9_50.expirydate_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.expirydate_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.expirydate_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.expirydate_2, range, value, display)

  return offset + length, value
end

-- Fill Number
nse_nsefo_orderentry_nnf_v9_50.fill_number = {}

-- Size: Fill Number
nse_nsefo_orderentry_nnf_v9_50.fill_number.size = 4

-- Display: Fill Number
nse_nsefo_orderentry_nnf_v9_50.fill_number.display = function(value)
  return "Fill Number: "..value
end

-- Dissect: Fill Number
nse_nsefo_orderentry_nnf_v9_50.fill_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.fill_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.fill_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_number, range, value, display)

  return offset + length, value
end

-- Fill Price
nse_nsefo_orderentry_nnf_v9_50.fill_price = {}

-- Size: Fill Price
nse_nsefo_orderentry_nnf_v9_50.fill_price.size = 4

-- Display: Fill Price
nse_nsefo_orderentry_nnf_v9_50.fill_price.display = function(value)
  return "Fill Price: "..value
end

-- Translate: Fill Price
nse_nsefo_orderentry_nnf_v9_50.fill_price.translate = function(raw)
  return raw/100
end

-- Dissect: Fill Price
nse_nsefo_orderentry_nnf_v9_50.fill_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.fill_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.fill_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.fill_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_price, range, value, display)

  return offset + length, value
end

-- Fill Quantity
nse_nsefo_orderentry_nnf_v9_50.fill_quantity = {}

-- Size: Fill Quantity
nse_nsefo_orderentry_nnf_v9_50.fill_quantity.size = 4

-- Display: Fill Quantity
nse_nsefo_orderentry_nnf_v9_50.fill_quantity.display = function(value)
  return "Fill Quantity: "..value
end

-- Dissect: Fill Quantity
nse_nsefo_orderentry_nnf_v9_50.fill_quantity.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.fill_quantity.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.fill_quantity.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_quantity, range, value, display)

  return offset + length, value
end

-- Fill Volume
nse_nsefo_orderentry_nnf_v9_50.fill_volume = {}

-- Size: Fill Volume
nse_nsefo_orderentry_nnf_v9_50.fill_volume.size = 4

-- Display: Fill Volume
nse_nsefo_orderentry_nnf_v9_50.fill_volume.display = function(value)
  return "Fill Volume: "..value
end

-- Dissect: Fill Volume
nse_nsefo_orderentry_nnf_v9_50.fill_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.fill_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.fill_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.fill_volume, range, value, display)

  return offset + length, value
end

-- Filler
nse_nsefo_orderentry_nnf_v9_50.filler = {}

-- Size: Filler
nse_nsefo_orderentry_nnf_v9_50.filler.size = 1

-- Display: Filler
nse_nsefo_orderentry_nnf_v9_50.filler.display = function(value)
  return "Filler: "..value
end

-- Dissect: Filler
nse_nsefo_orderentry_nnf_v9_50.filler.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler, range, value, display)

  return offset + length, value
end

-- Filler 1
nse_nsefo_orderentry_nnf_v9_50.filler_1 = {}

-- Size: Filler 1
nse_nsefo_orderentry_nnf_v9_50.filler_1.size = 4

-- Display: Filler 1
nse_nsefo_orderentry_nnf_v9_50.filler_1.display = function(value)
  return "Filler 1: "..value
end

-- Dissect: Filler 1
nse_nsefo_orderentry_nnf_v9_50.filler_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_1, range, value, display)

  return offset + length, value
end

-- Filler 116
nse_nsefo_orderentry_nnf_v9_50.filler_116 = {}

-- Size: Filler 116
nse_nsefo_orderentry_nnf_v9_50.filler_116.size = 2

-- Display: Filler 116
nse_nsefo_orderentry_nnf_v9_50.filler_116.display = function(value)
  return "Filler 116: "..value
end

-- Dissect: Filler 116
nse_nsefo_orderentry_nnf_v9_50.filler_116.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_116.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_116.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_116, range, value, display)

  return offset + length, value
end

-- Filler 17
nse_nsefo_orderentry_nnf_v9_50.filler_17 = {}

-- Size: Filler 17
nse_nsefo_orderentry_nnf_v9_50.filler_17.size = 1

-- Display: Filler 17
nse_nsefo_orderentry_nnf_v9_50.filler_17.display = function(value)
  return "Filler 17: "..value
end

-- Dissect: Filler 17
nse_nsefo_orderentry_nnf_v9_50.filler_17.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_17.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_17.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_17, range, value, display)

  return offset + length, value
end

-- Filler 18
nse_nsefo_orderentry_nnf_v9_50.filler_18 = {}

-- Size: Filler 18
nse_nsefo_orderentry_nnf_v9_50.filler_18.size = 1

-- Display: Filler 18
nse_nsefo_orderentry_nnf_v9_50.filler_18.display = function(value)
  return "Filler 18: "..value
end

-- Dissect: Filler 18
nse_nsefo_orderentry_nnf_v9_50.filler_18.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_18.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_18.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_18, range, value, display)

  return offset + length, value
end

-- Filler 2
nse_nsefo_orderentry_nnf_v9_50.filler_2 = {}

-- Size: Filler 2
nse_nsefo_orderentry_nnf_v9_50.filler_2.size = 4

-- Display: Filler 2
nse_nsefo_orderentry_nnf_v9_50.filler_2.display = function(value)
  return "Filler 2: "..value
end

-- Dissect: Filler 2
nse_nsefo_orderentry_nnf_v9_50.filler_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_2, range, value, display)

  return offset + length, value
end

-- Filler 3
nse_nsefo_orderentry_nnf_v9_50.filler_3 = {}

-- Size: Filler 3
nse_nsefo_orderentry_nnf_v9_50.filler_3.size = 4

-- Display: Filler 3
nse_nsefo_orderentry_nnf_v9_50.filler_3.display = function(value)
  return "Filler 3: "..value
end

-- Dissect: Filler 3
nse_nsefo_orderentry_nnf_v9_50.filler_3.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_3.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_3.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_3, range, value, display)

  return offset + length, value
end

-- Filler 9
nse_nsefo_orderentry_nnf_v9_50.filler_9 = {}

-- Size: Filler 9
nse_nsefo_orderentry_nnf_v9_50.filler_9.size = 1

-- Display: Filler 9
nse_nsefo_orderentry_nnf_v9_50.filler_9.display = function(value)
  return "Filler 9: "..value
end

-- Dissect: Filler 9
nse_nsefo_orderentry_nnf_v9_50.filler_9.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_9.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_9.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_9, range, value, display)

  return offset + length, value
end

-- Filler Options 1
nse_nsefo_orderentry_nnf_v9_50.filler_options_1 = {}

-- Size: Filler Options 1
nse_nsefo_orderentry_nnf_v9_50.filler_options_1.size = 3

-- Display: Filler Options 1
nse_nsefo_orderentry_nnf_v9_50.filler_options_1.display = function(value)
  return "Filler Options 1: "..value
end

-- Dissect: Filler Options 1
nse_nsefo_orderentry_nnf_v9_50.filler_options_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_options_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_options_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_options_1, range, value, display)

  return offset + length, value
end

-- Filler Y
nse_nsefo_orderentry_nnf_v9_50.filler_y = {}

-- Size: Filler Y
nse_nsefo_orderentry_nnf_v9_50.filler_y.size = 1

-- Display: Filler Y
nse_nsefo_orderentry_nnf_v9_50.filler_y.display = function(value)
  return "Filler Y: "..value
end

-- Dissect: Filler Y
nse_nsefo_orderentry_nnf_v9_50.filler_y.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.filler_y.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.filler_y.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.filler_y, range, value, display)

  return offset + length, value
end

-- Fillerx 1
nse_nsefo_orderentry_nnf_v9_50.fillerx_1 = {}

-- Size: Fillerx 1
nse_nsefo_orderentry_nnf_v9_50.fillerx_1.size = 1

-- Display: Fillerx 1
nse_nsefo_orderentry_nnf_v9_50.fillerx_1.display = function(value)
  return "Fillerx 1: "..value
end

-- Dissect: Fillerx 1
nse_nsefo_orderentry_nnf_v9_50.fillerx_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.fillerx_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.fillerx_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.fillerx_1, range, value, display)

  return offset + length, value
end

-- Fillerx 2
nse_nsefo_orderentry_nnf_v9_50.fillerx_2 = {}

-- Size: Fillerx 2
nse_nsefo_orderentry_nnf_v9_50.fillerx_2.size = 1

-- Display: Fillerx 2
nse_nsefo_orderentry_nnf_v9_50.fillerx_2.display = function(value)
  return "Fillerx 2: "..value
end

-- Dissect: Fillerx 2
nse_nsefo_orderentry_nnf_v9_50.fillerx_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.fillerx_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.fillerx_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.fillerx_2, range, value, display)

  return offset + length, value
end

-- Fillery 1
nse_nsefo_orderentry_nnf_v9_50.fillery_1 = {}

-- Size: Fillery 1
nse_nsefo_orderentry_nnf_v9_50.fillery_1.size = 1

-- Display: Fillery 1
nse_nsefo_orderentry_nnf_v9_50.fillery_1.display = function(value)
  return "Fillery 1: "..value
end

-- Dissect: Fillery 1
nse_nsefo_orderentry_nnf_v9_50.fillery_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.fillery_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.fillery_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.fillery_1, range, value, display)

  return offset + length, value
end

-- Firm Name
nse_nsefo_orderentry_nnf_v9_50.firm_name = {}

-- Size: Firm Name
nse_nsefo_orderentry_nnf_v9_50.firm_name.size = 25

-- Display: Firm Name
nse_nsefo_orderentry_nnf_v9_50.firm_name.display = function(value)
  return "Firm Name: "..value
end

-- Dissect: Firm Name
nse_nsefo_orderentry_nnf_v9_50.firm_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.firm_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.firm_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.firm_name, range, value, display)

  return offset + length, value
end

-- Giveup Flag
nse_nsefo_orderentry_nnf_v9_50.giveup_flag = {}

-- Size: Giveup Flag
nse_nsefo_orderentry_nnf_v9_50.giveup_flag.size = 1

-- Display: Giveup Flag
nse_nsefo_orderentry_nnf_v9_50.giveup_flag.display = function(value)
  return "Giveup Flag: "..value
end

-- Dissect: Giveup Flag
nse_nsefo_orderentry_nnf_v9_50.giveup_flag.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.giveup_flag.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.giveup_flag.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.giveup_flag, range, value, display)

  return offset + length, value
end

-- Good Till Date
nse_nsefo_orderentry_nnf_v9_50.good_till_date = {}

-- Size: Good Till Date
nse_nsefo_orderentry_nnf_v9_50.good_till_date.size = 4

-- Display: Good Till Date
nse_nsefo_orderentry_nnf_v9_50.good_till_date.display = function(value)
  return "Good Till Date: "..value
end

-- Dissect: Good Till Date
nse_nsefo_orderentry_nnf_v9_50.good_till_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.good_till_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.good_till_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.good_till_date, range, value, display)

  return offset + length, value
end

-- Good Till Date 1
nse_nsefo_orderentry_nnf_v9_50.good_till_date_1 = {}

-- Size: Good Till Date 1
nse_nsefo_orderentry_nnf_v9_50.good_till_date_1.size = 4

-- Display: Good Till Date 1
nse_nsefo_orderentry_nnf_v9_50.good_till_date_1.display = function(value)
  return "Good Till Date 1: "..value
end

-- Dissect: Good Till Date 1
nse_nsefo_orderentry_nnf_v9_50.good_till_date_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.good_till_date_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.good_till_date_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.good_till_date_1, range, value, display)

  return offset + length, value
end

-- High
nse_nsefo_orderentry_nnf_v9_50.high = {}

-- Size: High
nse_nsefo_orderentry_nnf_v9_50.high.size = 2

-- Display: High
nse_nsefo_orderentry_nnf_v9_50.high.display = function(value)
  return "High: "..value
end

-- Dissect: High
nse_nsefo_orderentry_nnf_v9_50.high.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.high.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.high, range, value, display)

  return offset + length, value
end

-- High Price
nse_nsefo_orderentry_nnf_v9_50.high_price = {}

-- Size: High Price
nse_nsefo_orderentry_nnf_v9_50.high_price.size = 4

-- Display: High Price
nse_nsefo_orderentry_nnf_v9_50.high_price.display = function(value)
  return "High Price: "..value
end

-- Translate: High Price
nse_nsefo_orderentry_nnf_v9_50.high_price.translate = function(raw)
  return raw/100
end

-- Dissect: High Price
nse_nsefo_orderentry_nnf_v9_50.high_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.high_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.high_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.high_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.high_price, range, value, display)

  return offset + length, value
end

-- Hipd
nse_nsefo_orderentry_nnf_v9_50.hipd = {}

-- Size: Hipd
nse_nsefo_orderentry_nnf_v9_50.hipd.size = 4

-- Display: Hipd
nse_nsefo_orderentry_nnf_v9_50.hipd.display = function(value)
  return "Hipd: "..value
end

-- Dissect: Hipd
nse_nsefo_orderentry_nnf_v9_50.hipd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.hipd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.hipd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.hipd, range, value, display)

  return offset + length, value
end

-- Host Switch Context
nse_nsefo_orderentry_nnf_v9_50.host_switch_context = {}

-- Size: Host Switch Context
nse_nsefo_orderentry_nnf_v9_50.host_switch_context.size = 1

-- Display: Host Switch Context
nse_nsefo_orderentry_nnf_v9_50.host_switch_context.display = function(value)
  return "Host Switch Context: "..value
end

-- Dissect: Host Switch Context
nse_nsefo_orderentry_nnf_v9_50.host_switch_context.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.host_switch_context.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.host_switch_context.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.host_switch_context, range, value, display)

  return offset + length, value
end

-- Index Name
nse_nsefo_orderentry_nnf_v9_50.index_name = {}

-- Size: Index Name
nse_nsefo_orderentry_nnf_v9_50.index_name.size = 15

-- Display: Index Name
nse_nsefo_orderentry_nnf_v9_50.index_name.display = function(value)
  return "Index Name: "..value
end

-- Dissect: Index Name
nse_nsefo_orderentry_nnf_v9_50.index_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.index_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.index_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_name, range, value, display)

  return offset + length, value
end

-- Index Value
nse_nsefo_orderentry_nnf_v9_50.index_value = {}

-- Size: Index Value
nse_nsefo_orderentry_nnf_v9_50.index_value.size = 4

-- Display: Index Value
nse_nsefo_orderentry_nnf_v9_50.index_value.display = function(value)
  return "Index Value: "..value
end

-- Dissect: Index Value
nse_nsefo_orderentry_nnf_v9_50.index_value.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.index_value.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.index_value.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_value, range, value, display)

  return offset + length, value
end

-- Indicator
nse_nsefo_orderentry_nnf_v9_50.indicator = {}

-- Size: Indicator
nse_nsefo_orderentry_nnf_v9_50.indicator.size = 4

-- Display: Indicator
nse_nsefo_orderentry_nnf_v9_50.indicator.display = function(value)
  return "Indicator: "..value
end

-- Dissect: Indicator
nse_nsefo_orderentry_nnf_v9_50.indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.indicator.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.indicator, range, value, display)

  return offset + length, value
end

-- Industry Name
nse_nsefo_orderentry_nnf_v9_50.industry_name = {}

-- Size: Industry Name
nse_nsefo_orderentry_nnf_v9_50.industry_name.size = 15

-- Display: Industry Name
nse_nsefo_orderentry_nnf_v9_50.industry_name.display = function(value)
  return "Industry Name: "..value
end

-- Dissect: Industry Name
nse_nsefo_orderentry_nnf_v9_50.industry_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.industry_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.industry_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.industry_name, range, value, display)

  return offset + length, value
end

-- Initiated By Control
nse_nsefo_orderentry_nnf_v9_50.initiated_by_control = {}

-- Size: Initiated By Control
nse_nsefo_orderentry_nnf_v9_50.initiated_by_control.size = 1

-- Display: Initiated By Control
nse_nsefo_orderentry_nnf_v9_50.initiated_by_control.display = function(value)
  return "Initiated By Control: "..value
end

-- Dissect: Initiated By Control
nse_nsefo_orderentry_nnf_v9_50.initiated_by_control.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.initiated_by_control.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.initiated_by_control.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.initiated_by_control, range, value, display)

  return offset + length, value
end

-- Inner Alpha Char
nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char = {}

-- Size: Inner Alpha Char
nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char.size = 2

-- Display: Inner Alpha Char
nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char.display = function(value)
  return "Inner Alpha Char: "..value
end

-- Dissect: Inner Alpha Char
nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_alpha_char, range, value, display)

  return offset + length, value
end

-- Inner Error Code
nse_nsefo_orderentry_nnf_v9_50.inner_error_code = {}

-- Size: Inner Error Code
nse_nsefo_orderentry_nnf_v9_50.inner_error_code.size = 2

-- Display: Inner Error Code
nse_nsefo_orderentry_nnf_v9_50.inner_error_code.display = function(value)
  return "Inner Error Code: "..value
end

-- Dissect: Inner Error Code
nse_nsefo_orderentry_nnf_v9_50.inner_error_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_error_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_error_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_error_code, range, value, display)

  return offset + length, value
end

-- Inner Log Time
nse_nsefo_orderentry_nnf_v9_50.inner_log_time = {}

-- Size: Inner Log Time
nse_nsefo_orderentry_nnf_v9_50.inner_log_time.size = 4

-- Display: Inner Log Time
nse_nsefo_orderentry_nnf_v9_50.inner_log_time.display = function(value)
  return "Inner Log Time: "..value
end

-- Dissect: Inner Log Time
nse_nsefo_orderentry_nnf_v9_50.inner_log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_log_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_log_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_log_time, range, value, display)

  return offset + length, value
end

-- Inner Message Length
nse_nsefo_orderentry_nnf_v9_50.inner_message_length = {}

-- Size: Inner Message Length
nse_nsefo_orderentry_nnf_v9_50.inner_message_length.size = 2

-- Display: Inner Message Length
nse_nsefo_orderentry_nnf_v9_50.inner_message_length.display = function(value)
  return "Inner Message Length: "..value
end

-- Dissect: Inner Message Length
nse_nsefo_orderentry_nnf_v9_50.inner_message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_message_length, range, value, display)

  return offset + length, value
end

-- Inner Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1 = {}

-- Size: Inner Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1.size = 8

-- Display: Inner Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1.display = function(value)
  return "Inner Time Stamp 1: "..value
end

-- Dissect: Inner Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_time_stamp_1, range, value, display)

  return offset + length, value
end

-- Inner Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2 = {}

-- Size: Inner Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2.size = 8

-- Display: Inner Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2.display = function(value)
  return "Inner Time Stamp 2: "..value
end

-- Dissect: Inner Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_time_stamp_2, range, value, display)

  return offset + length, value
end

-- Inner Timestamp
nse_nsefo_orderentry_nnf_v9_50.inner_timestamp = {}

-- Size: Inner Timestamp
nse_nsefo_orderentry_nnf_v9_50.inner_timestamp.size = 8

-- Display: Inner Timestamp
nse_nsefo_orderentry_nnf_v9_50.inner_timestamp.display = function(value)
  return "Inner Timestamp: "..value
end

-- Dissect: Inner Timestamp
nse_nsefo_orderentry_nnf_v9_50.inner_timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_timestamp, range, value, display)

  return offset + length, value
end

-- Inner Trader Id
nse_nsefo_orderentry_nnf_v9_50.inner_trader_id = {}

-- Size: Inner Trader Id
nse_nsefo_orderentry_nnf_v9_50.inner_trader_id.size = 4

-- Display: Inner Trader Id
nse_nsefo_orderentry_nnf_v9_50.inner_trader_id.display = function(value)
  return "Inner Trader Id: "..value
end

-- Dissect: Inner Trader Id
nse_nsefo_orderentry_nnf_v9_50.inner_trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_trader_id, range, value, display)

  return offset + length, value
end

-- Inner Transaction Code
nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code = {}

-- Size: Inner Transaction Code
nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code.size = 2

-- Display: Inner Transaction Code
nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code.display = function(value)
  return "Inner Transaction Code: "..value
end

-- Dissect: Inner Transaction Code
nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_transaction_code, range, value, display)

  return offset + length, value
end

-- Instrument Name
nse_nsefo_orderentry_nnf_v9_50.instrument_name = {}

-- Size: Instrument Name
nse_nsefo_orderentry_nnf_v9_50.instrument_name.size = 6

-- Display: Instrument Name
nse_nsefo_orderentry_nnf_v9_50.instrument_name.display = function(value)
  return "Instrument Name: "..value
end

-- Dissect: Instrument Name
nse_nsefo_orderentry_nnf_v9_50.instrument_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.instrument_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.instrument_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrument_name, range, value, display)

  return offset + length, value
end

-- Instrumentname 1
nse_nsefo_orderentry_nnf_v9_50.instrumentname_1 = {}

-- Size: Instrumentname 1
nse_nsefo_orderentry_nnf_v9_50.instrumentname_1.size = 6

-- Display: Instrumentname 1
nse_nsefo_orderentry_nnf_v9_50.instrumentname_1.display = function(value)
  return "Instrumentname 1: "..value
end

-- Dissect: Instrumentname 1
nse_nsefo_orderentry_nnf_v9_50.instrumentname_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.instrumentname_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.instrumentname_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrumentname_1, range, value, display)

  return offset + length, value
end

-- Instrumentname 2
nse_nsefo_orderentry_nnf_v9_50.instrumentname_2 = {}

-- Size: Instrumentname 2
nse_nsefo_orderentry_nnf_v9_50.instrumentname_2.size = 6

-- Display: Instrumentname 2
nse_nsefo_orderentry_nnf_v9_50.instrumentname_2.display = function(value)
  return "Instrumentname 2: "..value
end

-- Dissect: Instrumentname 2
nse_nsefo_orderentry_nnf_v9_50.instrumentname_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.instrumentname_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.instrumentname_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrumentname_2, range, value, display)

  return offset + length, value
end

-- Ip Address
nse_nsefo_orderentry_nnf_v9_50.ip_address = {}

-- Size: Ip Address
nse_nsefo_orderentry_nnf_v9_50.ip_address.size = 16

-- Display: Ip Address
nse_nsefo_orderentry_nnf_v9_50.ip_address.display = function(value)
  return "Ip Address: "..value
end

-- Dissect: Ip Address
nse_nsefo_orderentry_nnf_v9_50.ip_address.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ip_address.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.ip_address.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ip_address, range, value, display)

  return offset + length, value
end

-- Last
nse_nsefo_orderentry_nnf_v9_50.last = {}

-- Size: Last
nse_nsefo_orderentry_nnf_v9_50.last.size = 4

-- Display: Last
nse_nsefo_orderentry_nnf_v9_50.last.display = function(value)
  return "Last: "..value
end

-- Dissect: Last
nse_nsefo_orderentry_nnf_v9_50.last.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last, range, value, display)

  return offset + length, value
end

-- Last Activity Reference
nse_nsefo_orderentry_nnf_v9_50.last_activity_reference = {}

-- Size: Last Activity Reference
nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.size = 8

-- Display: Last Activity Reference
nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.display = function(value)
  return "Last Activity Reference: "..value
end

-- Dissect: Last Activity Reference
nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_activity_reference, range, value, display)

  return offset + length, value
end

-- Last Modified
nse_nsefo_orderentry_nnf_v9_50.last_modified = {}

-- Size: Last Modified
nse_nsefo_orderentry_nnf_v9_50.last_modified.size = 4

-- Display: Last Modified
nse_nsefo_orderentry_nnf_v9_50.last_modified.display = function(value)
  return "Last Modified: "..value
end

-- Dissect: Last Modified
nse_nsefo_orderentry_nnf_v9_50.last_modified.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_modified.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_modified.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_modified, range, value, display)

  return offset + length, value
end

-- Last Modified 1
nse_nsefo_orderentry_nnf_v9_50.last_modified_1 = {}

-- Size: Last Modified 1
nse_nsefo_orderentry_nnf_v9_50.last_modified_1.size = 4

-- Display: Last Modified 1
nse_nsefo_orderentry_nnf_v9_50.last_modified_1.display = function(value)
  return "Last Modified 1: "..value
end

-- Dissect: Last Modified 1
nse_nsefo_orderentry_nnf_v9_50.last_modified_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_modified_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_modified_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_modified_1, range, value, display)

  return offset + length, value
end

-- Last Modified Date Time
nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time = {}

-- Size: Last Modified Date Time
nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time.size = 4

-- Display: Last Modified Date Time
nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time.display = function(value)
  return "Last Modified Date Time: "..value
end

-- Dissect: Last Modified Date Time
nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_modified_date_time, range, value, display)

  return offset + length, value
end

-- Last Password Change Date
nse_nsefo_orderentry_nnf_v9_50.last_password_change_date = {}

-- Size: Last Password Change Date
nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.size = 4

-- Display: Last Password Change Date
nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.display = function(value)
  return "Last Password Change Date: "..value
end

-- Dissect: Last Password Change Date
nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_password_change_date, range, value, display)

  return offset + length, value
end

-- Last Update Index Time
nse_nsefo_orderentry_nnf_v9_50.last_update_index_time = {}

-- Size: Last Update Index Time
nse_nsefo_orderentry_nnf_v9_50.last_update_index_time.size = 4

-- Display: Last Update Index Time
nse_nsefo_orderentry_nnf_v9_50.last_update_index_time.display = function(value)
  return "Last Update Index Time: "..value
end

-- Dissect: Last Update Index Time
nse_nsefo_orderentry_nnf_v9_50.last_update_index_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_update_index_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_update_index_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_index_time, range, value, display)

  return offset + length, value
end

-- Last Update Instrument Time
nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time = {}

-- Size: Last Update Instrument Time
nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time.size = 4

-- Display: Last Update Instrument Time
nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time.display = function(value)
  return "Last Update Instrument Time: "..value
end

-- Dissect: Last Update Instrument Time
nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_instrument_time, range, value, display)

  return offset + length, value
end

-- Last Update Participant Time
nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time = {}

-- Size: Last Update Participant Time
nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time.size = 4

-- Display: Last Update Participant Time
nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time.display = function(value)
  return "Last Update Participant Time: "..value
end

-- Dissect: Last Update Participant Time
nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_participant_time, range, value, display)

  return offset + length, value
end

-- Last Update Portfolio T Ime
nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime = {}

-- Size: Last Update Portfolio T Ime
nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime.size = 4

-- Display: Last Update Portfolio T Ime
nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime.display = function(value)
  return "Last Update Portfolio T Ime: "..value
end

-- Dissect: Last Update Portfolio T Ime
nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_portfolio_t_ime, range, value, display)

  return offset + length, value
end

-- Last Update Security Time
nse_nsefo_orderentry_nnf_v9_50.last_update_security_time = {}

-- Size: Last Update Security Time
nse_nsefo_orderentry_nnf_v9_50.last_update_security_time.size = 4

-- Display: Last Update Security Time
nse_nsefo_orderentry_nnf_v9_50.last_update_security_time.display = function(value)
  return "Last Update Security Time: "..value
end

-- Dissect: Last Update Security Time
nse_nsefo_orderentry_nnf_v9_50.last_update_security_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.last_update_security_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.last_update_security_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.last_update_security_time, range, value, display)

  return offset + length, value
end

-- Lasttradedpd
nse_nsefo_orderentry_nnf_v9_50.lasttradedpd = {}

-- Size: Lasttradedpd
nse_nsefo_orderentry_nnf_v9_50.lasttradedpd.size = 4

-- Display: Lasttradedpd
nse_nsefo_orderentry_nnf_v9_50.lasttradedpd.display = function(value)
  return "Lasttradedpd: "..value
end

-- Dissect: Lasttradedpd
nse_nsefo_orderentry_nnf_v9_50.lasttradedpd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.lasttradedpd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.lasttradedpd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.lasttradedpd, range, value, display)

  return offset + length, value
end

-- Life High
nse_nsefo_orderentry_nnf_v9_50.life_high = {}

-- Size: Life High
nse_nsefo_orderentry_nnf_v9_50.life_high.size = 4

-- Display: Life High
nse_nsefo_orderentry_nnf_v9_50.life_high.display = function(value)
  return "Life High: "..value
end

-- Dissect: Life High
nse_nsefo_orderentry_nnf_v9_50.life_high.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.life_high.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.life_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.life_high, range, value, display)

  return offset + length, value
end

-- Life Low
nse_nsefo_orderentry_nnf_v9_50.life_low = {}

-- Size: Life Low
nse_nsefo_orderentry_nnf_v9_50.life_low.size = 4

-- Display: Life Low
nse_nsefo_orderentry_nnf_v9_50.life_low.display = function(value)
  return "Life Low: "..value
end

-- Dissect: Life Low
nse_nsefo_orderentry_nnf_v9_50.life_low.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.life_low.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.life_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.life_low, range, value, display)

  return offset + length, value
end

-- Limit High
nse_nsefo_orderentry_nnf_v9_50.limit_high = {}

-- Size: Limit High
nse_nsefo_orderentry_nnf_v9_50.limit_high.size = 4

-- Display: Limit High
nse_nsefo_orderentry_nnf_v9_50.limit_high.display = function(value)
  return "Limit High: "..value
end

-- Dissect: Limit High
nse_nsefo_orderentry_nnf_v9_50.limit_high.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.limit_high.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.limit_high.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.limit_high, range, value, display)

  return offset + length, value
end

-- Limit Low
nse_nsefo_orderentry_nnf_v9_50.limit_low = {}

-- Size: Limit Low
nse_nsefo_orderentry_nnf_v9_50.limit_low.size = 4

-- Display: Limit Low
nse_nsefo_orderentry_nnf_v9_50.limit_low.display = function(value)
  return "Limit Low: "..value
end

-- Dissect: Limit Low
nse_nsefo_orderentry_nnf_v9_50.limit_low.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.limit_low.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.limit_low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.limit_low, range, value, display)

  return offset + length, value
end

-- Log Time
nse_nsefo_orderentry_nnf_v9_50.log_time = {}

-- Size: Log Time
nse_nsefo_orderentry_nnf_v9_50.log_time.size = 4

-- Display: Log Time
nse_nsefo_orderentry_nnf_v9_50.log_time.display = function(value)
  return "Log Time: "..value
end

-- Dissect: Log Time
nse_nsefo_orderentry_nnf_v9_50.log_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.log_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.log_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.log_time, range, value, display)

  return offset + length, value
end

-- Low
nse_nsefo_orderentry_nnf_v9_50.low = {}

-- Size: Low
nse_nsefo_orderentry_nnf_v9_50.low.size = 2

-- Display: Low
nse_nsefo_orderentry_nnf_v9_50.low.display = function(value)
  return "Low: "..value
end

-- Dissect: Low
nse_nsefo_orderentry_nnf_v9_50.low.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.low.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.low.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.low, range, value, display)

  return offset + length, value
end

-- Low Price
nse_nsefo_orderentry_nnf_v9_50.low_price = {}

-- Size: Low Price
nse_nsefo_orderentry_nnf_v9_50.low_price.size = 4

-- Display: Low Price
nse_nsefo_orderentry_nnf_v9_50.low_price.display = function(value)
  return "Low Price: "..value
end

-- Translate: Low Price
nse_nsefo_orderentry_nnf_v9_50.low_price.translate = function(raw)
  return raw/100
end

-- Dissect: Low Price
nse_nsefo_orderentry_nnf_v9_50.low_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.low_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.low_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.low_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.low_price, range, value, display)

  return offset + length, value
end

-- Lowpd
nse_nsefo_orderentry_nnf_v9_50.lowpd = {}

-- Size: Lowpd
nse_nsefo_orderentry_nnf_v9_50.lowpd.size = 4

-- Display: Lowpd
nse_nsefo_orderentry_nnf_v9_50.lowpd.display = function(value)
  return "Lowpd: "..value
end

-- Dissect: Lowpd
nse_nsefo_orderentry_nnf_v9_50.lowpd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.lowpd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.lowpd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.lowpd, range, value, display)

  return offset + length, value
end

-- Market Index
nse_nsefo_orderentry_nnf_v9_50.market_index = {}

-- Size: Market Index
nse_nsefo_orderentry_nnf_v9_50.market_index.size = 4

-- Display: Market Index
nse_nsefo_orderentry_nnf_v9_50.market_index.display = function(value)
  return "Market Index: "..value
end

-- Dissect: Market Index
nse_nsefo_orderentry_nnf_v9_50.market_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.market_index.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.market_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_index, range, value, display)

  return offset + length, value
end

-- Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.market_status_auction = {}

-- Size: Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.market_status_auction.size = 2

-- Display: Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.market_status_auction.display = function(value)
  if value == 0 then
    return "Market Status Auction: Pre Open (0)"
  end
  if value == 1 then
    return "Market Status Auction: Open (1)"
  end
  if value == 2 then
    return "Market Status Auction: Closed (2)"
  end
  if value == 3 then
    return "Market Status Auction: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Market Status Auction: Postclose (4)"
  end

  return "Market Status Auction: Unknown("..value..")"
end

-- Dissect: Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.market_status_auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.market_status_auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.market_status_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_auction, range, value, display)

  return offset + length, value
end

-- Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.market_status_normal = {}

-- Size: Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.market_status_normal.size = 2

-- Display: Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.market_status_normal.display = function(value)
  if value == 0 then
    return "Market Status Normal: Pre Open (0)"
  end
  if value == 1 then
    return "Market Status Normal: Open (1)"
  end
  if value == 2 then
    return "Market Status Normal: Closed (2)"
  end
  if value == 3 then
    return "Market Status Normal: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Market Status Normal: Postclose (4)"
  end

  return "Market Status Normal: Unknown("..value..")"
end

-- Dissect: Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.market_status_normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.market_status_normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.market_status_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_normal, range, value, display)

  return offset + length, value
end

-- Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot = {}

-- Size: Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot.size = 2

-- Display: Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot.display = function(value)
  if value == 0 then
    return "Market Status Oddlot: Pre Open (0)"
  end
  if value == 1 then
    return "Market Status Oddlot: Open (1)"
  end
  if value == 2 then
    return "Market Status Oddlot: Closed (2)"
  end
  if value == 3 then
    return "Market Status Oddlot: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Market Status Oddlot: Postclose (4)"
  end

  return "Market Status Oddlot: Unknown("..value..")"
end

-- Dissect: Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_oddlot, range, value, display)

  return offset + length, value
end

-- Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.market_status_spot = {}

-- Size: Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.market_status_spot.size = 2

-- Display: Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.market_status_spot.display = function(value)
  if value == 0 then
    return "Market Status Spot: Pre Open (0)"
  end
  if value == 1 then
    return "Market Status Spot: Open (1)"
  end
  if value == 2 then
    return "Market Status Spot: Closed (2)"
  end
  if value == 3 then
    return "Market Status Spot: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Market Status Spot: Postclose (4)"
  end

  return "Market Status Spot: Unknown("..value..")"
end

-- Dissect: Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.market_status_spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.market_status_spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.market_status_spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_status_spot, range, value, display)

  return offset + length, value
end

-- Market Type
nse_nsefo_orderentry_nnf_v9_50.market_type = {}

-- Size: Market Type
nse_nsefo_orderentry_nnf_v9_50.market_type.size = 2

-- Display: Market Type
nse_nsefo_orderentry_nnf_v9_50.market_type.display = function(value)
  return "Market Type: "..value
end

-- Dissect: Market Type
nse_nsefo_orderentry_nnf_v9_50.market_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.market_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.market_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_type, range, value, display)

  return offset + length, value
end

-- Maximum Gtc Days
nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days = {}

-- Size: Maximum Gtc Days
nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days.size = 2

-- Display: Maximum Gtc Days
nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days.display = function(value)
  return "Maximum Gtc Days: "..value
end

-- Dissect: Maximum Gtc Days
nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.maximum_gtc_days, range, value, display)

  return offset + length, value
end

-- Member Type
nse_nsefo_orderentry_nnf_v9_50.member_type = {}

-- Size: Member Type
nse_nsefo_orderentry_nnf_v9_50.member_type.size = 2

-- Display: Member Type
nse_nsefo_orderentry_nnf_v9_50.member_type.display = function(value)
  return "Member Type: "..value
end

-- Dissect: Member Type
nse_nsefo_orderentry_nnf_v9_50.member_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.member_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.member_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.member_type, range, value, display)

  return offset + length, value
end

-- Message Length
nse_nsefo_orderentry_nnf_v9_50.message_length = {}

-- Size: Message Length
nse_nsefo_orderentry_nnf_v9_50.message_length.size = 2

-- Display: Message Length
nse_nsefo_orderentry_nnf_v9_50.message_length.display = function(value)
  return "Message Length: "..value
end

-- Dissect: Message Length
nse_nsefo_orderentry_nnf_v9_50.message_length.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.message_length.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.message_length.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_length, range, value, display)

  return offset + length, value
end

-- Message Type
nse_nsefo_orderentry_nnf_v9_50.message_type = {}

-- Size: Message Type
nse_nsefo_orderentry_nnf_v9_50.message_type.size = 1

-- Display: Message Type
nse_nsefo_orderentry_nnf_v9_50.message_type.display = function(value)
  return "Message Type: "..value
end

-- Dissect: Message Type
nse_nsefo_orderentry_nnf_v9_50.message_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.message_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.message_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_type, range, value, display)

  return offset + length, value
end

-- Min Fill Aon 1
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1 = {}

-- Size: Min Fill Aon 1
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1.size = 4

-- Display: Min Fill Aon 1
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1.display = function(value)
  return "Min Fill Aon 1: "..value
end

-- Dissect: Min Fill Aon 1
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.min_fill_aon_1, range, value, display)

  return offset + length, value
end

-- Min Fill Aon 2
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2 = {}

-- Size: Min Fill Aon 2
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2.size = 4

-- Display: Min Fill Aon 2
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2.display = function(value)
  return "Min Fill Aon 2: "..value
end

-- Dissect: Min Fill Aon 2
nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.min_fill_aon_2, range, value, display)

  return offset + length, value
end

-- Minimum Fill Aon Volume
nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume = {}

-- Size: Minimum Fill Aon Volume
nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume.size = 4

-- Display: Minimum Fill Aon Volume
nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume.display = function(value)
  return "Minimum Fill Aon Volume: "..value
end

-- Dissect: Minimum Fill Aon Volume
nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.minimum_fill_aon_volume, range, value, display)

  return offset + length, value
end

-- Mkt Replay
nse_nsefo_orderentry_nnf_v9_50.mkt_replay = {}

-- Size: Mkt Replay
nse_nsefo_orderentry_nnf_v9_50.mkt_replay.size = 8

-- Display: Mkt Replay
nse_nsefo_orderentry_nnf_v9_50.mkt_replay.display = function(value)
  return "Mkt Replay: "..value
end

-- Dissect: Mkt Replay
nse_nsefo_orderentry_nnf_v9_50.mkt_replay.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.mkt_replay.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.mkt_replay.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_replay, range, value, display)

  return offset + length, value
end

-- Mkt Type
nse_nsefo_orderentry_nnf_v9_50.mkt_type = {}

-- Size: Mkt Type
nse_nsefo_orderentry_nnf_v9_50.mkt_type.size = 1

-- Display: Mkt Type
nse_nsefo_orderentry_nnf_v9_50.mkt_type.display = function(value)
  if value == "1" then
    return "Mkt Type: Normal Market (1)"
  end
  if value == "2" then
    return "Mkt Type: Odd Lot Market (2)"
  end
  if value == "3" then
    return "Mkt Type: Spot Market (3)"
  end
  if value == "4" then
    return "Mkt Type: Auction Market (4)"
  end

  return "Mkt Type: Unknown("..value..")"
end

-- Dissect: Mkt Type
nse_nsefo_orderentry_nnf_v9_50.mkt_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.mkt_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.mkt_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_type, range, value, display)

  return offset + length, value
end

-- Mod Cxl By 1
nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1 = {}

-- Size: Mod Cxl By 1
nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1.size = 1

-- Display: Mod Cxl By 1
nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1.display = function(value)
  return "Mod Cxl By 1: "..value
end

-- Dissect: Mod Cxl By 1
nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.mod_cxl_by_1, range, value, display)

  return offset + length, value
end

-- Modified Cancelled By
nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by = {}

-- Size: Modified Cancelled By
nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by.size = 1

-- Display: Modified Cancelled By
nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by.display = function(value)
  if value == "T" then
    return "Modified Cancelled By: Trader (T)"
  end
  if value == "B" then
    return "Modified Cancelled By: Branch Manager (B)"
  end
  if value == "M" then
    return "Modified Cancelled By: Corporate Manager (M)"
  end
  if value == "C" then
    return "Modified Cancelled By: Exchange (C)"
  end

  return "Modified Cancelled By: Unknown("..value..")"
end

-- Dissect: Modified Cancelled By
nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.modified_cancelled_by, range, value, display)

  return offset + length, value
end

-- Name
nse_nsefo_orderentry_nnf_v9_50.name = {}

-- Size: Name
nse_nsefo_orderentry_nnf_v9_50.name.size = 50

-- Display: Name
nse_nsefo_orderentry_nnf_v9_50.name.display = function(value)
  return "Name: "..value
end

-- Dissect: Name
nse_nsefo_orderentry_nnf_v9_50.name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.name, range, value, display)

  return offset + length, value
end

-- New Password
nse_nsefo_orderentry_nnf_v9_50.new_password = {}

-- Size: New Password
nse_nsefo_orderentry_nnf_v9_50.new_password.size = 8

-- Display: New Password
nse_nsefo_orderentry_nnf_v9_50.new_password.display = function(value)
  return "New Password: "..value
end

-- Dissect: New Password
nse_nsefo_orderentry_nnf_v9_50.new_password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.new_password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.new_password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.new_password, range, value, display)

  return offset + length, value
end

-- Nnf Field
nse_nsefo_orderentry_nnf_v9_50.nnf_field = {}

-- Size: Nnf Field
nse_nsefo_orderentry_nnf_v9_50.nnf_field.size = 8

-- Display: Nnf Field
nse_nsefo_orderentry_nnf_v9_50.nnf_field.display = function(value)
  return "Nnf Field: "..value
end

-- Dissect: Nnf Field
nse_nsefo_orderentry_nnf_v9_50.nnf_field.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.nnf_field.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.nnf_field.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.nnf_field, range, value, display)

  return offset + length, value
end

-- No Of Records
nse_nsefo_orderentry_nnf_v9_50.no_of_records = {}

-- Size: No Of Records
nse_nsefo_orderentry_nnf_v9_50.no_of_records.size = 2

-- Display: No Of Records
nse_nsefo_orderentry_nnf_v9_50.no_of_records.display = function(value)
  return "No Of Records: "..value
end

-- Dissect: No Of Records
nse_nsefo_orderentry_nnf_v9_50.no_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.no_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.no_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.no_of_records, range, value, display)

  return offset + length, value
end

-- Noofcontractstraded
nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded = {}

-- Size: Noofcontractstraded
nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded.size = 4

-- Display: Noofcontractstraded
nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded.display = function(value)
  return "Noofcontractstraded: "..value
end

-- Dissect: Noofcontractstraded
nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.noofcontractstraded, range, value, display)

  return offset + length, value
end

-- Nse Symbol
nse_nsefo_orderentry_nnf_v9_50.nse_symbol = {}

-- Size: Nse Symbol
nse_nsefo_orderentry_nnf_v9_50.nse_symbol.size = 16

-- Display: Nse Symbol
nse_nsefo_orderentry_nnf_v9_50.nse_symbol.display = function(value)
  return "Nse Symbol: "..value
end

-- Dissect: Nse Symbol
nse_nsefo_orderentry_nnf_v9_50.nse_symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.nse_symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.nse_symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.nse_symbol, range, value, display)

  return offset + length, value
end

-- Number Of Industry Records
nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records = {}

-- Size: Number Of Industry Records
nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.size = 2

-- Display: Number Of Industry Records
nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.display = function(value)
  return "Number Of Industry Records: "..value
end

-- Dissect: Number Of Industry Records
nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.number_of_industry_records, range, value, display)

  return offset + length, value
end

-- Number Of Packets
nse_nsefo_orderentry_nnf_v9_50.number_of_packets = {}

-- Size: Number Of Packets
nse_nsefo_orderentry_nnf_v9_50.number_of_packets.size = 4

-- Display: Number Of Packets
nse_nsefo_orderentry_nnf_v9_50.number_of_packets.display = function(value)
  return "Number Of Packets: "..value
end

-- Dissect: Number Of Packets
nse_nsefo_orderentry_nnf_v9_50.number_of_packets.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.number_of_packets.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.number_of_packets.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.number_of_packets, range, value, display)

  return offset + length, value
end

-- Number Of Records
nse_nsefo_orderentry_nnf_v9_50.number_of_records = {}

-- Size: Number Of Records
nse_nsefo_orderentry_nnf_v9_50.number_of_records.size = 2

-- Display: Number Of Records
nse_nsefo_orderentry_nnf_v9_50.number_of_records.display = function(value)
  return "Number Of Records: "..value
end

-- Dissect: Number Of Records
nse_nsefo_orderentry_nnf_v9_50.number_of_records.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.number_of_records.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.number_of_records.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.number_of_records, range, value, display)

  return offset + length, value
end

-- Old Account Number
nse_nsefo_orderentry_nnf_v9_50.old_account_number = {}

-- Size: Old Account Number
nse_nsefo_orderentry_nnf_v9_50.old_account_number.size = 10

-- Display: Old Account Number
nse_nsefo_orderentry_nnf_v9_50.old_account_number.display = function(value)
  return "Old Account Number: "..value
end

-- Dissect: Old Account Number
nse_nsefo_orderentry_nnf_v9_50.old_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.old_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.old_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_account_number, range, value, display)

  return offset + length, value
end

-- Old Open Close
nse_nsefo_orderentry_nnf_v9_50.old_open_close = {}

-- Size: Old Open Close
nse_nsefo_orderentry_nnf_v9_50.old_open_close.size = 1

-- Display: Old Open Close
nse_nsefo_orderentry_nnf_v9_50.old_open_close.display = function(value)
  return "Old Open Close: "..value
end

-- Dissect: Old Open Close
nse_nsefo_orderentry_nnf_v9_50.old_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.old_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.old_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_open_close, range, value, display)

  return offset + length, value
end

-- Old Pan
nse_nsefo_orderentry_nnf_v9_50.old_pan = {}

-- Size: Old Pan
nse_nsefo_orderentry_nnf_v9_50.old_pan.size = 10

-- Display: Old Pan
nse_nsefo_orderentry_nnf_v9_50.old_pan.display = function(value)
  return "Old Pan: "..value
end

-- Dissect: Old Pan
nse_nsefo_orderentry_nnf_v9_50.old_pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.old_pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.old_pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_pan, range, value, display)

  return offset + length, value
end

-- Old Participant
nse_nsefo_orderentry_nnf_v9_50.old_participant = {}

-- Size: Old Participant
nse_nsefo_orderentry_nnf_v9_50.old_participant.size = 12

-- Display: Old Participant
nse_nsefo_orderentry_nnf_v9_50.old_participant.display = function(value)
  return "Old Participant: "..value
end

-- Dissect: Old Participant
nse_nsefo_orderentry_nnf_v9_50.old_participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.old_participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.old_participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.old_participant, range, value, display)

  return offset + length, value
end

-- Op Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1 = {}

-- Size: Op Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1.size = 5

-- Display: Op Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1.display = function(value)
  return "Op Broker Id 1: "..value
end

-- Dissect: Op Broker Id 1
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.op_broker_id_1, range, value, display)

  return offset + length, value
end

-- Op Broker Id 2
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2 = {}

-- Size: Op Broker Id 2
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2.size = 5

-- Display: Op Broker Id 2
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2.display = function(value)
  return "Op Broker Id 2: "..value
end

-- Dissect: Op Broker Id 2
nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.op_broker_id_2, range, value, display)

  return offset + length, value
end

-- Open
nse_nsefo_orderentry_nnf_v9_50.open = {}

-- Size: Open
nse_nsefo_orderentry_nnf_v9_50.open.size = 4

-- Display: Open
nse_nsefo_orderentry_nnf_v9_50.open.display = function(value)
  return "Open: "..value
end

-- Dissect: Open
nse_nsefo_orderentry_nnf_v9_50.open.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.open.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.open.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.open, range, value, display)

  return offset + length, value
end

-- Open Close
nse_nsefo_orderentry_nnf_v9_50.open_close = {}

-- Size: Open Close
nse_nsefo_orderentry_nnf_v9_50.open_close.size = 1

-- Display: Open Close
nse_nsefo_orderentry_nnf_v9_50.open_close.display = function(value)
  return "Open Close: "..value
end

-- Dissect: Open Close
nse_nsefo_orderentry_nnf_v9_50.open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_close, range, value, display)

  return offset + length, value
end

-- Open Close 1
nse_nsefo_orderentry_nnf_v9_50.open_close_1 = {}

-- Size: Open Close 1
nse_nsefo_orderentry_nnf_v9_50.open_close_1.size = 1

-- Display: Open Close 1
nse_nsefo_orderentry_nnf_v9_50.open_close_1.display = function(value)
  return "Open Close 1: "..value
end

-- Dissect: Open Close 1
nse_nsefo_orderentry_nnf_v9_50.open_close_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.open_close_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.open_close_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_close_1, range, value, display)

  return offset + length, value
end

-- Open Close 2
nse_nsefo_orderentry_nnf_v9_50.open_close_2 = {}

-- Size: Open Close 2
nse_nsefo_orderentry_nnf_v9_50.open_close_2.size = 1

-- Display: Open Close 2
nse_nsefo_orderentry_nnf_v9_50.open_close_2.display = function(value)
  return "Open Close 2: "..value
end

-- Dissect: Open Close 2
nse_nsefo_orderentry_nnf_v9_50.open_close_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.open_close_2.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.open_close_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_close_2, range, value, display)

  return offset + length, value
end

-- Open Interest
nse_nsefo_orderentry_nnf_v9_50.open_interest = {}

-- Size: Open Interest
nse_nsefo_orderentry_nnf_v9_50.open_interest.size = 8

-- Display: Open Interest
nse_nsefo_orderentry_nnf_v9_50.open_interest.display = function(value)
  return "Open Interest: "..value
end

-- Dissect: Open Interest
nse_nsefo_orderentry_nnf_v9_50.open_interest.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.open_interest.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.open_interest.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_interest, range, value, display)

  return offset + length, value
end

-- Open Price
nse_nsefo_orderentry_nnf_v9_50.open_price = {}

-- Size: Open Price
nse_nsefo_orderentry_nnf_v9_50.open_price.size = 4

-- Display: Open Price
nse_nsefo_orderentry_nnf_v9_50.open_price.display = function(value)
  return "Open Price: "..value
end

-- Translate: Open Price
nse_nsefo_orderentry_nnf_v9_50.open_price.translate = function(raw)
  return raw/100
end

-- Dissect: Open Price
nse_nsefo_orderentry_nnf_v9_50.open_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.open_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.open_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.open_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.open_price, range, value, display)

  return offset + length, value
end

-- Opening
nse_nsefo_orderentry_nnf_v9_50.opening = {}

-- Size: Opening
nse_nsefo_orderentry_nnf_v9_50.opening.size = 2

-- Display: Opening
nse_nsefo_orderentry_nnf_v9_50.opening.display = function(value)
  return "Opening: "..value
end

-- Dissect: Opening
nse_nsefo_orderentry_nnf_v9_50.opening.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.opening.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.opening.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.opening, range, value, display)

  return offset + length, value
end

-- Openpd
nse_nsefo_orderentry_nnf_v9_50.openpd = {}

-- Size: Openpd
nse_nsefo_orderentry_nnf_v9_50.openpd.size = 4

-- Display: Openpd
nse_nsefo_orderentry_nnf_v9_50.openpd.display = function(value)
  return "Openpd: "..value
end

-- Dissect: Openpd
nse_nsefo_orderentry_nnf_v9_50.openpd.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.openpd.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.openpd.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.openpd, range, value, display)

  return offset + length, value
end

-- Option Type
nse_nsefo_orderentry_nnf_v9_50.option_type = {}

-- Size: Option Type
nse_nsefo_orderentry_nnf_v9_50.option_type.size = 2

-- Display: Option Type
nse_nsefo_orderentry_nnf_v9_50.option_type.display = function(value)
  return "Option Type: "..value
end

-- Dissect: Option Type
nse_nsefo_orderentry_nnf_v9_50.option_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.option_type.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.option_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.option_type, range, value, display)

  return offset + length, value
end

-- Optiontype 1
nse_nsefo_orderentry_nnf_v9_50.optiontype_1 = {}

-- Size: Optiontype 1
nse_nsefo_orderentry_nnf_v9_50.optiontype_1.size = 2

-- Display: Optiontype 1
nse_nsefo_orderentry_nnf_v9_50.optiontype_1.display = function(value)
  return "Optiontype 1: "..value
end

-- Dissect: Optiontype 1
nse_nsefo_orderentry_nnf_v9_50.optiontype_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.optiontype_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.optiontype_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.optiontype_1, range, value, display)

  return offset + length, value
end

-- Optiontype 2
nse_nsefo_orderentry_nnf_v9_50.optiontype_2 = {}

-- Size: Optiontype 2
nse_nsefo_orderentry_nnf_v9_50.optiontype_2.size = 2

-- Display: Optiontype 2
nse_nsefo_orderentry_nnf_v9_50.optiontype_2.display = function(value)
  return "Optiontype 2: "..value
end

-- Dissect: Optiontype 2
nse_nsefo_orderentry_nnf_v9_50.optiontype_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.optiontype_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.optiontype_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.optiontype_2, range, value, display)

  return offset + length, value
end

-- Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff = {}

-- Size: Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff.size = 8

-- Display: Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff.display = function(value)
  return "Ord Qty Buff: "..value
end

-- Dissect: Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ord_qty_buff, range, value, display)

  return offset + length, value
end

-- Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.ord_val_buff = {}

-- Size: Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.ord_val_buff.size = 8

-- Display: Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.ord_val_buff.display = function(value)
  return "Ord Val Buff: "..value
end

-- Dissect: Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.ord_val_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ord_val_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.ord_val_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ord_val_buff, range, value, display)

  return offset + length, value
end

-- Order Number
nse_nsefo_orderentry_nnf_v9_50.order_number = {}

-- Size: Order Number
nse_nsefo_orderentry_nnf_v9_50.order_number.size = 8

-- Display: Order Number
nse_nsefo_orderentry_nnf_v9_50.order_number.display = function(value)
  return "Order Number: "..value
end

-- Dissect: Order Number
nse_nsefo_orderentry_nnf_v9_50.order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_number, range, value, display)

  return offset + length, value
end

-- Order Number 1
nse_nsefo_orderentry_nnf_v9_50.order_number_1 = {}

-- Size: Order Number 1
nse_nsefo_orderentry_nnf_v9_50.order_number_1.size = 8

-- Display: Order Number 1
nse_nsefo_orderentry_nnf_v9_50.order_number_1.display = function(value)
  return "Order Number 1: "..value
end

-- Dissect: Order Number 1
nse_nsefo_orderentry_nnf_v9_50.order_number_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.order_number_1.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.order_number_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_number_1, range, value, display)

  return offset + length, value
end

-- Order Qty Limit
nse_nsefo_orderentry_nnf_v9_50.order_qty_limit = {}

-- Size: Order Qty Limit
nse_nsefo_orderentry_nnf_v9_50.order_qty_limit.size = 8

-- Display: Order Qty Limit
nse_nsefo_orderentry_nnf_v9_50.order_qty_limit.display = function(value)
  return "Order Qty Limit: "..value
end

-- Dissect: Order Qty Limit
nse_nsefo_orderentry_nnf_v9_50.order_qty_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.order_qty_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.order_qty_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_qty_limit, range, value, display)

  return offset + length, value
end

-- Order Type
nse_nsefo_orderentry_nnf_v9_50.order_type = {}

-- Size: Order Type
nse_nsefo_orderentry_nnf_v9_50.order_type.size = 2

-- Display: Order Type
nse_nsefo_orderentry_nnf_v9_50.order_type.display = function(value)
  return "Order Type: "..value
end

-- Dissect: Order Type
nse_nsefo_orderentry_nnf_v9_50.order_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.order_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.order_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_type, range, value, display)

  return offset + length, value
end

-- Order Type 1
nse_nsefo_orderentry_nnf_v9_50.order_type_1 = {}

-- Size: Order Type 1
nse_nsefo_orderentry_nnf_v9_50.order_type_1.size = 2

-- Display: Order Type 1
nse_nsefo_orderentry_nnf_v9_50.order_type_1.display = function(value)
  return "Order Type 1: "..value
end

-- Dissect: Order Type 1
nse_nsefo_orderentry_nnf_v9_50.order_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.order_type_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.order_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_type_1, range, value, display)

  return offset + length, value
end

-- Order Type 2
nse_nsefo_orderentry_nnf_v9_50.order_type_2 = {}

-- Size: Order Type 2
nse_nsefo_orderentry_nnf_v9_50.order_type_2.size = 2

-- Display: Order Type 2
nse_nsefo_orderentry_nnf_v9_50.order_type_2.display = function(value)
  return "Order Type 2: "..value
end

-- Dissect: Order Type 2
nse_nsefo_orderentry_nnf_v9_50.order_type_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.order_type_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.order_type_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_type_2, range, value, display)

  return offset + length, value
end

-- Order Val Limit
nse_nsefo_orderentry_nnf_v9_50.order_val_limit = {}

-- Size: Order Val Limit
nse_nsefo_orderentry_nnf_v9_50.order_val_limit.size = 8

-- Display: Order Val Limit
nse_nsefo_orderentry_nnf_v9_50.order_val_limit.display = function(value)
  return "Order Val Limit: "..value
end

-- Dissect: Order Val Limit
nse_nsefo_orderentry_nnf_v9_50.order_val_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.order_val_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.order_val_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_val_limit, range, value, display)

  return offset + length, value
end

-- Org Scope
nse_nsefo_orderentry_nnf_v9_50.org_scope = {}

-- Size: Org Scope
nse_nsefo_orderentry_nnf_v9_50.org_scope.size = 1

-- Display: Org Scope
nse_nsefo_orderentry_nnf_v9_50.org_scope.display = function(value)
  return "Org Scope: "..value
end

-- Dissect: Org Scope
nse_nsefo_orderentry_nnf_v9_50.org_scope.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.org_scope.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.org_scope.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.org_scope, range, value, display)

  return offset + length, value
end

-- Original Volume
nse_nsefo_orderentry_nnf_v9_50.original_volume = {}

-- Size: Original Volume
nse_nsefo_orderentry_nnf_v9_50.original_volume.size = 4

-- Display: Original Volume
nse_nsefo_orderentry_nnf_v9_50.original_volume.display = function(value)
  return "Original Volume: "..value
end

-- Dissect: Original Volume
nse_nsefo_orderentry_nnf_v9_50.original_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.original_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.original_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.original_volume, range, value, display)

  return offset + length, value
end

-- Pan
nse_nsefo_orderentry_nnf_v9_50.pan = {}

-- Size: Pan
nse_nsefo_orderentry_nnf_v9_50.pan.size = 10

-- Display: Pan
nse_nsefo_orderentry_nnf_v9_50.pan.display = function(value)
  return "Pan: "..value
end

-- Dissect: Pan
nse_nsefo_orderentry_nnf_v9_50.pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pan, range, value, display)

  return offset + length, value
end

-- Participant
nse_nsefo_orderentry_nnf_v9_50.participant = {}

-- Size: Participant
nse_nsefo_orderentry_nnf_v9_50.participant.size = 12

-- Display: Participant
nse_nsefo_orderentry_nnf_v9_50.participant.display = function(value)
  return "Participant: "..value
end

-- Dissect: Participant
nse_nsefo_orderentry_nnf_v9_50.participant.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.participant.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.participant.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.participant, range, value, display)

  return offset + length, value
end

-- Participant Type
nse_nsefo_orderentry_nnf_v9_50.participant_type = {}

-- Size: Participant Type
nse_nsefo_orderentry_nnf_v9_50.participant_type.size = 1

-- Display: Participant Type
nse_nsefo_orderentry_nnf_v9_50.participant_type.display = function(value)
  if value == "I" then
    return "Participant Type: Initiator (I)"
  end
  if value == "C" then
    return "Participant Type: Competitor (C)"
  end
  if value == "S" then
    return "Participant Type: Solicitor (S)"
  end

  return "Participant Type: Unknown("..value..")"
end

-- Dissect: Participant Type
nse_nsefo_orderentry_nnf_v9_50.participant_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.participant_type.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.participant_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.participant_type, range, value, display)

  return offset + length, value
end

-- Participant Type 1
nse_nsefo_orderentry_nnf_v9_50.participant_type_1 = {}

-- Size: Participant Type 1
nse_nsefo_orderentry_nnf_v9_50.participant_type_1.size = 1

-- Display: Participant Type 1
nse_nsefo_orderentry_nnf_v9_50.participant_type_1.display = function(value)
  return "Participant Type 1: "..value
end

-- Dissect: Participant Type 1
nse_nsefo_orderentry_nnf_v9_50.participant_type_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.participant_type_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.participant_type_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.participant_type_1, range, value, display)

  return offset + length, value
end

-- Password
nse_nsefo_orderentry_nnf_v9_50.password = {}

-- Size: Password
nse_nsefo_orderentry_nnf_v9_50.password.size = 8

-- Display: Password
nse_nsefo_orderentry_nnf_v9_50.password.display = function(value)
  return "Password: "..value
end

-- Dissect: Password
nse_nsefo_orderentry_nnf_v9_50.password.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.password.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.password.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.password, range, value, display)

  return offset + length, value
end

-- Pl Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction = {}

-- Size: Pl Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction.size = 2

-- Display: Pl Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction.display = function(value)
  if value == 0 then
    return "Pl Market Status Auction: Pre Open (0)"
  end
  if value == 1 then
    return "Pl Market Status Auction: Open (1)"
  end
  if value == 2 then
    return "Pl Market Status Auction: Closed (2)"
  end
  if value == 3 then
    return "Pl Market Status Auction: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Pl Market Status Auction: Postclose (4)"
  end

  return "Pl Market Status Auction: Unknown("..value..")"
end

-- Dissect: Pl Market Status Auction
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_auction, range, value, display)

  return offset + length, value
end

-- Pl Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal = {}

-- Size: Pl Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal.size = 2

-- Display: Pl Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal.display = function(value)
  if value == 0 then
    return "Pl Market Status Normal: Pre Open (0)"
  end
  if value == 1 then
    return "Pl Market Status Normal: Open (1)"
  end
  if value == 2 then
    return "Pl Market Status Normal: Closed (2)"
  end
  if value == 3 then
    return "Pl Market Status Normal: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Pl Market Status Normal: Postclose (4)"
  end

  return "Pl Market Status Normal: Unknown("..value..")"
end

-- Dissect: Pl Market Status Normal
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_normal, range, value, display)

  return offset + length, value
end

-- Pl Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot = {}

-- Size: Pl Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot.size = 2

-- Display: Pl Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot.display = function(value)
  if value == 0 then
    return "Pl Market Status Oddlot: Pre Open (0)"
  end
  if value == 1 then
    return "Pl Market Status Oddlot: Open (1)"
  end
  if value == 2 then
    return "Pl Market Status Oddlot: Closed (2)"
  end
  if value == 3 then
    return "Pl Market Status Oddlot: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Pl Market Status Oddlot: Postclose (4)"
  end

  return "Pl Market Status Oddlot: Unknown("..value..")"
end

-- Dissect: Pl Market Status Oddlot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_oddlot, range, value, display)

  return offset + length, value
end

-- Pl Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot = {}

-- Size: Pl Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot.size = 2

-- Display: Pl Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot.display = function(value)
  if value == 0 then
    return "Pl Market Status Spot: Pre Open (0)"
  end
  if value == 1 then
    return "Pl Market Status Spot: Open (1)"
  end
  if value == 2 then
    return "Pl Market Status Spot: Closed (2)"
  end
  if value == 3 then
    return "Pl Market Status Spot: Pre Open Ended (3)"
  end
  if value == 4 then
    return "Pl Market Status Spot: Postclose (4)"
  end

  return "Pl Market Status Spot: Unknown("..value..")"
end

-- Dissect: Pl Market Status Spot
nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pl_market_status_spot, range, value, display)

  return offset + length, value
end

-- Port
nse_nsefo_orderentry_nnf_v9_50.port = {}

-- Size: Port
nse_nsefo_orderentry_nnf_v9_50.port.size = 4

-- Display: Port
nse_nsefo_orderentry_nnf_v9_50.port.display = function(value)
  return "Port: "..value
end

-- Dissect: Port
nse_nsefo_orderentry_nnf_v9_50.port.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.port.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.port.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.port, range, value, display)

  return offset + length, value
end

-- Prev Close
nse_nsefo_orderentry_nnf_v9_50.prev_close = {}

-- Size: Prev Close
nse_nsefo_orderentry_nnf_v9_50.prev_close.size = 4

-- Display: Prev Close
nse_nsefo_orderentry_nnf_v9_50.prev_close.display = function(value)
  return "Prev Close: "..value
end

-- Dissect: Prev Close
nse_nsefo_orderentry_nnf_v9_50.prev_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.prev_close.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.prev_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.prev_close, range, value, display)

  return offset + length, value
end

-- Previous Close Price
nse_nsefo_orderentry_nnf_v9_50.previous_close_price = {}

-- Size: Previous Close Price
nse_nsefo_orderentry_nnf_v9_50.previous_close_price.size = 4

-- Display: Previous Close Price
nse_nsefo_orderentry_nnf_v9_50.previous_close_price.display = function(value)
  return "Previous Close Price: "..value
end

-- Translate: Previous Close Price
nse_nsefo_orderentry_nnf_v9_50.previous_close_price.translate = function(raw)
  return raw/100
end

-- Dissect: Previous Close Price
nse_nsefo_orderentry_nnf_v9_50.previous_close_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.previous_close_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.previous_close_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.previous_close_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.previous_close_price, range, value, display)

  return offset + length, value
end

-- Price
nse_nsefo_orderentry_nnf_v9_50.price = {}

-- Size: Price
nse_nsefo_orderentry_nnf_v9_50.price.size = 4

-- Display: Price
nse_nsefo_orderentry_nnf_v9_50.price.display = function(value)
  return "Price: "..value
end

-- Translate: Price
nse_nsefo_orderentry_nnf_v9_50.price.translate = function(raw)
  return raw/100
end

-- Dissect: Price
nse_nsefo_orderentry_nnf_v9_50.price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.price, range, value, display)

  return offset + length, value
end

-- Price 1
nse_nsefo_orderentry_nnf_v9_50.price_1 = {}

-- Size: Price 1
nse_nsefo_orderentry_nnf_v9_50.price_1.size = 4

-- Display: Price 1
nse_nsefo_orderentry_nnf_v9_50.price_1.display = function(value)
  return "Price 1: "..value
end

-- Translate: Price 1
nse_nsefo_orderentry_nnf_v9_50.price_1.translate = function(raw)
  return raw/100
end

-- Dissect: Price 1
nse_nsefo_orderentry_nnf_v9_50.price_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.price_1.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.price_1.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_1, range, value, display)

  return offset + length, value
end

-- Price 2
nse_nsefo_orderentry_nnf_v9_50.price_2 = {}

-- Size: Price 2
nse_nsefo_orderentry_nnf_v9_50.price_2.size = 4

-- Display: Price 2
nse_nsefo_orderentry_nnf_v9_50.price_2.display = function(value)
  return "Price 2: "..value
end

-- Translate: Price 2
nse_nsefo_orderentry_nnf_v9_50.price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Price 2
nse_nsefo_orderentry_nnf_v9_50.price_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.price_2.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.price_2.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_2, range, value, display)

  return offset + length, value
end

-- Price Diff
nse_nsefo_orderentry_nnf_v9_50.price_diff = {}

-- Size: Price Diff
nse_nsefo_orderentry_nnf_v9_50.price_diff.size = 4

-- Display: Price Diff
nse_nsefo_orderentry_nnf_v9_50.price_diff.display = function(value)
  return "Price Diff: "..value
end

-- Translate: Price Diff
nse_nsefo_orderentry_nnf_v9_50.price_diff.translate = function(raw)
  return raw/100
end

-- Dissect: Price Diff
nse_nsefo_orderentry_nnf_v9_50.price_diff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.price_diff.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.price_diff.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.price_diff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_diff, range, value, display)

  return offset + length, value
end

-- Pro Client 1
nse_nsefo_orderentry_nnf_v9_50.pro_client_1 = {}

-- Size: Pro Client 1
nse_nsefo_orderentry_nnf_v9_50.pro_client_1.size = 2

-- Display: Pro Client 1
nse_nsefo_orderentry_nnf_v9_50.pro_client_1.display = function(value)
  return "Pro Client 1: "..value
end

-- Dissect: Pro Client 1
nse_nsefo_orderentry_nnf_v9_50.pro_client_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.pro_client_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.pro_client_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pro_client_1, range, value, display)

  return offset + length, value
end

-- Pro Client Indicator
nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator = {}

-- Size: Pro Client Indicator
nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator.size = 2

-- Display: Pro Client Indicator
nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator.display = function(value)
  return "Pro Client Indicator: "..value
end

-- Dissect: Pro Client Indicator
nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pro_client_indicator, range, value, display)

  return offset + length, value
end

-- Reason Code
nse_nsefo_orderentry_nnf_v9_50.reason_code = {}

-- Size: Reason Code
nse_nsefo_orderentry_nnf_v9_50.reason_code.size = 2

-- Display: Reason Code
nse_nsefo_orderentry_nnf_v9_50.reason_code.display = function(value)
  if value == 2 then
    return "Reason Code: Exercise (2)"
  end
  if value == 3 then
    return "Reason Code: Position Liquidation (3)"
  end
  if value == 5 then
    return "Reason Code: Security (5)"
  end
  if value == 6 then
    return "Reason Code: Broker (6)"
  end
  if value == 7 then
    return "Reason Code: Branch (7)"
  end
  if value == 8 then
    return "Reason Code: User (8)"
  end
  if value == 9 then
    return "Reason Code: Participant (9)"
  end
  if value == 10 then
    return "Reason Code: Counter Party (10)"
  end
  if value == 11 then
    return "Reason Code: Order Number (11)"
  end
  if value == 12 then
    return "Reason Code: Market Status (12)"
  end
  if value == 15 then
    return "Reason Code: Auction Number (15)"
  end
  if value == 16 then
    return "Reason Code: Order Type (16)"
  end
  if value == 17 then
    return "Reason Code: Price Freeze (17)"
  end
  if value == 18 then
    return "Reason Code: Quantity Freeze (18)"
  end
  if value == 20 then
    return "Reason Code: Contract (20)"
  end
  if value == 30 then
    return "Reason Code: Exercise Mode Mismatch (30)"
  end

  return "Reason Code: Unknown("..value..")"
end

-- Dissect: Reason Code
nse_nsefo_orderentry_nnf_v9_50.reason_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reason_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.reason_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reason_code, range, value, display)

  return offset + length, value
end

-- Reason Code 1
nse_nsefo_orderentry_nnf_v9_50.reason_code_1 = {}

-- Size: Reason Code 1
nse_nsefo_orderentry_nnf_v9_50.reason_code_1.size = 2

-- Display: Reason Code 1
nse_nsefo_orderentry_nnf_v9_50.reason_code_1.display = function(value)
  return "Reason Code 1: "..value
end

-- Dissect: Reason Code 1
nse_nsefo_orderentry_nnf_v9_50.reason_code_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reason_code_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.reason_code_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reason_code_1, range, value, display)

  return offset + length, value
end

-- Reference
nse_nsefo_orderentry_nnf_v9_50.reference = {}

-- Size: Reference
nse_nsefo_orderentry_nnf_v9_50.reference.size = 4

-- Display: Reference
nse_nsefo_orderentry_nnf_v9_50.reference.display = function(value)
  return "Reference: "..value
end

-- Dissect: Reference
nse_nsefo_orderentry_nnf_v9_50.reference.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reference.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reference.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reference, range, value, display)

  return offset + length, value
end

-- Remaining Volume
nse_nsefo_orderentry_nnf_v9_50.remaining_volume = {}

-- Size: Remaining Volume
nse_nsefo_orderentry_nnf_v9_50.remaining_volume.size = 4

-- Display: Remaining Volume
nse_nsefo_orderentry_nnf_v9_50.remaining_volume.display = function(value)
  return "Remaining Volume: "..value
end

-- Dissect: Remaining Volume
nse_nsefo_orderentry_nnf_v9_50.remaining_volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.remaining_volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.remaining_volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.remaining_volume, range, value, display)

  return offset + length, value
end

-- Report Date
nse_nsefo_orderentry_nnf_v9_50.report_date = {}

-- Size: Report Date
nse_nsefo_orderentry_nnf_v9_50.report_date.size = 4

-- Display: Report Date
nse_nsefo_orderentry_nnf_v9_50.report_date.display = function(value)
  return "Report Date: "..value
end

-- Dissect: Report Date
nse_nsefo_orderentry_nnf_v9_50.report_date.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.report_date.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.report_date.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_date, range, value, display)

  return offset + length, value
end

-- Request For Open Orders
nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders = {}

-- Size: Request For Open Orders
nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders.size = 1

-- Display: Request For Open Orders
nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders.display = function(value)
  return "Request For Open Orders: "..value
end

-- Dissect: Request For Open Orders
nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.request_for_open_orders, range, value, display)

  return offset + length, value
end

-- Requested By
nse_nsefo_orderentry_nnf_v9_50.requested_by = {}

-- Size: Requested By
nse_nsefo_orderentry_nnf_v9_50.requested_by.size = 1

-- Display: Requested By
nse_nsefo_orderentry_nnf_v9_50.requested_by.display = function(value)
  return "Requested By: "..value
end

-- Dissect: Requested By
nse_nsefo_orderentry_nnf_v9_50.requested_by.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.requested_by.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.requested_by.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.requested_by, range, value, display)

  return offset + length, value
end

-- Reserved 1
nse_nsefo_orderentry_nnf_v9_50.reserved_1 = {}

-- Size: Reserved 1
nse_nsefo_orderentry_nnf_v9_50.reserved_1.size = 1

-- Display: Reserved 1
nse_nsefo_orderentry_nnf_v9_50.reserved_1.display = function(value)
  return "Reserved 1: "..value
end

-- Dissect: Reserved 1
nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_1.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_1, range, value, display)

  return offset + length, value
end

-- Reserved 10
nse_nsefo_orderentry_nnf_v9_50.reserved_10 = {}

-- Size: Reserved 10
nse_nsefo_orderentry_nnf_v9_50.reserved_10.size = 10

-- Display: Reserved 10
nse_nsefo_orderentry_nnf_v9_50.reserved_10.display = function(value)
  return "Reserved 10: "..value
end

-- Dissect: Reserved 10
nse_nsefo_orderentry_nnf_v9_50.reserved_10.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_10.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_10.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_10, range, value, display)

  return offset + length, value
end

-- Reserved 14
nse_nsefo_orderentry_nnf_v9_50.reserved_14 = {}

-- Size: Reserved 14
nse_nsefo_orderentry_nnf_v9_50.reserved_14.size = 14

-- Display: Reserved 14
nse_nsefo_orderentry_nnf_v9_50.reserved_14.display = function(value)
  return "Reserved 14: "..value
end

-- Dissect: Reserved 14
nse_nsefo_orderentry_nnf_v9_50.reserved_14.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_14.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_14.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_14, range, value, display)

  return offset + length, value
end

-- Reserved 145
nse_nsefo_orderentry_nnf_v9_50.reserved_145 = {}

-- Size: Reserved 145
nse_nsefo_orderentry_nnf_v9_50.reserved_145.size = 145

-- Display: Reserved 145
nse_nsefo_orderentry_nnf_v9_50.reserved_145.display = function(value)
  return "Reserved 145: "..value
end

-- Dissect: Reserved 145
nse_nsefo_orderentry_nnf_v9_50.reserved_145.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_145.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_145.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_145, range, value, display)

  return offset + length, value
end

-- Reserved 16
nse_nsefo_orderentry_nnf_v9_50.reserved_16 = {}

-- Size: Reserved 16
nse_nsefo_orderentry_nnf_v9_50.reserved_16.size = 16

-- Display: Reserved 16
nse_nsefo_orderentry_nnf_v9_50.reserved_16.display = function(value)
  return "Reserved 16: "..value
end

-- Dissect: Reserved 16
nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_16.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_16.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_16, range, value, display)

  return offset + length, value
end

-- Reserved 2
nse_nsefo_orderentry_nnf_v9_50.reserved_2 = {}

-- Size: Reserved 2
nse_nsefo_orderentry_nnf_v9_50.reserved_2.size = 2

-- Display: Reserved 2
nse_nsefo_orderentry_nnf_v9_50.reserved_2.display = function(value)
  return "Reserved 2: "..value
end

-- Dissect: Reserved 2
nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_2, range, value, display)

  return offset + length, value
end

-- Reserved 200
nse_nsefo_orderentry_nnf_v9_50.reserved_200 = {}

-- Size: Reserved 200
nse_nsefo_orderentry_nnf_v9_50.reserved_200.size = 200

-- Display: Reserved 200
nse_nsefo_orderentry_nnf_v9_50.reserved_200.display = function(value)
  return "Reserved 200: "..value
end

-- Dissect: Reserved 200
nse_nsefo_orderentry_nnf_v9_50.reserved_200.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_200.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_200.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_200, range, value, display)

  return offset + length, value
end

-- Reserved 24
nse_nsefo_orderentry_nnf_v9_50.reserved_24 = {}

-- Size: Reserved 24
nse_nsefo_orderentry_nnf_v9_50.reserved_24.size = 24

-- Display: Reserved 24
nse_nsefo_orderentry_nnf_v9_50.reserved_24.display = function(value)
  return "Reserved 24: "..value
end

-- Dissect: Reserved 24
nse_nsefo_orderentry_nnf_v9_50.reserved_24.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_24.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_24.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_24, range, value, display)

  return offset + length, value
end

-- Reserved 25
nse_nsefo_orderentry_nnf_v9_50.reserved_25 = {}

-- Size: Reserved 25
nse_nsefo_orderentry_nnf_v9_50.reserved_25.size = 25

-- Display: Reserved 25
nse_nsefo_orderentry_nnf_v9_50.reserved_25.display = function(value)
  return "Reserved 25: "..value
end

-- Dissect: Reserved 25
nse_nsefo_orderentry_nnf_v9_50.reserved_25.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_25.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_25.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_25, range, value, display)

  return offset + length, value
end

-- Reserved 26
nse_nsefo_orderentry_nnf_v9_50.reserved_26 = {}

-- Size: Reserved 26
nse_nsefo_orderentry_nnf_v9_50.reserved_26.size = 26

-- Display: Reserved 26
nse_nsefo_orderentry_nnf_v9_50.reserved_26.display = function(value)
  return "Reserved 26: "..value
end

-- Dissect: Reserved 26
nse_nsefo_orderentry_nnf_v9_50.reserved_26.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_26.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_26.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_26, range, value, display)

  return offset + length, value
end

-- Reserved 32
nse_nsefo_orderentry_nnf_v9_50.reserved_32 = {}

-- Size: Reserved 32
nse_nsefo_orderentry_nnf_v9_50.reserved_32.size = 32

-- Display: Reserved 32
nse_nsefo_orderentry_nnf_v9_50.reserved_32.display = function(value)
  return "Reserved 32: "..value
end

-- Dissect: Reserved 32
nse_nsefo_orderentry_nnf_v9_50.reserved_32.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_32.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_32.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_32, range, value, display)

  return offset + length, value
end

-- Reserved 36
nse_nsefo_orderentry_nnf_v9_50.reserved_36 = {}

-- Size: Reserved 36
nse_nsefo_orderentry_nnf_v9_50.reserved_36.size = 36

-- Display: Reserved 36
nse_nsefo_orderentry_nnf_v9_50.reserved_36.display = function(value)
  return "Reserved 36: "..value
end

-- Dissect: Reserved 36
nse_nsefo_orderentry_nnf_v9_50.reserved_36.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_36.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_36.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_36, range, value, display)

  return offset + length, value
end

-- Reserved 4
nse_nsefo_orderentry_nnf_v9_50.reserved_4 = {}

-- Size: Reserved 4
nse_nsefo_orderentry_nnf_v9_50.reserved_4.size = 4

-- Display: Reserved 4
nse_nsefo_orderentry_nnf_v9_50.reserved_4.display = function(value)
  return "Reserved 4: "..value
end

-- Dissect: Reserved 4
nse_nsefo_orderentry_nnf_v9_50.reserved_4.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_4.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_4.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_4, range, value, display)

  return offset + length, value
end

-- Reserved 5
nse_nsefo_orderentry_nnf_v9_50.reserved_5 = {}

-- Size: Reserved 5
nse_nsefo_orderentry_nnf_v9_50.reserved_5.size = 5

-- Display: Reserved 5
nse_nsefo_orderentry_nnf_v9_50.reserved_5.display = function(value)
  return "Reserved 5: "..value
end

-- Dissect: Reserved 5
nse_nsefo_orderentry_nnf_v9_50.reserved_5.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_5.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_5.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_5, range, value, display)

  return offset + length, value
end

-- Reserved 52
nse_nsefo_orderentry_nnf_v9_50.reserved_52 = {}

-- Size: Reserved 52
nse_nsefo_orderentry_nnf_v9_50.reserved_52.size = 52

-- Display: Reserved 52
nse_nsefo_orderentry_nnf_v9_50.reserved_52.display = function(value)
  return "Reserved 52: "..value
end

-- Dissect: Reserved 52
nse_nsefo_orderentry_nnf_v9_50.reserved_52.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_52.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_52.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_52, range, value, display)

  return offset + length, value
end

-- Reserved 60
nse_nsefo_orderentry_nnf_v9_50.reserved_60 = {}

-- Size: Reserved 60
nse_nsefo_orderentry_nnf_v9_50.reserved_60.size = 60

-- Display: Reserved 60
nse_nsefo_orderentry_nnf_v9_50.reserved_60.display = function(value)
  return "Reserved 60: "..value
end

-- Dissect: Reserved 60
nse_nsefo_orderentry_nnf_v9_50.reserved_60.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_60.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_60.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_60, range, value, display)

  return offset + length, value
end

-- Reserved 7
nse_nsefo_orderentry_nnf_v9_50.reserved_7 = {}

-- Size: Reserved 7
nse_nsefo_orderentry_nnf_v9_50.reserved_7.size = 7

-- Display: Reserved 7
nse_nsefo_orderentry_nnf_v9_50.reserved_7.display = function(value)
  return "Reserved 7: "..value
end

-- Dissect: Reserved 7
nse_nsefo_orderentry_nnf_v9_50.reserved_7.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_7.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_7.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_7, range, value, display)

  return offset + length, value
end

-- Reserved 70
nse_nsefo_orderentry_nnf_v9_50.reserved_70 = {}

-- Size: Reserved 70
nse_nsefo_orderentry_nnf_v9_50.reserved_70.size = 70

-- Display: Reserved 70
nse_nsefo_orderentry_nnf_v9_50.reserved_70.display = function(value)
  return "Reserved 70: "..value
end

-- Dissect: Reserved 70
nse_nsefo_orderentry_nnf_v9_50.reserved_70.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_70.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_70.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_70, range, value, display)

  return offset + length, value
end

-- Reserved 8
nse_nsefo_orderentry_nnf_v9_50.reserved_8 = {}

-- Size: Reserved 8
nse_nsefo_orderentry_nnf_v9_50.reserved_8.size = 8

-- Display: Reserved 8
nse_nsefo_orderentry_nnf_v9_50.reserved_8.display = function(value)
  return "Reserved 8: "..value
end

-- Dissect: Reserved 8
nse_nsefo_orderentry_nnf_v9_50.reserved_8.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.reserved_8.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.reserved_8.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_8, range, value, display)

  return offset + length, value
end

-- Response Order Number
nse_nsefo_orderentry_nnf_v9_50.response_order_number = {}

-- Size: Response Order Number
nse_nsefo_orderentry_nnf_v9_50.response_order_number.size = 8

-- Display: Response Order Number
nse_nsefo_orderentry_nnf_v9_50.response_order_number.display = function(value)
  return "Response Order Number: "..value
end

-- Dissect: Response Order Number
nse_nsefo_orderentry_nnf_v9_50.response_order_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.response_order_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.response_order_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.response_order_number, range, value, display)

  return offset + length, value
end

-- Risk Free Interest Rate
nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate = {}

-- Size: Risk Free Interest Rate
nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate.size = 4

-- Display: Risk Free Interest Rate
nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate.display = function(value)
  return "Risk Free Interest Rate: "..value
end

-- Dissect: Risk Free Interest Rate
nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.risk_free_interest_rate, range, value, display)

  return offset + length, value
end

-- Sector Name
nse_nsefo_orderentry_nnf_v9_50.sector_name = {}

-- Size: Sector Name
nse_nsefo_orderentry_nnf_v9_50.sector_name.size = 15

-- Display: Sector Name
nse_nsefo_orderentry_nnf_v9_50.sector_name.display = function(value)
  return "Sector Name: "..value
end

-- Dissect: Sector Name
nse_nsefo_orderentry_nnf_v9_50.sector_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.sector_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.sector_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sector_name, range, value, display)

  return offset + length, value
end

-- Sell Account Number
nse_nsefo_orderentry_nnf_v9_50.sell_account_number = {}

-- Size: Sell Account Number
nse_nsefo_orderentry_nnf_v9_50.sell_account_number.size = 10

-- Display: Sell Account Number
nse_nsefo_orderentry_nnf_v9_50.sell_account_number.display = function(value)
  return "Sell Account Number: "..value
end

-- Dissect: Sell Account Number
nse_nsefo_orderentry_nnf_v9_50.sell_account_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.sell_account_number.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.sell_account_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_account_number, range, value, display)

  return offset + length, value
end

-- Sell Broker Id
nse_nsefo_orderentry_nnf_v9_50.sell_broker_id = {}

-- Size: Sell Broker Id
nse_nsefo_orderentry_nnf_v9_50.sell_broker_id.size = 5

-- Display: Sell Broker Id
nse_nsefo_orderentry_nnf_v9_50.sell_broker_id.display = function(value)
  return "Sell Broker Id: "..value
end

-- Dissect: Sell Broker Id
nse_nsefo_orderentry_nnf_v9_50.sell_broker_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.sell_broker_id.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.sell_broker_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_broker_id, range, value, display)

  return offset + length, value
end

-- Sell Open Close
nse_nsefo_orderentry_nnf_v9_50.sell_open_close = {}

-- Size: Sell Open Close
nse_nsefo_orderentry_nnf_v9_50.sell_open_close.size = 1

-- Display: Sell Open Close
nse_nsefo_orderentry_nnf_v9_50.sell_open_close.display = function(value)
  return "Sell Open Close: "..value
end

-- Dissect: Sell Open Close
nse_nsefo_orderentry_nnf_v9_50.sell_open_close.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.sell_open_close.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.sell_open_close.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_open_close, range, value, display)

  return offset + length, value
end

-- Sell Pan
nse_nsefo_orderentry_nnf_v9_50.sell_pan = {}

-- Size: Sell Pan
nse_nsefo_orderentry_nnf_v9_50.sell_pan.size = 10

-- Display: Sell Pan
nse_nsefo_orderentry_nnf_v9_50.sell_pan.display = function(value)
  return "Sell Pan: "..value
end

-- Dissect: Sell Pan
nse_nsefo_orderentry_nnf_v9_50.sell_pan.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.sell_pan.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.sell_pan.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sell_pan, range, value, display)

  return offset + length, value
end

-- Sequence Number
nse_nsefo_orderentry_nnf_v9_50.sequence_number = {}

-- Size: Sequence Number
nse_nsefo_orderentry_nnf_v9_50.sequence_number.size = 8

-- Display: Sequence Number
nse_nsefo_orderentry_nnf_v9_50.sequence_number.display = function(value)
  return "Sequence Number: "..value
end

-- Dissect: Sequence Number
nse_nsefo_orderentry_nnf_v9_50.sequence_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.sequence_number.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.sequence_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sequence_number, range, value, display)

  return offset + length, value
end

-- Session Key
nse_nsefo_orderentry_nnf_v9_50.session_key = {}

-- Size: Session Key
nse_nsefo_orderentry_nnf_v9_50.session_key.size = 8

-- Display: Session Key
nse_nsefo_orderentry_nnf_v9_50.session_key.display = function(value)
  return "Session Key: "..value
end

-- Dissect: Session Key
nse_nsefo_orderentry_nnf_v9_50.session_key.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.session_key.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.session_key.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.session_key, range, value, display)

  return offset + length, value
end

-- Settlement Period
nse_nsefo_orderentry_nnf_v9_50.settlement_period = {}

-- Size: Settlement Period
nse_nsefo_orderentry_nnf_v9_50.settlement_period.size = 2

-- Display: Settlement Period
nse_nsefo_orderentry_nnf_v9_50.settlement_period.display = function(value)
  return "Settlement Period: "..value
end

-- Dissect: Settlement Period
nse_nsefo_orderentry_nnf_v9_50.settlement_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.settlement_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.settlement_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlement_period, range, value, display)

  return offset + length, value
end

-- Settlement Period 1
nse_nsefo_orderentry_nnf_v9_50.settlement_period_1 = {}

-- Size: Settlement Period 1
nse_nsefo_orderentry_nnf_v9_50.settlement_period_1.size = 2

-- Display: Settlement Period 1
nse_nsefo_orderentry_nnf_v9_50.settlement_period_1.display = function(value)
  return "Settlement Period 1: "..value
end

-- Dissect: Settlement Period 1
nse_nsefo_orderentry_nnf_v9_50.settlement_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.settlement_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.settlement_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlement_period_1, range, value, display)

  return offset + length, value
end

-- Settlor
nse_nsefo_orderentry_nnf_v9_50.settlor = {}

-- Size: Settlor
nse_nsefo_orderentry_nnf_v9_50.settlor.size = 12

-- Display: Settlor
nse_nsefo_orderentry_nnf_v9_50.settlor.display = function(value)
  return "Settlor: "..value
end

-- Dissect: Settlor
nse_nsefo_orderentry_nnf_v9_50.settlor.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.settlor.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.settlor.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlor, range, value, display)

  return offset + length, value
end

-- Settlor 1
nse_nsefo_orderentry_nnf_v9_50.settlor_1 = {}

-- Size: Settlor 1
nse_nsefo_orderentry_nnf_v9_50.settlor_1.size = 12

-- Display: Settlor 1
nse_nsefo_orderentry_nnf_v9_50.settlor_1.display = function(value)
  return "Settlor 1: "..value
end

-- Dissect: Settlor 1
nse_nsefo_orderentry_nnf_v9_50.settlor_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.settlor_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.settlor_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.settlor_1, range, value, display)

  return offset + length, value
end

-- Show Index
nse_nsefo_orderentry_nnf_v9_50.show_index = {}

-- Size: Show Index
nse_nsefo_orderentry_nnf_v9_50.show_index.size = 1

-- Display: Show Index
nse_nsefo_orderentry_nnf_v9_50.show_index.display = function(value)
  return "Show Index: "..value
end

-- Dissect: Show Index
nse_nsefo_orderentry_nnf_v9_50.show_index.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.show_index.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.show_index.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.show_index, range, value, display)

  return offset + length, value
end

-- Snap Quote Time
nse_nsefo_orderentry_nnf_v9_50.snap_quote_time = {}

-- Size: Snap Quote Time
nse_nsefo_orderentry_nnf_v9_50.snap_quote_time.size = 2

-- Display: Snap Quote Time
nse_nsefo_orderentry_nnf_v9_50.snap_quote_time.display = function(value)
  return "Snap Quote Time: "..value
end

-- Dissect: Snap Quote Time
nse_nsefo_orderentry_nnf_v9_50.snap_quote_time.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.snap_quote_time.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.snap_quote_time.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.snap_quote_time, range, value, display)

  return offset + length, value
end

-- Solicitor Period
nse_nsefo_orderentry_nnf_v9_50.solicitor_period = {}

-- Size: Solicitor Period
nse_nsefo_orderentry_nnf_v9_50.solicitor_period.size = 2

-- Display: Solicitor Period
nse_nsefo_orderentry_nnf_v9_50.solicitor_period.display = function(value)
  return "Solicitor Period: "..value
end

-- Dissect: Solicitor Period
nse_nsefo_orderentry_nnf_v9_50.solicitor_period.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.solicitor_period.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.solicitor_period.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.solicitor_period, range, value, display)

  return offset + length, value
end

-- Solicitor Period 1
nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1 = {}

-- Size: Solicitor Period 1
nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1.size = 2

-- Display: Solicitor Period 1
nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1.display = function(value)
  return "Solicitor Period 1: "..value
end

-- Dissect: Solicitor Period 1
nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.solicitor_period_1, range, value, display)

  return offset + length, value
end

-- Spd Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff = {}

-- Size: Spd Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff.size = 8

-- Display: Spd Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff.display = function(value)
  return "Spd Ord Qty Buff: "..value
end

-- Dissect: Spd Ord Qty Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spd_ord_qty_buff, range, value, display)

  return offset + length, value
end

-- Spd Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff = {}

-- Size: Spd Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff.size = 8

-- Display: Spd Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff.display = function(value)
  return "Spd Ord Val Buff: "..value
end

-- Dissect: Spd Ord Val Buff
nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spd_ord_val_buff, range, value, display)

  return offset + length, value
end

-- Start
nse_nsefo_orderentry_nnf_v9_50.start = {}

-- Size: Start
nse_nsefo_orderentry_nnf_v9_50.start.size = 2

-- Display: Start
nse_nsefo_orderentry_nnf_v9_50.start.display = function(value)
  return "Start: "..value
end

-- Dissect: Start
nse_nsefo_orderentry_nnf_v9_50.start.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.start.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.start.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.start, range, value, display)

  return offset + length, value
end

-- Start Alpha 1
nse_nsefo_orderentry_nnf_v9_50.start_alpha_1 = {}

-- Size: Start Alpha 1
nse_nsefo_orderentry_nnf_v9_50.start_alpha_1.size = 2

-- Display: Start Alpha 1
nse_nsefo_orderentry_nnf_v9_50.start_alpha_1.display = function(value)
  return "Start Alpha 1: "..value
end

-- Dissect: Start Alpha 1
nse_nsefo_orderentry_nnf_v9_50.start_alpha_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.start_alpha_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.start_alpha_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.start_alpha_1, range, value, display)

  return offset + length, value
end

-- Static Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv = {}

-- Size: Static Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv.size = 8

-- Display: Static Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv.display = function(value)
  return "Static Cryptographic Iv: "..value
end

-- Dissect: Static Cryptographic Iv
nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.static_cryptographic_iv, range, value, display)

  return offset + length, value
end

-- Status
nse_nsefo_orderentry_nnf_v9_50.status = {}

-- Size: Status
nse_nsefo_orderentry_nnf_v9_50.status.size = 2

-- Display: Status
nse_nsefo_orderentry_nnf_v9_50.status.display = function(value)
  if value == 0 then
    return "Status: End Of Outage (0)"
  end
  if value == 1 then
    return "Status: Start Of Outage (1)"
  end

  return "Status: Unknown("..value..")"
end

-- Dissect: Status
nse_nsefo_orderentry_nnf_v9_50.status.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.status.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.status.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.status, range, value, display)

  return offset + length, value
end

-- Stream Number
nse_nsefo_orderentry_nnf_v9_50.stream_number = {}

-- Size: Stream Number
nse_nsefo_orderentry_nnf_v9_50.stream_number.size = 2

-- Display: Stream Number
nse_nsefo_orderentry_nnf_v9_50.stream_number.display = function(value)
  return "Stream Number: "..value
end

-- Dissect: Stream Number
nse_nsefo_orderentry_nnf_v9_50.stream_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.stream_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.stream_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.stream_number, range, value, display)

  return offset + length, value
end

-- Strike Price
nse_nsefo_orderentry_nnf_v9_50.strike_price = {}

-- Size: Strike Price
nse_nsefo_orderentry_nnf_v9_50.strike_price.size = 4

-- Display: Strike Price
nse_nsefo_orderentry_nnf_v9_50.strike_price.display = function(value)
  return "Strike Price: "..value
end

-- Translate: Strike Price
nse_nsefo_orderentry_nnf_v9_50.strike_price.translate = function(raw)
  return raw/100
end

-- Dissect: Strike Price
nse_nsefo_orderentry_nnf_v9_50.strike_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.strike_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.strike_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.strike_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.strike_price, range, value, display)

  return offset + length, value
end

-- Strikeprice 1
nse_nsefo_orderentry_nnf_v9_50.strikeprice_1 = {}

-- Size: Strikeprice 1
nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.size = 4

-- Display: Strikeprice 1
nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.display = function(value)
  return "Strikeprice 1: "..value
end

-- Translate: Strikeprice 1
nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.translate = function(raw)
  return raw/100
end

-- Dissect: Strikeprice 1
nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.strikeprice_1, range, value, display)

  return offset + length, value
end

-- Strikeprice 2
nse_nsefo_orderentry_nnf_v9_50.strikeprice_2 = {}

-- Size: Strikeprice 2
nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.size = 4

-- Display: Strikeprice 2
nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.display = function(value)
  return "Strikeprice 2: "..value
end

-- Translate: Strikeprice 2
nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.translate = function(raw)
  return raw/100
end

-- Dissect: Strikeprice 2
nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.strikeprice_2, range, value, display)

  return offset + length, value
end

-- Symbol
nse_nsefo_orderentry_nnf_v9_50.symbol = {}

-- Size: Symbol
nse_nsefo_orderentry_nnf_v9_50.symbol.size = 10

-- Display: Symbol
nse_nsefo_orderentry_nnf_v9_50.symbol.display = function(value)
  return "Symbol: "..value
end

-- Dissect: Symbol
nse_nsefo_orderentry_nnf_v9_50.symbol.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.symbol.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.symbol.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.symbol, range, value, display)

  return offset + length, value
end

-- Symbol 1
nse_nsefo_orderentry_nnf_v9_50.symbol_1 = {}

-- Size: Symbol 1
nse_nsefo_orderentry_nnf_v9_50.symbol_1.size = 10

-- Display: Symbol 1
nse_nsefo_orderentry_nnf_v9_50.symbol_1.display = function(value)
  return "Symbol 1: "..value
end

-- Dissect: Symbol 1
nse_nsefo_orderentry_nnf_v9_50.symbol_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.symbol_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.symbol_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.symbol_1, range, value, display)

  return offset + length, value
end

-- Symbol 2
nse_nsefo_orderentry_nnf_v9_50.symbol_2 = {}

-- Size: Symbol 2
nse_nsefo_orderentry_nnf_v9_50.symbol_2.size = 10

-- Display: Symbol 2
nse_nsefo_orderentry_nnf_v9_50.symbol_2.display = function(value)
  return "Symbol 2: "..value
end

-- Dissect: Symbol 2
nse_nsefo_orderentry_nnf_v9_50.symbol_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.symbol_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.symbol_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.symbol_2, range, value, display)

  return offset + length, value
end

-- Tick Size
nse_nsefo_orderentry_nnf_v9_50.tick_size = {}

-- Size: Tick Size
nse_nsefo_orderentry_nnf_v9_50.tick_size.size = 4

-- Display: Tick Size
nse_nsefo_orderentry_nnf_v9_50.tick_size.display = function(value)
  return "Tick Size: "..value
end

-- Dissect: Tick Size
nse_nsefo_orderentry_nnf_v9_50.tick_size.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.tick_size.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.tick_size.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.tick_size, range, value, display)

  return offset + length, value
end

-- Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.time_stamp_1 = {}

-- Size: Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.time_stamp_1.size = 8

-- Display: Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.time_stamp_1.display = function(value)
  return "Time Stamp 1: "..value
end

-- Dissect: Time Stamp 1
nse_nsefo_orderentry_nnf_v9_50.time_stamp_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.time_stamp_1.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.time_stamp_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.time_stamp_1, range, value, display)

  return offset + length, value
end

-- Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.time_stamp_2 = {}

-- Size: Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.time_stamp_2.size = 8

-- Display: Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.time_stamp_2.display = function(value)
  return "Time Stamp 2: "..value
end

-- Dissect: Time Stamp 2
nse_nsefo_orderentry_nnf_v9_50.time_stamp_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.time_stamp_2.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.time_stamp_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.time_stamp_2, range, value, display)

  return offset + length, value
end

-- Timestamp
nse_nsefo_orderentry_nnf_v9_50.timestamp = {}

-- Size: Timestamp
nse_nsefo_orderentry_nnf_v9_50.timestamp.size = 8

-- Display: Timestamp
nse_nsefo_orderentry_nnf_v9_50.timestamp.display = function(value)
  return "Timestamp: "..value
end

-- Dissect: Timestamp
nse_nsefo_orderentry_nnf_v9_50.timestamp.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.timestamp.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.timestamp.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.timestamp, range, value, display)

  return offset + length, value
end

-- Token
nse_nsefo_orderentry_nnf_v9_50.token = {}

-- Size: Token
nse_nsefo_orderentry_nnf_v9_50.token.size = 4

-- Display: Token
nse_nsefo_orderentry_nnf_v9_50.token.display = function(value)
  return "Token: "..value
end

-- Dissect: Token
nse_nsefo_orderentry_nnf_v9_50.token.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.token.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.token.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.token, range, value, display)

  return offset + length, value
end

-- Token 1
nse_nsefo_orderentry_nnf_v9_50.token_1 = {}

-- Size: Token 1
nse_nsefo_orderentry_nnf_v9_50.token_1.size = 4

-- Display: Token 1
nse_nsefo_orderentry_nnf_v9_50.token_1.display = function(value)
  return "Token 1: "..value
end

-- Dissect: Token 1
nse_nsefo_orderentry_nnf_v9_50.token_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.token_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.token_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.token_1, range, value, display)

  return offset + length, value
end

-- Token 2
nse_nsefo_orderentry_nnf_v9_50.token_2 = {}

-- Size: Token 2
nse_nsefo_orderentry_nnf_v9_50.token_2.size = 4

-- Display: Token 2
nse_nsefo_orderentry_nnf_v9_50.token_2.display = function(value)
  return "Token 2: "..value
end

-- Dissect: Token 2
nse_nsefo_orderentry_nnf_v9_50.token_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.token_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.token_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.token_2, range, value, display)

  return offset + length, value
end

-- Token No
nse_nsefo_orderentry_nnf_v9_50.token_no = {}

-- Size: Token No
nse_nsefo_orderentry_nnf_v9_50.token_no.size = 4

-- Display: Token No
nse_nsefo_orderentry_nnf_v9_50.token_no.display = function(value)
  return "Token No: "..value
end

-- Dissect: Token No
nse_nsefo_orderentry_nnf_v9_50.token_no.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.token_no.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.token_no.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.token_no, range, value, display)

  return offset + length, value
end

-- Total Quantity Traded
nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded = {}

-- Size: Total Quantity Traded
nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.size = 8

-- Display: Total Quantity Traded
nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.display = function(value)
  return "Total Quantity Traded: "..value
end

-- Dissect: Total Quantity Traded
nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.size
  local range = buffer(offset, length)
  local value = range:int64()
  local display = nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_quantity_traded, range, value, display)

  return offset + length, value
end

-- Total Trades
nse_nsefo_orderentry_nnf_v9_50.total_trades = {}

-- Size: Total Trades
nse_nsefo_orderentry_nnf_v9_50.total_trades.size = 8

-- Display: Total Trades
nse_nsefo_orderentry_nnf_v9_50.total_trades.display = function(value)
  return "Total Trades: "..value
end

-- Dissect: Total Trades
nse_nsefo_orderentry_nnf_v9_50.total_trades.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.total_trades.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.total_trades.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_trades, range, value, display)

  return offset + length, value
end

-- Total Value Traded
nse_nsefo_orderentry_nnf_v9_50.total_value_traded = {}

-- Size: Total Value Traded
nse_nsefo_orderentry_nnf_v9_50.total_value_traded.size = 8

-- Display: Total Value Traded
nse_nsefo_orderentry_nnf_v9_50.total_value_traded.display = function(value)
  return "Total Value Traded: "..value
end

-- Dissect: Total Value Traded
nse_nsefo_orderentry_nnf_v9_50.total_value_traded.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.total_value_traded.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.total_value_traded.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_value_traded, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1 = {}

-- Size: Total Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1.size = 4

-- Display: Total Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1.display = function(value)
  return "Total Vol Remaining 1: "..value
end

-- Dissect: Total Vol Remaining 1
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_vol_remaining_1, range, value, display)

  return offset + length, value
end

-- Total Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2 = {}

-- Size: Total Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2.size = 4

-- Display: Total Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2.display = function(value)
  return "Total Vol Remaining 2: "..value
end

-- Dissect: Total Vol Remaining 2
nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_vol_remaining_2, range, value, display)

  return offset + length, value
end

-- Total Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining = {}

-- Size: Total Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining.size = 4

-- Display: Total Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining.display = function(value)
  return "Total Volume Remaining: "..value
end

-- Dissect: Total Volume Remaining
nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.total_volume_remaining, range, value, display)

  return offset + length, value
end

-- Trader Id
nse_nsefo_orderentry_nnf_v9_50.trader_id = {}

-- Size: Trader Id
nse_nsefo_orderentry_nnf_v9_50.trader_id.size = 4

-- Display: Trader Id
nse_nsefo_orderentry_nnf_v9_50.trader_id.display = function(value)
  return "Trader Id: "..value
end

-- Dissect: Trader Id
nse_nsefo_orderentry_nnf_v9_50.trader_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trader_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.trader_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_id, range, value, display)

  return offset + length, value
end

-- Trader Id 1
nse_nsefo_orderentry_nnf_v9_50.trader_id_1 = {}

-- Size: Trader Id 1
nse_nsefo_orderentry_nnf_v9_50.trader_id_1.size = 4

-- Display: Trader Id 1
nse_nsefo_orderentry_nnf_v9_50.trader_id_1.display = function(value)
  return "Trader Id 1: "..value
end

-- Dissect: Trader Id 1
nse_nsefo_orderentry_nnf_v9_50.trader_id_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trader_id_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.trader_id_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_id_1, range, value, display)

  return offset + length, value
end

-- Trader Name
nse_nsefo_orderentry_nnf_v9_50.trader_name = {}

-- Size: Trader Name
nse_nsefo_orderentry_nnf_v9_50.trader_name.size = 26

-- Display: Trader Name
nse_nsefo_orderentry_nnf_v9_50.trader_name.display = function(value)
  return "Trader Name: "..value
end

-- Dissect: Trader Name
nse_nsefo_orderentry_nnf_v9_50.trader_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trader_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.trader_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_name, range, value, display)

  return offset + length, value
end

-- Trader Number
nse_nsefo_orderentry_nnf_v9_50.trader_number = {}

-- Size: Trader Number
nse_nsefo_orderentry_nnf_v9_50.trader_number.size = 4

-- Display: Trader Number
nse_nsefo_orderentry_nnf_v9_50.trader_number.display = function(value)
  return "Trader Number: "..value
end

-- Dissect: Trader Number
nse_nsefo_orderentry_nnf_v9_50.trader_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trader_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.trader_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trader_number, range, value, display)

  return offset + length, value
end

-- Transaction Code
nse_nsefo_orderentry_nnf_v9_50.transaction_code = {}

-- Size: Transaction Code
nse_nsefo_orderentry_nnf_v9_50.transaction_code.size = 2

-- Display: Transaction Code
nse_nsefo_orderentry_nnf_v9_50.transaction_code.display = function(value)
  if value == 2300 then
    return "Transaction Code: Sign On Request In Message (2300)"
  end
  if value == 2301 then
    return "Transaction Code: Sign On Request Out Message (2301)"
  end
  if value == 2321 then
    return "Transaction Code: Sign Off Request Out Message (2321)"
  end
  if value == 1600 then
    return "Transaction Code: System Information In Message (1600)"
  end
  if value == 1601 then
    return "Transaction Code: System Information Out Message (1601)"
  end
  if value == 2400 then
    return "Transaction Code: Gateway Router Request Message (2400)"
  end
  if value == 2401 then
    return "Transaction Code: Gateway Router Response Message (2401)"
  end
  if value == 2320 then
    return "Transaction Code: Sign Off Request In Message (2320)"
  end
  if value == 7300 then
    return "Transaction Code: Update Local Database In Message (7300)"
  end
  if value == 7307 then
    return "Transaction Code: Update Local Database Header Message (7307)"
  end
  if value == 7308 then
    return "Transaction Code: Update Local Database Trailer Message (7308)"
  end
  if value == 7000 then
    return "Transaction Code: Download Request Message (7000)"
  end
  if value == 7304 then
    return "Transaction Code: Update Local Database Data Message (7304)"
  end
  if value == 7011 then
    return "Transaction Code: Header Record Message (7011)"
  end
  if value == 7021 then
    return "Transaction Code: Message Record Message (7021)"
  end
  if value == 7031 then
    return "Transaction Code: Trailer Record Message (7031)"
  end
  if value == 2000 then
    return "Transaction Code: Order Entry Message (2000)"
  end
  if value == 2012 then
    return "Transaction Code: Order Entry Message (2012)"
  end
  if value == 2040 then
    return "Transaction Code: Order Entry Message (2040)"
  end
  if value == 2042 then
    return "Transaction Code: Order Entry Message (2042)"
  end
  if value == 2062 then
    return "Transaction Code: Order Entry Message (2062)"
  end
  if value == 2070 then
    return "Transaction Code: Order Entry Message (2070)"
  end
  if value == 2072 then
    return "Transaction Code: Order Entry Message (2072)"
  end
  if value == 2073 then
    return "Transaction Code: Order Entry Message (2073)"
  end
  if value == 2074 then
    return "Transaction Code: Order Entry Message (2074)"
  end
  if value == 2170 then
    return "Transaction Code: Order Entry Message (2170)"
  end
  if value == 2231 then
    return "Transaction Code: Order Entry Message (2231)"
  end
  if value == 9002 then
    return "Transaction Code: Order Entry Message (9002)"
  end
  if value == 2013 then
    return "Transaction Code: Price Modification Message (2013)"
  end
  if value == 20406 then
    return "Transaction Code: Price Modification Message (20406)"
  end
  if value == 5445 then
    return "Transaction Code: Trade Inquiry Message (5445)"
  end
  if value == 5440 then
    return "Transaction Code: Trade Inquiry Message (5440)"
  end
  if value == 5441 then
    return "Transaction Code: Trade Inquiry Message (5441)"
  end
  if value == 2223 then
    return "Transaction Code: Trade Inquiry Message (2223)"
  end
  if value == 2100 then
    return "Transaction Code: Spread Order Entry Message (2100)"
  end
  if value == 2102 then
    return "Transaction Code: Spread Order Entry Message (2102)"
  end
  if value == 2104 then
    return "Transaction Code: Spread Order Entry Message (2104)"
  end
  if value == 2106 then
    return "Transaction Code: Spread Order Entry Message (2106)"
  end
  if value == 2118 then
    return "Transaction Code: Spread Order Entry Message (2118)"
  end
  if value == 2124 then
    return "Transaction Code: Spread Order Entry Message (2124)"
  end
  if value == 2125 then
    return "Transaction Code: Spread Order Entry Message (2125)"
  end
  if value == 2126 then
    return "Transaction Code: Spread Order Entry Message (2126)"
  end
  if value == 2127 then
    return "Transaction Code: Spread Order Entry Message (2127)"
  end
  if value == 2130 then
    return "Transaction Code: Spread Order Entry Message (2130)"
  end
  if value == 2131 then
    return "Transaction Code: Spread Order Entry Message (2131)"
  end
  if value == 2132 then
    return "Transaction Code: Spread Order Entry Message (2132)"
  end
  if value == 2133 then
    return "Transaction Code: Spread Order Entry Message (2133)"
  end
  if value == 2136 then
    return "Transaction Code: Spread Order Entry Message (2136)"
  end
  if value == 2154 then
    return "Transaction Code: Spread Order Entry Message (2154)"
  end
  if value == 2155 then
    return "Transaction Code: Spread Order Entry Message (2155)"
  end
  if value == 2156 then
    return "Transaction Code: Spread Order Entry Message (2156)"
  end
  if value == 9004 then
    return "Transaction Code: Spread Order Entry Message (9004)"
  end
  if value == 20408 then
    return "Transaction Code: Spread Order Entry Message (20408)"
  end
  if value == 20410 then
    return "Transaction Code: Spread Order Entry Message (20410)"
  end
  if value == 20412 then
    return "Transaction Code: Spread Order Entry Message (20412)"
  end
  if value == 20414 then
    return "Transaction Code: Spread Order Entry Message (20414)"
  end
  if value == 20416 then
    return "Transaction Code: Spread Order Entry Message (20416)"
  end
  if value == 2222 then
    return "Transaction Code: Trade Confirmation Message (2222)"
  end
  if value == 2212 then
    return "Transaction Code: Trade Confirmation Message (2212)"
  end
  if value == 2282 then
    return "Transaction Code: Trade Confirmation Message (2282)"
  end
  if value == 2286 then
    return "Transaction Code: Trade Confirmation Message (2286)"
  end
  if value == 2287 then
    return "Transaction Code: Trade Confirmation Message (2287)"
  end
  if value == 2288 then
    return "Transaction Code: Trade Confirmation Message (2288)"
  end
  if value == 5731 then
    return "Transaction Code: User Order Limit Update Message (5731)"
  end
  if value == 5733 then
    return "Transaction Code: Dealer Limit Update Message (5733)"
  end
  if value == 5772 then
    return "Transaction Code: Spread Order Limit Update Message (5772)"
  end
  if value == 5295 then
    return "Transaction Code: Control Message To Trader Message (5295)"
  end
  if value == 1833 then
    return "Transaction Code: Market Statistics Report Message (1833)"
  end
  if value == 11833 then
    return "Transaction Code: Enhanced Market Statistics Report Message (11833)"
  end
  if value == 1836 then
    return "Transaction Code: Market Index Report Message (1836)"
  end
  if value == 1837 then
    return "Transaction Code: Industry Index Report Message (1837)"
  end
  if value == 1838 then
    return "Transaction Code: Sector Index Report Message (1838)"
  end
  if value == 1862 then
    return "Transaction Code: Spread Bhavcopy Message (1862)"
  end
  if value == 7732 then
    return "Transaction Code: Global Indices Message (7732)"
  end
  if value == 7733 then
    return "Transaction Code: Global Contracts Message (7733)"
  end
  if value == 23008 then
    return "Transaction Code: Secure Box Registration Request In Message (23008)"
  end
  if value == 23009 then
    return "Transaction Code: Secure Box Registration Response Out Message (23009)"
  end
  if value == 23000 then
    return "Transaction Code: Box Sign On Request In Message (23000)"
  end
  if value == 23001 then
    return "Transaction Code: Box Sign On Request Out Message (23001)"
  end
  if value == 23506 then
    return "Transaction Code: Heartbeat Message (23506)"
  end
  if value == 20322 then
    return "Transaction Code: Box Sign Off Message (20322)"
  end
  if value == 5294 then
    return "Transaction Code: Contingency Broadcast Message (5294)"
  end
  if value == 5716 then
    return "Transaction Code: Branch Order Value Limit Update Message (5716)"
  end
  if value == 5730 then
    return "Transaction Code: User Order Value Limit Update Message (5730)"
  end
  if value == 5732 then
    return "Transaction Code: Normal Order Limit Update Message (5732)"
  end
  if value == 5740 then
    return "Transaction Code: Reset User Password Message (5740)"
  end
  if value == 5744 then
    return "Transaction Code: Collateral User Status Change Request Message (5744)"
  end
  if value == 5745 then
    return "Transaction Code: Collateral User Status Change Response Message (5745)"
  end
  if value == 5738 then
    return "Transaction Code: User Trade Modify Cancel Status Change Request Message (5738)"
  end
  if value == 5739 then
    return "Transaction Code: User Trade Modify Cancel Status Change Response Message (5739)"
  end
  if value == 5427 then
    return "Transaction Code: User Address Unlock Request Message (5427)"
  end
  if value == 5428 then
    return "Transaction Code: User Address Unlock Confirm Message (5428)"
  end
  if value == 5483 then
    return "Transaction Code: User Address Unlock Approve Message (5483)"
  end
  if value == 4506 then
    return "Transaction Code: Giveup Confirmation Message (4506)"
  end
  if value == 4507 then
    return "Transaction Code: Giveup Confirmation Message (4507)"
  end
  if value == 2075 then
    return "Transaction Code: Order Cancellation Confirmation Message (2075)"
  end

  return "Transaction Code: Unknown("..value..")"
end

-- Dissect: Transaction Code
nse_nsefo_orderentry_nnf_v9_50.transaction_code.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.transaction_code.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.transaction_code.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.transaction_code, range, value, display)

  return offset + length, value
end

-- Trd Mod Cxl Bit
nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit = {}

-- Size: Trd Mod Cxl Bit
nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.size = 1

-- Display: Trd Mod Cxl Bit
nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.display = function(value)
  return "Trd Mod Cxl Bit: "..value
end

-- Dissect: Trd Mod Cxl Bit
nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trd_mod_cxl_bit, range, value, display)

  return offset + length, value
end

-- Trigger Price
nse_nsefo_orderentry_nnf_v9_50.trigger_price = {}

-- Size: Trigger Price
nse_nsefo_orderentry_nnf_v9_50.trigger_price.size = 4

-- Display: Trigger Price
nse_nsefo_orderentry_nnf_v9_50.trigger_price.display = function(value)
  return "Trigger Price: "..value
end

-- Translate: Trigger Price
nse_nsefo_orderentry_nnf_v9_50.trigger_price.translate = function(raw)
  return raw/100
end

-- Dissect: Trigger Price
nse_nsefo_orderentry_nnf_v9_50.trigger_price.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trigger_price.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.trigger_price.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.trigger_price.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trigger_price, range, value, display)

  return offset + length, value
end

-- Trigger Price 1
nse_nsefo_orderentry_nnf_v9_50.trigger_price_1 = {}

-- Size: Trigger Price 1
nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.size = 4

-- Display: Trigger Price 1
nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.display = function(value)
  return "Trigger Price 1: "..value
end

-- Translate: Trigger Price 1
nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.translate = function(raw)
  return raw/100
end

-- Dissect: Trigger Price 1
nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trigger_price_1, range, value, display)

  return offset + length, value
end

-- Trigger Price 2
nse_nsefo_orderentry_nnf_v9_50.trigger_price_2 = {}

-- Size: Trigger Price 2
nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.size = 4

-- Display: Trigger Price 2
nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.display = function(value)
  return "Trigger Price 2: "..value
end

-- Translate: Trigger Price 2
nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.translate = function(raw)
  return raw/100
end

-- Dissect: Trigger Price 2
nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.size
  local range = buffer(offset, length)
  local raw = range:int()
  local value = nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.translate(raw)
  local display = nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trigger_price_2, range, value, display)

  return offset + length, value
end

-- Update Portfolio
nse_nsefo_orderentry_nnf_v9_50.update_portfolio = {}

-- Size: Update Portfolio
nse_nsefo_orderentry_nnf_v9_50.update_portfolio.size = 1

-- Display: Update Portfolio
nse_nsefo_orderentry_nnf_v9_50.update_portfolio.display = function(value)
  return "Update Portfolio: "..value
end

-- Dissect: Update Portfolio
nse_nsefo_orderentry_nnf_v9_50.update_portfolio.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.update_portfolio.size
  local range = buffer(offset, length)
  local value = range:string()
  local display = nse_nsefo_orderentry_nnf_v9_50.update_portfolio.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_portfolio, range, value, display)

  return offset + length, value
end

-- User Id
nse_nsefo_orderentry_nnf_v9_50.user_id = {}

-- Size: User Id
nse_nsefo_orderentry_nnf_v9_50.user_id.size = 4

-- Display: User Id
nse_nsefo_orderentry_nnf_v9_50.user_id.display = function(value)
  return "User Id: "..value
end

-- Dissect: User Id
nse_nsefo_orderentry_nnf_v9_50.user_id.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.user_id.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.user_id.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_id, range, value, display)

  return offset + length, value
end

-- User Name
nse_nsefo_orderentry_nnf_v9_50.user_name = {}

-- Size: User Name
nse_nsefo_orderentry_nnf_v9_50.user_name.size = 25

-- Display: User Name
nse_nsefo_orderentry_nnf_v9_50.user_name.display = function(value)
  return "User Name: "..value
end

-- Dissect: User Name
nse_nsefo_orderentry_nnf_v9_50.user_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.user_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.user_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_name, range, value, display)

  return offset + length, value
end

-- User Order Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit = {}

-- Size: User Order Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.size = 8

-- Display: User Order Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.display = function(value)
  return "User Order Buy Value Limit: "..value
end

-- Dissect: User Order Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_buy_value_limit, range, value, display)

  return offset + length, value
end

-- User Order Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit = {}

-- Size: User Order Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.size = 8

-- Display: User Order Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.display = function(value)
  return "User Order Sell Value Limit: "..value
end

-- Dissect: User Order Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_sell_value_limit, range, value, display)

  return offset + length, value
end

-- User Order Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit = {}

-- Size: User Order Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit.size = 8

-- Display: User Order Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit.display = function(value)
  return "User Order Used Buy Value Limit: "..value
end

-- Dissect: User Order Used Buy Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_used_buy_value_limit, range, value, display)

  return offset + length, value
end

-- User Order Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit = {}

-- Size: User Order Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit.size = 8

-- Display: User Order Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit.display = function(value)
  return "User Order Used Sell Value Limit: "..value
end

-- Dissect: User Order Used Sell Value Limit
nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit.size
  local range = buffer(offset, length)
  local value = range:float()
  local display = nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_used_sell_value_limit, range, value, display)

  return offset + length, value
end

-- User Type
nse_nsefo_orderentry_nnf_v9_50.user_type = {}

-- Size: User Type
nse_nsefo_orderentry_nnf_v9_50.user_type.size = 2

-- Display: User Type
nse_nsefo_orderentry_nnf_v9_50.user_type.display = function(value)
  return "User Type: "..value
end

-- Dissect: User Type
nse_nsefo_orderentry_nnf_v9_50.user_type.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.user_type.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.user_type.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_type, range, value, display)

  return offset + length, value
end

-- Version Number
nse_nsefo_orderentry_nnf_v9_50.version_number = {}

-- Size: Version Number
nse_nsefo_orderentry_nnf_v9_50.version_number.size = 4

-- Display: Version Number
nse_nsefo_orderentry_nnf_v9_50.version_number.display = function(value)
  return "Version Number: "..value
end

-- Dissect: Version Number
nse_nsefo_orderentry_nnf_v9_50.version_number.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.version_number.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.version_number.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.version_number, range, value, display)

  return offset + length, value
end

-- Volume
nse_nsefo_orderentry_nnf_v9_50.volume = {}

-- Size: Volume
nse_nsefo_orderentry_nnf_v9_50.volume.size = 4

-- Display: Volume
nse_nsefo_orderentry_nnf_v9_50.volume.display = function(value)
  return "Volume: "..value
end

-- Dissect: Volume
nse_nsefo_orderentry_nnf_v9_50.volume.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.volume.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.volume.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume, range, value, display)

  return offset + length, value
end

-- Volume 1
nse_nsefo_orderentry_nnf_v9_50.volume_1 = {}

-- Size: Volume 1
nse_nsefo_orderentry_nnf_v9_50.volume_1.size = 4

-- Display: Volume 1
nse_nsefo_orderentry_nnf_v9_50.volume_1.display = function(value)
  return "Volume 1: "..value
end

-- Dissect: Volume 1
nse_nsefo_orderentry_nnf_v9_50.volume_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.volume_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.volume_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_1, range, value, display)

  return offset + length, value
end

-- Volume 2
nse_nsefo_orderentry_nnf_v9_50.volume_2 = {}

-- Size: Volume 2
nse_nsefo_orderentry_nnf_v9_50.volume_2.size = 4

-- Display: Volume 2
nse_nsefo_orderentry_nnf_v9_50.volume_2.display = function(value)
  return "Volume 2: "..value
end

-- Dissect: Volume 2
nse_nsefo_orderentry_nnf_v9_50.volume_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.volume_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.volume_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_2, range, value, display)

  return offset + length, value
end

-- Volume Filled Today
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today = {}

-- Size: Volume Filled Today
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.size = 4

-- Display: Volume Filled Today
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.display = function(value)
  return "Volume Filled Today: "..value
end

-- Dissect: Volume Filled Today
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_filled_today, range, value, display)

  return offset + length, value
end

-- Volume Filled Today 1
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1 = {}

-- Size: Volume Filled Today 1
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1.size = 4

-- Display: Volume Filled Today 1
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1.display = function(value)
  return "Volume Filled Today 1: "..value
end

-- Dissect: Volume Filled Today 1
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_filled_today_1, range, value, display)

  return offset + length, value
end

-- Volume Filled Today 2
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2 = {}

-- Size: Volume Filled Today 2
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2.size = 4

-- Display: Volume Filled Today 2
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2.display = function(value)
  return "Volume Filled Today 2: "..value
end

-- Dissect: Volume Filled Today 2
nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_filled_today_2, range, value, display)

  return offset + length, value
end

-- Volume Freeze Percent
nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent = {}

-- Size: Volume Freeze Percent
nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent.size = 2

-- Display: Volume Freeze Percent
nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent.display = function(value)
  return "Volume Freeze Percent: "..value
end

-- Dissect: Volume Freeze Percent
nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.volume_freeze_percent, range, value, display)

  return offset + length, value
end

-- Warning Percent
nse_nsefo_orderentry_nnf_v9_50.warning_percent = {}

-- Size: Warning Percent
nse_nsefo_orderentry_nnf_v9_50.warning_percent.size = 2

-- Display: Warning Percent
nse_nsefo_orderentry_nnf_v9_50.warning_percent.display = function(value)
  return "Warning Percent: "..value
end

-- Dissect: Warning Percent
nse_nsefo_orderentry_nnf_v9_50.warning_percent.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.warning_percent.size
  local range = buffer(offset, length)
  local value = range:int()
  local display = nse_nsefo_orderentry_nnf_v9_50.warning_percent.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.warning_percent, range, value, display)

  return offset + length, value
end

-- Ws Class Name
nse_nsefo_orderentry_nnf_v9_50.ws_class_name = {}

-- Size: Ws Class Name
nse_nsefo_orderentry_nnf_v9_50.ws_class_name.size = 14

-- Display: Ws Class Name
nse_nsefo_orderentry_nnf_v9_50.ws_class_name.display = function(value)
  return "Ws Class Name: "..value
end

-- Dissect: Ws Class Name
nse_nsefo_orderentry_nnf_v9_50.ws_class_name.dissect = function(buffer, offset, packet, parent)
  local length = nse_nsefo_orderentry_nnf_v9_50.ws_class_name.size
  local range = buffer(offset, length)
  local value = trim_right_spaces(range:string())
  local display = nse_nsefo_orderentry_nnf_v9_50.ws_class_name.display(value, buffer, offset, packet, parent)

  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ws_class_name, range, value, display)

  return offset + length, value
end


-----------------------------------------------------------------------
-- Dissect Nse NseFo OrderEntry Nnf 9.50
-----------------------------------------------------------------------

-- Additional Order Flags
nse_nsefo_orderentry_nnf_v9_50.additional_order_flags = {}

-- Size: Additional Order Flags
nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.size = 1

-- Display: Additional Order Flags
nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Boc flag set?
  if bit.band(value, 0x01) ~= 0 then
    flags[#flags + 1] = "Boc"
  end
  -- Is Col flag set?
  if bit.band(value, 0x02) ~= 0 then
    flags[#flags + 1] = "Col"
  end
  -- Is Stpc flag set?
  if bit.band(value, 0x10) ~= 0 then
    flags[#flags + 1] = "Stpc"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: Additional Order Flags
nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.bits = function(range, value, packet, parent)

  -- Boc: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.boc, range, value)

  -- Col: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.col, range, value)

  -- Reserved 34: 2 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_34, range, value)

  -- Stpc: 1 Bit Enum with 2 values
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.stpc, range, value)

  -- Reserved 68: 3 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_68, range, value)
end

-- Dissect: Additional Order Flags
nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.additional_order_flags, range, display)

  if show.structs then
    nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- St Order Flags
nse_nsefo_orderentry_nnf_v9_50.st_order_flags = {}

-- Size: St Order Flags
nse_nsefo_orderentry_nnf_v9_50.st_order_flags.size = 2

-- Display: St Order Flags
nse_nsefo_orderentry_nnf_v9_50.st_order_flags.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Order Pre Open flag set?
  if bit.band(value, 0x0004) ~= 0 then
    flags[#flags + 1] = "Order Pre Open"
  end
  -- Is Frozen flag set?
  if bit.band(value, 0x0008) ~= 0 then
    flags[#flags + 1] = "Frozen"
  end
  -- Is Modified flag set?
  if bit.band(value, 0x0010) ~= 0 then
    flags[#flags + 1] = "Modified"
  end
  -- Is Traded flag set?
  if bit.band(value, 0x0020) ~= 0 then
    flags[#flags + 1] = "Traded"
  end
  -- Is Matched Ind flag set?
  if bit.band(value, 0x0040) ~= 0 then
    flags[#flags + 1] = "Matched Ind"
  end
  -- Is Mf flag set?
  if bit.band(value, 0x0080) ~= 0 then
    flags[#flags + 1] = "Mf"
  end
  -- Is Aon flag set?
  if bit.band(value, 0x0100) ~= 0 then
    flags[#flags + 1] = "Aon"
  end
  -- Is Ioc flag set?
  if bit.band(value, 0x0200) ~= 0 then
    flags[#flags + 1] = "Ioc"
  end
  -- Is Gtc flag set?
  if bit.band(value, 0x0400) ~= 0 then
    flags[#flags + 1] = "Gtc"
  end
  -- Is Day flag set?
  if bit.band(value, 0x0800) ~= 0 then
    flags[#flags + 1] = "Day"
  end
  -- Is Mit flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Mit"
  end
  -- Is Sl flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Sl"
  end
  -- Is Market flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Market"
  end
  -- Is Ato flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Ato"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Order Flags
nse_nsefo_orderentry_nnf_v9_50.st_order_flags.bits = function(range, value, packet, parent)

  -- Reserved 12: 2 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_12, range, value)

  -- Order Pre Open: 1 Bit Enum with 2 values
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_pre_open, range, value)

  -- Frozen: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.frozen, range, value)

  -- Modified: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.modified, range, value)

  -- Traded: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.traded, range, value)

  -- Matched Ind: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.matched_ind, range, value)

  -- Mf: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.mf, range, value)

  -- Aon: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.aon, range, value)

  -- Ioc: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ioc, range, value)

  -- Gtc: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.gtc, range, value)

  -- Day: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.day, range, value)

  -- Mit: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.mit, range, value)

  -- Sl: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sl, range, value)

  -- Market: 1 Bit Enum with 2 values
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market, range, value)

  -- Ato: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ato, range, value)
end

-- Dissect: St Order Flags
nse_nsefo_orderentry_nnf_v9_50.st_order_flags.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_orderentry_nnf_v9_50.st_order_flags.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsefo_orderentry_nnf_v9_50.st_order_flags.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_order_flags, range, display)

  if show.structs then
    nse_nsefo_orderentry_nnf_v9_50.st_order_flags.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Contract Desc
nse_nsefo_orderentry_nnf_v9_50.contract_desc = {}

-- Size: Contract Desc
nse_nsefo_orderentry_nnf_v9_50.contract_desc.size =
  nse_nsefo_orderentry_nnf_v9_50.instrument_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.symbol.size + 
  nse_nsefo_orderentry_nnf_v9_50.expiry_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.strike_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.option_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.ca_level.size

-- Display: Contract Desc
nse_nsefo_orderentry_nnf_v9_50.contract_desc.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contract Desc
nse_nsefo_orderentry_nnf_v9_50.contract_desc.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsefo_orderentry_nnf_v9_50.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsefo_orderentry_nnf_v9_50.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsefo_orderentry_nnf_v9_50.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsefo_orderentry_nnf_v9_50.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsefo_orderentry_nnf_v9_50.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nsefo_orderentry_nnf_v9_50.ca_level.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contract Desc
nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.contract_desc, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.contract_desc.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.contract_desc.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.contract_desc.fields(buffer, offset, packet, parent)
  end
end

-- Ms Spd Leg Info
nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info = {}

-- Size: Ms Spd Leg Info
nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.size =
  nse_nsefo_orderentry_nnf_v9_50.token_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.contract_desc.size + 
  nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.fillerx_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_type_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_sell_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.price_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_close_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_y.size

-- Display: Ms Spd Leg Info
nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Ms Spd Leg Info
nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token 2: LONG
  index, token_2 = nse_nsefo_orderentry_nnf_v9_50.token_2.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 2: CHAR
  index, op_broker_id_2 = nse_nsefo_orderentry_nnf_v9_50.op_broker_id_2.dissect(buffer, index, packet, parent)

  -- Fillerx 2: CHAR
  index, fillerx_2 = nse_nsefo_orderentry_nnf_v9_50.fillerx_2.dissect(buffer, index, packet, parent)

  -- Order Type 2: SHORT
  index, order_type_2 = nse_nsefo_orderentry_nnf_v9_50.order_type_2.dissect(buffer, index, packet, parent)

  -- Buy Sell 2: SHORT
  index, buy_sell_2 = nse_nsefo_orderentry_nnf_v9_50.buy_sell_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 2: LONG
  index, disclosed_vol_2 = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_2.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 2: LONG
  index, disclosed_vol_remaining_2 = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 2: LONG
  index, total_vol_remaining_2 = nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_2.dissect(buffer, index, packet, parent)

  -- Volume 2: LONG
  index, volume_2 = nse_nsefo_orderentry_nnf_v9_50.volume_2.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 2: LONG
  index, volume_filled_today_2 = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_2.dissect(buffer, index, packet, parent)

  -- Price 2: LONG
  index, price_2 = nse_nsefo_orderentry_nnf_v9_50.price_2.dissect(buffer, index, packet, parent)

  -- Trigger Price 2: LONG
  index, trigger_price_2 = nse_nsefo_orderentry_nnf_v9_50.trigger_price_2.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 2: LONG
  index, min_fill_aon_2 = nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_2.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 15 fields
  index, st_order_flags = nse_nsefo_orderentry_nnf_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Open Close 2: CHAR
  index, open_close_2 = nse_nsefo_orderentry_nnf_v9_50.open_close_2.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 5 fields
  index, additional_order_flags = nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Filler Y: CHAR
  index, filler_y = nse_nsefo_orderentry_nnf_v9_50.filler_y.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Ms Spd Leg Info
nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.ms_spd_leg_info, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Body
nse_nsefo_orderentry_nnf_v9_50.spread_order_body = {}

-- Size: Spread Order Body
nse_nsefo_orderentry_nnf_v9_50.spread_order_body.size =
  nse_nsefo_orderentry_nnf_v9_50.participant_type_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.competitor_period_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_9.size + 
  nse_nsefo_orderentry_nnf_v9_50.reason_code_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.start_alpha_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.end_alpha_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.token_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.contract_desc.size + 
  nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.fillerx_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_options_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.fillery_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_type_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_number_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.account_number_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.book_type_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_sell_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.price_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.good_till_date_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_modified_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_id_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_id_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_close_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.settlor_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.pro_client_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.settlement_period_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_116.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_17.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_18.size + 
  nse_nsefo_orderentry_nnf_v9_50.nnf_field.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_replay.size + 
  nse_nsefo_orderentry_nnf_v9_50.pan.size + 
  nse_nsefo_orderentry_nnf_v9_50.algo_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_52.size + 
  nse_nsefo_orderentry_nnf_v9_50.price_diff.size + 
  nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.size + 
  nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.size

-- Display: Spread Order Body
nse_nsefo_orderentry_nnf_v9_50.spread_order_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Body
nse_nsefo_orderentry_nnf_v9_50.spread_order_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type 1: CHAR
  index, participant_type_1 = nse_nsefo_orderentry_nnf_v9_50.participant_type_1.dissect(buffer, index, packet, parent)

  -- Filler 1: LONG
  index, filler_1 = nse_nsefo_orderentry_nnf_v9_50.filler_1.dissect(buffer, index, packet, parent)

  -- Competitor Period 1: SHORT
  index, competitor_period_1 = nse_nsefo_orderentry_nnf_v9_50.competitor_period_1.dissect(buffer, index, packet, parent)

  -- Solicitor Period 1: SHORT
  index, solicitor_period_1 = nse_nsefo_orderentry_nnf_v9_50.solicitor_period_1.dissect(buffer, index, packet, parent)

  -- Mod Cxl By 1: CHAR
  index, mod_cxl_by_1 = nse_nsefo_orderentry_nnf_v9_50.mod_cxl_by_1.dissect(buffer, index, packet, parent)

  -- Filler 9: CHAR
  index, filler_9 = nse_nsefo_orderentry_nnf_v9_50.filler_9.dissect(buffer, index, packet, parent)

  -- Reason Code 1: SHORT
  index, reason_code_1 = nse_nsefo_orderentry_nnf_v9_50.reason_code_1.dissect(buffer, index, packet, parent)

  -- Start Alpha 1: CHAR
  index, start_alpha_1 = nse_nsefo_orderentry_nnf_v9_50.start_alpha_1.dissect(buffer, index, packet, parent)

  -- End Alpha 1: CHAR
  index, end_alpha_1 = nse_nsefo_orderentry_nnf_v9_50.end_alpha_1.dissect(buffer, index, packet, parent)

  -- Token 1: LONG
  index, token_1 = nse_nsefo_orderentry_nnf_v9_50.token_1.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect(buffer, index, packet, parent)

  -- Op Broker Id 1: CHAR
  index, op_broker_id_1 = nse_nsefo_orderentry_nnf_v9_50.op_broker_id_1.dissect(buffer, index, packet, parent)

  -- Fillerx 1: CHAR
  index, fillerx_1 = nse_nsefo_orderentry_nnf_v9_50.fillerx_1.dissect(buffer, index, packet, parent)

  -- Filler Options 1: CHAR
  index, filler_options_1 = nse_nsefo_orderentry_nnf_v9_50.filler_options_1.dissect(buffer, index, packet, parent)

  -- Fillery 1: CHAR
  index, fillery_1 = nse_nsefo_orderentry_nnf_v9_50.fillery_1.dissect(buffer, index, packet, parent)

  -- Order Type 1: SHORT
  index, order_type_1 = nse_nsefo_orderentry_nnf_v9_50.order_type_1.dissect(buffer, index, packet, parent)

  -- Order Number 1: DOUBLE
  index, order_number_1 = nse_nsefo_orderentry_nnf_v9_50.order_number_1.dissect(buffer, index, packet, parent)

  -- Account Number 1: CHAR
  index, account_number_1 = nse_nsefo_orderentry_nnf_v9_50.account_number_1.dissect(buffer, index, packet, parent)

  -- Book Type 1: SHORT
  index, book_type_1 = nse_nsefo_orderentry_nnf_v9_50.book_type_1.dissect(buffer, index, packet, parent)

  -- Buy Sell 1: SHORT
  index, buy_sell_1 = nse_nsefo_orderentry_nnf_v9_50.buy_sell_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol 1: LONG
  index, disclosed_vol_1 = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_1.dissect(buffer, index, packet, parent)

  -- Disclosed Vol Remaining 1: LONG
  index, disclosed_vol_remaining_1 = nse_nsefo_orderentry_nnf_v9_50.disclosed_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Total Vol Remaining 1: LONG
  index, total_vol_remaining_1 = nse_nsefo_orderentry_nnf_v9_50.total_vol_remaining_1.dissect(buffer, index, packet, parent)

  -- Volume 1: LONG
  index, volume_1 = nse_nsefo_orderentry_nnf_v9_50.volume_1.dissect(buffer, index, packet, parent)

  -- Volume Filled Today 1: LONG
  index, volume_filled_today_1 = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today_1.dissect(buffer, index, packet, parent)

  -- Price 1: LONG
  index, price_1 = nse_nsefo_orderentry_nnf_v9_50.price_1.dissect(buffer, index, packet, parent)

  -- Trigger Price 1: LONG
  index, trigger_price_1 = nse_nsefo_orderentry_nnf_v9_50.trigger_price_1.dissect(buffer, index, packet, parent)

  -- Good Till Date 1: LONG
  index, good_till_date_1 = nse_nsefo_orderentry_nnf_v9_50.good_till_date_1.dissect(buffer, index, packet, parent)

  -- Entry Date Time 1: LONG
  index, entry_date_time_1 = nse_nsefo_orderentry_nnf_v9_50.entry_date_time_1.dissect(buffer, index, packet, parent)

  -- Min Fill Aon 1: LONG
  index, min_fill_aon_1 = nse_nsefo_orderentry_nnf_v9_50.min_fill_aon_1.dissect(buffer, index, packet, parent)

  -- Last Modified 1: LONG
  index, last_modified_1 = nse_nsefo_orderentry_nnf_v9_50.last_modified_1.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 15 fields
  index, st_order_flags = nse_nsefo_orderentry_nnf_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id 1: SHORT
  index, branch_id_1 = nse_nsefo_orderentry_nnf_v9_50.branch_id_1.dissect(buffer, index, packet, parent)

  -- Trader Id 1: LONG
  index, trader_id_1 = nse_nsefo_orderentry_nnf_v9_50.trader_id_1.dissect(buffer, index, packet, parent)

  -- Broker Id 1: CHAR
  index, broker_id_1 = nse_nsefo_orderentry_nnf_v9_50.broker_id_1.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close 1: CHAR
  index, open_close_1 = nse_nsefo_orderentry_nnf_v9_50.open_close_1.dissect(buffer, index, packet, parent)

  -- Settlor 1: CHAR
  index, settlor_1 = nse_nsefo_orderentry_nnf_v9_50.settlor_1.dissect(buffer, index, packet, parent)

  -- Pro Client 1: SHORT
  index, pro_client_1 = nse_nsefo_orderentry_nnf_v9_50.pro_client_1.dissect(buffer, index, packet, parent)

  -- Settlement Period 1: SHORT
  index, settlement_period_1 = nse_nsefo_orderentry_nnf_v9_50.settlement_period_1.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 5 fields
  index, additional_order_flags = nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Filler 116: CHAR
  index, filler_116 = nse_nsefo_orderentry_nnf_v9_50.filler_116.dissect(buffer, index, packet, parent)

  -- Filler 17: CHAR
  index, filler_17 = nse_nsefo_orderentry_nnf_v9_50.filler_17.dissect(buffer, index, packet, parent)

  -- Filler 18: CHAR
  index, filler_18 = nse_nsefo_orderentry_nnf_v9_50.filler_18.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_orderentry_nnf_v9_50.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: LONG LONG
  index, mkt_replay = nse_nsefo_orderentry_nnf_v9_50.mkt_replay.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_orderentry_nnf_v9_50.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsefo_orderentry_nnf_v9_50.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsefo_orderentry_nnf_v9_50.reserved_52.dissect(buffer, index, packet, parent)

  -- Price Diff: LONG
  index, price_diff = nse_nsefo_orderentry_nnf_v9_50.price_diff.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info: Struct of 19 fields
  index, ms_spd_leg_info = nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.dissect(buffer, index, packet, parent)

  -- Ms Spd Leg Info: Struct of 19 fields
  index, ms_spd_leg_info = nse_nsefo_orderentry_nnf_v9_50.ms_spd_leg_info.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Body
nse_nsefo_orderentry_nnf_v9_50.spread_order_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_order_body, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.spread_order_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.spread_order_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_body.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry Body
nse_nsefo_orderentry_nnf_v9_50.order_entry_body = {}

-- Size: Order Entry Body
nse_nsefo_orderentry_nnf_v9_50.order_entry_body.size =
  nse_nsefo_orderentry_nnf_v9_50.participant_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.competitor_period.size + 
  nse_nsefo_orderentry_nnf_v9_50.solicitor_period.size + 
  nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.reason_code.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_4.size + 
  nse_nsefo_orderentry_nnf_v9_50.token_no.size + 
  nse_nsefo_orderentry_nnf_v9_50.contract_desc.size + 
  nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.closeout_flag.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.account_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.book_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.size + 
  nse_nsefo_orderentry_nnf_v9_50.price.size + 
  nse_nsefo_orderentry_nnf_v9_50.trigger_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.good_till_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.entry_date_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_modified.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.settlor.size + 
  nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator.size + 
  nse_nsefo_orderentry_nnf_v9_50.settlement_period.size + 
  nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_116.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_17.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_18.size + 
  nse_nsefo_orderentry_nnf_v9_50.nnf_field.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_replay.size + 
  nse_nsefo_orderentry_nnf_v9_50.pan.size + 
  nse_nsefo_orderentry_nnf_v9_50.algo_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_52.size

-- Display: Order Entry Body
nse_nsefo_orderentry_nnf_v9_50.order_entry_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Body
nse_nsefo_orderentry_nnf_v9_50.order_entry_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Participant Type: CHAR
  index, participant_type = nse_nsefo_orderentry_nnf_v9_50.participant_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsefo_orderentry_nnf_v9_50.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsefo_orderentry_nnf_v9_50.solicitor_period.dissect(buffer, index, packet, parent)

  -- Modified Cancelled By: CHAR
  index, modified_cancelled_by = nse_nsefo_orderentry_nnf_v9_50.modified_cancelled_by.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_orderentry_nnf_v9_50.reason_code.dissect(buffer, index, packet, parent)

  -- Reserved 4: LONG
  index, reserved_4 = nse_nsefo_orderentry_nnf_v9_50.reserved_4.dissect(buffer, index, packet, parent)

  -- Token No: LONG
  index, token_no = nse_nsefo_orderentry_nnf_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect(buffer, index, packet, parent)

  -- Counter Party Broker Id: CHAR
  index, counter_party_broker_id = nse_nsefo_orderentry_nnf_v9_50.counter_party_broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Closeout Flag: CHAR
  index, closeout_flag = nse_nsefo_orderentry_nnf_v9_50.closeout_flag.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Order Type: SHORT
  index, order_type = nse_nsefo_orderentry_nnf_v9_50.order_type.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_orderentry_nnf_v9_50.order_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_orderentry_nnf_v9_50.account_number.dissect(buffer, index, packet, parent)

  -- Book Type: CHAR
  index, book_type = nse_nsefo_orderentry_nnf_v9_50.book_type.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Total Volume Remaining: LONG
  index, total_volume_remaining = nse_nsefo_orderentry_nnf_v9_50.total_volume_remaining.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsefo_orderentry_nnf_v9_50.volume.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_orderentry_nnf_v9_50.price.dissect(buffer, index, packet, parent)

  -- Trigger Price: LONG
  index, trigger_price = nse_nsefo_orderentry_nnf_v9_50.trigger_price.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsefo_orderentry_nnf_v9_50.good_till_date.dissect(buffer, index, packet, parent)

  -- Entry Date Time: LONG
  index, entry_date_time = nse_nsefo_orderentry_nnf_v9_50.entry_date_time.dissect(buffer, index, packet, parent)

  -- Minimum Fill Aon Volume: LONG
  index, minimum_fill_aon_volume = nse_nsefo_orderentry_nnf_v9_50.minimum_fill_aon_volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsefo_orderentry_nnf_v9_50.last_modified.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 15 fields
  index, st_order_flags = nse_nsefo_orderentry_nnf_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnf_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnf_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- C Ord Filler: CHAR
  index, c_ord_filler = nse_nsefo_orderentry_nnf_v9_50.c_ord_filler.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_orderentry_nnf_v9_50.open_close.dissect(buffer, index, packet, parent)

  -- Settlor: CHAR
  index, settlor = nse_nsefo_orderentry_nnf_v9_50.settlor.dissect(buffer, index, packet, parent)

  -- Pro Client Indicator: SHORT
  index, pro_client_indicator = nse_nsefo_orderentry_nnf_v9_50.pro_client_indicator.dissect(buffer, index, packet, parent)

  -- Settlement Period: SHORT
  index, settlement_period = nse_nsefo_orderentry_nnf_v9_50.settlement_period.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 5 fields
  index, additional_order_flags = nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Filler 116: CHAR
  index, filler_116 = nse_nsefo_orderentry_nnf_v9_50.filler_116.dissect(buffer, index, packet, parent)

  -- Filler 17: CHAR
  index, filler_17 = nse_nsefo_orderentry_nnf_v9_50.filler_17.dissect(buffer, index, packet, parent)

  -- Filler 18: CHAR
  index, filler_18 = nse_nsefo_orderentry_nnf_v9_50.filler_18.dissect(buffer, index, packet, parent)

  -- Nnf Field: DOUBLE
  index, nnf_field = nse_nsefo_orderentry_nnf_v9_50.nnf_field.dissect(buffer, index, packet, parent)

  -- Mkt Replay: LONG LONG
  index, mkt_replay = nse_nsefo_orderentry_nnf_v9_50.mkt_replay.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_orderentry_nnf_v9_50.pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsefo_orderentry_nnf_v9_50.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsefo_orderentry_nnf_v9_50.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry Body
nse_nsefo_orderentry_nnf_v9_50.order_entry_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_entry_body, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.order_entry_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.order_entry_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_body.fields(buffer, offset, packet, parent)
  end
end

-- Cancellation Confirmation Body
nse_nsefo_orderentry_nnf_v9_50.cancellation_confirmation_body = {}

-- Dissect: Cancellation Confirmation Body
nse_nsefo_orderentry_nnf_v9_50.cancellation_confirmation_body.dissect = function(buffer, offset, packet, parent, message_length)
  -- Dissect Order Entry Body
  if message_length == 316 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Body
  if message_length == 480 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_body.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Order Cancellation Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message = {}

-- Calculate size of: Order Cancellation Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Cancellation Confirmation Body field
  local cancellation_confirmation_body_offset = offset + index
  local cancellation_confirmation_body_type = buffer(cancellation_confirmation_body_offset - 2, 2):int()
  index = index + nse_nsefo_orderentry_nnf_v9_50.cancellation_confirmation_body.size(buffer, cancellation_confirmation_body_offset, cancellation_confirmation_body_type)

  return index
end

-- Display: Order Cancellation Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Cancellation Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Cancellation Confirmation Body: Runtime Type with 2 branches
  index = nse_nsefo_orderentry_nnf_v9_50.cancellation_confirmation_body.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Order Cancellation Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_cancellation_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Giveup
nse_nsefo_orderentry_nnf_v9_50.giveup = {}

-- Size: Giveup
nse_nsefo_orderentry_nnf_v9_50.giveup.size =
  nse_nsefo_orderentry_nnf_v9_50.order_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.instrument_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.symbol.size + 
  nse_nsefo_orderentry_nnf_v9_50.expiry_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.strike_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.option_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.ca_level.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_sell.size + 
  nse_nsefo_orderentry_nnf_v9_50.book_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.initiated_by_control.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.participant.size + 
  nse_nsefo_orderentry_nnf_v9_50.giveup_flag.size + 
  nse_nsefo_orderentry_nnf_v9_50.deleted.size

-- Display: Giveup
nse_nsefo_orderentry_nnf_v9_50.giveup.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup
nse_nsefo_orderentry_nnf_v9_50.giveup.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_orderentry_nnf_v9_50.order_number.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsefo_orderentry_nnf_v9_50.fill_number.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsefo_orderentry_nnf_v9_50.instrument_name.dissect(buffer, index, packet, parent)

  -- Symbol: CHAR
  index, symbol = nse_nsefo_orderentry_nnf_v9_50.symbol.dissect(buffer, index, packet, parent)

  -- Expiry Date: LONG
  index, expiry_date = nse_nsefo_orderentry_nnf_v9_50.expiry_date.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsefo_orderentry_nnf_v9_50.strike_price.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsefo_orderentry_nnf_v9_50.option_type.dissect(buffer, index, packet, parent)

  -- Ca Level: SHORT
  index, ca_level = nse_nsefo_orderentry_nnf_v9_50.ca_level.dissect(buffer, index, packet, parent)

  -- Fill Volume: LONG
  index, fill_volume = nse_nsefo_orderentry_nnf_v9_50.fill_volume.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsefo_orderentry_nnf_v9_50.fill_price.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_orderentry_nnf_v9_50.filler.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_orderentry_nnf_v9_50.buy_sell.dissect(buffer, index, packet, parent)

  -- Book Type: CHAR
  index, book_type = nse_nsefo_orderentry_nnf_v9_50.book_type.dissect(buffer, index, packet, parent)

  -- Last Modified Date Time: LONG
  index, last_modified_date_time = nse_nsefo_orderentry_nnf_v9_50.last_modified_date_time.dissect(buffer, index, packet, parent)

  -- Initiated By Control: CHAR
  index, initiated_by_control = nse_nsefo_orderentry_nnf_v9_50.initiated_by_control.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_orderentry_nnf_v9_50.open_close.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_orderentry_nnf_v9_50.participant.dissect(buffer, index, packet, parent)

  -- Giveup Flag: CHAR
  index, giveup_flag = nse_nsefo_orderentry_nnf_v9_50.giveup_flag.dissect(buffer, index, packet, parent)

  -- Deleted: CHAR
  index, deleted = nse_nsefo_orderentry_nnf_v9_50.deleted.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Giveup
nse_nsefo_orderentry_nnf_v9_50.giveup.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.giveup, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.giveup.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.giveup.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.giveup.fields(buffer, offset, packet, parent)
  end
end

-- Giveup Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message = {}

-- Size: Giveup Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.size =
  nse_nsefo_orderentry_nnf_v9_50.reason_code.size + 
  nse_nsefo_orderentry_nnf_v9_50.giveup.size

-- Display: Giveup Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Giveup Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reason Code: SHORT
  index, reason_code = nse_nsefo_orderentry_nnf_v9_50.reason_code.dissect(buffer, index, packet, parent)

  -- Giveup: Struct of 21 fields
  index, giveup = nse_nsefo_orderentry_nnf_v9_50.giveup.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Giveup Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.giveup_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- User Address Unlock Approve Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message = {}

-- Size: User Address Unlock Approve Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_36.size

-- Display: User Address Unlock Approve Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Address Unlock Approve Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 36: CHAR
  index, reserved_36 = nse_nsefo_orderentry_nnf_v9_50.reserved_36.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Address Unlock Approve Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_address_unlock_approve_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.fields(buffer, offset, packet, parent)
  end
end

-- User Address Unlock Confirm Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message = {}

-- Size: User Address Unlock Confirm Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_36.size

-- Display: User Address Unlock Confirm Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Address Unlock Confirm Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 36: CHAR
  index, reserved_36 = nse_nsefo_orderentry_nnf_v9_50.reserved_36.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Address Unlock Confirm Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_address_unlock_confirm_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.fields(buffer, offset, packet, parent)
  end
end

-- User Address Unlock Request Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message = {}

-- Size: User Address Unlock Request Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_70.size

-- Display: User Address Unlock Request Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Address Unlock Request Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 70: CHAR
  index, reserved_70 = nse_nsefo_orderentry_nnf_v9_50.reserved_70.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Address Unlock Request Message
nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_address_unlock_request_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.fields(buffer, offset, packet, parent)
  end
end

-- User Trade Modify Cancel Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message = {}

-- Size: User Trade Modify Cancel Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size

-- Display: User Trade Modify Cancel Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Trade Modify Cancel Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Trd Mod Cxl Bit: CHAR
  index, trd_mod_cxl_bit = nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Trade Modify Cancel Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_trade_modify_cancel_status_change_response_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.fields(buffer, offset, packet, parent)
  end
end

-- User Trade Modify Cancel Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message = {}

-- Size: User Trade Modify Cancel Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_7.size

-- Display: User Trade Modify Cancel Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Trade Modify Cancel Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Trd Mod Cxl Bit: CHAR
  index, trd_mod_cxl_bit = nse_nsefo_orderentry_nnf_v9_50.trd_mod_cxl_bit.dissect(buffer, index, packet, parent)

  -- Reserved 7: CHAR
  index, reserved_7 = nse_nsefo_orderentry_nnf_v9_50.reserved_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Trade Modify Cancel Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_trade_modify_cancel_status_change_request_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Collateral User Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message = {}

-- Size: Collateral User Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.col_user_bit.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size

-- Display: Collateral User Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral User Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Col User Bit: CHAR
  index, col_user_bit = nse_nsefo_orderentry_nnf_v9_50.col_user_bit.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collateral User Status Change Response Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.collateral_user_status_change_response_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Collateral User Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message = {}

-- Size: Collateral User Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.col_user_bit.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_7.size

-- Display: Collateral User Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Collateral User Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Col User Bit: CHAR
  index, col_user_bit = nse_nsefo_orderentry_nnf_v9_50.col_user_bit.dissect(buffer, index, packet, parent)

  -- Reserved 7: CHAR
  index, reserved_7 = nse_nsefo_orderentry_nnf_v9_50.reserved_7.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Collateral User Status Change Request Message
nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.collateral_user_status_change_request_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Reset User Password Message
nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message = {}

-- Size: Reset User Password Message
nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_14.size

-- Display: Reset User Password Message
nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Reset User Password Message
nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  index, reserved_14 = nse_nsefo_orderentry_nnf_v9_50.reserved_14.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Reset User Password Message
nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reset_user_password_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.fields(buffer, offset, packet, parent)
  end
end

-- Normal Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message = {}

-- Size: Normal Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.size =
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_qty_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_val_limit.size

-- Display: Normal Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Normal Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Order Qty Limit: DOUBLE
  index, order_qty_limit = nse_nsefo_orderentry_nnf_v9_50.order_qty_limit.dissect(buffer, index, packet, parent)

  -- Order Val Limit: DOUBLE
  index, order_val_limit = nse_nsefo_orderentry_nnf_v9_50.order_val_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Normal Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.normal_order_limit_update_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- User Limits
nse_nsefo_orderentry_nnf_v9_50.user_limits = {}

-- Size: User Limits
nse_nsefo_orderentry_nnf_v9_50.user_limits.size =
  nse_nsefo_orderentry_nnf_v9_50.reserved_32.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size

-- Display: User Limits
nse_nsefo_orderentry_nnf_v9_50.user_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Limits
nse_nsefo_orderentry_nnf_v9_50.user_limits.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 32: CHAR
  index, reserved_32 = nse_nsefo_orderentry_nnf_v9_50.reserved_32.dissect(buffer, index, packet, parent)

  -- User Order Buy Value Limit: DOUBLE
  index, user_order_buy_value_limit = nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Sell Value Limit: DOUBLE
  index, user_order_sell_value_limit = nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Limits
nse_nsefo_orderentry_nnf_v9_50.user_limits.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_limits, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_limits.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_limits.fields(buffer, offset, packet, parent)
  end
end

-- User Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message = {}

-- Size: User Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.size =
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_26.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_limits.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_limits.size

-- Display: User Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnf_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Reserved 26: CHAR
  index, reserved_26 = nse_nsefo_orderentry_nnf_v9_50.reserved_26.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- User Limits: Struct of 4 fields
  index, user_limits = nse_nsefo_orderentry_nnf_v9_50.user_limits.dissect(buffer, index, packet, parent)

  -- User Limits: Struct of 4 fields
  index, user_limits = nse_nsefo_orderentry_nnf_v9_50.user_limits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_value_limit_update_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Branch Limits
nse_nsefo_orderentry_nnf_v9_50.branch_limits = {}

-- Size: Branch Limits
nse_nsefo_orderentry_nnf_v9_50.branch_limits.size =
  nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size

-- Display: Branch Limits
nse_nsefo_orderentry_nnf_v9_50.branch_limits.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Limits
nse_nsefo_orderentry_nnf_v9_50.branch_limits.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Buy Value Limit: DOUBLE
  index, branch_buy_value_limit = nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Sell Value Limit: DOUBLE
  index, branch_sell_value_limit = nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Branch Limits
nse_nsefo_orderentry_nnf_v9_50.branch_limits.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_limits, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.branch_limits.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.branch_limits.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.branch_limits.fields(buffer, offset, packet, parent)
  end
end

-- Branch Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message = {}

-- Size: Branch Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.size =
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_25.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_limits.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_limits.size

-- Display: Branch Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Branch Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 25: CHAR
  index, reserved_25 = nse_nsefo_orderentry_nnf_v9_50.reserved_25.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnf_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Branch Limits: Struct of 3 fields
  index, branch_limits = nse_nsefo_orderentry_nnf_v9_50.branch_limits.dissect(buffer, index, packet, parent)

  -- Branch Limits: Struct of 3 fields
  index, branch_limits = nse_nsefo_orderentry_nnf_v9_50.branch_limits.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Branch Order Value Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.branch_order_value_limit_update_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Contingency Broadcast Message
nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message = {}

-- Size: Contingency Broadcast Message
nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.size =
  nse_nsefo_orderentry_nnf_v9_50.stream_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.status.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_200.size

-- Display: Contingency Broadcast Message
nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contingency Broadcast Message
nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Stream Number: SHORT
  index, stream_number = nse_nsefo_orderentry_nnf_v9_50.stream_number.dissect(buffer, index, packet, parent)

  -- Status: SHORT
  index, status = nse_nsefo_orderentry_nnf_v9_50.status.dissect(buffer, index, packet, parent)

  -- Reserved 200: CHAR
  index, reserved_200 = nse_nsefo_orderentry_nnf_v9_50.reserved_200.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contingency Broadcast Message
nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.contingency_broadcast_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign Off Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message = {}

-- Size: Box Sign Off Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.size =
  nse_nsefo_orderentry_nnf_v9_50.box_id.size

-- Display: Box Sign Off Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign Off Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsefo_orderentry_nnf_v9_50.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign Off Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_sign_off_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message = {}

-- Size: Box Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.size =
  nse_nsefo_orderentry_nnf_v9_50.box_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_10.size

-- Display: Box Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsefo_orderentry_nnf_v9_50.box_id.dissect(buffer, index, packet, parent)

  -- Reserved 10: CHAR
  index, reserved_10 = nse_nsefo_orderentry_nnf_v9_50.reserved_10.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_sign_on_request_out_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Box Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message = {}

-- Size: Box Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.size =
  nse_nsefo_orderentry_nnf_v9_50.box_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_5.size + 
  nse_nsefo_orderentry_nnf_v9_50.session_key.size

-- Display: Box Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Box Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsefo_orderentry_nnf_v9_50.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 5: CHAR
  index, reserved_5 = nse_nsefo_orderentry_nnf_v9_50.reserved_5.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsefo_orderentry_nnf_v9_50.session_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Box Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.box_sign_on_request_in_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Secure Box Registration Request In Message
nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message = {}

-- Size: Secure Box Registration Request In Message
nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.size =
  nse_nsefo_orderentry_nnf_v9_50.box_id.size

-- Display: Secure Box Registration Request In Message
nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Secure Box Registration Request In Message
nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsefo_orderentry_nnf_v9_50.box_id.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Secure Box Registration Request In Message
nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.secure_box_registration_request_in_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Contracts Details
nse_nsefo_orderentry_nnf_v9_50.contracts_details = {}

-- Size: Contracts Details
nse_nsefo_orderentry_nnf_v9_50.contracts_details.size =
  nse_nsefo_orderentry_nnf_v9_50.token.size + 
  nse_nsefo_orderentry_nnf_v9_50.nse_symbol.size + 
  nse_nsefo_orderentry_nnf_v9_50.instrument_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.exp_day.size + 
  nse_nsefo_orderentry_nnf_v9_50.exp_month.size + 
  nse_nsefo_orderentry_nnf_v9_50.exp_year.size + 
  nse_nsefo_orderentry_nnf_v9_50.option_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.strike_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.bid_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.ask_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.bid_size.size + 
  nse_nsefo_orderentry_nnf_v9_50.ask_size.size + 
  nse_nsefo_orderentry_nnf_v9_50.open.size + 
  nse_nsefo_orderentry_nnf_v9_50.high.size + 
  nse_nsefo_orderentry_nnf_v9_50.low.size + 
  nse_nsefo_orderentry_nnf_v9_50.last.size + 
  nse_nsefo_orderentry_nnf_v9_50.close.size + 
  nse_nsefo_orderentry_nnf_v9_50.prev_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.limit_high.size + 
  nse_nsefo_orderentry_nnf_v9_50.limit_low.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_trades.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_interest.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_3.size

-- Display: Contracts Details
nse_nsefo_orderentry_nnf_v9_50.contracts_details.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Contracts Details
nse_nsefo_orderentry_nnf_v9_50.contracts_details.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nsefo_orderentry_nnf_v9_50.token.dissect(buffer, index, packet, parent)

  -- Nse Symbol: CHAR
  index, nse_symbol = nse_nsefo_orderentry_nnf_v9_50.nse_symbol.dissect(buffer, index, packet, parent)

  -- Instrument Name: CHAR
  index, instrument_name = nse_nsefo_orderentry_nnf_v9_50.instrument_name.dissect(buffer, index, packet, parent)

  -- Exp Day: SHORT
  index, exp_day = nse_nsefo_orderentry_nnf_v9_50.exp_day.dissect(buffer, index, packet, parent)

  -- Exp Month: SHORT
  index, exp_month = nse_nsefo_orderentry_nnf_v9_50.exp_month.dissect(buffer, index, packet, parent)

  -- Exp Year: SHORT
  index, exp_year = nse_nsefo_orderentry_nnf_v9_50.exp_year.dissect(buffer, index, packet, parent)

  -- Option Type: CHAR
  index, option_type = nse_nsefo_orderentry_nnf_v9_50.option_type.dissect(buffer, index, packet, parent)

  -- Strike Price: LONG
  index, strike_price = nse_nsefo_orderentry_nnf_v9_50.strike_price.dissect(buffer, index, packet, parent)

  -- Bid Price: LONG
  index, bid_price = nse_nsefo_orderentry_nnf_v9_50.bid_price.dissect(buffer, index, packet, parent)

  -- Ask Price: LONG
  index, ask_price = nse_nsefo_orderentry_nnf_v9_50.ask_price.dissect(buffer, index, packet, parent)

  -- Bid Size: DOUBLE
  index, bid_size = nse_nsefo_orderentry_nnf_v9_50.bid_size.dissect(buffer, index, packet, parent)

  -- Ask Size: DOUBLE
  index, ask_size = nse_nsefo_orderentry_nnf_v9_50.ask_size.dissect(buffer, index, packet, parent)

  -- Open: LONG
  index, open = nse_nsefo_orderentry_nnf_v9_50.open.dissect(buffer, index, packet, parent)

  -- High: SHORT
  index, high = nse_nsefo_orderentry_nnf_v9_50.high.dissect(buffer, index, packet, parent)

  -- Low: SHORT
  index, low = nse_nsefo_orderentry_nnf_v9_50.low.dissect(buffer, index, packet, parent)

  -- Last: LONG
  index, last = nse_nsefo_orderentry_nnf_v9_50.last.dissect(buffer, index, packet, parent)

  -- Close: LONG
  index, close = nse_nsefo_orderentry_nnf_v9_50.close.dissect(buffer, index, packet, parent)

  -- Prev Close: LONG
  index, prev_close = nse_nsefo_orderentry_nnf_v9_50.prev_close.dissect(buffer, index, packet, parent)

  -- Limit High: LONG
  index, limit_high = nse_nsefo_orderentry_nnf_v9_50.limit_high.dissect(buffer, index, packet, parent)

  -- Limit Low: LONG
  index, limit_low = nse_nsefo_orderentry_nnf_v9_50.limit_low.dissect(buffer, index, packet, parent)

  -- Total Trades: DOUBLE
  index, total_trades = nse_nsefo_orderentry_nnf_v9_50.total_trades.dissect(buffer, index, packet, parent)

  -- Open Interest: LONG LONG
  index, open_interest = nse_nsefo_orderentry_nnf_v9_50.open_interest.dissect(buffer, index, packet, parent)

  -- Filler 1: LONG
  index, filler_1 = nse_nsefo_orderentry_nnf_v9_50.filler_1.dissect(buffer, index, packet, parent)

  -- Filler 2: LONG
  index, filler_2 = nse_nsefo_orderentry_nnf_v9_50.filler_2.dissect(buffer, index, packet, parent)

  -- Filler 3: LONG
  index, filler_3 = nse_nsefo_orderentry_nnf_v9_50.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Contracts Details
nse_nsefo_orderentry_nnf_v9_50.contracts_details.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.contracts_details, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.contracts_details.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.contracts_details.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.contracts_details.fields(buffer, offset, packet, parent)
  end
end

-- Global Contracts Message
nse_nsefo_orderentry_nnf_v9_50.global_contracts_message = {}

-- Size: Global Contracts Message
nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.size =
  nse_nsefo_orderentry_nnf_v9_50.contracts_details.size

-- Display: Global Contracts Message
nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Contracts Message
nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contracts Details: Struct of 25 fields
  index, contracts_details = nse_nsefo_orderentry_nnf_v9_50.contracts_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Contracts Message
nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.global_contracts_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Details
nse_nsefo_orderentry_nnf_v9_50.index_details = {}

-- Size: Index Details
nse_nsefo_orderentry_nnf_v9_50.index_details.size =
  nse_nsefo_orderentry_nnf_v9_50.token.size + 
  nse_nsefo_orderentry_nnf_v9_50.name.size + 
  nse_nsefo_orderentry_nnf_v9_50.open.size + 
  nse_nsefo_orderentry_nnf_v9_50.high.size + 
  nse_nsefo_orderentry_nnf_v9_50.low.size + 
  nse_nsefo_orderentry_nnf_v9_50.last.size + 
  nse_nsefo_orderentry_nnf_v9_50.close.size + 
  nse_nsefo_orderentry_nnf_v9_50.prev_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.life_high.size + 
  nse_nsefo_orderentry_nnf_v9_50.life_low.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler_3.size

-- Display: Index Details
nse_nsefo_orderentry_nnf_v9_50.index_details.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Details
nse_nsefo_orderentry_nnf_v9_50.index_details.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token: LONG
  index, token = nse_nsefo_orderentry_nnf_v9_50.token.dissect(buffer, index, packet, parent)

  -- Name: CHAR
  index, name = nse_nsefo_orderentry_nnf_v9_50.name.dissect(buffer, index, packet, parent)

  -- Open: LONG
  index, open = nse_nsefo_orderentry_nnf_v9_50.open.dissect(buffer, index, packet, parent)

  -- High: SHORT
  index, high = nse_nsefo_orderentry_nnf_v9_50.high.dissect(buffer, index, packet, parent)

  -- Low: SHORT
  index, low = nse_nsefo_orderentry_nnf_v9_50.low.dissect(buffer, index, packet, parent)

  -- Last: LONG
  index, last = nse_nsefo_orderentry_nnf_v9_50.last.dissect(buffer, index, packet, parent)

  -- Close: LONG
  index, close = nse_nsefo_orderentry_nnf_v9_50.close.dissect(buffer, index, packet, parent)

  -- Prev Close: LONG
  index, prev_close = nse_nsefo_orderentry_nnf_v9_50.prev_close.dissect(buffer, index, packet, parent)

  -- Life High: LONG
  index, life_high = nse_nsefo_orderentry_nnf_v9_50.life_high.dissect(buffer, index, packet, parent)

  -- Life Low: LONG
  index, life_low = nse_nsefo_orderentry_nnf_v9_50.life_low.dissect(buffer, index, packet, parent)

  -- Filler 1: LONG
  index, filler_1 = nse_nsefo_orderentry_nnf_v9_50.filler_1.dissect(buffer, index, packet, parent)

  -- Filler 2: LONG
  index, filler_2 = nse_nsefo_orderentry_nnf_v9_50.filler_2.dissect(buffer, index, packet, parent)

  -- Filler 3: LONG
  index, filler_3 = nse_nsefo_orderentry_nnf_v9_50.filler_3.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Details
nse_nsefo_orderentry_nnf_v9_50.index_details.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_details, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.index_details.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.index_details.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.index_details.fields(buffer, offset, packet, parent)
  end
end

-- Global Indices Message
nse_nsefo_orderentry_nnf_v9_50.global_indices_message = {}

-- Size: Global Indices Message
nse_nsefo_orderentry_nnf_v9_50.global_indices_message.size =
  nse_nsefo_orderentry_nnf_v9_50.index_details.size

-- Display: Global Indices Message
nse_nsefo_orderentry_nnf_v9_50.global_indices_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Global Indices Message
nse_nsefo_orderentry_nnf_v9_50.global_indices_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Index Details: Struct of 13 fields
  index, index_details = nse_nsefo_orderentry_nnf_v9_50.index_details.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Global Indices Message
nse_nsefo_orderentry_nnf_v9_50.global_indices_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.global_indices_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.global_indices_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.global_indices_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.global_indices_message.fields(buffer, offset, packet, parent)
  end
end

-- Report Trailer Body
nse_nsefo_orderentry_nnf_v9_50.report_trailer_body = {}

-- Size: Report Trailer Body
nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.size =
  nse_nsefo_orderentry_nnf_v9_50.number_of_packets.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size

-- Display: Report Trailer Body
nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Trailer Body
nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Number Of Packets: LONG
  index, number_of_packets = nse_nsefo_orderentry_nnf_v9_50.number_of_packets.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Report Trailer Body
nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_trailer_body, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.fields(buffer, offset, packet, parent)
  end
end

-- Spd Stats Data
nse_nsefo_orderentry_nnf_v9_50.spd_stats_data = {}

-- Size: Spd Stats Data
nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.size =
  nse_nsefo_orderentry_nnf_v9_50.market_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.instrumentname_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.symbol_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.expirydate_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.optiontype_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.calevel_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.instrumentname_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.symbol_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.expirydate_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.optiontype_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.calevel_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.openpd.size + 
  nse_nsefo_orderentry_nnf_v9_50.hipd.size + 
  nse_nsefo_orderentry_nnf_v9_50.lowpd.size + 
  nse_nsefo_orderentry_nnf_v9_50.lasttradedpd.size + 
  nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded.size

-- Display: Spd Stats Data
nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spd Stats Data
nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Type: SHORT
  index, market_type = nse_nsefo_orderentry_nnf_v9_50.market_type.dissect(buffer, index, packet, parent)

  -- Instrumentname 1: CHAR
  index, instrumentname_1 = nse_nsefo_orderentry_nnf_v9_50.instrumentname_1.dissect(buffer, index, packet, parent)

  -- Symbol 1: CHAR
  index, symbol_1 = nse_nsefo_orderentry_nnf_v9_50.symbol_1.dissect(buffer, index, packet, parent)

  -- Expirydate 1: LONG
  index, expirydate_1 = nse_nsefo_orderentry_nnf_v9_50.expirydate_1.dissect(buffer, index, packet, parent)

  -- Strikeprice 1: LONG
  index, strikeprice_1 = nse_nsefo_orderentry_nnf_v9_50.strikeprice_1.dissect(buffer, index, packet, parent)

  -- Optiontype 1: CHAR
  index, optiontype_1 = nse_nsefo_orderentry_nnf_v9_50.optiontype_1.dissect(buffer, index, packet, parent)

  -- Calevel 1: SHORT
  index, calevel_1 = nse_nsefo_orderentry_nnf_v9_50.calevel_1.dissect(buffer, index, packet, parent)

  -- Instrumentname 2: CHAR
  index, instrumentname_2 = nse_nsefo_orderentry_nnf_v9_50.instrumentname_2.dissect(buffer, index, packet, parent)

  -- Symbol 2: CHAR
  index, symbol_2 = nse_nsefo_orderentry_nnf_v9_50.symbol_2.dissect(buffer, index, packet, parent)

  -- Expirydate 2: LONG
  index, expirydate_2 = nse_nsefo_orderentry_nnf_v9_50.expirydate_2.dissect(buffer, index, packet, parent)

  -- Strikeprice 2: LONG
  index, strikeprice_2 = nse_nsefo_orderentry_nnf_v9_50.strikeprice_2.dissect(buffer, index, packet, parent)

  -- Optiontype 2: CHAR
  index, optiontype_2 = nse_nsefo_orderentry_nnf_v9_50.optiontype_2.dissect(buffer, index, packet, parent)

  -- Calevel 2: SHORT
  index, calevel_2 = nse_nsefo_orderentry_nnf_v9_50.calevel_2.dissect(buffer, index, packet, parent)

  -- Openpd: LONG
  index, openpd = nse_nsefo_orderentry_nnf_v9_50.openpd.dissect(buffer, index, packet, parent)

  -- Hipd: LONG
  index, hipd = nse_nsefo_orderentry_nnf_v9_50.hipd.dissect(buffer, index, packet, parent)

  -- Lowpd: LONG
  index, lowpd = nse_nsefo_orderentry_nnf_v9_50.lowpd.dissect(buffer, index, packet, parent)

  -- Lasttradedpd: LONG
  index, lasttradedpd = nse_nsefo_orderentry_nnf_v9_50.lasttradedpd.dissect(buffer, index, packet, parent)

  -- Noofcontractstraded: LONG
  index, noofcontractstraded = nse_nsefo_orderentry_nnf_v9_50.noofcontractstraded.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spd Stats Data
nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spd_stats_data, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.fields(buffer, offset, packet, parent)
  end
end

-- Spread Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body = {}

-- Size: Spread Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.size =
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.no_of_records.size + 
  nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.size

-- Display: Spread Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- No Of Records: SHORT
  index, no_of_records = nse_nsefo_orderentry_nnf_v9_50.no_of_records.dissect(buffer, index, packet, parent)

  -- Spd Stats Data: Struct of 18 fields
  index, spd_stats_data = nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.dissect(buffer, index, packet, parent)

  -- Spd Stats Data: Struct of 18 fields
  index, spd_stats_data = nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.dissect(buffer, index, packet, parent)

  -- Spd Stats Data: Struct of 18 fields
  index, spd_stats_data = nse_nsefo_orderentry_nnf_v9_50.spd_stats_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_report_statistics_body, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.fields(buffer, offset, packet, parent)
  end
end

-- Spread Report Header Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body = {}

-- Size: Spread Report Header Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.size =
  nse_nsefo_orderentry_nnf_v9_50.org_scope.size + 
  nse_nsefo_orderentry_nnf_v9_50.report_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.brokernumber.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_name.size

-- Display: Spread Report Header Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Report Header Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Org Scope: CHAR
  index, org_scope = nse_nsefo_orderentry_nnf_v9_50.org_scope.dissect(buffer, index, packet, parent)

  -- Report Date: LONG
  index, report_date = nse_nsefo_orderentry_nnf_v9_50.report_date.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsefo_orderentry_nnf_v9_50.user_type.dissect(buffer, index, packet, parent)

  -- Brokernumber: CHAR
  index, brokernumber = nse_nsefo_orderentry_nnf_v9_50.brokernumber.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nsefo_orderentry_nnf_v9_50.broker_name.dissect(buffer, index, packet, parent)

  -- Trader Number: LONG
  index, trader_number = nse_nsefo_orderentry_nnf_v9_50.trader_number.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nsefo_orderentry_nnf_v9_50.trader_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Report Header Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_report_header_body, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.fields(buffer, offset, packet, parent)
  end
end

-- Spread Report Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_body = {}

-- Dissect: Spread Report Body
nse_nsefo_orderentry_nnf_v9_50.spread_report_body.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Spread Report Header Body
  if message_type == "H" then
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Report Header Body
  if message_type == "X" then
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Report Header Body
  if message_type == "L" then
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_header_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Report Statistics Body
  if message_type == "R" then
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Report Statistics Body
  if message_type == "Y" then
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Report Statistics Body
  if message_type == "M" then
    return nse_nsefo_orderentry_nnf_v9_50.spread_report_statistics_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Trailer Body
  if message_type == "T" then
    return nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Trailer Body
  if message_type == "Z" then
    return nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Trailer Body
  if message_type == "N" then
    return nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Spread Bhavcopy Message
nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message = {}

-- Calculate size of: Spread Bhavcopy Message
nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_orderentry_nnf_v9_50.message_type.size

  -- Calculate runtime size of Spread Report Body field
  local spread_report_body_offset = offset + index
  local spread_report_body_type = buffer(spread_report_body_offset - 1, 1):string()
  index = index + nse_nsefo_orderentry_nnf_v9_50.spread_report_body.size(buffer, spread_report_body_offset, spread_report_body_type)

  return index
end

-- Display: Spread Bhavcopy Message
nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Bhavcopy Message
nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nsefo_orderentry_nnf_v9_50.message_type.dissect(buffer, index, packet, parent)

  -- Spread Report Body: Runtime Type with 3 branches
  index = nse_nsefo_orderentry_nnf_v9_50.spread_report_body.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Spread Bhavcopy Message
nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_bhavcopy_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.fields(buffer, offset, packet, parent)
  end
end

-- Index Data
nse_nsefo_orderentry_nnf_v9_50.index_data = {}

-- Size: Index Data
nse_nsefo_orderentry_nnf_v9_50.index_data.size =
  nse_nsefo_orderentry_nnf_v9_50.sector_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_value.size

-- Display: Index Data
nse_nsefo_orderentry_nnf_v9_50.index_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Index Data
nse_nsefo_orderentry_nnf_v9_50.index_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sector Name: CHAR
  index, sector_name = nse_nsefo_orderentry_nnf_v9_50.sector_name.dissect(buffer, index, packet, parent)

  -- Index Value: LONG
  index, index_value = nse_nsefo_orderentry_nnf_v9_50.index_value.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Index Data
nse_nsefo_orderentry_nnf_v9_50.index_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.index_data, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.index_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.index_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.index_data.fields(buffer, offset, packet, parent)
  end
end

-- Sector Index Report Message
nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message = {}

-- Size: Sector Index Report Message
nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.size =
  nse_nsefo_orderentry_nnf_v9_50.message_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_data.size

-- Display: Sector Index Report Message
nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sector Index Report Message
nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nsefo_orderentry_nnf_v9_50.message_type.dissect(buffer, index, packet, parent)

  -- Industry Name: CHAR
  index, industry_name = nse_nsefo_orderentry_nnf_v9_50.industry_name.dissect(buffer, index, packet, parent)

  -- Number Of Industry Records: SHORT
  index, number_of_industry_records = nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  -- Index Data: Struct of 2 fields
  index, index_data = nse_nsefo_orderentry_nnf_v9_50.index_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sector Index Report Message
nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sector_index_report_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Industry Index
nse_nsefo_orderentry_nnf_v9_50.industry_index = {}

-- Size: Industry Index
nse_nsefo_orderentry_nnf_v9_50.industry_index.size =
  nse_nsefo_orderentry_nnf_v9_50.industry_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.opening.size + 
  nse_nsefo_orderentry_nnf_v9_50.high.size + 
  nse_nsefo_orderentry_nnf_v9_50.low.size + 
  nse_nsefo_orderentry_nnf_v9_50.closing.size + 
  nse_nsefo_orderentry_nnf_v9_50.start.size

-- Display: Industry Index
nse_nsefo_orderentry_nnf_v9_50.industry_index.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Industry Index
nse_nsefo_orderentry_nnf_v9_50.industry_index.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Industry Name: CHAR
  index, industry_name = nse_nsefo_orderentry_nnf_v9_50.industry_name.dissect(buffer, index, packet, parent)

  -- Opening: SHORT
  index, opening = nse_nsefo_orderentry_nnf_v9_50.opening.dissect(buffer, index, packet, parent)

  -- High: SHORT
  index, high = nse_nsefo_orderentry_nnf_v9_50.high.dissect(buffer, index, packet, parent)

  -- Low: SHORT
  index, low = nse_nsefo_orderentry_nnf_v9_50.low.dissect(buffer, index, packet, parent)

  -- Closing: SHORT
  index, closing = nse_nsefo_orderentry_nnf_v9_50.closing.dissect(buffer, index, packet, parent)

  -- Start: SHORT
  index, start = nse_nsefo_orderentry_nnf_v9_50.start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Industry Index
nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.industry_index, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.industry_index.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.industry_index.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.industry_index.fields(buffer, offset, packet, parent)
  end
end

-- Industry Index Report Message
nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message = {}

-- Size: Industry Index Report Message
nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.size =
  nse_nsefo_orderentry_nnf_v9_50.message_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.industry_index.size

-- Display: Industry Index Report Message
nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Industry Index Report Message
nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nsefo_orderentry_nnf_v9_50.message_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Industry Records: SHORT
  index, number_of_industry_records = nse_nsefo_orderentry_nnf_v9_50.number_of_industry_records.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  -- Industry Index: Struct of 6 fields
  index, industry_index = nse_nsefo_orderentry_nnf_v9_50.industry_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Industry Index Report Message
nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.industry_index_report_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Mkt Index
nse_nsefo_orderentry_nnf_v9_50.mkt_index = {}

-- Size: Mkt Index
nse_nsefo_orderentry_nnf_v9_50.mkt_index.size =
  nse_nsefo_orderentry_nnf_v9_50.opening.size + 
  nse_nsefo_orderentry_nnf_v9_50.high.size + 
  nse_nsefo_orderentry_nnf_v9_50.low.size + 
  nse_nsefo_orderentry_nnf_v9_50.closing.size + 
  nse_nsefo_orderentry_nnf_v9_50.start.size

-- Display: Mkt Index
nse_nsefo_orderentry_nnf_v9_50.mkt_index.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mkt Index
nse_nsefo_orderentry_nnf_v9_50.mkt_index.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Opening: SHORT
  index, opening = nse_nsefo_orderentry_nnf_v9_50.opening.dissect(buffer, index, packet, parent)

  -- High: SHORT
  index, high = nse_nsefo_orderentry_nnf_v9_50.high.dissect(buffer, index, packet, parent)

  -- Low: SHORT
  index, low = nse_nsefo_orderentry_nnf_v9_50.low.dissect(buffer, index, packet, parent)

  -- Closing: SHORT
  index, closing = nse_nsefo_orderentry_nnf_v9_50.closing.dissect(buffer, index, packet, parent)

  -- Start: SHORT
  index, start = nse_nsefo_orderentry_nnf_v9_50.start.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mkt Index
nse_nsefo_orderentry_nnf_v9_50.mkt_index.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_index, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.mkt_index.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.mkt_index.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.mkt_index.fields(buffer, offset, packet, parent)
  end
end

-- Market Index Report Message
nse_nsefo_orderentry_nnf_v9_50.market_index_report_message = {}

-- Size: Market Index Report Message
nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.size =
  nse_nsefo_orderentry_nnf_v9_50.message_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.index_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_index.size

-- Display: Market Index Report Message
nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Index Report Message
nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nsefo_orderentry_nnf_v9_50.message_type.dissect(buffer, index, packet, parent)

  -- Index Name: CHAR
  index, index_name = nse_nsefo_orderentry_nnf_v9_50.index_name.dissect(buffer, index, packet, parent)

  -- Mkt Index: Struct of 5 fields
  index, mkt_index = nse_nsefo_orderentry_nnf_v9_50.mkt_index.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Market Index Report Message
nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_index_report_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Enhncd Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data = {}

-- Size: Enhncd Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.size =
  nse_nsefo_orderentry_nnf_v9_50.contract_desc.size + 
  nse_nsefo_orderentry_nnf_v9_50.market_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.high_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.low_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.closing_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_value_traded.size + 
  nse_nsefo_orderentry_nnf_v9_50.previous_close_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_interest.size + 
  nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.size + 
  nse_nsefo_orderentry_nnf_v9_50.indicator.size

-- Display: Enhncd Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhncd Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsefo_orderentry_nnf_v9_50.market_type.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsefo_orderentry_nnf_v9_50.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsefo_orderentry_nnf_v9_50.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsefo_orderentry_nnf_v9_50.low_price.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsefo_orderentry_nnf_v9_50.closing_price.dissect(buffer, index, packet, parent)

  -- Total Quantity Traded: LONG LONG
  index, total_quantity_traded = nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.dissect(buffer, index, packet, parent)

  -- Total Value Traded: DOUBLE
  index, total_value_traded = nse_nsefo_orderentry_nnf_v9_50.total_value_traded.dissect(buffer, index, packet, parent)

  -- Previous Close Price: LONG
  index, previous_close_price = nse_nsefo_orderentry_nnf_v9_50.previous_close_price.dissect(buffer, index, packet, parent)

  -- Open Interest: LONG LONG
  index, open_interest = nse_nsefo_orderentry_nnf_v9_50.open_interest.dissect(buffer, index, packet, parent)

  -- Chg Open Interest: LONG LONG
  index, chg_open_interest = nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.dissect(buffer, index, packet, parent)

  -- Indicator: CHAR
  index, indicator = nse_nsefo_orderentry_nnf_v9_50.indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhncd Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.enhncd_mkt_stats_data, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.fields(buffer, offset, packet, parent)
  end
end

-- Enhanced Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message = {}

-- Size: Enhanced Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.size =
  nse_nsefo_orderentry_nnf_v9_50.message_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.number_of_records.size + 
  nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.size

-- Display: Enhanced Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Enhanced Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nsefo_orderentry_nnf_v9_50.message_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsefo_orderentry_nnf_v9_50.number_of_records.dissect(buffer, index, packet, parent)

  -- Enhncd Mkt Stats Data: Struct of 12 fields
  index, enhncd_mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.dissect(buffer, index, packet, parent)

  -- Enhncd Mkt Stats Data: Struct of 12 fields
  index, enhncd_mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.dissect(buffer, index, packet, parent)

  -- Enhncd Mkt Stats Data: Struct of 12 fields
  index, enhncd_mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.dissect(buffer, index, packet, parent)

  -- Enhncd Mkt Stats Data: Struct of 12 fields
  index, enhncd_mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.enhncd_mkt_stats_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Enhanced Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.enhanced_market_statistics_report_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data = {}

-- Size: Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.size =
  nse_nsefo_orderentry_nnf_v9_50.contract_desc.size + 
  nse_nsefo_orderentry_nnf_v9_50.market_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.high_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.low_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.closing_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.size + 
  nse_nsefo_orderentry_nnf_v9_50.total_value_traded.size + 
  nse_nsefo_orderentry_nnf_v9_50.previous_close_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_interest.size + 
  nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.size + 
  nse_nsefo_orderentry_nnf_v9_50.indicator.size

-- Display: Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect(buffer, index, packet, parent)

  -- Market Type: SHORT
  index, market_type = nse_nsefo_orderentry_nnf_v9_50.market_type.dissect(buffer, index, packet, parent)

  -- Open Price: LONG
  index, open_price = nse_nsefo_orderentry_nnf_v9_50.open_price.dissect(buffer, index, packet, parent)

  -- High Price: LONG
  index, high_price = nse_nsefo_orderentry_nnf_v9_50.high_price.dissect(buffer, index, packet, parent)

  -- Low Price: LONG
  index, low_price = nse_nsefo_orderentry_nnf_v9_50.low_price.dissect(buffer, index, packet, parent)

  -- Closing Price: LONG
  index, closing_price = nse_nsefo_orderentry_nnf_v9_50.closing_price.dissect(buffer, index, packet, parent)

  -- Total Quantity Traded: LONG LONG
  index, total_quantity_traded = nse_nsefo_orderentry_nnf_v9_50.total_quantity_traded.dissect(buffer, index, packet, parent)

  -- Total Value Traded: DOUBLE
  index, total_value_traded = nse_nsefo_orderentry_nnf_v9_50.total_value_traded.dissect(buffer, index, packet, parent)

  -- Previous Close Price: LONG
  index, previous_close_price = nse_nsefo_orderentry_nnf_v9_50.previous_close_price.dissect(buffer, index, packet, parent)

  -- Open Interest: LONG LONG
  index, open_interest = nse_nsefo_orderentry_nnf_v9_50.open_interest.dissect(buffer, index, packet, parent)

  -- Chg Open Interest: LONG LONG
  index, chg_open_interest = nse_nsefo_orderentry_nnf_v9_50.chg_open_interest.dissect(buffer, index, packet, parent)

  -- Indicator: CHAR
  index, indicator = nse_nsefo_orderentry_nnf_v9_50.indicator.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Mkt Stats Data
nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.mkt_stats_data, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.fields(buffer, offset, packet, parent)
  end
end

-- Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.report_statistics_body = {}

-- Size: Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.size =
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.number_of_records.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.size

-- Display: Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Number Of Records: SHORT
  index, number_of_records = nse_nsefo_orderentry_nnf_v9_50.number_of_records.dissect(buffer, index, packet, parent)

  -- Mkt Stats Data: Struct of 12 fields
  index, mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.dissect(buffer, index, packet, parent)

  -- Mkt Stats Data: Struct of 12 fields
  index, mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.dissect(buffer, index, packet, parent)

  -- Mkt Stats Data: Struct of 12 fields
  index, mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.dissect(buffer, index, packet, parent)

  -- Mkt Stats Data: Struct of 12 fields
  index, mkt_stats_data = nse_nsefo_orderentry_nnf_v9_50.mkt_stats_data.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Report Statistics Body
nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_statistics_body, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.fields(buffer, offset, packet, parent)
  end
end

-- Report Header Body
nse_nsefo_orderentry_nnf_v9_50.report_header_body = {}

-- Size: Report Header Body
nse_nsefo_orderentry_nnf_v9_50.report_header_body.size =
  nse_nsefo_orderentry_nnf_v9_50.org_scope.size + 
  nse_nsefo_orderentry_nnf_v9_50.report_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.firm_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_name.size

-- Display: Report Header Body
nse_nsefo_orderentry_nnf_v9_50.report_header_body.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Report Header Body
nse_nsefo_orderentry_nnf_v9_50.report_header_body.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Org Scope: CHAR
  index, org_scope = nse_nsefo_orderentry_nnf_v9_50.org_scope.dissect(buffer, index, packet, parent)

  -- Report Date: LONG
  index, report_date = nse_nsefo_orderentry_nnf_v9_50.report_date.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsefo_orderentry_nnf_v9_50.user_type.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Firm Name: CHAR
  index, firm_name = nse_nsefo_orderentry_nnf_v9_50.firm_name.dissect(buffer, index, packet, parent)

  -- Trader Number: LONG
  index, trader_number = nse_nsefo_orderentry_nnf_v9_50.trader_number.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nsefo_orderentry_nnf_v9_50.trader_name.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Report Header Body
nse_nsefo_orderentry_nnf_v9_50.report_header_body.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.report_header_body, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.report_header_body.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.report_header_body.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.report_header_body.fields(buffer, offset, packet, parent)
  end
end

-- Report Body
nse_nsefo_orderentry_nnf_v9_50.report_body = {}

-- Dissect: Report Body
nse_nsefo_orderentry_nnf_v9_50.report_body.dissect = function(buffer, offset, packet, parent, message_type)
  -- Dissect Report Header Body
  if message_type == "H" then
    return nse_nsefo_orderentry_nnf_v9_50.report_header_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Header Body
  if message_type == "X" then
    return nse_nsefo_orderentry_nnf_v9_50.report_header_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Header Body
  if message_type == "L" then
    return nse_nsefo_orderentry_nnf_v9_50.report_header_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Statistics Body
  if message_type == "R" then
    return nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Statistics Body
  if message_type == "Y" then
    return nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Statistics Body
  if message_type == "M" then
    return nse_nsefo_orderentry_nnf_v9_50.report_statistics_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Trailer Body
  if message_type == "T" then
    return nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Trailer Body
  if message_type == "Z" then
    return nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Report Trailer Body
  if message_type == "N" then
    return nse_nsefo_orderentry_nnf_v9_50.report_trailer_body.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message = {}

-- Calculate size of: Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_orderentry_nnf_v9_50.message_type.size

  -- Calculate runtime size of Report Body field
  local report_body_offset = offset + index
  local report_body_type = buffer(report_body_offset - 1, 1):string()
  index = index + nse_nsefo_orderentry_nnf_v9_50.report_body.size(buffer, report_body_offset, report_body_type)

  return index
end

-- Display: Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Message Type: CHAR
  index, message_type = nse_nsefo_orderentry_nnf_v9_50.message_type.dissect(buffer, index, packet, parent)

  -- Report Body: Runtime Type with 3 branches
  index = nse_nsefo_orderentry_nnf_v9_50.report_body.dissect(buffer, index, packet, parent, message_type)

  return index
end

-- Dissect: Market Statistics Report Message
nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.market_statistics_report_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.fields(buffer, offset, packet, parent)
  end
end

-- Control Message To Trader Message
nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message = {}

-- Size: Control Message To Trader Message
nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.size =
  nse_nsefo_orderentry_nnf_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.action_code.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length.size + 
  nse_nsefo_orderentry_nnf_v9_50.broad_cast_message.size

-- Display: Control Message To Trader Message
nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Control Message To Trader Message
nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnf_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Action Code: CHAR
  index, action_code = nse_nsefo_orderentry_nnf_v9_50.action_code.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Broad Cast Message Length: SHORT
  index, broad_cast_message_length = nse_nsefo_orderentry_nnf_v9_50.broad_cast_message_length.dissect(buffer, index, packet, parent)

  -- Broad Cast Message: CHAR
  index, broad_cast_message = nse_nsefo_orderentry_nnf_v9_50.broad_cast_message.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Control Message To Trader Message
nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.control_message_to_trader_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message = {}

-- Size: Spread Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.size =
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff.size + 
  nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff.size

-- Display: Spread Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Spd Ord Qty Buff: DOUBLE
  index, spd_ord_qty_buff = nse_nsefo_orderentry_nnf_v9_50.spd_ord_qty_buff.dissect(buffer, index, packet, parent)

  -- Spd Ord Val Buff: DOUBLE
  index, spd_ord_val_buff = nse_nsefo_orderentry_nnf_v9_50.spd_ord_val_buff.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_order_limit_update_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Dealer Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message = {}

-- Size: Dealer Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.size =
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff.size + 
  nse_nsefo_orderentry_nnf_v9_50.ord_val_buff.size

-- Display: Dealer Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Dealer Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Ord Qty Buff: DOUBLE
  index, ord_qty_buff = nse_nsefo_orderentry_nnf_v9_50.ord_qty_buff.dissect(buffer, index, packet, parent)

  -- Ord Val Buff: DOUBLE
  index, ord_val_buff = nse_nsefo_orderentry_nnf_v9_50.ord_val_buff.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Dealer Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.dealer_limit_update_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Instrument User
nse_nsefo_orderentry_nnf_v9_50.instrument_user = {}

-- Size: Instrument User
nse_nsefo_orderentry_nnf_v9_50.instrument_user.size =
  nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit.size

-- Display: Instrument User
nse_nsefo_orderentry_nnf_v9_50.instrument_user.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Instrument User
nse_nsefo_orderentry_nnf_v9_50.instrument_user.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Branch Buy Value Limit: DOUBLE
  index, branch_buy_value_limit = nse_nsefo_orderentry_nnf_v9_50.branch_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Sell Value Limit: DOUBLE
  index, branch_sell_value_limit = nse_nsefo_orderentry_nnf_v9_50.branch_sell_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Used Buy Value Limit: DOUBLE
  index, branch_used_buy_value_limit = nse_nsefo_orderentry_nnf_v9_50.branch_used_buy_value_limit.dissect(buffer, index, packet, parent)

  -- Branch Used Sell Value Limit: DOUBLE
  index, branch_used_sell_value_limit = nse_nsefo_orderentry_nnf_v9_50.branch_used_sell_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Buy Value Limit: DOUBLE
  index, user_order_buy_value_limit = nse_nsefo_orderentry_nnf_v9_50.user_order_buy_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Sell Value Limit: DOUBLE
  index, user_order_sell_value_limit = nse_nsefo_orderentry_nnf_v9_50.user_order_sell_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Used Buy Value Limit: DOUBLE
  index, user_order_used_buy_value_limit = nse_nsefo_orderentry_nnf_v9_50.user_order_used_buy_value_limit.dissect(buffer, index, packet, parent)

  -- User Order Used Sell Value Limit: DOUBLE
  index, user_order_used_sell_value_limit = nse_nsefo_orderentry_nnf_v9_50.user_order_used_sell_value_limit.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Instrument User
nse_nsefo_orderentry_nnf_v9_50.instrument_user.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.instrument_user, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.instrument_user.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.instrument_user.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.instrument_user.fields(buffer, offset, packet, parent)
  end
end

-- User Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message = {}

-- Size: User Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.size =
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.instrument_user.size + 
  nse_nsefo_orderentry_nnf_v9_50.instrument_user.size

-- Display: User Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: User Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnf_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- User Name: CHAR
  index, user_name = nse_nsefo_orderentry_nnf_v9_50.user_name.dissect(buffer, index, packet, parent)

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsefo_orderentry_nnf_v9_50.user_type.dissect(buffer, index, packet, parent)

  -- Instrument User: Struct of 8 fields
  index, instrument_user = nse_nsefo_orderentry_nnf_v9_50.instrument_user.dissect(buffer, index, packet, parent)

  -- Instrument User: Struct of 8 fields
  index, instrument_user = nse_nsefo_orderentry_nnf_v9_50.instrument_user.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: User Order Limit Update Message
nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.user_order_limit_update_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message = {}

-- Size: Trade Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.size =
  nse_nsefo_orderentry_nnf_v9_50.response_order_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.account_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.size + 
  nse_nsefo_orderentry_nnf_v9_50.original_volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.remaining_volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.size + 
  nse_nsefo_orderentry_nnf_v9_50.price.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.good_till_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_quantity.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.size + 
  nse_nsefo_orderentry_nnf_v9_50.activity_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.activity_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.counter_broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.token.size + 
  nse_nsefo_orderentry_nnf_v9_50.contract_desc.size + 
  nse_nsefo_orderentry_nnf_v9_50.open_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.old_open_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.book_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_4.size + 
  nse_nsefo_orderentry_nnf_v9_50.old_account_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.participant.size + 
  nse_nsefo_orderentry_nnf_v9_50.old_participant.size + 
  nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.pan.size + 
  nse_nsefo_orderentry_nnf_v9_50.old_pan.size + 
  nse_nsefo_orderentry_nnf_v9_50.algo_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_52.size

-- Display: Trade Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Response Order Number: DOUBLE
  index, response_order_number = nse_nsefo_orderentry_nnf_v9_50.response_order_number.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Trader Number: LONG
  index, trader_number = nse_nsefo_orderentry_nnf_v9_50.trader_number.dissect(buffer, index, packet, parent)

  -- Account Number: CHAR
  index, account_number = nse_nsefo_orderentry_nnf_v9_50.account_number.dissect(buffer, index, packet, parent)

  -- Buy Sell Indicator: SHORT
  index, buy_sell_indicator = nse_nsefo_orderentry_nnf_v9_50.buy_sell_indicator.dissect(buffer, index, packet, parent)

  -- Original Volume: LONG
  index, original_volume = nse_nsefo_orderentry_nnf_v9_50.original_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume: LONG
  index, disclosed_volume = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume.dissect(buffer, index, packet, parent)

  -- Remaining Volume: LONG
  index, remaining_volume = nse_nsefo_orderentry_nnf_v9_50.remaining_volume.dissect(buffer, index, packet, parent)

  -- Disclosed Volume Remaining: LONG
  index, disclosed_volume_remaining = nse_nsefo_orderentry_nnf_v9_50.disclosed_volume_remaining.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_orderentry_nnf_v9_50.price.dissect(buffer, index, packet, parent)

  -- St Order Flags: Struct of 15 fields
  index, st_order_flags = nse_nsefo_orderentry_nnf_v9_50.st_order_flags.dissect(buffer, index, packet, parent)

  -- Good Till Date: LONG
  index, good_till_date = nse_nsefo_orderentry_nnf_v9_50.good_till_date.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsefo_orderentry_nnf_v9_50.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Quantity: LONG
  index, fill_quantity = nse_nsefo_orderentry_nnf_v9_50.fill_quantity.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsefo_orderentry_nnf_v9_50.fill_price.dissect(buffer, index, packet, parent)

  -- Volume Filled Today: LONG
  index, volume_filled_today = nse_nsefo_orderentry_nnf_v9_50.volume_filled_today.dissect(buffer, index, packet, parent)

  -- Activity Type: CHAR
  index, activity_type = nse_nsefo_orderentry_nnf_v9_50.activity_type.dissect(buffer, index, packet, parent)

  -- Activity Time: LONG
  index, activity_time = nse_nsefo_orderentry_nnf_v9_50.activity_time.dissect(buffer, index, packet, parent)

  -- Counter Trader Order Number: DOUBLE
  index, counter_trader_order_number = nse_nsefo_orderentry_nnf_v9_50.counter_trader_order_number.dissect(buffer, index, packet, parent)

  -- Counter Broker Id: CHAR
  index, counter_broker_id = nse_nsefo_orderentry_nnf_v9_50.counter_broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Token: LONG
  index, token = nse_nsefo_orderentry_nnf_v9_50.token.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect(buffer, index, packet, parent)

  -- Open Close: CHAR
  index, open_close = nse_nsefo_orderentry_nnf_v9_50.open_close.dissect(buffer, index, packet, parent)

  -- Old Open Close: CHAR
  index, old_open_close = nse_nsefo_orderentry_nnf_v9_50.old_open_close.dissect(buffer, index, packet, parent)

  -- Book Type: CHAR
  index, book_type = nse_nsefo_orderentry_nnf_v9_50.book_type.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 4: LONG
  index, reserved_4 = nse_nsefo_orderentry_nnf_v9_50.reserved_4.dissect(buffer, index, packet, parent)

  -- Old Account Number: CHAR
  index, old_account_number = nse_nsefo_orderentry_nnf_v9_50.old_account_number.dissect(buffer, index, packet, parent)

  -- Participant: CHAR
  index, participant = nse_nsefo_orderentry_nnf_v9_50.participant.dissect(buffer, index, packet, parent)

  -- Old Participant: CHAR
  index, old_participant = nse_nsefo_orderentry_nnf_v9_50.old_participant.dissect(buffer, index, packet, parent)

  -- Additional Order Flags: Struct of 5 fields
  index, additional_order_flags = nse_nsefo_orderentry_nnf_v9_50.additional_order_flags.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Pan: CHAR
  index, pan = nse_nsefo_orderentry_nnf_v9_50.pan.dissect(buffer, index, packet, parent)

  -- Old Pan: CHAR
  index, old_pan = nse_nsefo_orderentry_nnf_v9_50.old_pan.dissect(buffer, index, packet, parent)

  -- Algo Id: LONG
  index, algo_id = nse_nsefo_orderentry_nnf_v9_50.algo_id.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 52: CHAR
  index, reserved_52 = nse_nsefo_orderentry_nnf_v9_50.reserved_52.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Confirmation Message
nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trade_confirmation_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.fields(buffer, offset, packet, parent)
  end
end

-- Spread Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message = {}

-- Size: Spread Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.size =
  nse_nsefo_orderentry_nnf_v9_50.spread_order_body.size

-- Display: Spread Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Spread Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Spread Order Body: Struct of 55 fields
  index, spread_order_body = nse_nsefo_orderentry_nnf_v9_50.spread_order_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Spread Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spread_order_entry_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Trade Inquiry Message
nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message = {}

-- Size: Trade Inquiry Message
nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.size =
  nse_nsefo_orderentry_nnf_v9_50.token_no.size + 
  nse_nsefo_orderentry_nnf_v9_50.contract_desc.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_quantity.size + 
  nse_nsefo_orderentry_nnf_v9_50.fill_price.size + 
  nse_nsefo_orderentry_nnf_v9_50.mkt_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_open_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_4.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.sell_broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.requested_by.size + 
  nse_nsefo_orderentry_nnf_v9_50.sell_open_close.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_account_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.sell_account_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_24.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_pan.size + 
  nse_nsefo_orderentry_nnf_v9_50.sell_pan.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_60.size

-- Display: Trade Inquiry Message
nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Trade Inquiry Message
nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token No: LONG
  index, token_no = nse_nsefo_orderentry_nnf_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Contract Desc: Struct of 6 fields
  index, contract_desc = nse_nsefo_orderentry_nnf_v9_50.contract_desc.dissect(buffer, index, packet, parent)

  -- Fill Number: LONG
  index, fill_number = nse_nsefo_orderentry_nnf_v9_50.fill_number.dissect(buffer, index, packet, parent)

  -- Fill Quantity: LONG
  index, fill_quantity = nse_nsefo_orderentry_nnf_v9_50.fill_quantity.dissect(buffer, index, packet, parent)

  -- Fill Price: LONG
  index, fill_price = nse_nsefo_orderentry_nnf_v9_50.fill_price.dissect(buffer, index, packet, parent)

  -- Mkt Type: CHAR
  index, mkt_type = nse_nsefo_orderentry_nnf_v9_50.mkt_type.dissect(buffer, index, packet, parent)

  -- Buy Open Close: CHAR
  index, buy_open_close = nse_nsefo_orderentry_nnf_v9_50.buy_open_close.dissect(buffer, index, packet, parent)

  -- Reserved 4: LONG
  index, reserved_4 = nse_nsefo_orderentry_nnf_v9_50.reserved_4.dissect(buffer, index, packet, parent)

  -- Buy Broker Id: CHAR
  index, buy_broker_id = nse_nsefo_orderentry_nnf_v9_50.buy_broker_id.dissect(buffer, index, packet, parent)

  -- Sell Broker Id: CHAR
  index, sell_broker_id = nse_nsefo_orderentry_nnf_v9_50.sell_broker_id.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnf_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Requested By: CHAR
  index, requested_by = nse_nsefo_orderentry_nnf_v9_50.requested_by.dissect(buffer, index, packet, parent)

  -- Sell Open Close: CHAR
  index, sell_open_close = nse_nsefo_orderentry_nnf_v9_50.sell_open_close.dissect(buffer, index, packet, parent)

  -- Buy Account Number: CHAR
  index, buy_account_number = nse_nsefo_orderentry_nnf_v9_50.buy_account_number.dissect(buffer, index, packet, parent)

  -- Sell Account Number: CHAR
  index, sell_account_number = nse_nsefo_orderentry_nnf_v9_50.sell_account_number.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsefo_orderentry_nnf_v9_50.reserved_24.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Buy Pan: CHAR
  index, buy_pan = nse_nsefo_orderentry_nnf_v9_50.buy_pan.dissect(buffer, index, packet, parent)

  -- Sell Pan: CHAR
  index, sell_pan = nse_nsefo_orderentry_nnf_v9_50.sell_pan.dissect(buffer, index, packet, parent)

  -- Reserved 60: CHAR
  index, reserved_60 = nse_nsefo_orderentry_nnf_v9_50.reserved_60.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Trade Inquiry Message
nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.trade_inquiry_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.fields(buffer, offset, packet, parent)
  end
end

-- Price Modification Message
nse_nsefo_orderentry_nnf_v9_50.price_modification_message = {}

-- Size: Price Modification Message
nse_nsefo_orderentry_nnf_v9_50.price_modification_message.size =
  nse_nsefo_orderentry_nnf_v9_50.token_no.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.order_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.buy_sell.size + 
  nse_nsefo_orderentry_nnf_v9_50.price.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_modified.size + 
  nse_nsefo_orderentry_nnf_v9_50.reference.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_24.size

-- Display: Price Modification Message
nse_nsefo_orderentry_nnf_v9_50.price_modification_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Price Modification Message
nse_nsefo_orderentry_nnf_v9_50.price_modification_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Token No: LONG
  index, token_no = nse_nsefo_orderentry_nnf_v9_50.token_no.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnf_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Order Number: DOUBLE
  index, order_number = nse_nsefo_orderentry_nnf_v9_50.order_number.dissect(buffer, index, packet, parent)

  -- Buy Sell: SHORT
  index, buy_sell = nse_nsefo_orderentry_nnf_v9_50.buy_sell.dissect(buffer, index, packet, parent)

  -- Price: LONG
  index, price = nse_nsefo_orderentry_nnf_v9_50.price.dissect(buffer, index, packet, parent)

  -- Volume: LONG
  index, volume = nse_nsefo_orderentry_nnf_v9_50.volume.dissect(buffer, index, packet, parent)

  -- Last Modified: LONG
  index, last_modified = nse_nsefo_orderentry_nnf_v9_50.last_modified.dissect(buffer, index, packet, parent)

  -- Reference: CHAR
  index, reference = nse_nsefo_orderentry_nnf_v9_50.reference.dissect(buffer, index, packet, parent)

  -- Last Activity Reference: LONG LONG
  index, last_activity_reference = nse_nsefo_orderentry_nnf_v9_50.last_activity_reference.dissect(buffer, index, packet, parent)

  -- Reserved 24: CHAR
  index, reserved_24 = nse_nsefo_orderentry_nnf_v9_50.reserved_24.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Price Modification Message
nse_nsefo_orderentry_nnf_v9_50.price_modification_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.price_modification_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.price_modification_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.price_modification_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.price_modification_message.fields(buffer, offset, packet, parent)
  end
end

-- Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.order_entry_message = {}

-- Size: Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.order_entry_message.size =
  nse_nsefo_orderentry_nnf_v9_50.order_entry_body.size

-- Display: Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.order_entry_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.order_entry_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Order Entry Body: Struct of 52 fields
  index, order_entry_body = nse_nsefo_orderentry_nnf_v9_50.order_entry_body.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Order Entry Message
nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.order_entry_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.order_entry_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.order_entry_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Download Data
nse_nsefo_orderentry_nnf_v9_50.message_download_data = {}

-- Display: Message Download Data
nse_nsefo_orderentry_nnf_v9_50.message_download_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Download Data
nse_nsefo_orderentry_nnf_v9_50.message_download_data.fields = function(buffer, offset, packet, parent, size_of_message_download_data)
  local index = offset

  -- Download Payload: 0 Byte
  index, download_payload = nse_nsefo_orderentry_nnf_v9_50.download_payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Download Data
nse_nsefo_orderentry_nnf_v9_50.message_download_data.dissect = function(buffer, offset, packet, parent, size_of_message_download_data)
  local index = offset + size_of_message_download_data

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_download_data, buffer(offset, 0))
    local current = nse_nsefo_orderentry_nnf_v9_50.message_download_data.fields(buffer, offset, packet, parent, size_of_message_download_data)
    parent:set_len(size_of_message_download_data)
    local display = nse_nsefo_orderentry_nnf_v9_50.message_download_data.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_orderentry_nnf_v9_50.message_download_data.fields(buffer, offset, packet, parent, size_of_message_download_data)

    return index
  end
end

-- Inner Header
nse_nsefo_orderentry_nnf_v9_50.inner_header = {}

-- Size: Inner Header
nse_nsefo_orderentry_nnf_v9_50.inner_header.size =
  nse_nsefo_orderentry_nnf_v9_50.inner_trader_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_log_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_error_code.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_timestamp.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.inner_message_length.size

-- Display: Inner Header
nse_nsefo_orderentry_nnf_v9_50.inner_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Inner Header
nse_nsefo_orderentry_nnf_v9_50.inner_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Trader Id: LONG
  index, inner_trader_id = nse_nsefo_orderentry_nnf_v9_50.inner_trader_id.dissect(buffer, index, packet, parent)

  -- Inner Log Time: LONG
  index, inner_log_time = nse_nsefo_orderentry_nnf_v9_50.inner_log_time.dissect(buffer, index, packet, parent)

  -- Inner Alpha Char: CHAR
  index, inner_alpha_char = nse_nsefo_orderentry_nnf_v9_50.inner_alpha_char.dissect(buffer, index, packet, parent)

  -- Inner Transaction Code: SHORT
  index, inner_transaction_code = nse_nsefo_orderentry_nnf_v9_50.inner_transaction_code.dissect(buffer, index, packet, parent)

  -- Inner Error Code: SHORT
  index, inner_error_code = nse_nsefo_orderentry_nnf_v9_50.inner_error_code.dissect(buffer, index, packet, parent)

  -- Inner Timestamp: LONG LONG
  index, inner_timestamp = nse_nsefo_orderentry_nnf_v9_50.inner_timestamp.dissect(buffer, index, packet, parent)

  -- Inner Time Stamp 1: CHAR
  index, inner_time_stamp_1 = nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_1.dissect(buffer, index, packet, parent)

  -- Inner Time Stamp 2: CHAR
  index, inner_time_stamp_2 = nse_nsefo_orderentry_nnf_v9_50.inner_time_stamp_2.dissect(buffer, index, packet, parent)

  -- Inner Message Length: SHORT
  index, inner_message_length = nse_nsefo_orderentry_nnf_v9_50.inner_message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Inner Header
nse_nsefo_orderentry_nnf_v9_50.inner_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.inner_header, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.inner_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.inner_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.inner_header.fields(buffer, offset, packet, parent)
  end
end

-- Message Record Message
nse_nsefo_orderentry_nnf_v9_50.message_record_message = {}

-- Calculate size of: Message Record Message
nse_nsefo_orderentry_nnf_v9_50.message_record_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_orderentry_nnf_v9_50.inner_header.size

  -- Parse runtime size of: Message Download Data
  index = index + buffer(offset + index - 42, 2):int()

  return index
end

-- Display: Message Record Message
nse_nsefo_orderentry_nnf_v9_50.message_record_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Record Message
nse_nsefo_orderentry_nnf_v9_50.message_record_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Header: Struct of 9 fields
  index, inner_header = nse_nsefo_orderentry_nnf_v9_50.inner_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Runtime Size Of: Message Download Data
  local size_of_message_download_data = message_length - 80

  -- Message Download Data: Struct of 1 fields
  index, message_download_data = nse_nsefo_orderentry_nnf_v9_50.message_download_data.dissect(buffer, index, packet, parent, size_of_message_download_data)

  return index
end

-- Dissect: Message Record Message
nse_nsefo_orderentry_nnf_v9_50.message_record_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_record_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.message_record_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.message_record_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.message_record_message.fields(buffer, offset, packet, parent)
  end
end

-- Local Database Data
nse_nsefo_orderentry_nnf_v9_50.local_database_data = {}

-- Display: Local Database Data
nse_nsefo_orderentry_nnf_v9_50.local_database_data.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Local Database Data
nse_nsefo_orderentry_nnf_v9_50.local_database_data.fields = function(buffer, offset, packet, parent, size_of_local_database_data)
  local index = offset

  -- Data Payload: 0 Byte
  index, data_payload = nse_nsefo_orderentry_nnf_v9_50.data_payload.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Local Database Data
nse_nsefo_orderentry_nnf_v9_50.local_database_data.dissect = function(buffer, offset, packet, parent, size_of_local_database_data)
  local index = offset + size_of_local_database_data

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.local_database_data, buffer(offset, 0))
    local current = nse_nsefo_orderentry_nnf_v9_50.local_database_data.fields(buffer, offset, packet, parent, size_of_local_database_data)
    parent:set_len(size_of_local_database_data)
    local display = nse_nsefo_orderentry_nnf_v9_50.local_database_data.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_orderentry_nnf_v9_50.local_database_data.fields(buffer, offset, packet, parent, size_of_local_database_data)

    return index
  end
end

-- Update Local Database Data Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message = {}

-- Calculate size of: Update Local Database Data Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_orderentry_nnf_v9_50.inner_header.size

  -- Parse runtime size of: Local Database Data
  index = index + buffer(offset + index - 42, 2):int()

  return index
end

-- Display: Update Local Database Data Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Data Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Inner Header: Struct of 9 fields
  index, inner_header = nse_nsefo_orderentry_nnf_v9_50.inner_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Message Length
  local message_length = buffer(offset - 2, 2):int()

  -- Runtime Size Of: Local Database Data
  local size_of_local_database_data = message_length - 80

  -- Local Database Data: Struct of 1 fields
  index, local_database_data = nse_nsefo_orderentry_nnf_v9_50.local_database_data.dissect(buffer, index, packet, parent, size_of_local_database_data)

  return index
end

-- Dissect: Update Local Database Data Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_data_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.fields(buffer, offset, packet, parent)
  end
end

-- Download Request Message
nse_nsefo_orderentry_nnf_v9_50.download_request_message = {}

-- Size: Download Request Message
nse_nsefo_orderentry_nnf_v9_50.download_request_message.size =
  nse_nsefo_orderentry_nnf_v9_50.sequence_number.size

-- Display: Download Request Message
nse_nsefo_orderentry_nnf_v9_50.download_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Download Request Message
nse_nsefo_orderentry_nnf_v9_50.download_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsefo_orderentry_nnf_v9_50.sequence_number.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Download Request Message
nse_nsefo_orderentry_nnf_v9_50.download_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.download_request_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.download_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.download_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.download_request_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Trailer Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message = {}

-- Size: Update Local Database Trailer Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.size =
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size

-- Display: Update Local Database Trailer Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Trailer Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database Trailer Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_trailer_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database Header Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message = {}

-- Size: Update Local Database Header Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.size =
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size

-- Display: Update Local Database Header Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database Header Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database Header Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_header_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.fields(buffer, offset, packet, parent)
  end
end

-- St Pl Market Status
nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status = {}

-- Size: St Pl Market Status
nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.size =
  nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal.size + 
  nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot.size + 
  nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot.size + 
  nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction.size

-- Display: St Pl Market Status
nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Pl Market Status
nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Pl Market Status Normal: SHORT
  index, pl_market_status_normal = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_normal.dissect(buffer, index, packet, parent)

  -- Pl Market Status Oddlot: SHORT
  index, pl_market_status_oddlot = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_oddlot.dissect(buffer, index, packet, parent)

  -- Pl Market Status Spot: SHORT
  index, pl_market_status_spot = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_spot.dissect(buffer, index, packet, parent)

  -- Pl Market Status Auction: SHORT
  index, pl_market_status_auction = nse_nsefo_orderentry_nnf_v9_50.pl_market_status_auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Pl Market Status
nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_pl_market_status, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.fields(buffer, offset, packet, parent)
  end
end

-- St Ex Market Status
nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status = {}

-- Size: St Ex Market Status
nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.size =
  nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal.size + 
  nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot.size + 
  nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot.size + 
  nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction.size

-- Display: St Ex Market Status
nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Ex Market Status
nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Ex Market Status Normal: SHORT
  index, ex_market_status_normal = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_normal.dissect(buffer, index, packet, parent)

  -- Ex Market Status Oddlot: SHORT
  index, ex_market_status_oddlot = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_oddlot.dissect(buffer, index, packet, parent)

  -- Ex Market Status Spot: SHORT
  index, ex_market_status_spot = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_spot.dissect(buffer, index, packet, parent)

  -- Ex Market Status Auction: SHORT
  index, ex_market_status_auction = nse_nsefo_orderentry_nnf_v9_50.ex_market_status_auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Ex Market Status
nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_ex_market_status, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.fields(buffer, offset, packet, parent)
  end
end

-- St Market Status
nse_nsefo_orderentry_nnf_v9_50.st_market_status = {}

-- Size: St Market Status
nse_nsefo_orderentry_nnf_v9_50.st_market_status.size =
  nse_nsefo_orderentry_nnf_v9_50.market_status_normal.size + 
  nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot.size + 
  nse_nsefo_orderentry_nnf_v9_50.market_status_spot.size + 
  nse_nsefo_orderentry_nnf_v9_50.market_status_auction.size

-- Display: St Market Status
nse_nsefo_orderentry_nnf_v9_50.st_market_status.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: St Market Status
nse_nsefo_orderentry_nnf_v9_50.st_market_status.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Market Status Normal: SHORT
  index, market_status_normal = nse_nsefo_orderentry_nnf_v9_50.market_status_normal.dissect(buffer, index, packet, parent)

  -- Market Status Oddlot: SHORT
  index, market_status_oddlot = nse_nsefo_orderentry_nnf_v9_50.market_status_oddlot.dissect(buffer, index, packet, parent)

  -- Market Status Spot: SHORT
  index, market_status_spot = nse_nsefo_orderentry_nnf_v9_50.market_status_spot.dissect(buffer, index, packet, parent)

  -- Market Status Auction: SHORT
  index, market_status_auction = nse_nsefo_orderentry_nnf_v9_50.market_status_auction.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: St Market Status
nse_nsefo_orderentry_nnf_v9_50.st_market_status.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_market_status, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.st_market_status.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.st_market_status.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.st_market_status.fields(buffer, offset, packet, parent)
  end
end

-- Update Local Database In Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message = {}

-- Size: Update Local Database In Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.size =
  nse_nsefo_orderentry_nnf_v9_50.last_update_security_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_update_index_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_market_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.size

-- Display: Update Local Database In Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Update Local Database In Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Security Time: LONG
  index, last_update_security_time = nse_nsefo_orderentry_nnf_v9_50.last_update_security_time.dissect(buffer, index, packet, parent)

  -- Last Update Participant Time: LONG
  index, last_update_participant_time = nse_nsefo_orderentry_nnf_v9_50.last_update_participant_time.dissect(buffer, index, packet, parent)

  -- Last Update Instrument Time: LONG
  index, last_update_instrument_time = nse_nsefo_orderentry_nnf_v9_50.last_update_instrument_time.dissect(buffer, index, packet, parent)

  -- Last Update Index Time: LONG
  index, last_update_index_time = nse_nsefo_orderentry_nnf_v9_50.last_update_index_time.dissect(buffer, index, packet, parent)

  -- Request For Open Orders: CHAR
  index, request_for_open_orders = nse_nsefo_orderentry_nnf_v9_50.request_for_open_orders.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- St Market Status: Struct of 4 fields
  index, st_market_status = nse_nsefo_orderentry_nnf_v9_50.st_market_status.dissect(buffer, index, packet, parent)

  -- St Ex Market Status: Struct of 4 fields
  index, st_ex_market_status = nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.dissect(buffer, index, packet, parent)

  -- St Pl Market Status: Struct of 4 fields
  index, st_pl_market_status = nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Update Local Database In Message
nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.update_local_database_in_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.fields(buffer, offset, packet, parent)
  end
end

-- New Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail = {}

-- Size: New Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.size =
  nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv.size + 
  nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv.size + 
  nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key.size

-- Display: New Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: New Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Static Cryptographic Iv: CHAR
  index, static_cryptographic_iv = nse_nsefo_orderentry_nnf_v9_50.static_cryptographic_iv.dissect(buffer, index, packet, parent)

  -- Dynamic Cryptographic Iv: LONG LONG
  index, dynamic_cryptographic_iv = nse_nsefo_orderentry_nnf_v9_50.dynamic_cryptographic_iv.dissect(buffer, index, packet, parent)

  -- Cryptographic Additional Key: CHAR
  index, cryptographic_additional_key = nse_nsefo_orderentry_nnf_v9_50.cryptographic_additional_key.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: New Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.new_encryption_tail, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.fields(buffer, offset, packet, parent)
  end
end

-- Existing Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail = {}

-- Size: Existing Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.size =
  nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv.size

-- Display: Existing Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Existing Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Cryptographic Iv: CHAR
  index, cryptographic_iv = nse_nsefo_orderentry_nnf_v9_50.cryptographic_iv.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Existing Encryption Tail
nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.existing_encryption_tail, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.fields(buffer, offset, packet, parent)
  end
end

-- Cryptographic Payload
nse_nsefo_orderentry_nnf_v9_50.cryptographic_payload = {}

-- Dissect: Cryptographic Payload
nse_nsefo_orderentry_nnf_v9_50.cryptographic_payload.dissect = function(buffer, offset, packet, parent, message_length)
  -- Dissect Existing Encryption Tail
  if message_length == 124 then
    return nse_nsefo_orderentry_nnf_v9_50.existing_encryption_tail.dissect(buffer, offset, packet, parent)
  end
  -- Dissect New Encryption Tail
  if message_length == 136 then
    return nse_nsefo_orderentry_nnf_v9_50.new_encryption_tail.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Cryptographic Tail
nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail = {}

-- Calculate size of: Cryptographic Tail
nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.size = function(buffer, offset)
  local index = 0

  -- Calculate runtime size of Cryptographic Payload field
  local cryptographic_payload_offset = offset + index
  local cryptographic_payload_type = buffer(cryptographic_payload_offset - 70, 2):int()
  index = index + nse_nsefo_orderentry_nnf_v9_50.cryptographic_payload.size(buffer, cryptographic_payload_offset, cryptographic_payload_type)

  return index
end

-- Display: Cryptographic Tail
nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Cryptographic Tail
nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Dependency element: Message Length
  local message_length = buffer(offset - 70, 2):int()

  -- Cryptographic Payload: Runtime Type with 2 branches
  index = nse_nsefo_orderentry_nnf_v9_50.cryptographic_payload.dissect(buffer, index, packet, parent, message_length)

  return index
end

-- Dissect: Cryptographic Tail
nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.cryptographic_tail, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Router Response Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message = {}

-- Calculate size of: Gateway Router Response Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.size = function(buffer, offset)
  local index = 0

  index = index + nse_nsefo_orderentry_nnf_v9_50.box_id.size

  index = index + nse_nsefo_orderentry_nnf_v9_50.broker_id.size

  index = index + nse_nsefo_orderentry_nnf_v9_50.filler.size

  index = index + nse_nsefo_orderentry_nnf_v9_50.ip_address.size

  index = index + nse_nsefo_orderentry_nnf_v9_50.port.size

  index = index + nse_nsefo_orderentry_nnf_v9_50.session_key.size

  index = index + nse_nsefo_orderentry_nnf_v9_50.cryptographic_key.size

  index = index + nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.size(buffer, offset + index)

  return index
end

-- Display: Gateway Router Response Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Response Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsefo_orderentry_nnf_v9_50.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_orderentry_nnf_v9_50.filler.dissect(buffer, index, packet, parent)

  -- Ip Address: CHAR
  index, ip_address = nse_nsefo_orderentry_nnf_v9_50.ip_address.dissect(buffer, index, packet, parent)

  -- Port: LONG
  index, port = nse_nsefo_orderentry_nnf_v9_50.port.dissect(buffer, index, packet, parent)

  -- Session Key: CHAR
  index, session_key = nse_nsefo_orderentry_nnf_v9_50.session_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Key: CHAR
  index, cryptographic_key = nse_nsefo_orderentry_nnf_v9_50.cryptographic_key.dissect(buffer, index, packet, parent)

  -- Cryptographic Tail: Struct of 1 fields
  index, cryptographic_tail = nse_nsefo_orderentry_nnf_v9_50.cryptographic_tail.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Router Response Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.gateway_router_response_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.fields(buffer, offset, packet, parent)
  end
end

-- Gateway Router Request Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message = {}

-- Size: Gateway Router Request Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.size =
  nse_nsefo_orderentry_nnf_v9_50.box_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.filler.size

-- Display: Gateway Router Request Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Gateway Router Request Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Box Id: SHORT
  index, box_id = nse_nsefo_orderentry_nnf_v9_50.box_id.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Filler: CHAR
  index, filler = nse_nsefo_orderentry_nnf_v9_50.filler.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Gateway Router Request Message
nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.gateway_router_request_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.fields(buffer, offset, packet, parent)
  end
end

-- St Stock Eligible Indicators
nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators = {}

-- Size: St Stock Eligible Indicators
nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.size = 2

-- Display: St Stock Eligible Indicators
nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Books Merged flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Books Merged"
  end
  -- Is Minimum Fill flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Minimum Fill"
  end
  -- Is Eligible Aon flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Eligible Aon"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Stock Eligible Indicators
nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.bits = function(range, value, packet, parent)

  -- Reserved 113: 13 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_113, range, value)

  -- Books Merged: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.books_merged, range, value)

  -- Minimum Fill: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.minimum_fill, range, value)

  -- Eligible Aon: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.eligible_aon, range, value)
end

-- Dissect: St Stock Eligible Indicators
nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_stock_eligible_indicators, range, display)

  if show.structs then
    nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- System Information Out Message
nse_nsefo_orderentry_nnf_v9_50.system_information_out_message = {}

-- Size: System Information Out Message
nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.size =
  nse_nsefo_orderentry_nnf_v9_50.st_market_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.update_portfolio.size + 
  nse_nsefo_orderentry_nnf_v9_50.market_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal.size + 
  nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot.size + 
  nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction.size + 
  nse_nsefo_orderentry_nnf_v9_50.competitor_period.size + 
  nse_nsefo_orderentry_nnf_v9_50.solicitor_period.size + 
  nse_nsefo_orderentry_nnf_v9_50.warning_percent.size + 
  nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent.size + 
  nse_nsefo_orderentry_nnf_v9_50.snap_quote_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity.size + 
  nse_nsefo_orderentry_nnf_v9_50.tick_size.size + 
  nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.size + 
  nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed.size + 
  nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate.size

-- Display: System Information Out Message
nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Information Out Message
nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- St Market Status: Struct of 4 fields
  index, st_market_status = nse_nsefo_orderentry_nnf_v9_50.st_market_status.dissect(buffer, index, packet, parent)

  -- St Ex Market Status: Struct of 4 fields
  index, st_ex_market_status = nse_nsefo_orderentry_nnf_v9_50.st_ex_market_status.dissect(buffer, index, packet, parent)

  -- St Pl Market Status: Struct of 4 fields
  index, st_pl_market_status = nse_nsefo_orderentry_nnf_v9_50.st_pl_market_status.dissect(buffer, index, packet, parent)

  -- Update Portfolio: CHAR
  index, update_portfolio = nse_nsefo_orderentry_nnf_v9_50.update_portfolio.dissect(buffer, index, packet, parent)

  -- Market Index: LONG
  index, market_index = nse_nsefo_orderentry_nnf_v9_50.market_index.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Normal: SHORT
  index, default_settlement_period_normal = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_normal.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Spot: SHORT
  index, default_settlement_period_spot = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_spot.dissect(buffer, index, packet, parent)

  -- Default Settlement Period Auction: SHORT
  index, default_settlement_period_auction = nse_nsefo_orderentry_nnf_v9_50.default_settlement_period_auction.dissect(buffer, index, packet, parent)

  -- Competitor Period: SHORT
  index, competitor_period = nse_nsefo_orderentry_nnf_v9_50.competitor_period.dissect(buffer, index, packet, parent)

  -- Solicitor Period: SHORT
  index, solicitor_period = nse_nsefo_orderentry_nnf_v9_50.solicitor_period.dissect(buffer, index, packet, parent)

  -- Warning Percent: SHORT
  index, warning_percent = nse_nsefo_orderentry_nnf_v9_50.warning_percent.dissect(buffer, index, packet, parent)

  -- Volume Freeze Percent: SHORT
  index, volume_freeze_percent = nse_nsefo_orderentry_nnf_v9_50.volume_freeze_percent.dissect(buffer, index, packet, parent)

  -- Snap Quote Time: SHORT
  index, snap_quote_time = nse_nsefo_orderentry_nnf_v9_50.snap_quote_time.dissect(buffer, index, packet, parent)

  -- Reserved 2: CHAR
  index, reserved_2 = nse_nsefo_orderentry_nnf_v9_50.reserved_2.dissect(buffer, index, packet, parent)

  -- Board Lot Quantity: LONG
  index, board_lot_quantity = nse_nsefo_orderentry_nnf_v9_50.board_lot_quantity.dissect(buffer, index, packet, parent)

  -- Tick Size: LONG
  index, tick_size = nse_nsefo_orderentry_nnf_v9_50.tick_size.dissect(buffer, index, packet, parent)

  -- Maximum Gtc Days: SHORT
  index, maximum_gtc_days = nse_nsefo_orderentry_nnf_v9_50.maximum_gtc_days.dissect(buffer, index, packet, parent)

  -- St Stock Eligible Indicators: Struct of 4 fields
  index, st_stock_eligible_indicators = nse_nsefo_orderentry_nnf_v9_50.st_stock_eligible_indicators.dissect(buffer, index, packet, parent)

  -- Disclosed Quantity Percent Allowed: SHORT
  index, disclosed_quantity_percent_allowed = nse_nsefo_orderentry_nnf_v9_50.disclosed_quantity_percent_allowed.dissect(buffer, index, packet, parent)

  -- Risk Free Interest Rate: LONG
  index, risk_free_interest_rate = nse_nsefo_orderentry_nnf_v9_50.risk_free_interest_rate.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Information Out Message
nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.system_information_out_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.fields(buffer, offset, packet, parent)
  end
end

-- System Information In Message
nse_nsefo_orderentry_nnf_v9_50.system_information_in_message = {}

-- Size: System Information In Message
nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.size =
  nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime.size

-- Display: System Information In Message
nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: System Information In Message
nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Last Update Portfolio T Ime: LONG
  index, last_update_portfolio_t_ime = nse_nsefo_orderentry_nnf_v9_50.last_update_portfolio_t_ime.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: System Information In Message
nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.system_information_in_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign Off Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message = {}

-- Size: Sign Off Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_145.size

-- Display: Sign Off Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign Off Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 145: CHAR
  index, reserved_145 = nse_nsefo_orderentry_nnf_v9_50.reserved_145.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign Off Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sign_off_request_out_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.fields(buffer, offset, packet, parent)
  end
end

-- St Broker Eligibility Per Mkt
nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt = {}

-- Size: St Broker Eligibility Per Mkt
nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.size = 2

-- Display: St Broker Eligibility Per Mkt
nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.display = function(range, value, packet, parent)
  local flags = {}

  -- Is Pre Open flag set?
  if bit.band(value, 0x0001) ~= 0 then
    flags[#flags + 1] = "Pre Open"
  end
  -- Is Auction Market flag set?
  if bit.band(value, 0x1000) ~= 0 then
    flags[#flags + 1] = "Auction Market"
  end
  -- Is Spot Market flag set?
  if bit.band(value, 0x2000) ~= 0 then
    flags[#flags + 1] = "Spot Market"
  end
  -- Is Oddlot Market flag set?
  if bit.band(value, 0x4000) ~= 0 then
    flags[#flags + 1] = "Oddlot Market"
  end
  -- Is Normal Market flag set?
  if bit.band(value, 0x8000) ~= 0 then
    flags[#flags + 1] = "Normal Market"
  end

  return table.concat(flags, "|")
end

-- Dissect Bit Fields: St Broker Eligibility Per Mkt
nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.bits = function(range, value, packet, parent)

  -- Pre Open: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.pre_open, range, value)

  -- Reserved 212: 11 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.reserved_212, range, value)

  -- Auction Market: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.auction_market, range, value)

  -- Spot Market: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.spot_market, range, value)

  -- Oddlot Market: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.oddlot_market, range, value)

  -- Normal Market: 1 Bit
  parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.normal_market, range, value)
end

-- Dissect: St Broker Eligibility Per Mkt
nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.dissect = function(buffer, offset, packet, parent)
  local size = nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.size
  local range = buffer(offset, size)
  local value = range:le_uint()
  local display = nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.display(range, value, packet, parent)
  local element = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.st_broker_eligibility_per_mkt, range, display)

  if show.structs then
    nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.bits(range, value, packet, element)
  end

  return offset + size, value
end

-- Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message = {}

-- Size: Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_8.size + 
  nse_nsefo_orderentry_nnf_v9_50.password.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_8.size + 
  nse_nsefo_orderentry_nnf_v9_50.new_password.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.version_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.end_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.colour.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.sequence_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_14.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.show_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.size + 
  nse_nsefo_orderentry_nnf_v9_50.member_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.clearing_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size

-- Display: Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsefo_orderentry_nnf_v9_50.reserved_8.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nsefo_orderentry_nnf_v9_50.password.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsefo_orderentry_nnf_v9_50.reserved_8.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nsefo_orderentry_nnf_v9_50.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nsefo_orderentry_nnf_v9_50.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date: LONG
  index, last_password_change_date = nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnf_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nsefo_orderentry_nnf_v9_50.version_number.dissect(buffer, index, packet, parent)

  -- End Time: LONG
  index, end_time = nse_nsefo_orderentry_nnf_v9_50.end_time.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Colour: CHAR
  index, colour = nse_nsefo_orderentry_nnf_v9_50.colour.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsefo_orderentry_nnf_v9_50.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsefo_orderentry_nnf_v9_50.sequence_number.dissect(buffer, index, packet, parent)

  -- Reserved 14: CHAR
  index, reserved_14 = nse_nsefo_orderentry_nnf_v9_50.reserved_14.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nsefo_orderentry_nnf_v9_50.broker_status.dissect(buffer, index, packet, parent)

  -- Show Index: CHAR
  index, show_index = nse_nsefo_orderentry_nnf_v9_50.show_index.dissect(buffer, index, packet, parent)

  -- St Broker Eligibility Per Mkt: Struct of 6 fields
  index, st_broker_eligibility_per_mkt = nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.dissect(buffer, index, packet, parent)

  -- Member Type: SHORT
  index, member_type = nse_nsefo_orderentry_nnf_v9_50.member_type.dissect(buffer, index, packet, parent)

  -- Clearing Status: CHAR
  index, clearing_status = nse_nsefo_orderentry_nnf_v9_50.clearing_status.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nsefo_orderentry_nnf_v9_50.broker_name.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Request Out Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sign_on_request_out_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.fields(buffer, offset, packet, parent)
  end
end

-- Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message = {}

-- Size: Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.size =
  nse_nsefo_orderentry_nnf_v9_50.user_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_8.size + 
  nse_nsefo_orderentry_nnf_v9_50.password.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_8.size + 
  nse_nsefo_orderentry_nnf_v9_50.new_password.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.branch_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.version_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.host_switch_context.size + 
  nse_nsefo_orderentry_nnf_v9_50.colour.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.user_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.sequence_number.size + 
  nse_nsefo_orderentry_nnf_v9_50.ws_class_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.show_index.size + 
  nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.size + 
  nse_nsefo_orderentry_nnf_v9_50.member_type.size + 
  nse_nsefo_orderentry_nnf_v9_50.clearing_status.size + 
  nse_nsefo_orderentry_nnf_v9_50.broker_name.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size + 
  nse_nsefo_orderentry_nnf_v9_50.reserved_16.size

-- Display: Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- User Id: LONG
  index, user_id = nse_nsefo_orderentry_nnf_v9_50.user_id.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsefo_orderentry_nnf_v9_50.reserved_8.dissect(buffer, index, packet, parent)

  -- Password: CHAR
  index, password = nse_nsefo_orderentry_nnf_v9_50.password.dissect(buffer, index, packet, parent)

  -- Reserved 8: CHAR
  index, reserved_8 = nse_nsefo_orderentry_nnf_v9_50.reserved_8.dissect(buffer, index, packet, parent)

  -- New Password: CHAR
  index, new_password = nse_nsefo_orderentry_nnf_v9_50.new_password.dissect(buffer, index, packet, parent)

  -- Trader Name: CHAR
  index, trader_name = nse_nsefo_orderentry_nnf_v9_50.trader_name.dissect(buffer, index, packet, parent)

  -- Last Password Change Date: LONG
  index, last_password_change_date = nse_nsefo_orderentry_nnf_v9_50.last_password_change_date.dissect(buffer, index, packet, parent)

  -- Broker Id: CHAR
  index, broker_id = nse_nsefo_orderentry_nnf_v9_50.broker_id.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- Branch Id: SHORT
  index, branch_id = nse_nsefo_orderentry_nnf_v9_50.branch_id.dissect(buffer, index, packet, parent)

  -- Version Number: LONG
  index, version_number = nse_nsefo_orderentry_nnf_v9_50.version_number.dissect(buffer, index, packet, parent)

  -- Batch 2 Start Time: LONG
  index, batch_2_start_time = nse_nsefo_orderentry_nnf_v9_50.batch_2_start_time.dissect(buffer, index, packet, parent)

  -- Host Switch Context: CHAR
  index, host_switch_context = nse_nsefo_orderentry_nnf_v9_50.host_switch_context.dissect(buffer, index, packet, parent)

  -- Colour: CHAR
  index, colour = nse_nsefo_orderentry_nnf_v9_50.colour.dissect(buffer, index, packet, parent)

  -- Reserved 1: CHAR
  index, reserved_1 = nse_nsefo_orderentry_nnf_v9_50.reserved_1.dissect(buffer, index, packet, parent)

  -- User Type: SHORT
  index, user_type = nse_nsefo_orderentry_nnf_v9_50.user_type.dissect(buffer, index, packet, parent)

  -- Sequence Number: DOUBLE
  index, sequence_number = nse_nsefo_orderentry_nnf_v9_50.sequence_number.dissect(buffer, index, packet, parent)

  -- Ws Class Name: CHAR
  index, ws_class_name = nse_nsefo_orderentry_nnf_v9_50.ws_class_name.dissect(buffer, index, packet, parent)

  -- Broker Status: CHAR
  index, broker_status = nse_nsefo_orderentry_nnf_v9_50.broker_status.dissect(buffer, index, packet, parent)

  -- Show Index: CHAR
  index, show_index = nse_nsefo_orderentry_nnf_v9_50.show_index.dissect(buffer, index, packet, parent)

  -- St Broker Eligibility Per Mkt: Struct of 6 fields
  index, st_broker_eligibility_per_mkt = nse_nsefo_orderentry_nnf_v9_50.st_broker_eligibility_per_mkt.dissect(buffer, index, packet, parent)

  -- Member Type: SHORT
  index, member_type = nse_nsefo_orderentry_nnf_v9_50.member_type.dissect(buffer, index, packet, parent)

  -- Clearing Status: CHAR
  index, clearing_status = nse_nsefo_orderentry_nnf_v9_50.clearing_status.dissect(buffer, index, packet, parent)

  -- Broker Name: CHAR
  index, broker_name = nse_nsefo_orderentry_nnf_v9_50.broker_name.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  -- Reserved 16: CHAR
  index, reserved_16 = nse_nsefo_orderentry_nnf_v9_50.reserved_16.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Sign On Request In Message
nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.dissect = function(buffer, offset, packet, parent)
  if show.application_messages then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.sign_on_request_in_message, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.fields(buffer, offset, packet, parent)
  end
end

-- Message Payload
nse_nsefo_orderentry_nnf_v9_50.message_payload = {}

-- Dissect: Message Payload
nse_nsefo_orderentry_nnf_v9_50.message_payload.dissect = function(buffer, offset, packet, parent, transaction_code)
  -- Dissect Sign On Request In Message
  if transaction_code == 2300 then
    return nse_nsefo_orderentry_nnf_v9_50.sign_on_request_in_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sign On Request Out Message
  if transaction_code == 2301 then
    return nse_nsefo_orderentry_nnf_v9_50.sign_on_request_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sign Off Request Out Message
  if transaction_code == 2321 then
    return nse_nsefo_orderentry_nnf_v9_50.sign_off_request_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Information In Message
  if transaction_code == 1600 then
    return nse_nsefo_orderentry_nnf_v9_50.system_information_in_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect System Information Out Message
  if transaction_code == 1601 then
    return nse_nsefo_orderentry_nnf_v9_50.system_information_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Router Request Message
  if transaction_code == 2400 then
    return nse_nsefo_orderentry_nnf_v9_50.gateway_router_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Gateway Router Response Message
  if transaction_code == 2401 then
    return nse_nsefo_orderentry_nnf_v9_50.gateway_router_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sign Off Request In Message
  if transaction_code == 2320 then
    return offset
  end
  -- Dissect Update Local Database In Message
  if transaction_code == 7300 then
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_in_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Update Local Database Header Message
  if transaction_code == 7307 then
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_header_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Update Local Database Trailer Message
  if transaction_code == 7308 then
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_trailer_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Download Request Message
  if transaction_code == 7000 then
    return nse_nsefo_orderentry_nnf_v9_50.download_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Update Local Database Data Message
  if transaction_code == 7304 then
    return nse_nsefo_orderentry_nnf_v9_50.update_local_database_data_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Header Record Message
  if transaction_code == 7011 then
    return offset
  end
  -- Dissect Message Record Message
  if transaction_code == 7021 then
    return nse_nsefo_orderentry_nnf_v9_50.message_record_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trailer Record Message
  if transaction_code == 7031 then
    return offset
  end
  -- Dissect Order Entry Message
  if transaction_code == 2000 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2012 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2040 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2042 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2062 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2070 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2072 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2073 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2074 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2170 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 2231 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Entry Message
  if transaction_code == 9002 then
    return nse_nsefo_orderentry_nnf_v9_50.order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Modification Message
  if transaction_code == 2013 then
    return nse_nsefo_orderentry_nnf_v9_50.price_modification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Price Modification Message
  if transaction_code == 20406 then
    return nse_nsefo_orderentry_nnf_v9_50.price_modification_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Inquiry Message
  if transaction_code == 5445 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Inquiry Message
  if transaction_code == 5440 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Inquiry Message
  if transaction_code == 5441 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Inquiry Message
  if transaction_code == 2223 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_inquiry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2100 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2102 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2104 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2106 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2118 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2124 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2125 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2126 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2127 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2130 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2131 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2132 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2133 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2136 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2154 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2155 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 2156 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 9004 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 20408 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 20410 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 20412 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 20414 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Entry Message
  if transaction_code == 20416 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_entry_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Confirmation Message
  if transaction_code == 2222 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Confirmation Message
  if transaction_code == 2212 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Confirmation Message
  if transaction_code == 2282 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Confirmation Message
  if transaction_code == 2286 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Confirmation Message
  if transaction_code == 2287 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Trade Confirmation Message
  if transaction_code == 2288 then
    return nse_nsefo_orderentry_nnf_v9_50.trade_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Order Limit Update Message
  if transaction_code == 5731 then
    return nse_nsefo_orderentry_nnf_v9_50.user_order_limit_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Dealer Limit Update Message
  if transaction_code == 5733 then
    return nse_nsefo_orderentry_nnf_v9_50.dealer_limit_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Order Limit Update Message
  if transaction_code == 5772 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_order_limit_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Control Message To Trader Message
  if transaction_code == 5295 then
    return nse_nsefo_orderentry_nnf_v9_50.control_message_to_trader_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Statistics Report Message
  if transaction_code == 1833 then
    return nse_nsefo_orderentry_nnf_v9_50.market_statistics_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Enhanced Market Statistics Report Message
  if transaction_code == 11833 then
    return nse_nsefo_orderentry_nnf_v9_50.enhanced_market_statistics_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Market Index Report Message
  if transaction_code == 1836 then
    return nse_nsefo_orderentry_nnf_v9_50.market_index_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Industry Index Report Message
  if transaction_code == 1837 then
    return nse_nsefo_orderentry_nnf_v9_50.industry_index_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Sector Index Report Message
  if transaction_code == 1838 then
    return nse_nsefo_orderentry_nnf_v9_50.sector_index_report_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Spread Bhavcopy Message
  if transaction_code == 1862 then
    return nse_nsefo_orderentry_nnf_v9_50.spread_bhavcopy_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Indices Message
  if transaction_code == 7732 then
    return nse_nsefo_orderentry_nnf_v9_50.global_indices_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Global Contracts Message
  if transaction_code == 7733 then
    return nse_nsefo_orderentry_nnf_v9_50.global_contracts_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Secure Box Registration Request In Message
  if transaction_code == 23008 then
    return nse_nsefo_orderentry_nnf_v9_50.secure_box_registration_request_in_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Secure Box Registration Response Out Message
  if transaction_code == 23009 then
    return offset
  end
  -- Dissect Box Sign On Request In Message
  if transaction_code == 23000 then
    return nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_in_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Box Sign On Request Out Message
  if transaction_code == 23001 then
    return nse_nsefo_orderentry_nnf_v9_50.box_sign_on_request_out_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Heartbeat Message
  if transaction_code == 23506 then
    return offset
  end
  -- Dissect Box Sign Off Message
  if transaction_code == 20322 then
    return nse_nsefo_orderentry_nnf_v9_50.box_sign_off_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Contingency Broadcast Message
  if transaction_code == 5294 then
    return nse_nsefo_orderentry_nnf_v9_50.contingency_broadcast_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Branch Order Value Limit Update Message
  if transaction_code == 5716 then
    return nse_nsefo_orderentry_nnf_v9_50.branch_order_value_limit_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Order Value Limit Update Message
  if transaction_code == 5730 then
    return nse_nsefo_orderentry_nnf_v9_50.user_order_value_limit_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Normal Order Limit Update Message
  if transaction_code == 5732 then
    return nse_nsefo_orderentry_nnf_v9_50.normal_order_limit_update_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Reset User Password Message
  if transaction_code == 5740 then
    return nse_nsefo_orderentry_nnf_v9_50.reset_user_password_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collateral User Status Change Request Message
  if transaction_code == 5744 then
    return nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Collateral User Status Change Response Message
  if transaction_code == 5745 then
    return nse_nsefo_orderentry_nnf_v9_50.collateral_user_status_change_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Trade Modify Cancel Status Change Request Message
  if transaction_code == 5738 then
    return nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Trade Modify Cancel Status Change Response Message
  if transaction_code == 5739 then
    return nse_nsefo_orderentry_nnf_v9_50.user_trade_modify_cancel_status_change_response_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Address Unlock Request Message
  if transaction_code == 5427 then
    return nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_request_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Address Unlock Confirm Message
  if transaction_code == 5428 then
    return nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_confirm_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect User Address Unlock Approve Message
  if transaction_code == 5483 then
    return nse_nsefo_orderentry_nnf_v9_50.user_address_unlock_approve_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Giveup Confirmation Message
  if transaction_code == 4506 then
    return nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Giveup Confirmation Message
  if transaction_code == 4507 then
    return nse_nsefo_orderentry_nnf_v9_50.giveup_confirmation_message.dissect(buffer, offset, packet, parent)
  end
  -- Dissect Order Cancellation Confirmation Message
  if transaction_code == 2075 then
    return nse_nsefo_orderentry_nnf_v9_50.order_cancellation_confirmation_message.dissect(buffer, offset, packet, parent)
  end

  return offset
end

-- Message Header
nse_nsefo_orderentry_nnf_v9_50.message_header = {}

-- Size: Message Header
nse_nsefo_orderentry_nnf_v9_50.message_header.size =
  nse_nsefo_orderentry_nnf_v9_50.transaction_code.size + 
  nse_nsefo_orderentry_nnf_v9_50.log_time.size + 
  nse_nsefo_orderentry_nnf_v9_50.alpha_char.size + 
  nse_nsefo_orderentry_nnf_v9_50.trader_id.size + 
  nse_nsefo_orderentry_nnf_v9_50.error_code.size + 
  nse_nsefo_orderentry_nnf_v9_50.timestamp.size + 
  nse_nsefo_orderentry_nnf_v9_50.time_stamp_1.size + 
  nse_nsefo_orderentry_nnf_v9_50.time_stamp_2.size + 
  nse_nsefo_orderentry_nnf_v9_50.message_length.size

-- Display: Message Header
nse_nsefo_orderentry_nnf_v9_50.message_header.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message Header
nse_nsefo_orderentry_nnf_v9_50.message_header.fields = function(buffer, offset, packet, parent)
  local index = offset

  -- Transaction Code: SHORT
  index, transaction_code = nse_nsefo_orderentry_nnf_v9_50.transaction_code.dissect(buffer, index, packet, parent)

  -- Log Time: LONG
  index, log_time = nse_nsefo_orderentry_nnf_v9_50.log_time.dissect(buffer, index, packet, parent)

  -- Alpha Char: CHAR
  index, alpha_char = nse_nsefo_orderentry_nnf_v9_50.alpha_char.dissect(buffer, index, packet, parent)

  -- Trader Id: LONG
  index, trader_id = nse_nsefo_orderentry_nnf_v9_50.trader_id.dissect(buffer, index, packet, parent)

  -- Error Code: SHORT
  index, error_code = nse_nsefo_orderentry_nnf_v9_50.error_code.dissect(buffer, index, packet, parent)

  -- Timestamp: LONG LONG
  index, timestamp = nse_nsefo_orderentry_nnf_v9_50.timestamp.dissect(buffer, index, packet, parent)

  -- Time Stamp 1: CHAR
  index, time_stamp_1 = nse_nsefo_orderentry_nnf_v9_50.time_stamp_1.dissect(buffer, index, packet, parent)

  -- Time Stamp 2: CHAR
  index, time_stamp_2 = nse_nsefo_orderentry_nnf_v9_50.time_stamp_2.dissect(buffer, index, packet, parent)

  -- Message Length: SHORT
  index, message_length = nse_nsefo_orderentry_nnf_v9_50.message_length.dissect(buffer, index, packet, parent)

  return index
end

-- Dissect: Message Header
nse_nsefo_orderentry_nnf_v9_50.message_header.dissect = function(buffer, offset, packet, parent)
  if show.structs then
    -- Optionally add element to protocol tree
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.message_header, buffer(offset, 0))
    local index = nse_nsefo_orderentry_nnf_v9_50.message_header.fields(buffer, offset, packet, parent)
    local length = index - offset
    parent:set_len(length)
    local display = nse_nsefo_orderentry_nnf_v9_50.message_header.display(packet, parent, length)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    return nse_nsefo_orderentry_nnf_v9_50.message_header.fields(buffer, offset, packet, parent)
  end
end

-- Message
nse_nsefo_orderentry_nnf_v9_50.message = {}

-- Display: Message
nse_nsefo_orderentry_nnf_v9_50.message.display = function(packet, parent, length)
  return ""
end

-- Dissect Fields: Message
nse_nsefo_orderentry_nnf_v9_50.message.fields = function(buffer, offset, packet, parent, size_of_message)
  local index = offset

  -- Message Header: Struct of 9 fields
  index, message_header = nse_nsefo_orderentry_nnf_v9_50.message_header.dissect(buffer, index, packet, parent)

  -- Dependency element: Transaction Code
  local transaction_code = buffer(index - 40, 2):int()

  -- Message Payload: Runtime Type with 53 branches
  index = nse_nsefo_orderentry_nnf_v9_50.message_payload.dissect(buffer, index, packet, parent, transaction_code)

  return index
end

-- Dissect: Message
nse_nsefo_orderentry_nnf_v9_50.message.dissect = function(buffer, offset, packet, parent, size_of_message)
  local index = offset + size_of_message

  -- Optionally add group/struct element to protocol tree
  if show.structs then
    parent = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50.fields.message, buffer(offset, 0))
    local current = nse_nsefo_orderentry_nnf_v9_50.message.fields(buffer, offset, packet, parent, size_of_message)
    parent:set_len(size_of_message)
    local display = nse_nsefo_orderentry_nnf_v9_50.message.display(buffer, packet, parent)
    parent:append_text(display)

    return index, parent
  else
    -- Skip element, add fields directly
    nse_nsefo_orderentry_nnf_v9_50.message.fields(buffer, offset, packet, parent, size_of_message)

    return index
  end
end

-- Remaining Bytes For: Message
local message_bytes_remaining = function(buffer, index, available)
  -- Calculate the number of bytes remaining
  local remaining = available - index

  -- Check if packet size can be read
  if remaining < nse_nsefo_orderentry_nnf_v9_50.message_header.size then
    return -DESEGMENT_ONE_MORE_SEGMENT
  end

  -- Parse runtime size
  local current = buffer(index + 38, 2):int()

  -- Check if enough bytes remain
  if remaining < current then
    return -(current - remaining)
  end

  return remaining, current
end

-- Packet
nse_nsefo_orderentry_nnf_v9_50.packet = {}

-- Verify required size of Tcp packet
nse_nsefo_orderentry_nnf_v9_50.packet.requiredsize = function(buffer)
  return buffer:len() >= nse_nsefo_orderentry_nnf_v9_50.message_header.size
end

-- Dissect Packet
nse_nsefo_orderentry_nnf_v9_50.packet.dissect = function(buffer, packet, parent)
  local index = 0

  -- Dependency for Message
  local end_of_payload = buffer:len()

  -- Message: Struct of 2 fields
  while index < end_of_payload do

    -- Are minimum number of bytes are available?
    local available, size_of_message = message_bytes_remaining(buffer, index, end_of_payload)

    if available > 0 then
      index = nse_nsefo_orderentry_nnf_v9_50.message.dissect(buffer, index, packet, parent, size_of_message)
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
function omi_nse_nsefo_orderentry_nnf_v9_50.init()
end

-- Dissector for Nse NseFo OrderEntry Nnf 9.50
function omi_nse_nsefo_orderentry_nnf_v9_50.dissector(buffer, packet, parent)

  -- Set protocol name
  packet.cols.protocol = omi_nse_nsefo_orderentry_nnf_v9_50.name

  -- Dissect protocol
  local protocol = parent:add(omi_nse_nsefo_orderentry_nnf_v9_50, buffer(), omi_nse_nsefo_orderentry_nnf_v9_50.description, "("..buffer:len().." Bytes)")
  return nse_nsefo_orderentry_nnf_v9_50.packet.dissect(buffer, packet, protocol)
end


-----------------------------------------------------------------------
-- Protocol Heuristics
-----------------------------------------------------------------------

-- Dissector Heuristic for Nse NseFo OrderEntry Nnf 9.50 (Tcp)
local function omi_nse_nsefo_orderentry_nnf_v9_50_tcp_heuristic(buffer, packet, parent)
  -- Verify packet length
  if not nse_nsefo_orderentry_nnf_v9_50.packet.requiredsize(buffer) then return false end

  -- Protocol is valid, set conversation and dissect this packet
  packet.conversation = omi_nse_nsefo_orderentry_nnf_v9_50
  omi_nse_nsefo_orderentry_nnf_v9_50.dissector(buffer, packet, parent)

  return true
end

-- Register Heuristic for Nse NseFo OrderEntry Nnf 9.50
omi_nse_nsefo_orderentry_nnf_v9_50:register_heuristic("tcp", omi_nse_nsefo_orderentry_nnf_v9_50_tcp_heuristic)

-- Register Nse NseFo OrderEntry Nnf 9.50 for Decode As
local tcp_table = DissectorTable.get("tcp.port")
tcp_table:add_for_decode_as(omi_nse_nsefo_orderentry_nnf_v9_50)

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
