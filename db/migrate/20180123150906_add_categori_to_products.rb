class AddCategoriToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :categori, :string
    add_column :products, :categori2, :string

  end
end
