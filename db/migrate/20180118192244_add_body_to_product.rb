class AddBodyToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :body, :text
  end
end
