class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]

  def index
    @actors = Actor.all
  end

  def show
  end

  def new
    @actor = Actor.new
  end

  def create
    @actor = Actor.new
    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    if @actor.save
      redirect_to actors_url, :notice => "Actor created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    @actor.dob = params[:dob]
    @actor.name = params[:name]
    @actor.bio = params[:bio]
    @actor.image_url = params[:image_url]

    if @actor.save
      redirect_to actor_url(@actor.id), :notice => "Actor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy


    @actor.destroy

    redirect_to actors_url, :notice => "Actor deleted."
  end

  private

  def set_director
    @actor = Actor.find(params[:id])
  end

end
