require "carriage/version"

module Carriage
  class Error < StandardError; end

  BASE_URL = "https://www.amazon.com/gp/aws/cart/add.html?".freeze

  def self.build(items, tag, key_id)
    return nil if items.nil? || items.empty?

    params = ""
    index = 0

    while index < items.size
      params << '&' if index > 0
      params << "ASIN.#{index+1}=#{items[index][:asin]}&Quantity.#{index+1}=#{items[index][:quantity]}"
      index += 1
    end

    if key_id.nil? || key_id.empty?
      "#{BASE_URL}#{params}&AssociateTag=#{tag}"
    else
      "#{BASE_URL}#{params}&AssociateTag=#{tag}&AWSAccessKeyId=#{key_id}"
    end
  end
end
