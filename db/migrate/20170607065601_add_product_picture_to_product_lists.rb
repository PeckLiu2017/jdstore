class AddProductPictureToProductLists < ActiveRecord::Migration[5.0]
  def change
    add_column :product_lists,:product_picture,:string
  end
end
