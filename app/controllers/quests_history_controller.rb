class QuestsHistoryController < ApplicationController

  def index
    @quests = Quest.where(user_id: current_user.id)
    # history

    if params[:query].validated?
      sql_query = "name ILIKE :query OR specie ILIKE :query"
      @quests = Quest.where(sql_query, query: "%#{params[:query]}%")
    else
      @quests = Quest.all
    end
  end

  private

  def set_user_quest
    @quest = Quest.find(params[:quest_id])
  end

  def user_quest_params
    params.require(:user_quest).permit(:status, :user_occurences, :quest_id, :user_id, :categorieicon_id)
  end

end
