class QuestsController < ApplicationController
  def index
    @quests = Quest.where(level: current_user.level)
    # , guild_id: current_user.guild_id
    @guild_choice = GuildChoice.new
    @guilds = Guild.all
  end

  def show
    @quest = Quest.find(params[:id])
  end
end
