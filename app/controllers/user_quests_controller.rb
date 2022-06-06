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
    @user_quest = UserQuest.find(params[:id])
    if @user_quest.any?
      @user_quest.update(user_quest_params)
    end
    if @user_quest.save
      @user_quest.occurences!
      update_occurences
    end
  end

  private

  def user_quest_params
    params.require(:user_quest).permit(:status, :user_occurences, :quest_id, :user_id, :categorieicon_id)
  end

  def update_level
    number_of_quest_validated = current_user.user_quests.where(status: "validated").count # => 12
    if number_of_quest_validated == 5 || number_of_quest_validated == 10 || number_of_quest_validated == 15
      current_user.level += 1
      current_user.save
    end
  end
  def update_occurences
    current_user.user_quests.user_occurences = 0
    if (current_user.user_quests.user_occurences < @quest.ocurrences) || (current_user.user_quests.user_occurences = 0)
      current_user.user_ocurrences += 1
      current_user.save

    end

  end


end
