class ChangeBidTableNameToSpreeBid < ActiveRecord::Migration

  def change
    rename_table :bids, :spree_bids
  end

end
