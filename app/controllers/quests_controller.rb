class QuestsController < ApplicationController
  def index
    @quests = Quest.all
  end
end
