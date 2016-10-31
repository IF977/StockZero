class SorceryCore < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email,            :null => false
      t.string :password
      t.string :password_confirmation

      t.timestamps
    end

    add_index :users, :email, unique: true
  end
end