class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :last_name, :string
    add_column :users, :first_name, :string
    add_column :users, :nickname, :string, null: false
    add_column :users, :level, :integer, default: 0, null: false
  end
end
