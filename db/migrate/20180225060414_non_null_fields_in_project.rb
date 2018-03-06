class NonNullFieldsInProject < ActiveRecord::Migration[5.2]
  def change
    change_column :projects, :name, :string, null: false
    change_column :projects, :description, :text
    change_column :projects, :is_accepted, :boolean, null: false, :default => false
    change_column :projects, :is_finished, :boolean, null: false, :default => false
  end
end
