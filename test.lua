local starterPack = game:GetService("StarterPlayerScripts")

for _, obj in pairs(starterPlayer:GetChildren()) do
    print("Found:", obj.Name, "| ClassName:", obj.ClassName)
end
