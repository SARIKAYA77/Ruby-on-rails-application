class AddCategoryIdToOrders < ActiveRecord::Migration[6.0]
  def change
    add_column :orders, :category_id, :integer
  end
end
