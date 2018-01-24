class ProductsController < ApplicationController
  
  def index
    @detail = Detail.last
    @products = Product.all.order("created_at DESC") #to display all the products
    if params[:search]
        @products = Product.search(params[:search]).order("created_at DESC")
    else
        @products = Product.all.order('created_at DESC')
    end
    

  end


  def new
    @product = Product.new #to create a new product
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render 'new'
    end
  end

  def show
     @detail = Detail.last #to allow the sidebar which is from details to work
     @product = Product.find(params[:id])
     @order_item = current_order.order_items.new
     cat = @product.categori
     @related_products = Product.where(:categori => cat).paginate(page: params[:page], per_page: 5)

  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update_attributes(product_params)
      redirect_to products_path
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path    
  end

  def phones_and_tablet
    @products = Product.where(:categori => 'phones_and_tablet')
    @order_item = current_order.order_items.new #so that it can work in the home index page
    @counter = Product.where(:categori => 'phones_and_tablet').count

  end

  def tv_and_electronics
    @products = Product.where(:categori => 'tv_and_electronics')
    @order_item = current_order.order_items.new #so that it can work in the home index page
    @counter_tv = Product.where(:categori => 'tv_and_electronics').count

  end

def laptops_and_desktop
    @products = Product.where(:categori => 'laptops_and_desktop')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_lap = Product.where(:categori => 'laptops_and_desktop').count

end

def games_and_console
    @products = Product.where(:categori => 'games_and_console')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_game = Product.where(:categori => 'games_and_console').count

end

def health_and_beauty
    @products = Product.where(:categori => 'health_and_beauty')
    @order_item = current_order.order_items.new #so that it can work in the home index page
    @counter_health = Product.where(:categori => 'health_and_beauty').count

end

def home_and_office
    @products = Product.where(:categori => 'home_and_office')
    @order_item = current_order.order_items.new #so that it can work in the home index page
    @counter_home = Product.where(:categori => 'home_and_office').count

end

def wrist_watches
    @products = Product.where(:categori => 'wrist_watches')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_watch = Product.where(:categori => 'wrist_watches').count

end

def footwears
    @products = Product.where(:categori => 'footwears')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_foot = Product.where(:categori => 'footwears').count

end

def sports_and_fitness
    @products = Product.where(:categori => 'Sports_and_Fitness')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_sport = Product.where(:categori => 'Sports_and_Fitness').count

end

def toy_and_kids
    @products = Product.where(:categori => 'toy_and_kids')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_toy = Product.where(:categori => 'toy_and_kids').count

end

def provisions
    @products = Product.where(:categori => 'provisions')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_provision = Product.where(:categori => 'provisions').count

end

def cars_and_truck
    @products = Product.where(:categori => 'cars_and_truck')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_car = Product.where(:categori => 'cars_and_truck').count

end

def jewellry
    @products = Product.where(:categori => 'jewellry')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_jewel = Product.where(:categori => 'jewellry').count

end

def land_and_properties
    @products = Product.where(:categori => 'land_and_properties')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_land = Product.where(:categori => 'land_and_properties').count

end

def home_decor_kitchen
    @products = Product.where(:categori => 'home_decor_kitchen')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_kitchen = Product.where(:categori => 'home_decor_kitchen').count

end

def jobs
    @products = Product.where(:categori => 'jobs')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_job = Product.where(:categori => 'jobs').count

end

def clothings
    @products = Product.where(:categori => 'clothings')
    @order_item = current_order.order_items.new #so that you can place order
    @counter_cloth = Product.where(:categori => 'clothings').count

end

 
  private
    def product_params
      params.require(:product).permit(:title, :price, :image, :comment, :body, :categori)
    end

    def content_params
      params.require(:content).permit(:nav, :category_name1, :category_name2, :category_name3, :category_name4, :category_name5, :category_name18, :category_name6,
      :category_name7, :category_name8, :category_name9, :category_name10, :category_name11, :category_name12, :category_name13,
      :category_name14, :category_name15, :category_name16, :category_name17, :nav_bar_home, :nav_bar_contact, :nav_bar_about,
      :nav_bar_blog, :nav_bar_store, :nav_bar_featured, :facebook_link, :rss_link, :twitter_link, :thirdrow1, :thirdrow2,
      :thirdrow3, :ourinfo, :aboutme, :phone_number1, :phone_number2, :logo_link)
    end
end
#in this application product is saved to the database while cart is saved to the session