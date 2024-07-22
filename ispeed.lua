-- Function to safely set size of a BasePart object
local function setSize(object, size)
    if object:IsA("BasePart") then
        object.Size = size
    else
        warn("Object is not a BasePart:", object:GetFullName())
    end
end

-- Loop to continuously update sizes
while true do
    -- Iterate through all descendants of Workspace
    for _, child in ipairs(game.Workspace:GetDescendants()) do
        -- Check if the object is named "Football" and is a BasePart
        if child.Name == "Football" then
            setSize(child, Vector3.new(30, 30, 30))  -- Set size to (7, 7, 7)
        end
    end
    wait(1)  -- Wait for 1 second before repeating the loop
end
