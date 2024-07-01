## Config
- On a Mac, the h, j, k and l movement keys may not repeat when held, to fix this open Terminal and execute the following command: 
`defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false`
- To fix the remapped escape key not working in Linux, set `"keyboard.dispatch": "keyCode"`
- To increase the key repeat speed even more:
  `defaults write -g InitialKeyRepeat -int 10`
  `defaults write -g KeyRepeat -int 1`
