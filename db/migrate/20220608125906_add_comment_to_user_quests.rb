class AddCommentToUserQuests < ActiveRecord::Migration[6.1]
  def change
    add_column :user_quests, :comment, :text
  end
end
