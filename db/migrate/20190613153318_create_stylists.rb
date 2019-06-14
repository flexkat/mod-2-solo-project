class CreateStylists < ActiveRecord::Migration[5.2]
  def change
    create_table :stylists do |t|
      t.string :name
      t.string :job_title
      t.references :salon, foreign_key: true

      t.timestamps
    end
  end
end
