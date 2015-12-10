class WritingsController < ApplicationController
	def index
	end

	def new
		@writing = Writing.new
	end

	def create
		@writing = Writing.create(writing_params)
			if @writing.save
				redirect_to("/")
			else
				render :new
			end
			
	end

	def show
	end

	def edit
		@writing = Writing.find(params[:id])
	end
		
	def update
	end

	def destroy
	end

	private
	
	def writing_params 
		params.require(:writing).permit(:title, :download_link, :synopsis, :avatar)
	end
end
