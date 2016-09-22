class CreatePositions < ActiveRecord::Migration[5.0]
  def up
    create_table :positions do |t|
      t.references :item, foreign_key: true
      t.references :cart, foreign_key: true
      t.integer :quantity

      t.timestamps
    end

    drop_table :carts_items
  end

  def down
    drop_table :positions

    create_table :carts_items, id: false do |t|
      t.integer :item_id
      t.integer :cart_id
    end

    add_index :carts_items, [:item_id, :cart_id]
  end
end
