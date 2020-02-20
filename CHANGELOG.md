# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

## [1.3]
## Add
- Code-style now adheres to standard gem 

## Change
- AssociateTag is not required for Carriage.build anymore

## [1.2.1]
- Rollback some changes in gemspec

## [1.2.0]
### Breaking change
- hash now accepts :id key, but doesn't accept :OfferListingId anymore.

### Added
- test to verify that quantity could be set

## [1.1.1]
### Added
- Project website

## [1.1.0]
### Added
- Project logo

### Changed
- Improve gem description
- Clean-up Gemfile
- Simplified Locale error handling
- Refactoring 

## [1.0.0]

- Finalize documentation
- Release 1 version to show completeness of api

## [0.3.0]

### Added
- Support for Amazon locales
- Support for OfferListingId

## [0.2.0]
### Added
- Set default quantity for a product
- Write down locales and respective hosts associated with them

### Changed
- Using `URI.encode_www_form` to build URL parameters
- `AWSAccessKeyId` is not a required argument

## [0.1.0]
First public version, only focused on supporting one region - US.
