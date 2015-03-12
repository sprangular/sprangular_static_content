# spree_static_content depends on StoreController
if !defined?(Spree::StoreController)
  class Spree::StoreController < Sprangular::BaseController
  end
end
