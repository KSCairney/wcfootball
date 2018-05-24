class SimplePagesController < ApplicationController
  def index
  end
  
  def group_stage
    @teams = Team.all
  end
end
