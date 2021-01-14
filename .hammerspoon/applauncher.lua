-- ApplicationLauncher [HYPER + KEY]
local apps = {
    b = "Spotify",
    c = "Google Chrome",
    d = "Visual Studio Code",
    f = "Finder",
    m = "Spark",
    n = "Music",
    t = "iTerm"
}

print("INITIALIZING APPLAUNCHER")
for key, value in pairs(apps) do
    hyper:bind({}, key, function()
        hs.application.launchOrFocus(value)
    end)
    print("BOUND ", key, " -> ", value)
end
