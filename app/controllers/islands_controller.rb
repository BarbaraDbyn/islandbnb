class IslandsController < ApplicationController
  before_action :find_island, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    p params
    p params[:continent].present?
    if params[:continent].present?
      keyword_search = CONTINENT_CARD[params[:continent].to_sym][:name]
      @picture = CONTINENT_CARD[params[:continent].to_sym][:image_path]
      @islands = Island.where("continent ILIKE ?", "%#{keyword_search}%")
    else
      @islands = Island.all
    end
  end

  def myisland
    @islands = Island.where( user: current_user)
  end

  def new
    @island = Island.new
  end

  def show
    @island = Island.find(params[:id])
    @booking = Booking.new
    @user = @island.user
    @markers = [
      {
        lat: @island.latitude,
        lng: @island.longitude,
        image_url: helpers.asset_url('palmtree.png')
      }
    ]
  end

  def create
    @island = Island.new(island_params)
    @island.user = current_user
    p @island.save!
    if @island.save
      redirect_to islands_path(continent: "#{@island.continent}")
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
    params.require(:island).permit(:name, :description, :continent, :availability, :price_per_day, :photo)
  end
end
