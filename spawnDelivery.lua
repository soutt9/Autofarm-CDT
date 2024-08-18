local args = {
    [1] = {
        ["Truck"] = "DeliveryTruck",
        ["Action"] = "StartDeliveryJob",
        ["Jobs"] = {
            [1] = {
                ["Id"] = "2202bcae-a49b-46cf-962a-a41024bbd17f",
                ["Image"] = "http://www.roblox.com/asset/?id=18451332964",
                ["JobData"] = {
                    ["Color"] = "36",
                    ["Distance"] = "1.48 miles",
                    ["OrderId"] = "5284923c-0ac5-4c39-91f4-315a823e4f3a",
                    ["Rims"] = "A-001",
                    ["Car"] = "Audi7",
                    ["Customer"] = "Business",
                    ["Id"] = "2202bcae-a49b-46cf-962a-a41024bbd17f",
                    ["State"] = 0,
                    ["Springs"] = "Lift",
                    ["Destination"] = "DeliveryPoint5",
                    ["MoneyReward"] = 9030,
                    ["RimColor"] = "15"
                },
                ["CFrame"] = CFrame.new(-1627.6729736328125, 601.6503295898438, 3061.165771484375, -1, 0, 0, 0, 1, 0, 0, 0, -1)
            }
        }
    }
}

game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("DealershipCustomerController"):WaitForChild("JobRemoteHandler"):FireServer(unpack(args))
