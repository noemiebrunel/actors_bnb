class ActorsController < ApplicationController
  def index
    @actors = Actor.all
  end

  def show
    @actor = Actor.find(params[:id])
    @booking = Booking.new
  end

  def new
    @actor = Actor.new
  end

  def create

    @actor = Actor.new(actor_params)

    @actor.user = current_user


    if @actor.save!
      redirect_to @actor, notice: 'Actor was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @actor = Actor.find(params[:id])
  end

  def update
    @actor = Actor.find(params[:id])
    if @actor.update(actor_params)
      flash[:notice] = "Actor updated!"
      redirect_to @actor
    else
      render :edit
    end
  end

  def destroy
    @actor = Actor.find(params[:id])
    @actor.destroy
    redirect_to actors_path
  end

  private

  def actor_params
    params.require(:actor).permit(:username, :mail, :description, :price, :photo)
  end
end
