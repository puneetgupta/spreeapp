# This migration comes from spree_auctions (originally 20140707074624)
class AddCatalogToNavigation < ActiveRecord::Migration
  def change
     Spree::Navigation.delete_all
     Spree::Navigation.create(name: 'home', url: "/", private: 'false') 
    Spree::Navigation.create(name: 'Catalog', url: "/catalog", private: 'false')
    Spree::Navigation.create(name: 'Best_Offer', url: "#", private: 'false') 
    Spree::Navigation.create(name: 'About_us', url: "#", private: 'false')
    Spree::Navigation.create(name: 'Contact', url: "#", private: 'false') 
    Spree::Navigation.create(name: 'profile', url: "/profile", private: 'true') 
    Spree::Navigation.create(name: 'auctions', url: "/auctions", private: 'true') 
    Spree::Navigation.create(name: 'payment', url: '/payment', private: 'true')
  end
end
