class MoviesController < ApplicationController
  
  def index
    # @movies = ['Iron man', 'Superman', 'Spider-man', 'Ant-man']
    @movies = Movie.released
  end

  def show
    @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end

  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new(movie_params)
    @movie.save
    redirect_to movies_path
  end

  def update
    @movie = Movie.find(params[:id])
    @movie.update(movie_params)
    redirect_to movie_path
  end

  def destroy
    @movie = Movie.find_by(params[:id])
    @movie.destroy 
    redirect_to movies_path
  end
end

private

  def movie_params
    params.require(:movie).permit(:title, :rating, :total_gross, :premiere, :description, :cast, :director, :duration, :image_file_name)
  end