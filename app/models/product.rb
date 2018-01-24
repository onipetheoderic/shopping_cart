class Product < ApplicationRecord
	has_many :order_items


	def self.search(search) #when using postgresql, you must include it
  		where("title ILIKE ? OR body ILIKE ? OR price ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
	end
  	
  	PROPERTY_OPTIONS = ['phones_and_tablet', 'tv_and_electronics', 'laptops_and_desktop', 'games_and_console', 'health_and_beauty', 
  		'home_and_office', 'wrist_watches', 'footwears', 'Sports_and_Fitness', 'toy_and_kids', 'provisions', 'cars_and_truck', 'jewellry',
  		 'land_and_properties', 'home_decor_kitchen', 'jobs']
  	validates_inclusion_of :categori, :in => PROPERTY_OPTIONS


  	

end


	