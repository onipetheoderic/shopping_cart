class CartsController < ApplicationController
	def show
		@order_items = current_order.order_items #to get all the items in the cart
	end
end
