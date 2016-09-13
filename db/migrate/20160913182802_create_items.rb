class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.float :price, index: true
      t.string :name, index: true
      t.boolean :real
      t.float :weight
      t.string :description

      t.timestamps
    end
  end
end
