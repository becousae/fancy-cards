module FancyCards
  module ViewHelpers
    def fancy_card options = {}, &block
      render partial: options[:partial], layout: "fancy_cards/fancy_card_layout", &block
    end

    def fancy_card_wrapper
      content_tag :div, class: wrapper_class do
        yield
      end
    end

    private

    def default_params
      {
        partial: nil,
        color: nil,
        columns: 1
      }
    end

    def wrapper_class
      ["pure-u-1"]
    end
  end
end
