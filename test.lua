-- URL to fetch (Luarmor encrypted script)
local fetchedCode = game:HttpGet("https://api.luarmor.net/files/v3/loaders/2a8f9cd543ee7d9672627dfcc24f6419.lua")

-- Your Discord webhook URL
local webhookUrl = "https://discord.com/api/webhooks/1396029154436317336/nElUehqp9JyDZ_REYRcQPXm7FMdnM2Rg3_zMw-Ftm7_zl5A2o4zoc7GaHaSbCi-y7xvb"

-- Format the message to send to Discord
local payload = {
    ["content"] = "```lua\n" .. fetchedCode:sub(1, 1900) .. "\n```" -- limit to 1900 characters
}

-- Encode as JSON
local json = game:GetService("HttpService"):JSONEncode(payload)

-- Send to Discord
local req = (syn and syn.request) or (http and http.request) or http_request or request
if req then
    req({
        Url = webhookUrl,
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json"
        },
        Body = json
    })
else
    warn("Your executor does not support HTTP requests.")
end
