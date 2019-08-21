class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def home
    @island = Island.new
    @islands = Island.all
  end

  def index
  end
end
