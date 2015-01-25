Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Settings.facebook_key, Settings.facebook_secret
end
