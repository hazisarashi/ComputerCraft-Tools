interval = 0.5
out = "front"
switchIn = "left"

while true do
if rs.getInput((switchIn),true)then
while true do
rs.setOutput( (out),true)
sleep(interval)
rs.setOutput( (out),false)
sleep(interval)
end
end
