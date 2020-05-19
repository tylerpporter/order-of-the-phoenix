class SearchController < ApplicationController
  def index
    @members = PotterService.phoenix_by_house(params[:house])
  end
end
