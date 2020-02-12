require 'carriage/version'
require 'carriage/locale'
require 'uri'

module Carriage
  def self.call(locale, params)
    "#{Locale.new(locale).host}?#{URI.encode_www_form params}"
  end

  def self.build(items, tag:, key_id: nil, locale: :us)
    return nil if items.nil? || items.empty?

    params = {}
    index = 0

    while index < items.size
      params[:"ASIN.#{index + 1}"] = items[index][:asin]
      params[:"Quantity.#{index + 1}"] = items[index].fetch(:quantity, 1)
      index += 1
    end

    params[:AssociateTag] = tag
    params[:AWSAccessKeyId] = key_id unless (key_id.nil? || key_id.empty?)

    call(locale, params)
  end
end
