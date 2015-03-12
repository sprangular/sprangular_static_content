require 'spree_core'
require 'rails-assets-marked'
require 'rails-assets-angular-marked'
require 'sprangular_static_content/engine'

# spree_static_content depends on StoreController
if !defined?(Spree::StoreController)
  class Spree::StoreController < Sprangular::BaseController
  end
end
