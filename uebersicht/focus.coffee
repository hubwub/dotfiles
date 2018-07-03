commands =
  activespace: "/usr/local/bin/chunkc tiling::query --desktop id"
  modespace:   "/usr/local/bin/chunkc tiling::query --desktop mode"
  focuswindow: "/usr/local/bin/chunkc tiling::query --window owner"

command: "echo " +
         "$(#{ commands.activespace}):::" +
         "$(#{ commands.modespace}):::" +
         "$(#{ commands.focuswindow })"

refreshFrequency: 1000

render: ( ) ->
  """
  <div class="info-item focus">
    <span class="focus-output"></span>
  </div>
  """

update: ( output ) ->
  output = output.split( /:::/g )

  values = []

  values.activespace  = output[ 0 ]
  values.modespace  = output[ 1 ]
  values.focuswindow = output[ 2 ]

  $( ".focus-output" ).text( "+ #{ values.activespace }" )

style: """
  .info-item
    padding: 5px 5px 5px 5px
  display: flex
  top: 875px
  left: 50px
  width: 28px
  background-color: #15151f
  color: #00d2be
  font-family: gohufont
  font-size: 11px
  font-smoothing: antialiasing
  text-transform: lowercase
  text-align: center
  z-index: 0
"""
