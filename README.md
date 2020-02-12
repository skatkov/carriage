[![Gem Version](https://badge.fury.io/rb/carriage.svg)](https://badge.fury.io/rb/carriage)
[![Maintainability](https://api.codeclimate.com/v1/badges/79ddcbeb02fe9447cd0d/maintainability)](https://codeclimate.com/github/skatkov/carriage/maintainability)
[![Build Status](https://travis-ci.org/skatkov/carriage.svg?branch=master)](https://travis-ci.org/skatkov/carriage)

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

A lot of examples could be found [in tests](https://github.com/skatkov/carriage/blob/master/test/carriage_test.rb)

There are basically two ways to use this gem `bare metal` and with `builder`. Let's start off with baremetal:

### Bare metal
```
Carriage.call(:us, {AssociateTag:'tag', "OfferListingId.1": "B00WR23X5I", "Quantity.1": 1})
```
The only thing it will validate, is a presence of locale. All other parameters will be converted without any verification. So be carefull

### Builder
Library also offers a slightly simpler interface that tries to valide data.

```
items = [
 {OfferListingId: '123123'}.
 {ASIN: '1231234', quantity: 2}
]

Carriage.build(items, tag: 'my_attribution_tag', locale: :uk)
```
* Every item should be a hash, with `ASIN` or `OfferListingId` keys provided. By default quantity is 1.
* Carriage.build also requires `:tag` attribute and defaults to `locale: :us` if nothing else was provided.

## Getting help

* Ask specific questions about the API on the [Amazon forum](https://forums.aws.amazon.com/forum.jspa?forumID=9).
* Report bugs and discuss potential features in [GitHub issues](https://github.com/skatkov/carriage/issues).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Carriage project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/skatkov/carriage/blob/master/CODE_OF_CONDUCT.md).
