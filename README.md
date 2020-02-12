# Carriage

Carriage is a Ruby wrapper to [Amazon Product Advertising API 5.0 - Cart Form](https://webservices.amazon.com/paapi5/documentation/add-to-cart-form.html). This gem helps add any number of items to a customer's shopping cart and sending him to Amazon website to complete his order. 

To use this gem, you need to have Amazon **AssociateTag**, so don't forget to [register first](https://webservices.amazon.com/paapi5/documentation/register-for-pa-api.html) with Amazon Associate program.

Programmatic access to product data is out of scope for this gem, but I recommend to use [vacuum gem](https://github.com/hakanensari/vacuum) if there is such a need.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'carriage'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install carriage

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/carriage. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/carriage/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Carriage project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/carriage/blob/master/CODE_OF_CONDUCT.md).
