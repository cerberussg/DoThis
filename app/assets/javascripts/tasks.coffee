# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@redFlag = (element, color)
  element.style.color = color

$ ->
  $("a[data-color]").click (e) ->
    e.preventDefault()

    color = $(this).data("color")
    redFlag(this, color)
