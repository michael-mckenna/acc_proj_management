OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '374048919865-3feem15hba2psnldoharhjbn6ecgqd93.apps.googleusercontent.com', 
  'Z4OCBruAPN7PG_wZ0tIhqssa', {hd: 'tamu.edu', client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end