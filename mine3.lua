-- Start
local distance = 0
print("Wilkommen")
print("Wie weit soll die Turtle minen?")
input = io.read()
distance = tonumber(input)
function startMining()
    for i=1,distance do
        turtle.dig()
        turtle.digDown()
        turtle.forward()
        if i % 5 == 0 then
            turtle.turnLeft()
            for j=1,10 do
                turtle.dig()
                turtle.forward()
            end
            for j=1,10 do
                turtle.back()
            end
            turtle.turnLeft()
            turtle.turnLeft()
            for j=1,10 do
                turtle.dig()
                turtle.forward()
            end
            for j=1,10 do
                turtle.back()
            end
            turtle.turnLeft()
        end
    end
end

