class DetailsController < ApplicationController
	before_action :find_params, only: [:show, :update, :edit]

	def index
		@details = Detail.all.order('created_at DESC')
	end

	def new
		@detail = Detail.new
	end

	def show
		@detail = Detail.find(params[:id])
	end

	def create
		@detail = Detail.new(details_params)
		if @detail.save
			redirect_to @detail
		else
			render "new"
		end
	end
	#u = User.new(:email => "user@name.com", :password => 'password', :password_confirmation => 'password', :admin => true)
	# u.save 

	def update#in this update aspect this is the best method for rails 5, make sure all the gems are complete and arranged in order
		
		if @detail.update(details_params)
			redirect_to @detail
		else
			render "edit" #renders the edit form
		end
	end


	def finder
		@products = Product.all.order("created_at DESC")#this is the main one
		@counter = Product.where(:categori => 'phones_and_tablet').count
		@counter_tv = Product.where(:categori => 'tv_and_electronics').count
		@counter_lap = Product.where(:categori => 'laptops_and_desktop').count
		@counter_game = Product.where(:categori => 'games_and_console').count
		@counter_health = Product.where(:categori => 'health_and_beauty').count
		@counter_home = Product.where(:categori => 'home_and_office').count
		@counter_watch = Product.where(:categori => 'wrist_watches').count
		@counter_foot = Product.where(:categori => 'footwears').count
		@counter_sport = Product.where(:categori => 'Sports_and_Fitness').count
		@counter_toy = Product.where(:categori => 'toy_and_kids').count
		@counter_provision = Product.where(:categori => 'provisions').count
		@counter_car = Product.where(:categori => 'cars_and_truck').count
		@counter_jewel = Product.where(:categori => 'jewellry').count
		@counter_land = Product.where(:categori => 'land_and_properties').count
		@counter_kitchen = Product.where(:categori => 'home_decor_kitchen').count
		@counter_job = Product.where(:categori => 'jobs').count
		@counter_cloth = Product.where(:categori => 'jobs').count
  		@order_item = current_order.order_items.new
		
  		if Detail.last.present?
			@detail = Detail.last
			if @detail.update(details_params2)
			end
			
		end
	render :template => 'home/index'
	end

	def edit

	end

	#This is the default working update method
	# def update
	# 	if @detail.update(details_params)
	# 		redirect_to @details
	# 	else
	# 		render 'edit'
	# 	end
	# end





  private
  def find_params
  	@detail = Detail.find(params[:id])
  end

  def details_params
  	params.require(:detail).permit(:title, :body)
  end
  
  def details_params2
	params.permit(:title, :body, :category, :category1, :category2, :category3, :category4, :category5, :category6, :category7, 
     :category8, :category9, :category10, :category11, :category12 )
  end

  def user_params
  	params.permit(:email, :password, :password_confirmation, :admin)
  end

end
