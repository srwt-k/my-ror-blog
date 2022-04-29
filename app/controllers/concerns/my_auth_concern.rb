module MyAuthConcern
  extend ActiveSupport::Concern
  
  def verify_http_authenticate
      return authenticate_or_request_with_http_basic do |username, password|
          username == '1' && password == '1'
      end
  end
end