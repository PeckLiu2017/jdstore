class AddAddressDetailToUserInfos < ActiveRecord::Migration[5.0]
  def change
    add_column :user_infos,:province,:string
    add_column :user_infos,:city,:string
    add_column :user_infos,:county,:string
  end
end
