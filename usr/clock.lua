interval = 0.5
out = "front"

startCom = "start"
stopCom = "stop"

input = read()

while true do
if input == startCom then
	while true do
  	rs.setOutput( (out),true)
  	sleep(interval)
  	rs.setOutput( (out),false)
  	sleep(interval)
	end
	
	else
	rs.setOutput( (out),false)
end
end
