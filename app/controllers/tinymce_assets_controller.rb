class TinymceAssetsController < ApplicationController
  def create
    if params[:hint].include?('products')
      name = params[:hint].split('products')[1].split('/')[1]
      product = Spree::Product.find_by_permalink(name)
      if product
        photo = product.photos.create(file: params[:file])
      end
    elsif params[:hint].include?('author_bios')
      id = params[:hint].split('author_bios')[1].split('/')[1]
      author = Spree::AuthorBio.find(id)
      if author
        photo = author.photos.create(file: params[:file])
      end
    end
    render json: {
      image: {
        url: photo.file.url
      }
    }, content_type: "text/html"
  end
end