class MembersController < ApplicationController
	def index
		@members = Member.all	
	end

	def new
		@members = Member.new		
	end

	def create

    @member = HouseA.last.members.new(members_params)
    if @member.save
      redirect_to root_path
		
   end
   end

   def show
    @member = Member.find(params[:id])
   end

   def edit
   @member = Member.find(params[:id])
   end

  def update
  @member = Member.find(params[:id])
  @member.update(member_params)
  redirect_to root_path
  end

  def destroy
  @member = Member.find( params[:id])
  @member.destroy
  redirect_to root_path
  end

 
   def  members_params
  params.require(:member).permit(:member_name)
   	
   end
  end
