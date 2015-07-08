require 'socket'
require 'rbkb'
require_relative 'ruby_can/can_socket.rb'
require_relative 'ruby_can/can_packet.rb'

socket = CanSocket.new( 'vcan0' )

puts "Waiting..."

while true do
  can_packet = CanPacket.read(socket.read(16))

  hex_data_output = can_packet.data.map{|b| b.to_i.to_s(16) }.join(' ')
  puts "can_id: #{ can_packet.can_id }, can_dlc: #{ can_packet.can_dlc }, data: #{ hex_data_output }"
end
