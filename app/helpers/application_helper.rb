module ApplicationHelper

  def bidder_count(product)
    Spree::Order.joins(line_items: [:variant]).where("spree_variants.product_id = ?", product.id).count.to_s
  end

  def pretty_id(user)
  "#{user.id.to_s.rjust(6, "0")}"
  end

end
