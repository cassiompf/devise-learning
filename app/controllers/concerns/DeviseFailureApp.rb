class DeviseFailureApp < Devise::FailureApp
  def http_auth_body
    self.content_type = 'application/json'
    self.response_body = {
      sucess: false,
      message: i18n_message
    }.to_json
  end
end
