class ApplicationController < ActionController::Base

  #protect_from_forgery
  def after_sign_in_path_for(resource_or_scope)
    if session[:bid].present?
      Bid.place_bid(session[:bid], resource_or_scope)
      session[:bid] = nil
      products_path
    end
  end
end
