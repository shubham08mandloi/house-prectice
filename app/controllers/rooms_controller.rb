class RoomsController < ApplicationController
	def new
		@rooms = Room.new
	end

	def create 
		@room = HouseA.last.rooms.new(rooms_params)
		if @room.save
			redirect_to root_path
		end
	end
	private
	def  rooms_params
		params.require(:room).permit(:room_name)   	
	end 


end
