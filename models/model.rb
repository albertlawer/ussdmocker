
class IncomingRequest < ActiveRecord::Base
  self.table_name="incoming_requests"
end

class ApiKey < ActiveRecord::Base
  self.table_name="api_keys"  
  belongs_to :a_client, class_name: 'Client', foreign_key: :client_id
end

class Client < ActiveRecord::Base
  self.table_name="clients"
  has_one :api_key, class_name: 'ApiKey', foreign_key: :client_id, primary_key: :id
end

class GhipssMaster < ActiveRecord::Base
end

class ThirdPartyMaster < ActiveRecord::Base
end

class RequestMaster < ActiveRecord::Base
  self.table_name="request_master"
end
