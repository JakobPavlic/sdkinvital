Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '450903036563.apps.googleusercontent.com', '4MIzLANLH5s9A4xhHYFTQ2c5', {access_type: 'online', approval_prompt: ''}
end
