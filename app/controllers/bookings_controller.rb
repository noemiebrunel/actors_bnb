class BookingsController < ApplicationController
  def show
    @actor = Actor.find(params[:actor_id])
    @booking = Booking.find(@actor)
  end

  def new
    @actor = Actor.find(params[:actor_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @actor = Actor.find(params[:actor_id])
    @bookmark.actor = @actor
    if @bookmark.save
      redirect_to actor_path(@actor)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:actor_id, :start_date, :end_date, :type)
  end
end
