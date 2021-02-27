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



end
