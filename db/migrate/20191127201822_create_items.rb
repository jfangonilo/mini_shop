class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :status
      t.integer :price
      t.string :description
      t.string :image
      t.integer :inventory
    end
  end
end
