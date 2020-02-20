# frozen_string_literal: true

require "uri"

module Carriage
  class Url
    def self.call(locale, params)
      "#{Locale.new(locale).host}?#{URI.encode_www_form params}"
    end
  end
end
