class Quest < ApplicationRecord
  belongs_to :guild
  has_many :user_quests, dependent: :destroy

  has_one_attached :icon

  def validated_for_user?(user)
    user_quests.where(user: user).all? { |user_quest| user_quest.validated? }
    # Carefull the (:validated?) proposed by Rubocop doesn't give correct result for the test
    # Keep the format all? { |user_quest| user_quest.validated? } for the time being
  end

end
