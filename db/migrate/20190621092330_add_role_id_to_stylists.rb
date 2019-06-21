class AddRoleIdToStylists < ActiveRecord::Migration[5.2]
  def change
    add_reference :stylists, :role, foreign_key: true
  end
end
