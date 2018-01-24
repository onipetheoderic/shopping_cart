Rails.application.routes.draw do
  devise_for :users
  resources :products do
  	collection do 
  		get :phones_and_tablet
  		get :tv_and_electronics
      get :laptops_and_desktop
      get :games_and_console
      get :health_and_beauty
      get :home_and_office
      get :wrist_watches
      get :footwears
      get :sports_and_fitness
      get :toy_and_kids
      get :provisions
      get :cars_and_truck
      get :jewellry
      get :land_and_properties
      get :home_decor_kitchen
      get :jobs
      get :clothings
  	end
  end
  resources :order_items
  resource :carts, only: [:show]

  resources :details do 
  	collection do
  		get :finder #this is to link the finder method in the details controller
      
  	end
  end

  root "details#finder"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
