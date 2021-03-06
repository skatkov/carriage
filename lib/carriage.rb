require "carriage/version"
require "carriage/locale"
require "carriage/url"
require "carriage/builder"
require "forwardable"

module Carriage
  class << self
    extend Forwardable

    def_delegator "Carriage::Url", :call
    def_delegator "Carriage::Builder", :call, :build
  end
end
