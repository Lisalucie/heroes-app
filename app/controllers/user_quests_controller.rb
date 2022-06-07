class UserQuestsController < ApplicationController
  def create
    @quest = Quest.find(params[:quest_id])
    @user_quest = UserQuest.new(user_quest_params)

    # @user_quest.user = current_user
    if @user_quest.save
      # add if else according to occurences number
      if @quest.occurences == 1
        @user_quest.validated!
      else #(creer methode pending dans le model)
        @user_quest.pending!
      end
      update_level_and_redirect
    end
  end

  def update
    @quest = Quest.find(params[:quest_id])
    @user_quest = UserQuest.find(params[:id])
    @user_quest.user_occurences += 1 if @user_quest.user_occurences < @quest.occurences
    if @user_quest.save && @user_quest.user_occurences == @quest.occurences
      @user_quest.validated!
    end
    update_level_and_redirect
  end

  private

  def user_quest_params
    params.require(:user_quest).permit(:status, :user_occurences, :quest_id, :user_id, :categorieicon_id)
  end

  def update_level_and_redirect
    current_level_for_user = current_user.level

    number_of_quest_validated = current_user.user_quests.where(status: "validated").count # => 12
    if (number_of_quest_validated == 5 && current_user.level == 1) || (number_of_quest_validated == 10  && current_user.level == 2)  || (number_of_quest_validated == 15  && current_user.level == 3)
      current_user.level += 1
      current_user.save
    end

    if current_user.level - 1 == current_level_for_user
      redirect_to quests_path(leveled_up: true)
    else
      redirect_to quests_path
    end
  end
end
