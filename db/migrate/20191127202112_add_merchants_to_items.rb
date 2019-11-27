class AddMerchantsToItems < ActiveRecord::Migration[5.1]
  def change
    add_reference :items, :merchant, foreign_key: true, on_delete: :cascade
  end
end
