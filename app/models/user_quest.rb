class UserQuest < ApplicationRecord
  belongs_to :quest
  belongs_to :user
  validates :quest_id, uniqueness: {
    scope: [ :user_id ]
  }
  def validated!
    update!(status: "validated")
  end

  def pending!
    update!(status: "pending")
  end

  def validated?
    status == "validated"
  end

end
