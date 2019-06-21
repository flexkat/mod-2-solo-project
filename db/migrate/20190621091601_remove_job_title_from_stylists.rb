class RemoveJobTitleFromStylists < ActiveRecord::Migration[5.2]
  def change
    remove_column :stylists, :job_title, :string
  end
end
