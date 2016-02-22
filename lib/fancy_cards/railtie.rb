require 'fancy_cards/view_helpers'
module FancyCards
  class Railtie < Rails::Railtie
    initializer "fancy_cards.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
