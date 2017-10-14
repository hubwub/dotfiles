command: "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto | cut -f1 -d';'"

refreshFrequency: 150000 # ms

render: (output) ->
  "bat <span>#{output}</span>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Meslo LG S
  top: 0px
  right: 0px
  width: 75px
  height: 20px
  padding-top: 5px
  text-align: center
  background-color: #98bcbd
  color: #e9e9e9
  span
    color: #e9e9e9
"""
