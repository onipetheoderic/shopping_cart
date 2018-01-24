class Detail < ApplicationRecord
	after_initialize do
	    if new_record?
	      self.title ||= 'Mobile Phones' # be VERY careful with ||= and False values
	      self.body ||= 'Tv and Electronics'
	      self.category ||= 'Laptops and Desktops'
	      self.category1 ||= 'Game and Console'
	      self.category2 ||= 'Health and Beauty'
	      self.category3 ||= 'Footwears'
	      self.category4 ||= 'Home and Offices'
	      self.category5 ||= 'Wrist Watches'
	      self.category6 ||= 'Footwears'
	      self.category7 ||= 'Sport and Fitness'
	      self.category8 ||= 'Tv and Kids Products'
	      self.category9 ||= 'Provisions'
	      self.category10 ||= 'Cars and Truck'
	      self.category11 ||= 'Jewellry'
	      self.category12 ||= 'Land and Properties'
	      self.category13 ||= 'Home and decor and Kitchen'
	      self.category14 ||= 'Jobs'
	      self.category15 ||= 'Clothings'
	    end
	end
end
	
	