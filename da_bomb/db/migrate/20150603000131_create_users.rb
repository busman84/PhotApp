class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :user_name, null: false, unique: true, index: true
      t.string :email, null: false, unique: true, index: true
      t.string :password, null: false
    end
  end
end
