class BidsController < ApplicationController

  def create
    @prodval= JSON.parse params[:products]
    variant_id = @prodval.first[1].to_i
    unless spree_current_user
      session['bid'] = Bid.new(:price => params[:bid_price], :variant_id =>  variant_id )
      redirect_to spree.login_path
      return
    end

    @bid = Bid.find_or_initialize_by_variant_id_and_user_id(variant_id, spree_current_user.id)
    @bid.price = params[:bid_price]

    if @bid.save
      BeddingMailer.bedding_mail(spree_current_user).deliver
      respond_to do |format|
        flash[:success] = "Your Bid placed successfully."
        format.html { redirect_to spree.products_path }
      end
    else
      flash[:error] = "Error in Bid place."
      redirect_to :back
    end
  end
end