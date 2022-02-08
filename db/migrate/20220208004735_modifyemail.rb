class Modifyemail < ActiveRecord::Migration
  def change
    rename_column :users, :Email, :email
  end
end
