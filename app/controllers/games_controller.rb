class GamesController < ApplicationController
	def index
	end

	def new
		@game = Game.new
	end

	def create
		@game = Game.create(game_params)
			if @game.save
				redirect_to("/")
			else
				render :new
			end
			
	end

	def show
	end

	def edit
		@game = Game.find(params[:id])
	end
		
	def update
	end

	def destroy
	end

	private
	
	def game_params 
		params.require(:game).permit(:title, :description, :avatar, :link_to_steam)
	end
end
