class BookingsController < ApplicationController
    def show


    end

    def new
      @actor = Actor.find(params[:actor_id])
      @booking = Booking.new
    end

    def create
    end


    private

    def booking_params
      params.require(:booking).permit(:actor_id,)
    end

end
