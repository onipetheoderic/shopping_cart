class HomeController < ApplicationController
	
	def index
  		@products = Product.all.order("created_at DESC")
  		@order_item = current_order.order_items.new
  		
  		@detail = Detail.last
  		
  	end


end
