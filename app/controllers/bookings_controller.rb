class BookingsController < ApplicationController
before_action :find_booking, only: [:show, :edit, :update, :destroy]
skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @bookings = current_user.bookings
    @user = User.new
    flash[:notice] = "Votre réservation a bien été prise en compte" if params[:booking] == "true"
  end

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(params_booking)
    @booking.island_id = params[:island_id]
    @booking.user = current_user
    if @booking.save
      redirect_to book_recap_path(Booking.last)
    else
      render :new
    end
  end

  def book_recap
    @booking     = Booking.find(params[:id])
    @days         = (@booking.check_out_date - @booking.check_in_date).to_i
    @island      = @booking.island
    @total_price = @island.price_per_day * (@days)
    # redirect_to bookings_path
  end

  def edit
  end

  def update
    @booking.update(params[:booking])
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
  end

  private

  def params_booking
    params.require(:booking).permit(:check_in_date, :check_out_date)
  end

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
