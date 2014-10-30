class ApplicationController < ActionController::Base

  #protect_from_forgery
  def after_sign_in_path_for(resource_or_scope)
    if session[:bid].present?
      Spree::Bid.place_bid(session[:bid], resource_or_scope)
      session[:bid] = nil
      flash.notice = Spree.t(:Your_bid_has_been_placed_successfully)
      products_path
    else
      #in sign in page if session has stored, delete that and send on order  page
     if session[:winning_bid].present?
       bid = session[:winning_bid]
       session[:winning_bid] = nil
       complete_order_path(:id => bid)
     else
       products_path
      end
    end

  end

end
