local replicatedStorage = game:GetService("ReplicatedStorage")

for _, obj in pairs(replicatedStorage:GetChildren()) do
    print("Found:", obj.Name, "| ClassName:", obj.ClassName)
end