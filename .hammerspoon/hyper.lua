-- HYPER CONFIG
hyper = hs.hotkey.modal.new({}, 'F17')

function enterHyperMode()
  hyper.triggered = false
  hyper:enter()
end

function exitHyperMode()
  hyper:exit()
  if not hyper.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

f18 = hs.hotkey.bind({}, 'F18', enterHyperMode, exitHyperMode)

-- HYPERCMD CONFIG
hyperCmd = hs.hotkey.modal.new({}, 'F20')

function enterHyperCmdMode()
  hyperCmd.triggered = false
  hyperCmd:enter()
end

function exitHyperCmdMode()
  hyperCmd:exit()
  if not hyperCmd.triggered then
    hs.eventtap.keyStroke({}, 'ESCAPE')
  end
end

f19 = hs.hotkey.bind({}, 'F19', enterHyperCmdMode, exitHyperCmdMode)
