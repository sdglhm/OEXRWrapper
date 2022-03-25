# OEXRWrapper

Simple gem written for learning purposes. Fetches latest exchange rate from OpenExchangeRates.org and returns value.  

## ToDo
- [X] Get latest currency exchange rate
- [X] Implement currencies list
- [ ] Write tests (Probably)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'oexrwrapper'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install oexrwrapper

## Usage

```ruby
client = OEXRWrapper::Client.new(app_id: key, base_rate_code: 'usd')

# Get all latest exchange rates
client.latest.retrieve

# Get a single currency exchange rate from code
client.latest.usd
client.latest.jpy

# Get list of supported currencies
client.currencies.retrieve

# Convert a three letter currency code to currency name
client.currencies.code_to_string('usd')
client.currencies.code_to_s('usd')
```
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/sdglhm/OEXRWrapper. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/sdglhm/OEXRWrapper/blob/master/CODE_OF_CONDUCT.md).

## Code of Conduct

Everyone interacting in the Oexrwrapper project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/oexrwrapper/blob/master/CODE_OF_CONDUCT.md).
