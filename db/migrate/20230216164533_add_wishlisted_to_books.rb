class AddWishlistedToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :wishlisted, :boolean
  end
end
