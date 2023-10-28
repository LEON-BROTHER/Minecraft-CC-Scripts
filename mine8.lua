DistanceLength = 0
StripVentLength = 0
StripMinePlace = 0


function StartMining()
    for i=1,DistanceLength do
        RefuelCheck()
        turtle.dig()
        turtle.digDown()
        turtle.forward()
        if i % StripMinePlace == 0 then
            StripMineSide("left")
            StripMineSide("right")
        end
    end
end

function RefuelCheck()
    if turtle.getFuelLevel() == 0 then
        print("Refueling Vorgang...")
        while turtle.getFuelLevel() == 0 do
            turtle.refuel(1)
        end
    end
end
function StripMineSide(direction)
    RefuelCheck()
    if direction == "left" then
        turtle.turnLeft()
    end
    if direction == "right" then
        turtle.turnRight()
    end
    for j=1,StripVentLength do
        RefuelCheck()
        turtle.dig()
        turtle.forward()
    end 
    for j=1,StripVentLength do
        RefuelCheck()
        turtle.back()
    end
    RefuelCheck()
    if direction == "left" then
        turtle.turnRight()
    end
    if direction == "right" then
        turtle.turnLeft()
    end
end

-- Start
print("Wilkommen")
print("Wie weit soll die Turtle minen?")
local input = io.read()
DistanceLength = tonumber(input)
print("Wie weit sollen die Strip Linien sein?")
input = io.read()
StripVentLength = tonumber(input)
print("In welchen Abstand?")
input = io.read()
StripMinePlace = tonumber(input)
StartMining()