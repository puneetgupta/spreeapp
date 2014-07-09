class AddUserIdToCreditCard < ActiveRecord::Migration
  def change
    add_column :spree_credit_cards, :user_id, :integer
    add_column :spree_credit_cards, :paypal_card_id, :string
    add_column :spree_credit_cards, :paypal_payer_id, :string
  end
end
