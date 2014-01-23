OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, 361824873952147, "b7eefc8c7c5af4aad48bdc761086234d", 
  :scope => 'email, read_friendlists, photo_upload, user_groups, user_friends, user_photos'
end