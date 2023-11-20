class ActorsController < ApplicationController
  def index
    @actor = Actor.all
  end

  def show
    @actor = Actor.find[:id]
  end

  def new
    @actor = Actor.new

  def create
    @actor = Actor.new(actor_params)
    if @actor.save
      redirect_to @actor, notice: 'Actor was successfully created.'
    else
      render :new, status: :unproccessable_entity
    end
  end

  def edit
    @actor = Actor.find[:id]
  end

  def update
    @actor = actor.find([:id])
    if @actor.update_attributes
      flash[:success] = "Actor updated!"
      redirect_to @actor
    else
      render action: :edit
    end
  end

  end

  def destroy
    @actor = Actor.destroy
  end

  private

  def actor_params
    params.require(:actor).permit(:username, :email, :description, :price, :user_id)
  end

end
