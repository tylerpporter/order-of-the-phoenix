class SearchController < ApplicationController
  def index
    @members = PotterService.conn(params[:house])
  end
end
