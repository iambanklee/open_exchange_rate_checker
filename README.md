# OpenExchangeRateChecker

This is used to get exchange rates from [Open Exchange Rates](https://openexchangerates.org/)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'open_exchange_rate_checker'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install open_exchange_rate_checker

## Usage
Example:

Get 2015-05-07 GBP rates (base rate: 'USD')
```
rate_checker = OpenExchangeRateChecker::RateChecker.new
gbp_rate     = rate_checker.get_date_rate('2015-05-07', 'GBP')
```
