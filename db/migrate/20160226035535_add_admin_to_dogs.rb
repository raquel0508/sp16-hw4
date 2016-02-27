class AddAdminToDogs < ActiveRecord::Migration
  def change
    add_column :dogs, :admin, :boolean
  end
end
