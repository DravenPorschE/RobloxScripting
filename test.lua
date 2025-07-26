local starterPack = game:GetService("StarterPack")

for _, obj in pairs(starterPack:GetChildren()) do
    print("Found:", obj.Name, "| ClassName:", obj.ClassName)
end
