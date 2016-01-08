class MoveProductPriceToItemsInCart2 < ActiveRecord::Migration
  def up
    Cart.all.each do |cart|
      cart.line_items.each do |item|
          product = Product.find(item.product_id)
          item.update(product_price: product.price)
      end
    end
  end
end
