class AddOrderIdToUserInfo < ActiveRecord::Migration[5.0]
  def change
    add_column :user_infos,:order_id,:integer
    change_column :user_infos,:tel,:string
  end
end
