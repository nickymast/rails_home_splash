# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  setInterval 'updateClock()', 1000

pad = (number) ->
  if number < 10
    '0' + number
  else
    number

@updateClock = ->
  currentTime = new Date
  currentHours = currentTime.getHours()
  currentMinutes = pad(currentTime.getMinutes())
  currentSeconds = pad(currentTime.getSeconds())
  currentMonth = currentTime.getMonth()
  currentDay = currentTime.getDay()

  #Get "AM" or "PM" for the date
  timeOfDay = if currentHours < 12 then 'am' else 'pm'

  #Convert hours component to 12-hour updateClock
  twelveHour = currentHours % 12
  twelveHour = if twelveHour == 0 then 12 else pad(twelveHour)

  #Compose time string
  currentTimeString = "#{twelveHour}:#{currentMinutes} #{timeOfDay}"
  $('#jsclock').html currentTimeString