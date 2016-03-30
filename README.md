# LogOnelineFormatter

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/log_oneline_formatter`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'log_oneline_formatter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install log_oneline_formatter

## Usage

TODO: Write usage instructions here

in application.rb or other
config.logger = Logger.new "#{Rails.root.join('log', Rails.env)}.log"
config.logger.formatter = LogOnelineFormatter::Formatter.new(::Logger::Formatter)

## Development

rails new sample
cd sample
git clone https://github.com/gendosu/log_oneline_formatter
echo "gemspec path: 'log_oneline_formatter'" > Gemfile

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gendosu/log_oneline_formatter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
