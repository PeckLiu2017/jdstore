class AddIsDefaultToUserInfo < ActiveRecord::Migration[5.0]
  def change
    add_column :user_infos, :is_default, :boolean, default: false
  end
end
