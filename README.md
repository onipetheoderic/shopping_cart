def content_params
		params.require(:content).permit(:nav, :category_name1, :category_name2, :category_name3, :category_name4, :category_name5, :category_name18, :category_name6,
		:category_name7, :category_name8, :category_name9, :category_name10, :category_name11, :category_name12, :category_name13,
		:category_name14, :category_name15, :category_name16, :category_name17, :nav_bar_home, :nav_bar_contact, :nav_bar_about,
		:nav_bar_blog, :nav_bar_store, :nav_bar_featured, :facebook_link, :rss_link, :twitter_link, :thirdrow1, :thirdrow2,
		:thirdrow3, :ourinfo, :aboutme, :phone_number1, :phone_number2, :logo_link,)
	end

# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
