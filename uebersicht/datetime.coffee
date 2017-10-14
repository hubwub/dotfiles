command: "date +\"%a %d %b %Y %H:%M\""

refreshFrequency: 1000

render: (output) ->
  "<div class='date'>#{output}</div>"

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Meslo LG S
  color: #e9e9e9
  top: 0px
  height: 20px
  padding-top: 5px
  width: 100%
  .date
    text-align: center
"""
