class MoviesController < ApplicationController
  
  def index
    # @movies = ['Iron man', 'Superman', 'Spider-man', 'Ant-man']
    @movies = Movie.all
  end

  def show
    @movie = Movie.find(params[:id])
  end
  
  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
    movie_params = params.require(:movie).permit(:title, :rating, :total_gross, :premiere, :description)
    @movie.update(movie_params)
    redirect_to movie_path
  end




end
