



TIMESTAMPDUR=5
EXTTRID_LEN=29




STROPENTIMEOUT="180"
HEADERS={'Content-Type'=> 'application/json','timeout'=>STROPENTIMEOUT, 'open_timeout'=>STROPENTIMEOUT}
ORCHARD_URL="https://10.105.85.76:8215"



ERR_SENDER_ID = { resp_code: '101', resp_desc: 'Missing sender ID' }.freeze
ERR_NO_RECIPIENT_NUM = { resp_code: '102', resp_desc: 'Missing recipient number' }.freeze
ERR_NO_MSG = { resp_code: '103', resp_desc: 'Missing message body' }.freeze
ERR_NO_UNIQ = { resp_code: '104', resp_desc: 'Missing unique SMS ID' }.freeze
ERR_WRNG_ID_LNGTH = { resp_code: '106', resp_desc: 'Sender ID must be a maximum of 11' }.freeze
ERR_INVLD_FRMAT = { resp_code: '108', resp_desc: 'Invalid number format' }.freeze
ERR_MISSING_API_SRC = { resp_code: '205', resp_desc: 'Missing API source' }.freeze

ERR_FORBIDDEN_IP = {:resp_code=>"100", :resp_desc=>"You are not allowed to use this service"}
ERR_NO_AUTH_HEADER = {:resp_code=>"101", :resp_desc=>"No Authorization header information"}
ERR_INVALID_TOKEN = {:resp_code=>"102", :resp_desc=>"Invalid tokens received"}
ERR_INVALID_SIGNATURE = {:resp_code=>"103", :resp_desc=>"Invalid signature"}
ERR_MISSING_CLIENT_ID = {:resp_code=>"006", :resp_desc=>"Missing client ID"}
ERR_MISSING_TOKEN = {:resp_code=>"007", :resp_desc=>"Missing client token in request"}
ERR_MISSING_CUST_NO = {:resp_code=>"008", :resp_desc=>"Customer number not provided"}
ERR_INVALID_CUST_NO = {:resp_code=>"009", :resp_desc=>"Invalid customer number"}
ERR_MISSING_AMT = {:resp_code=>"010", :resp_desc=>"Transaction amount not provided"}
ERR_MISSING_SENDER_NO = {:resp_code=>"011", :resp_desc=>"Sender number not provided"}
ERR_MISSING_RECIPIENT_NO = {:resp_code=>"012", :resp_desc=>"Recipient number not provided"}
ERR_MISSING_SENDER_NW = {:resp_code=>"013", :resp_desc=>"Sender network not provided"}
ERR_MISSING_NW = {:resp_code=>"014", :resp_desc=>"Recipient network not provided"}
ERR_MISSING_DEBIT_AMOUNT = {:resp_code=>"015", :resp_desc=>"Transaction debit amount not provided"}
ERR_MISSING_CREDIT_AMOUNT = {:resp_code=>"016", :resp_desc=>"Transaction credit amount not provided"}
ERR_MISSING_REF = {:resp_code=>"017", :resp_desc=>"Transaction reference not provided"}
ERR_MISSING_TRANS_ID = {:resp_code=>"018", :resp_desc=>"Unique trans_id is required for this request"}
ERR_MISSING_REQ_SOURCE = {:resp_code=>"019", :resp_desc=>"Request source not provided"}
ERR_MISSING_REQ_TYPE = {:resp_code=>"020", :resp_desc=>"Request type not provided"}
ERR_DUPLICATE_REQ = {:resp_code=>"021", :resp_desc=>"Duplicate transaction request"}
ERR_INVALID_JSON_REQ = {:resp_code=>"022", :resp_desc=>"JSON parse error"}
ERR_INVALID_SENDER_NO = {:resp_code=>"023", :resp_desc=>"Invalid sender number"}
ERR_INVALID_RECIPIENT_NO = {:resp_code=>"024", :resp_desc=>"Invalid recipient number"}
ERR_EXTTRID_VAL_LONG = {:resp_code=>"025", :resp_desc=>"External transaction id too long. Value must be 20 characters or less"}
ERR_EXTTRID_VAL_SHORT = {:resp_code=>"025", :resp_desc=>"External transaction id too short. Value must be between 8 to 20 characters"}
ERR_MISSING_BANK_CODE = {:resp_code=>"026", :resp_desc=>"Missing bank code in reques"}
ERR_MISSING_ACH_TRANS_ID = {:resp_code=>"027", :resp_desc=>"Missing Transaction ID"}
ERR_MISSING_BENE_ACC = {:resp_code=>"028", :resp_desc=>"Missing beneficiary account number"}
ERR_MISSING_BENE_NAME = {:resp_code=>"029", :resp_desc=>"Missing beneficiary account name"}
ERR_MISSING_BENE_BANK = {:resp_code=>"030", :resp_desc=>"Missing beneficiary bank"}
ERR_MISSING_BANK_BRANCH = {:resp_code=>"031", :resp_desc=>"Missing beneficiary bank branch"}
ERR_MISSING_PAYER_NAME = {:resp_code=>"032", :resp_desc=>"Missing payer name"}
ERR_MISSING_PAYER_MOBILE = {:resp_code=>"033", :resp_desc=>"Missing payer mobile number"}
ERR_INSUFFICIENT_AIRTIME = {:resp_code=>"034", :resp_desc=>"Insufficient airtime"}
ERR_MISSING_MERCH_USER = {:resp_code=>"035", :resp_desc=>"Missing merchant username"}
#ERR_MISSING_MERCH_PASS
ERR_EXPIRED_REQ = {:resp_code=>"036", :resp_desc=>"Request expired."}
ERR_MISSING_VOD_VOUCHER = {:resp_code=>"037", :resp_desc=>"Vodafone voucher code not provided"}
ERR_INSUFFICIENT_WAL_BAL = {:resp_code=>"038", :resp_desc=>"Insufficient balance in wallet"}
ERR_MISSING_CALLBACK_URL = {:resp_code=>"039", :resp_desc=>"Missing callback url in request"}
ERR_WALLET_UNAVAILABLE = {:resp_code=>"040", :resp_desc=>"Wallet not available for this service"}
ERR_MISSING_TRANS_TYPE = {:resp_code=>"041", :resp_desc=>"Transaction type not provided"}
ERR_MISSING_ACC_NUMBER = {:resp_code=>"042", :resp_desc=>"Account Number/Name not provided"}
ERR_MISSING_BILL_NAME = {:resp_code=>"043", :resp_desc=>"Name not provided"}
ERR_INVALID_BILL_NW = {:resp_code=>"044", :resp_desc=>"Invalid network provided"}
ERR_INVALID_CALLBACK_URL = {:resp_code=>"045", :resp_desc=>"Invalid callback URL provided"}
ERR_MISSING_EMAIL = {:resp_code=>"046", :resp_desc=>"Missing email"}
ERR_INVALID_CARD_AMOUNT = {:resp_code=>"047", :resp_desc=>"Amount must be validated with two decimal places"}
ERR_MISSING_LANDING_PAGE = {:resp_code=>"048", :resp_desc=>"Missing landing_page_url"}
ERR_INVALID_AMT = {:resp_code=>"049", :resp_desc=>"Invalid request amount"}
ERR_TP_SESSID = {:resp_code=>"050", :resp_desc=>"Top-up Session Identifier could not be generated"}
ERR_TEST_NUMBER = {:resp_code=>"051", :resp_desc=>"Customer number not permitted"}
ERR_UNKNOWN_REQ = {:resp_code=>"052", :resp_desc=>"Unknown submitted request"}
ERR_INVALID_NW = {:resp_code=>"053", :resp_desc=>"Transaction request network not provided"}
ERR_MISSING_TS = {:resp_code=>"054", :resp_desc=>"Timestamp not provided"}
ERR_CLIENT_MODE = {:resp_code=>"055", :resp_desc=>"Client Mode not set up"}
ERR_SMS_API_COUNT = {:resp_code=>"018", :resp_desc=>"Missing count to deduct"}
ERR_SMS_API_SUC = {:resp_code=>"000",:resp_desc=> "Successful"}
ERR_SMS_API_FAIL = {:resp_code=>"010",:resp_desc=> "General Failure"}
ERR_WRONG_SRC = {:resp_code=>"010",:resp_desc=> "Source must be API/api only"}    

