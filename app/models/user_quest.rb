class UserQuest < ApplicationRecord
  belongs_to :quest
  belongs_to :user
  validates :quest_id, uniqueness: {
    scope: [ :user_id ]
  }
  def validated!
    update!(status: "validated")
  end

<<<<<<< HEAD
=======
  def occurences!
    if @user_ocurrences.nil?
      update!(user_ocurrences: 0)
    end
  end

>>>>>>> 6757377265ab8fee8f81bd1488834d474c58bf92
  def pending!
    update!(status: "pending")
  end

  def validated?
    status == "validated"
  end

end
