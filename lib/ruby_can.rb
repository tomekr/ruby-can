require 'socket'
require_relative 'ruby_can/can_socket.rb'

socket = CanSocket.new( 'vcan0' )

puts "Waiting..."

while true do
  data = socket.read(16)
  #TODO Parse the CAN Protocol
  puts data
end
