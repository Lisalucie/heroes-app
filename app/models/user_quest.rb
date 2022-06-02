class UserQuest < ApplicationRecord
  belongs_to :quest
  belongs_to :user

  def validated!
    update!(status: "validated")
  end
end
