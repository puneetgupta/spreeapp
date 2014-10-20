class CreateBids < ActiveRecord::Migration
  def change
    create_table :bids do |t|
      t.integer :user_id
      t.string :price
      t.integer :variant_id

      t.timestamps
    end
  end
end
