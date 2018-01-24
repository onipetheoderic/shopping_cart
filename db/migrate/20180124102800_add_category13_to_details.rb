class AddCategory13ToDetails < ActiveRecord::Migration[5.1]
  def change
    add_column :details, :category13, :string
    add_column :details, :category14, :string
    add_column :details, :category15, :string
  end
end
