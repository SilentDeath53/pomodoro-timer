local workDuration = 25 
local breakDuration = 5 

local function startTimer(duration, message)
    print(message)
    local endTime = os.time() + (duration * 60)
    repeat
        local remainingTime = endTime - os.time()
        io.write("\r", string.format("%02d:%02d", remainingTime // 60, remainingTime % 60))
        io.flush()
        os.execute("sleep 1") 
    until os.time() >= endTime
    print("\nTime's up!")
end

print("Pomodoro Timer")
print("Work for", workDuration, "minutes")
print("Break for", breakDuration, "minutes")

while true do
    startTimer(workDuration, "Work")
    startTimer(breakDuration, "Break")
end
