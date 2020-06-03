require 'socket'

Thread.new do
  socket = UDPSocket.new
  socket.bind('0.0.0.0', 1991)
end
