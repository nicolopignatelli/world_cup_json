class TeamsController < ApplicationController
  after_filter :set_content_type
  protect_from_forgery with: :null_session
  layout false
  respond_to :json

  def index
    @teams = Team.all
    render 'team_index.json.rabl', callback: params['callback']
  end

  def results
    @teams = Team.all
    render 'team_results.json.rabl', callback: params['callback']
  end

  def group_results
    @groups = Group.all
    render 'group_results.json.rabl', callback: params['callback']
  end
end
