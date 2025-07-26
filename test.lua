local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local template = ReplicatedStorage:FindFirstChild("Notification_UI_Mobile")

if template and template:IsA("ScreenGui") then
    -- Clone it so we don't modify the original
    local notification = template:Clone()
    notification.Name = "Notification_UI_Mobile_Clone"
    
    -- Optional: Modify text inside it
    local label = notification:FindFirstChild("TextLabel", true) -- true = search recursively
    if label and label:IsA("TextLabel") then
        label.Text = "📢 Hello from a custom notification!"
    end

    -- Parent to PlayerGui so it appears
    notification.Parent = playerGui

    -- Optional: auto-hide after 3 seconds
    task.wait(3)
    notification:Destroy()
else
    warn("Notification_UI_Mobile not found or not a ScreenGui in ReplicatedStorage")
end
