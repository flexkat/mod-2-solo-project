class AddDateAndTimeToAppointments < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :date, :string
    add_column :appointments, :time, :string
  end
end
