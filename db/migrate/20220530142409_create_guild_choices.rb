class CreateGuildChoices < ActiveRecord::Migration[6.1]
  def change
    create_table :guild_choices do |t|
      t.references :user, null: false, foreign_key: true
      t.references :guild, null: false, foreign_key: true

      t.timestamps
    end
  end
end
