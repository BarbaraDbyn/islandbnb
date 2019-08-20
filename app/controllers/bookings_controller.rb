class BookingsController < ApplicationController
before_action :find_booking, only: [:show, :edit, :update, :destroy]
skip_before_action :authenticate_user!, only: [:home, :index, :show]

  def index
    @bookings = current_user.bookings
  end

  def new
    @booking = Booking.new
  end

  def show
  end

  def create
    @booking = Booking.new(params[:booking])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
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

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
