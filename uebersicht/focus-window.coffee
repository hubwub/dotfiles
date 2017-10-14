command: "$HOME/.bin/chunkwm-query -w"

refreshFrequency: 1000

render: (output) ->
  """
  <div class="foc">
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".foc span:first-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Meslo LG S
  top: 0px
  left: 50px
  width: 250px
  height: 20px
  padding-top: 5px
  text-align: center
  text-transform: lowercase
  background-color: #e0bc72
  color: #e9e9e9
"""
