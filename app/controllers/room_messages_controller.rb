class RoomMessagesController < ApplicationController
  def create
    user.create_room_message(message: params[:message])
  end
end
