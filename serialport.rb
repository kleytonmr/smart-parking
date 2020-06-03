#!/usr/bin/env ruby
require "serialport"

port_str = "/dev/cu.usbserial-A400fQSU"
baud_rate = 9600
data_bits = 8
stop_bits = 1
parity = SerialPort::NONE

sp = SerialPort.new(port_str, baud_rate, data_bits, stop_bits, parity)

while true do
  while (i = sp.gets.chomp) do
    params = i.split(",")
    `curl -H "Content-Type: application/json" -X POST -d '{"status:"#{ params[0] }","zone":"#{ params[1] }", "position":"#{ params[2] }"}' http://localhost:3000/api/`
  end
end
sp.close
