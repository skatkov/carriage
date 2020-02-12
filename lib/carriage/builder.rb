module Carriage
  class Builder
    class << self
      def call(items, tag:, key_id: nil, locale: :us)
        return nil if items.nil? || items.empty?

        params = {}
        index = 0


        while index < items.size
          item = items[index].transform_keys(&:upcase)

          if item[:ASIN]
            params[:"ASIN.#{index + 1}"] = item[:ASIN]
          else
            params[:"OfferListingId.#{index + 1}"] = item[:OFFERLISTINGID]
          end
          params[:"Quantity.#{index + 1}"] = item.fetch(:QUANTITY, 1)
          index += 1
        end

        params[:AssociateTag] = tag
        params[:AWSAccessKeyId] = key_id unless (key_id.nil? || key_id.empty?)

        Carriage.call(locale, params)
      end
    end
  end
end