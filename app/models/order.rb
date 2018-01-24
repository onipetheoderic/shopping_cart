class Order < ApplicationRecord
	has_many :order_items
	before_save :set_subtotal

	def subtotal
		order_items.collect {|order_item| order_item.valid? ? (order_item.unit_price*order_item.quantity) : 0}.sum
	end

	private
		def set_subtotal
			self[:subtotal] = subtotal
		end
end



#-----------------WHY WE USED THE RAILS COLLECT METHOD------------------>
#
# We used the collect method so that the version of the order_items attributes that would be saved into the db would be modified
#
#
# collect allows you to transform each element of your collection object (Array, Hash, or your own object) into something else, ending up with an Array.

# Here's a simple example of taking an Array of integers and multiplying each of them by 2.

# [1, 2, 3].collect{ |num| num * 2 }
# # [2, 4, 6]

#-------------Difference between the collect method and each method------------------->
#Array#each takes an array and applies the given block over all items. It doesn't affect the array or creates a new object.
# It is just a way of looping over items. Also it returns self.

#   arr=[1,2,3,4]
#   arr.each {|x| puts x*2}

# Prints 2,4,6,8 and returns [1,2,3,4] no matter what, becos each is just a looper...

#Array#collect is same as Array#map and it applies the given block of code on all the items and returns the new array. 
#simply each element of a sequence into a new form'

  #arr.collect {|x| x*2}

#Returns [2,4,6,8]