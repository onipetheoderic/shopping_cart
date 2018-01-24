class AddNavToContent < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :nav, :string
    add_column :contents, :category_name1, :string
    add_column :contents, :category_name2, :string
    add_column :contents, :category_name3, :string

    add_column :contents, :category_name4, :string
    add_column :contents, :category_name5, :string
    add_column :contents, :category_name18, :string

    add_column :contents, :category_name6, :string
    add_column :contents, :category_name7, :string
    add_column :contents, :category_name8, :string

    add_column :contents, :category_name9, :string
    add_column :contents, :category_name10, :string
    add_column :contents, :category_name11, :string

    add_column :contents, :category_name12, :string
    add_column :contents, :category_name13, :string
    add_column :contents, :category_name14, :string

    add_column :contents, :category_name15, :string
    add_column :contents, :category_name16, :string
    add_column :contents, :category_name17, :string

    add_column :contents, :nav_bar_home, :string
    add_column :contents, :nav_bar_contact, :string
    add_column :contents, :nav_bar_about, :string
    add_column :contents, :nav_bar_blog, :string
    add_column :contents, :nav_bar_store, :string
    add_column :contents, :nav_bar_featured, :string

    add_column :contents, :facebook_link, :string
    add_column :contents, :rss_link, :string
    add_column :contents, :twitter_link, :string

    add_column :contents, :thirdrow1, :string
    add_column :contents, :thirdrow2, :string
    add_column :contents, :thirdrow3, :string

    add_column :contents, :ourinfo, :text
    add_column :contents, :aboutme, :text
    add_column :contents, :phone_number1, :string
    add_column :contents, :phone_number2, :string
    add_column :contents, :logo_link, :string
  end
end
