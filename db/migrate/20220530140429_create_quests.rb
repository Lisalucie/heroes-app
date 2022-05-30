class CreateQuests < ActiveRecord::Migration[6.1]
  def change
    create_table :quests do |t|
      t.integer :level
      t.string :title
      t.text :content
      t.text :tips
      t.integer :occurences
      t.references :guild, null: false, foreign_key: true

      t.timestamps
    end
  end
end
