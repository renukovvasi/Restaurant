module CurrentCart
  extend ActiveSupport::Concern

    private

      def set_cart
        @cart = Cart.find(session[:cart_id])
      rescue ActiveRecord::RecordNotFound
        @cart = Cart.create(user_id: current_user.id, item_id: params[:item_id])
        session[:cart_id] = @cart.id
      end
end