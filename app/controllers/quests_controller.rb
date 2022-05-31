class QuestsController < ApplicationController
  def index
    @quests = Quest.all
    @guild_choice = GuildChoice.new
    @guilds = Guild.pluck(:id, :name)
  end
end
