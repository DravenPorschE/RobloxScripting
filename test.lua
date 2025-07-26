-- URL to fetch (Luarmor encrypted script)
local fetchedCode = game:HttpGet("https://cdn.luarmor.net/v4_init_may312.lua")

-- Your Discord webhook URL
local webhookUrl = "https://discord.com/api/webhooks/your_webhook_here"

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
