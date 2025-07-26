for _, obj in pairs(workspace:GetChildren()) do
    if obj:IsA("Folder") then
        print("Found folder:", obj.Name)
    end
end