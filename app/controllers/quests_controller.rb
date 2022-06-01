class QuestsController < ApplicationController
  def index
    if current_user.guild_choices.any?
      guild_id = current_user.guild_choices.first.guild_id
      @quests = Quest.where(level: current_user.level, guild_id: guild_id)
    else
      @guild_choice = GuildChoice.new
      @guilds = Guild.all
    end
    # , guild_id: current_user.guild_id

  end

  def show
    @quest = Quest.find(params[:id])
  end
end
