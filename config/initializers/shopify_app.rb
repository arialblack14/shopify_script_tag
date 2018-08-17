ShopifyApp.configure do |config|
  include ActionView::Helpers::AssetUrlHelper

  config.application_name = "My Shopify App"
  config.api_key = "216cadca2dcdbc17a64f464c03f76e1a"
  config.secret = "f78b4396435db2b7905c5fbe366340c9"
  config.scope = "read_orders, read_products, write_script_tags"
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop

  config.scripttags = [
    {event: 'onload', src: -> (domain) { asset_url('my_file.js', host: ENV['APP_DOMAIN']) } }
  ]
end
