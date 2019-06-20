class AddTreatmentIdToAppointment < ActiveRecord::Migration[5.2]
  def change
    add_column :appointments, :treatment_id, :integer
  end
end
