class UserQuest < ApplicationRecord
  belongs_to :quest
  belongs_to :user
  validates :quest_id, uniqueness: {
    scope: [ :user_id ]
  }
  def validated!
    update!(status: "validated")
  end

  def occurences!
    if @user_ocurrences.nil?
      update!(user_ocurrences: 0)
    end

  def pending!
    update!(status: "pending")
  end

  def validated?
    status == "validated"
  end

end
