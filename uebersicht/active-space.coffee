command: "$HOME/.bin/chunkwm-query -d"

refreshFrequency: 1000

render: (output) ->
  """
  <div class="acs">
    <span></span>
  </div>
  """

update: (output, el) ->
    $(".acs span:first-child", el).text("  #{output}")

style: """
  -webkit-font-smoothing: antialiased
  font: 12px Meslo LG S
  top: 0px
  left: 0px
  width: 50px
  height: 20px
  padding-top: 5px
  text-align: center
  text-transform: lowercase
  background-color: #719672
  color: #e9e9e9
"""
