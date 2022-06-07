class Quest < ApplicationRecord
  belongs_to :guild
  has_many :user_quests, dependent: :destroy

  has_one_attached :icon

  def validated_for_user?(user)
    user_quests.where(user: user).all?(:validated?)
  end

end
