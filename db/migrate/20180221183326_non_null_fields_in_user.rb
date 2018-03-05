class NonNullFieldsInUser < ActiveRecord::Migration[5.2]
  def change
    # Important fields should not be null
    change_column :users, :name, :string, null: false
    change_column :users, :email, :string, null: false
    change_column :users, :is_admin, :boolean, null: false, :default => false
  end
end
