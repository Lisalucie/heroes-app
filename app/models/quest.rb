class Quest < ApplicationRecord
  belongs_to :guild
  has_many :user_quests, dependent: :destroy
  has_one_attached :icon
end
