class ContentsController < ApplicationController
	before_action :find_params, only: [:show, :update, :edit]


	def index
		contents = Content.all
	end

	def show
		@content = Content.last
	end

	def new
		@content = Content.new
		# @recipe = current_user.recipes.build
	end
	def create
		if Content.where(:nav => 'admin' ).present?
			@content = Content.first
		else 
			@content = Content.create(content_params)
			if @content.save
				render 'show'
			else
				render 'new'
			end
		end
	end

	def edit
	end

	def update
		if @content.update(content_params)
			redirect_to @content
		else
			render "edit" #renders the edit form
		end
	end

	def destroy
		@content = Content.find(params[:id])
		@content.destroy
		redirect_to root_path notice: "Successfully deleted"
	end



	private

	def find_detail
		@content = Content.find(params[:id])
	end

	def content_params
		params.require(:content).permit(:nav, :category_name1, :category_name2, :category_name3, :category_name4, :category_name5, :category_name18, :category_name6,
		:category_name7, :category_name8, :category_name9, :category_name10, :category_name11, :category_name12, :category_name13,
		:category_name14, :category_name15, :category_name16, :category_name17, :nav_bar_home, :nav_bar_contact, :nav_bar_about,
		:nav_bar_blog, :nav_bar_store, :nav_bar_featured, :facebook_link, :rss_link, :twitter_link, :thirdrow1, :thirdrow2,
		:thirdrow3, :ourinfo, :aboutme, :phone_number1, :phone_number2, :logo_link,)
	end

end











