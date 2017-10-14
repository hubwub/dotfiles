command: "osascript -e 'get volume settings' | cut -f2 -d':' | cut -f1 -d',';"

refreshFrequency: 1000 # ms

render: (output) ->
  "vol <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Meslo LG S
  top: 0px
  right: 75px
  width: 75px
  height: 20px
  padding-top: 5px
  text-align: center
  background-color: #dfbebd
  color: #e9e9e9
  span
    color: #e9e9e9
"""
