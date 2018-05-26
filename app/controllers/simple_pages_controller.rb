class SimplePagesController < ApplicationController
  def index
  end
  
  def group_stage
    @teams = Team.all
    @picks = Pick.all

  end
end
