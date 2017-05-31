class CreateUserInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :user_infos do |t|
      t.integer :user_id
      t.string :name
      t.integer :tel
      t.string :address

      t.timestamps
    end
  end
end
