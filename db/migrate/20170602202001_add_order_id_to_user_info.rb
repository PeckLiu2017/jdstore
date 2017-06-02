class AddOrderIdToUserInfo < ActiveRecord::Migration[5.0]
  def change
    add_column :user_infos,:order_id,:integer
    rename_column :user_infos, :tel, :integer
  end
end
