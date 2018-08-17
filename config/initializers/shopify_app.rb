ShopifyApp.configure do |config|
  include ActionView::Helpers::AssetUrlHelper

  config.application_name = "My Shopify App"
  config.api_key = ENV['API_KEY']
  config.secret = ENV['API_SECRET']
  config.scope = "read_orders, read_products, write_script_tags"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop

  config.scripttags = [
    {event: 'onload', src: -> (domain) { asset_url('my_file.js', host: ENV['APP_DOMAIN']) } }
  ]
end
