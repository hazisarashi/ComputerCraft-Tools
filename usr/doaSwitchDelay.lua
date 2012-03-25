--[[=============================================

doaSwitchDelay - my doa lock program

スイッチ(swichOut)の入力があると、ドア(doaPos)に対して
一定時間(delay)出力します。

また、部屋内部のスイッチ(switchIn)にから入力があると、
ドアに対する出力を即時停止します。これによって、ドアを
開けて部屋に入った直後にドアが閉じるようになります。

=============================================]]--

--[[=============================================
 Settings
=============================================]]--
delay     = 5
doaPos    = "left"
switchOut = "back"
switchIn  = "front"


--[[=============================================
 funcitons
=============================================]]--

function shiwinstand ()
    n = 0
    while n < 9 do
        if ( rs.getInput( switchIn ) == true ) then
            print "In"
            rs.setOutput( doaPos , false)
            return true
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
while true do
    
    if ( rs.getInput( switchOut ) == true ) then
        rs.setOutput( doaPos , true)
        print ("Wellcome!")
        shiwinstand()
        sleep( delay )
        rs.setOutput( doaPos , false)
    else
       sleep(0.5)
    end
end
