class Guild < ApplicationRecord
  has_many  :quests
  has_many :guild_choices, dependent: :destroy
end
