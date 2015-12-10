class FilmsController < ApplicationController
	def index

	end

	def new
		@film = Film.new
	end

	def create
		@film = Film.create(film_params)
			if @film.save
				redirect_to("/")
			else
				render :new
			end
			
	end

	def show
	end

	def edit
		@film = Film.find(params[:id])
	end
		
	def update
	end

	def destroy
	end

	private
	
	def film_params 
		params.require(:film).permit(:title, :description, :avatar, :video_link)
	end
end
