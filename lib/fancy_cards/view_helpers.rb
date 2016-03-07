module FancyCards
  module ViewHelpers
    def fancy_card options = {}, &block
      @options = options
      render partial: options[:partial], layout: "fancy_cards/fancy_card_layout", &block
    end

    def fancy_card_wrapper
      content_tag :div, class: outer_wrapper_class(@options[:columns]) do
        content_tag :div, class: inner_wrapper_class(@options[:color]) do
          yield
        end
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

    def outer_wrapper_class columns = 1
      {
        "1" => %w[pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4],
        "2" => %w[pure-u-1 pure-u-md-2-3 pure-u-lg-1-2],
        "3" => %w[pure-u-1 pure-u-lg-3-4],
        "4" => %w[pure-u-1]
      }.fetch(columns.to_s, %w[pure-u-1 pure-u-sm-1-2 pure-u-md-1-3 pure-u-lg-1-4])
    end

    def inner_wrapper_class color = :white
      ["fancy-card", "fancy-card-#{color.to_s}"]
    end
  end
end
