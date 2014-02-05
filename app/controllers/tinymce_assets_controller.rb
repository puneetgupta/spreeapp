class TinymceAssetsController < ApplicationController
  def create
    name = params[:hint].split('products')[1].split('/')[1]
    product = Spree::Product.find_by_permalink(name)
    if product
      photo = product.photos.create(file: params[:file])
      render json: {
        image: {
          url: photo.file.url
        }
      }, content_type: "text/html"
    else
      redirect_to params[:hint]
    end
  end
end