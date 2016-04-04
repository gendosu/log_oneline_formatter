![status image](https://travis-ci.org/gendosu/log_oneline_formatter.svg?branch=master)

# LogOnelineFormatter

This gem is a very simple remove line end from multi line log for Rails.
Such as ActiveRecord::RecordNotFound, Routing Error and more.

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

in application.rb or other
```
config.logger = Logger.new "#{Rails.root.join('log', Rails.env)}.log"
config.log_formatter = LogOnelineFormatter::Formatter.new(::Logger::Formatter)
```

## Development

```
rails new sample
cd sample
git clone https://github.com/gendosu/log_oneline_formatter
echo "gemspec path: 'log_oneline_formatter'" > Gemfile
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gendosu/log_oneline_formatter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
