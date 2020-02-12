require "carriage/version"

module Carriage
  class Error < StandardError; end

  HOSTS_AND_REGIONS = {
      au: 	"https://www.amazon.com.au/gp/aws/cart/add.html",
      br:   "https://www.amazon.com.br/gp/aws/cart/add.html",
      ca: "https://www.amazon.ca/gp/aws/cart/add.html",
      fr: "https://www.amazon.fr/gp/aws/cart/add.html",
      de: "https://www.amazon.de/gp/aws/cart/add.html",
      in: "https://www.amazon.in/gp/aws/cart/add.html",
      it: "https://www.amazon.it/gp/aws/cart/add.html",
      jp: "https://www.amazon.co.jp/gp/aws/cart/add.html",
      mx: "https://www.amazon.com.mx/gp/aws/cart/add.html",
      sg: "https://www.amazon.sg/gp/aws/cart/add.html",
      es: "https://www.amazon.es/gp/aws/cart/add.html",
      tr: "https://www.amazon.com.tr/gp/aws/cart/add.html",
      ae: "https://www.amazon.ae/gp/aws/cart/add.html",
      uk: "https://www.amazon.co.uk/gp/aws/cart/add.html",
      us: "https://www.amazon.com/gp/aws/cart/add.html"
  }.freeze

  def self.build(items, tag, key_id)
    return nil if items.nil? || items.empty?
    attribution_params = (key_id.nil? || key_id.empty?) ? "AssociateTag=#{tag}" : "AssociateTag=#{tag}&AWSAccessKeyId=#{key_id}"

    params = ""
    index = 0

    while index < items.size
      params << '&' if index > 0
      params << "ASIN.#{index+1}=#{items[index][:asin]}&Quantity.#{index+1}=#{items[index].fetch(:quantity, 1)}"
      index += 1
    end

    "#{HOSTS_AND_REGIONS[:us]}?#{params}&#{attribution_params}"
  end
end
