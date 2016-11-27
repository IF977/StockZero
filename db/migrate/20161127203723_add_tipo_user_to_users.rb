class AddTipoUserToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tipo_user, :string
  end
end
