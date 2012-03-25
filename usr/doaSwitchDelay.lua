--[[=============================================

doaSwitchDelay - my doa lock program

To delay the input from the switch on the outside
of the house(switchOut).

If there is input from the room (switchIn) during
the delay, stop the output.

=============================================]]--

--[[=============================================
 Settings
=============================================]]--
delay     = 5
doaPos    = "left"
switchOut = "left"
switchIn  = "bottom"


--[[=============================================
 funcitons
=============================================]]--

function switchStand ()
    n = 0
    while true do
        if ( rs.getInput( switchIn ) == true ) then
            print "In"
            break
        elseif n == ( delay * 2 ) then
            break
        else
            sleep(0.5)
            n = n + 1
        end
    end
    return true
end


--[[=============================================
 main
=============================================]]--

print ("Start doa lock program!")
rs.setOutput( doaPos , false)

while true do
    if ( rs.getInput( switchOut ) == true ) then
        rs.setOutput( doaPos , true)
        print ("Wellcome!")
        switchStand()
        rs.setOutput( doaPos , false)
        sleep(0.5)
    else
       sleep(0.5)
    end
end
