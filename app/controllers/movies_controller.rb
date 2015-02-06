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
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

    if @movie.save
      redirect_to movies_url, :notice => "Movie created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update

    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.duration = params[:duration]
    @movie.description = params[:description]
    @movie.image_url = params[:image_url]
    @movie.director_id = params[:director_id]

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
end
