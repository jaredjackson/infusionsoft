module Infusionsoft
  class Client
    module Order
      # The Order Service allows you to create and charge an order.
      
      # @param [Integer] [required] contact_id ... ID of the order's Contact (0 is not a valid contact id)
      # @param [Integer] [required] card_id ... ID of the credit card to charge. To skip charging, set to "0"
      # @param [Integer] [optional] plan_id ... ID of the payment plan. If not specified, the default plan is used.
      # @param [Array]   [required] product_ids ... a list of integers representing the prouducts to be added to the order. This cannot be empty if a subscription is not specified.
      # @param [Array]   [required] subscription_ids ... a list of integers representing the subscription(s) to be added to the order. This cannot be empty if a product_id is not specified.
      # @param [Boolean] [required] process_specials ... Whether or not the order should consider discounts that would normally be applied if this order was being placed through the shopping cart.
      # @param [Array]   [required] promo_codes ... Promo codes to add to the cart; only used if process_specials is turned on.
      # @param [Integer] [required] lead_affiliate_id ... ID of the lead affiliate
      # @param [Integer] [required] sales_affiliate_id ... ID of the sales affiliate
      # @return [] returns the result of the order placement along with IDs of the order and invoice that were created and the status of a credit card charge if applicable.
      
      def order_place_order(contact_id, card_id = 0, plan_id = 0, product_ids = [], subscription_ids = [], process_specials = false, promo_codes = [], lead_affiliate_id = 0, sales_affiliate_id = 0)
        response = get('OrderService.placeOrder', contact_id, card_id, plan_id, product_ids, subscription_ids, process_specials, promo_codes, lead_affiliate_id, sales_affiliate_id)
      end
      
    end
  end
end
