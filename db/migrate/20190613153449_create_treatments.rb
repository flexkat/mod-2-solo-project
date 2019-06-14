class CreateTreatments < ActiveRecord::Migration[5.2]
  def change
    create_table :treatments do |t|
      t.string :name
      t.string :description
      t.integer :price
      t.integer :time

      t.timestamps
    end
  end
end
