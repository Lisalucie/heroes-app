class UserQuestsController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @user_quest = UserQuest.new(user_quest_params)
    @user_quest.user = current_user
    if user_quest.save
      redirect_to quests_path, notice: "Quest successfully validated"
    end
  end

  def update
    
  end

  private

  def user_quest_params
    params.require(:user_quest).permit(:status, :user_occurences)
  end
end
