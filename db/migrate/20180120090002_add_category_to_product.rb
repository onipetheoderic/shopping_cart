class AddCategoryToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category, :string


    add_column :products, :category_name1, :string
    add_column :products, :category_name2, :string
    add_column :products, :category_name3, :string

    add_column :products, :category_name4, :string
    add_column :products, :category_name5, :string
    add_column :products, :category_name18, :string

    add_column :products, :category_name6, :string
    add_column :products, :category_name7, :string
    add_column :products, :category_name8, :string

    add_column :products, :category_name9, :string
    add_column :products, :category_name10, :string
    add_column :products, :category_name11, :string

    add_column :products, :category_name12, :string
    add_column :products, :category_name13, :string
    add_column :products, :category_name14, :string

    add_column :products, :category_name15, :string
    add_column :products, :category_name16, :string
    add_column :products, :category_name17, :string

    add_column :products, :nav_bar_home, :string
    add_column :products, :nav_bar_contact, :string
    add_column :products, :nav_bar_about, :string
    add_column :products, :nav_bar_blog, :string
    add_column :products, :nav_bar_store, :string
    add_column :products, :nav_bar_featured, :string

    add_column :products, :facebook_link, :string
    add_column :products, :rss_link, :string
    add_column :products, :twitter_link, :string

    add_column :products, :thirdrow1, :string
    add_column :products, :thirdrow2, :string
    add_column :products, :thirdrow3, :string

    add_column :products, :ourinfo, :text
    add_column :products, :aboutme, :text
    add_column :products, :phone_number1, :string
    add_column :products, :phone_number2, :string
    add_column :products, :logo_link, :string
    


  end
end
