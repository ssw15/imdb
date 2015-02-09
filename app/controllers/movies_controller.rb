class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  def index
    @movies = Movie.all
  end

  def show
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)

    if @movie.save
      redirect_to movies_url, :notice => "Movie created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @movie.update(movie_params)

    if @movie.save
      redirect_to movie_url(@movie.id), :notice => "Movie updated successfully."
    else
      render 'edit'
    end
  end

  def destroy

    @movie.destroy

    redirect_to movies_url, :notice => "Movie deleted."
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(:title, :year, :duration, :description, :image_url, :director_id)
  end

end
