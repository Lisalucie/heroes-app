class CreateUserQuests < ActiveRecord::Migration[6.1]
  def change
    create_table :user_quests do |t|
      t.string :status
      t.integer :user_occurences
      t.references :quest, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
