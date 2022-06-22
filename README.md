# Waylon::Jokes

This is a Skill for the [Waylon Bot Framework](https://github.com/jgnagy/waylon) that enables the bot to tell some jokes. The jokes should be safe for work and are all from https://icanhazdadjoke.com/.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'waylon-jokes'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install waylon-jokes

Finally, require the newly installed code in your bot (usually in your `plugins.rb` file under the `# Skills` section):

```ruby
require "waylon/jokes"
```

## Usage

The following skills are available by either direct messaging your bot or by `@` mentioning them:

* `tell me a joke`:
  * Description: Tells a dad joke
  * Parameters: None
  * Permissions: `*`
  * Alternatives:
    * `joke`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jgnagy/waylon-joke.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
