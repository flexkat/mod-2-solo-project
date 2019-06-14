class CreateStylistTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :stylist_treatments do |t|
      t.references :stylist, foreign_key: true
      t.references :treatment, foreign_key: true

      t.timestamps
    end
  end
end
