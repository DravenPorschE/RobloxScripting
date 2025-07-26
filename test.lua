local myFolder = workspace:FindFirstChild("WeatherVisuals")

if myFolder and myFolder:IsA("Folder") then
    for _, child in pairs(myFolder:GetChildren()) do
        print("Child name:", child.Name)
    end
else
    warn("MyFolder not found or is not a Folder")
end
