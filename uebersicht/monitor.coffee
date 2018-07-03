commands =
  date:     "date +\"%Y%m%d\""
  time:     "date +\"%H:%M\""
  volume:   "osascript -e 'output volume of (get volume settings)'"
  battery:  "pmset -g batt | egrep '([0-9]+\%).*' -o --colour=auto " +
              "| cut -f1 -d';'"
  charging: "pmset -g batt"

command: "echo " +
           "$(#{ commands.date }):::" +
           "$(#{ commands.time }):::" +
           "$(#{ commands.volume }):::" +
           "$(#{ commands.battery }):::" +
           "$(#{ commands.charging }):::"

refreshFrequency: 1000

render: ( ) ->
    """
    <div class="info-item date">
      <span class="date-output"></span>
    </div>
    <div class="info-item time">
      <span class="time-output"></span>
    </div>
    <div class="info-item volume">
      <span class="volume-output"></span>
    </div>
    <div class="info-item battery">
      <span class="battery-output"></span>
    </div>
    """

update: ( output ) ->
  output = output.split( /:::/g )

  values = []

  values.date     = output[ 0 ]
  values.time     = output[ 1 ]
  values.volume   = output[ 2 ]
  values.battery  = output[ 3 ]
  values.charging  = output[ 4 ]

  $( ".date-output" )    .text( "#{ values.date }" )
  $( ".time-output" )    .text( "#{ values.time }" )
  $( ".volume-output" )  .text( "#{ values.volume }%" )
  $( ".battery-output" ) .text( "#{ values.battery }" )

style: """
  .info-item
    padding: 5px 5px 5px 5px
  display: flex
  top: 875px
  left: 80px
  width: 165px
  background-color: #15151f
  color: #00d2be
  font-family: gohufont
  font-size: 11px
  font-smoothing: antialiasing
  text-transform: lowercase
  text-align: center
  z-index: 0
"""
