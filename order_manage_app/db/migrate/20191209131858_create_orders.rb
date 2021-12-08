class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :title
      t.string :money
      t.text :content


      t.timestamps
    end
  end
end
