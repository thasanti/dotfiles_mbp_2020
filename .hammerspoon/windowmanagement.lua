function resizeWindow(x, y, w, h)
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local screen = win:screen()
    local max = screen:frame()

    f.x = max.x + (max.w * x)
    f.y = max.y + (max.h * y)
    f.w = max.w * w
    f.h = max.h * h

    win:setFrame(f)
end

-- move focused window to left
hyper:bind({}, "Left", function()
    resizeWindow(0, 0, 0.5, 1)
end)

-- move focused window to right
hyper:bind({}, "Right", function()
    resizeWindow(0.5, 0, 0.5, 1)
end)

-- move focused window to top
hyper:bind({}, "Up", function()
    resizeWindow(0, 0, 1, 0.5)
end)

-- move focused window to bottom
hyper:bind({}, "Down", function()
    resizeWindow(0, 0.5, 1, 0.5)
end)

hyper:bind({}, "q", function()
    local win = hs.window.focusedWindow()
    win.close()
end)
