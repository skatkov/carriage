module Carriage
  class Builder
    class << self
      def call(items, tag: nil, key_id: nil, locale: :us)
        params = {}

        wrap(items).each_with_index do |obj, index|
          item = obj.transform_keys(&:upcase)

          if item[:ASIN]
            params[:"ASIN.#{index + 1}"] = item[:ASIN]
          elsif item[:ID]
            params[:"OfferListingId.#{index + 1}"] = item[:ID]
          else
            next
          end
          params[:"Quantity.#{index + 1}"] = item.fetch(:QUANTITY, 1)
        end

        params[:AssociateTag] = tag unless tag.nil? || tag.empty?
        params[:AWSAccessKeyId] = key_id unless key_id.nil? || key_id.empty?

        Carriage.call(locale, params)
      end

      private

      def wrap(object)
        if object.nil?
          []
        elsif object.respond_to?(:to_ary)
          object.to_ary || [object]
        else
          [object]
        end
      end
    end
  end
end
