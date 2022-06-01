class Guild < ApplicationRecord
  has_many  :quests
  has_many :guild_choices, dependent: :destroy
  has_one_attached :icon
end
