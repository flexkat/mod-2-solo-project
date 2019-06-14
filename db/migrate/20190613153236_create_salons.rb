class CreateSalons < ActiveRecord::Migration[5.2]
  def change
    create_table :salons do |t|
      t.string :name
      t.string :address
      t.string :opening_hours
      t.references :location, foreign_key: true

      t.timestamps
    end
  end
end
