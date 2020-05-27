require 'socket'

server = TCPServer.new(2345)

socket = server.accept

while true
  
socket.puts "What do you say?"

they_said = socket.gets.chomp

if they_said == "quit"
  exit
else
  socket.puts "You said: #{they_said}. Goodbye!"
end

end

socket.close