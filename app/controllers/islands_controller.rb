class IslandsController < ApplicationController
  before_action :find_island, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @islands = Island.all
  end

   def new
    @island = Island.new
  end

  def show
  end

  def create
    @island = Island.new(island_params)
    if @island.save
      redirect_to islands_path(@islands.continent)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @island.update(island_params)
    redirect_to islands_path(@islands.continent)
  end

  def destroy
    @island.destroy
  end

  private

  def find_island
    @island = Island.find(params[:id])
  end

  def island_params
    params.require(:island).permit(:name, :description, :continent, :availability, :price_per_day)
  end
end