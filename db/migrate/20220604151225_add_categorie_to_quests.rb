class AddCategorieToQuests < ActiveRecord::Migration[6.1]
  def change
    add_column :quests, :categorie, :string
  end
end
