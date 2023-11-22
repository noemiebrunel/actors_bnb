class BookingsController < ApplicationController
  def create
    @booking = Booking.new(booking_params)
    @actor = Actor.find(params[:actor_id])
    @booking.user = current_user
    @booking.actor = @actor
    if @booking.save
    @booking.actor = @actor
      redirect_to actor_path(@actor)
    else
      render "actors/show", status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:actor_id, :start_date, :end_date, :category)
  end
end
