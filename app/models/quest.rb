class Quest < ApplicationRecord
  belongs_to :guild
  has_many :user_quests, dependent: :destroy
end
