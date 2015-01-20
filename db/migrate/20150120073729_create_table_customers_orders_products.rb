class CreateTableCustomersOrdersProducts < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name

      t.timestamps
    end

    create_table :orders do |t|
      t.integer :customer_id
      t.integer :product_id

      t.timestamps
    end
    create_table :products do |t|
      t.string :name

      t.timestamps
    end
  end
end
