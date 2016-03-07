# FancyCards

Easily add some colored cards to your application, which you can fill like you want.
FancyCards has been developed to easily fill your page with content. 
![Fancy_cards](http://puu.sh/npRKD/9c61c92fde.png)
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fancy_cards', git: 'https://github.com/becousae/fancy_cards.git'
```

And then execute:

    $ bundle

## Usage

Add a div with class `fancy-cards` to your webview, in which you will place the cards.
Cards can be generated through the `fancy_card` helper, which is available in the views.
`fancy_card` is an extension of the `render` function. Most options available to `render` are the same in `fancy_card`

Render a partial inside a fancy card by putting this in your view:
```ruby
<%= fancy_card partial: "users/partial" %>
```

You can also use blocks to render stuff:
```erb
<%= fancy_card do %>
    Content of fancy card
<% end %>
```

### Options

#### Color
Choose the color of your card by passing a color. Options are `:red`, `:blue`, `:purple`, `:green`, `:orange` and `:yellow`.
```ruby
<%= fancy_card partial: "users/partial", color: :red %>
```

#### Size
Choose the number of columns your fancy card will expand over by passing the `columns` option. Options are the numbers 1 to 4.
```ruby
<%= fancy_card partial: "users/partial", columns: 1 %>
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/becousae/fancy_cards.
This project is intended to be a safe, welcoming space for collaboration,
and contributors are expected to adhere to the
[Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
