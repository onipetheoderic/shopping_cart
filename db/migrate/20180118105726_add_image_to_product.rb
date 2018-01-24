class AddImageToProduct < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :image, :string
  	add_column :products, :comment, :string
  	add_column :products, :content, :string
  end
end
