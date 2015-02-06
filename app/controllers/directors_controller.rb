class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]

  def index
    @directors = Director.all
  end

  def show
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new
    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    if @director.save
      redirect_to directors_url, :notice => "Director created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    @director.dob = params[:dob]
    @director.name = params[:name]
    @director.bio = params[:bio]
    @director.image_url = params[:image_url]

    if @director.save
      redirect_to director_url(@director.id), :notice => "Director updated successfully."
    else
      render 'edit'
    end
  end

  def destroy

    @director.destroy

    redirect_to directors_url, :notice => "Director deleted."
  end

  private

  def set_director
    @director = Director.find(params[:id])
  end


end
