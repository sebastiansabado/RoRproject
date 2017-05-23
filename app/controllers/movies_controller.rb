class MoviesController < ApplicationController
  def index
		@movies = Movie.all.order(id: :desc)
  end
  
  def new
  end
  
  def create
    @movie = Movie.create(title: params[:title],
                          genre: params[:genre],
                          year_released: params[:year_released],
                          info_url: params[:info_url])
  end
  
  def show
			@movie = Movie.find(params[:id])
	 end
		
	def edit
	    @movie = Movie.find(params[:id])
	end
	
	def delete
	end
	
	def update
	   @movie = Movie.find(params[:id])
	   @movie.update(title: params[:title],
                   genre: params[:genre],
                   year_released: params[:year_released],
                   info_url: params[:info_url])
	end
end