ERR_DEACTIVATE_NW = {:resp_code=>"050",:resp_desc=> "This service has been disabled"}    
TIG_OFF_REQ = {:resp_code=>"055", :resp_desc=> "This service has been disabled"}    
ERR_MISSING_MOBILE_WALLET = {:resp_code=>"056", :resp_desc=>"Mobile Wallet not assigned to client"}    
    


configure :development,:production do
  dbhost= '10.105.85.80' #CONF['amfp_new']["host"]
  dbuser= 'albert' #CONF['amfp_new']["username"]
  dbpass= '%Alb345alb' #CONF['amfp_new']["password"]
  dbname= 'amfp_prod' #CONF['amfp_new']["database"] #"amfp_test" 
  dbport= '4044' #CONF['amfp_new']["port"]
  dbadapter= 'postgresql' #CONF['amfp_new']["adapter"]

  
  ActiveRecord::Base.establish_connection(
    adapter:  dbadapter,
    host:     dbhost,
    username: dbuser,
    password: dbpass,
    port:     dbport,
    database: dbname
  )
  
   
  orchard_conn = Faraday.new(:url => ORCHARD_URL, :headers => HEADERS, :ssl => {:verify => false}) do |faraday|
    #faraday.request  :url_encoded             # form-encode POST params
    faraday.response :logger                  # log requests to STDOUT
    faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
  end
  
  set :orchard_conn, orchard_conn
end

