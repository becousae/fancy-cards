require "fancy_cards/version"
require 'fancy_cards/railtie' if defined?(Rails)
require 'purecss-rails'

module FancyCards
  class Engine < ::Rails::Engine
  end
end
