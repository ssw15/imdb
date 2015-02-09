class DirectorsController < ApplicationController
  before_action :set_director, only: [:show, :edit, :update, :destroy]

  def index
    @directors = Director.all

    respond_to do |format|
      format.html { render 'show'}
      format.json { render json: @directors }
    end
  end

  def show

    respond_to do |format|
      format.html { render 'show'}
      format.json { render json: @director }
    end
  end

  def new
    @director = Director.new
  end

  def create
    @director = Director.new(director_params)
    if @director.save
      redirect_to directors_url, :notice => "Director created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @director.update(director_params)

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

  def director_params
    params.require(:director).permit(:dob, :name, :bio, :image_url)
  end


end
