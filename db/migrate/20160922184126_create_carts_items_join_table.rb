class CreateCartsItemsJoinTable < ActiveRecord::Migration[5.0]
  def change
    create_table :carts_items, id: false do |t|
      t.integer :item_id
      t.integer :cart_id
    end

    add_index :carts_items, [:item_id, :cart_id]
  end
end
