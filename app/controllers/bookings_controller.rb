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

  def edit
    @actor = Actor.find(params[:actor_id])
    @booking = Booking.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:actor_id])
    @bookin = @actor.booking.find(params[:id])
    if @booking.update(booking_params)
      flash[:success] = "Task updated!"
      redirect_to @actor
    else
      render action: :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:actor_id, :start_date, :end_date, :category)
  end
end
