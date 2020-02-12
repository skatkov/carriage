# frozen_string_literal: true

require 'uri'

module Carriage
  class Request
    def self.call(locale, params)
      "#{Locale.new(locale).host}?#{URI.encode_www_form params}"
    end
  end
end