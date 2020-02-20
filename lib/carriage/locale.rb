# frozen_string_literal: true

module Carriage
  class Locale
    class NotFound < KeyError; end

    HOSTS = {
      au: "https://www.amazon.com.au/gp/aws/cart/add.html",
      br: "https://www.amazon.com.br/gp/aws/cart/add.html",
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
      us: "https://www.amazon.com/gp/aws/cart/add.html",
    }.freeze

    private_constant :HOSTS

    attr_reader :host

    def initialize(locale)
      @host = HOSTS.fetch(locale.to_sym.downcase) { |value|
        raise NotFound, "Locale not found: :#{value}"
      }
    end
  end
end
