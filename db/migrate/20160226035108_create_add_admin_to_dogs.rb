class CreateAddAdminToDogs < ActiveRecord::Migration
  def change
    create_table :add_admin_to_dogs do |t|
      t.boolean :admin

      t.timestamps
    end
  end
end
