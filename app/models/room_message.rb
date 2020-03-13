class RoomMessage < ApplicationRecord
  belongs_to :user
  belongs_to :room, inverse_of: :room_messages

  after_create :broadcast

  def socket
    { message: message }
  end

  def broadcast
    MessageChannel.broadcast_to('message_channel', socket)
  end
end
