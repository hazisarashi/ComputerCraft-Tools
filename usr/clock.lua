interval = 0.5
out = "front"

while true do
rs.setOutput( (out),true)
sleep(interval)
rs.setOutput( (out),false)
sleep(interval)
end
