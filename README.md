# Waylon::Db2docs

This is a Skill for the [Waylon Bot Framework](https://github.com/jgnagy/waylon) that the bot lookup Db2 docs from [IBM](https://www.ibm.com/us-en). The documentation all comes from https://www.ibm.com/docs/en/db2. Note that neither this framework nor Skill (including this repo) are in any way affiliated with, sponsored by, or endorsed by IBM.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'waylon-db2docs'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install waylon-db2docs

Finally, require the newly installed code in your bot (usually in your `plugins.rb` file under the `# Skills` section):

```ruby
require "waylon/db2docs"
```

## Usage

The following skills are available by either direct messaging your bot, by `@` mentioning them, or just by mentioning the following pattern(s) in chat:

* `SQLnnnnx`:
  * Description: Looks up a Db2 SQL error code
  * Parameters: None
  * Permissions: `*`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jgnagy/waylon-db2docs.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
