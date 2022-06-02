class UserQuestsController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @user_quest = UserQuest.new(user_quest_params)

    # @user_quest.user = current_user
    if @user_quest.save
      @user_quest.validated!
      update_level

    end
  end

  def update
    # mettre à jour les user_occurences via le update
  end

  private

  def user_quest_params
    params.require(:user_quest).permit(:status, :user_occurences, :quest_id, :user_id)
  end

  def update_level
    number_of_quest_validated = current_user.user_quests.where(status: "validated").count # => 12
    if number_of_quest_validated == 4 || number_of_quest_validated == 8 || number_of_quest_validated == 12
      current_user.level += 1
      current_user.save
    end
  end
end
