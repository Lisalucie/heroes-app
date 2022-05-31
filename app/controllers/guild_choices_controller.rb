class GuildChoicesController < ApplicationController
  def create
    GuildChoice.create(guild_choice_params)
    redirect_to quests_path
  end


  private

  def guild_choice_params
    params.require(:guild_choice).permit(:guild_id, :user_id)
  end
end
