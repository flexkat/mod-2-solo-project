class AddServiceIdToTreatment < ActiveRecord::Migration[5.2]
  def change
    add_column :treatments, :service_id, :integer
  end
end
