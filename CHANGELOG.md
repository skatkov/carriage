# Change Log
All notable changes to this project will be documented in this file.
This project adheres to [Semantic Versioning](http://semver.org/).

## [Unreleased]

- Adding support for Amazon regions

## [0.2.0]
### Added
- Set default quantity for a product
- Write down regions and respective hosts associated with them

### Changed
- Using `URI.encode_www_form` to build URL parameters
- `AWSAccessKeyId` is not a required argument

## [0.1.0]
First public version, only focused on supporting one region - US.