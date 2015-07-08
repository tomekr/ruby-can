require 'socket'
require 'rbkb'
require_relative 'ruby_can/can_socket.rb'
require_relative 'ruby_can/can_packet.rb'

socket = CanSocket.new( 'vcan0' )

puts "Waiting..."

while true do
  can_packet = CanPacket.read(socket.read(16))

  puts can_packet.inspect
end
