class RoomsController < ApplicationController

  def index
  end
   
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(rooms_parameters)
    if @room.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def rooms_parameters
    params.require(:room).permit(:name, :purpose_id, :password).merge(user_id: current_user.id)
  end

end
