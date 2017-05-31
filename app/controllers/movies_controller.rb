class MoviesController < ApplicationController
  def index
		@movies = Movie.where( "title LIKE ?", "#{params[:start]}%").order(id: :desc)
  end

  def new
    @movie = Movie.new
  end
  
  def create
    @movie = Movie.create(params.require(:movie).permit(:title, :genre, :year_released, :info_url))
    flash[:success] = "The Movie \"#{@movie.title}\" has been created successfully!"
    redirect_to movies_path
  end
  
  def show
			@movie = Movie.find(params[:id])
  end
		
	def edit
	    @movie = Movie.find(params[:id])
	end
	
	 def destroy
    @movie = Movie.find(params[:id])
    @movie.destroy
    flash[:success] = "The Movie \"#{@movie.title}\" has been deleted successfully!"
    redirect_to movies_path
	 end
	
	def update
	   @movie = Movie.find(params[:id])
	   @movie.update(params.require(:movie).permit(:title, :genre, :year_released, :info_url))
	   flash[:success] = "The Movie \"#{@movie.title}\" has been edited successfully!"
	   redirect_to movies_path
	end
end
