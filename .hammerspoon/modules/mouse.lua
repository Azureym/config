-- move cursor to monitor 1 and maximize the window
hs.hotkey.bind({"alt"}, "`", function()
    local screen = hs.mouse.getCurrentScreen()
    local nextScreen = screen:next()
    local rect = nextScreen:fullFrame()
    local center = hs.geometry.rectMidPoint(rect)

    -- hs.mouse.setRelativePosition(center, nextScreen)
    hs.mouse.setAbsolutePosition(center)
end)