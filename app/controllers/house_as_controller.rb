class HouseAsController < ApplicationController
	def index
		@house_as = HouseA.all	
	end

	def new
		@house_as = HouseA.new
end

    def create 
    	 @house_a = HouseA.new(house_as_params)
    if @house_a.save
      redirect_to house_as_path
		
	end
   end
 
   def  house_as_params
  params.require(:house_a).permit(:house_name)   	
   end 

end
