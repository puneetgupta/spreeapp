# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Spree::Core::Engine.load_seed if defined?(Spree::Core)
Spree::Auth::Engine.load_seed if defined?(Spree::Auth)

Spree::CustomEmailContent.create([{name: "winner_chosen_email"},{body: {:en=>'<p>Hello,<br /><br /><strong>Congrats</strong>&nbsp;! You are selected as Winner for the bid which you have done earlier on Auction House for Product #product .<br />Proceed for payment checkout via below link.</p>\r\n<p><br />#payment<br /><br />Note : Link will expire in 48hrs, Once link is expired you will no longer be winner for this Bid.<br />Thanks<br />Auction House</p>'}},{language: "en"}])
Spree::CustomEmailContent.create([{name: "bid_placed_email"},{body: {:en=>'<p>Hello Username,</p>\r\n<p><br />Thanks for you showing your interest in Product. Your Bid has been placed successfully.</p>\r\n<p>You can check #product #url_of_product</p>\r\n<p>Will touch base soon once winner is selected.</p>\r\n<p>Thanks</p>'}},{language: "en"}])
