class RoomsController < ApplicationController
  before_action :authenticate_user!, except: :index 
  before_action :set_room, only: [:show, :destroy]

  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(rooms_parameters)
    if @room.save
      redirect_to room_path(@room.id)
    else
      render :new
    end
  end

  def show
  end

  def destroy
    @room.destroy
    redirect_to root_path
  end

  private

  def rooms_parameters
    params.require(:room).permit(:name, :purpose_id, :password).merge(user_id: current_user.id)
  end

  def set_room
    @room = Room.find(params[:id])
  end

end
