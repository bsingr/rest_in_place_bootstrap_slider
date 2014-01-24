# <div class='rest-in-place-slider'>
#   <span class='rest-in-place' data-attribute='myField' ...>
#   <input class='slider' ...
# </div>
class RestInPlaceSlider
  constructor : (el) ->
    @$element = $(el)
    @createTextInput()
    @createTextInputUpdatedHandler()
    @bindTextInput()
    @createSliderInput()
    @createSliderInputUpdatedHandler()
    @bindSliderInput()

  createTextInput: () ->
    @$textInput = @$element.find('.rest-in-place')
    unless @$textInput.length
      throw 'RestInPlaceSlider .rest-in-place not found'

  createSliderInput : () ->
    @$sliderInput = @$element.find('.slider')
    unless @$sliderInput.length
      throw 'RestInPlaceSlider .slider not found'

  bindSliderInput : () ->
    @$sliderInput
      .slider()
      .on('slideStop', @sliderInputUpdatedHandler)

  bindTextInput : () ->
    @$textInput.bind('success.rest-in-place', @textInputUpdatedHandler)

  createTextInputUpdatedHandler : () ->
    @textInputUpdatedHandler = (e, data) =>
      value = @restInPlaceEditor().extractAttributeFromData(data)
      @$sliderInput.slider('setValue', value)

  createSliderInputUpdatedHandler: () ->
    @sliderInputUpdatedHandler = (e) =>
      value = e.value
      @$textInput.html(value)
      @restInPlaceEditor().activate()
      @restInPlaceEditor().update()

  restInPlaceEditor: () ->
    @$textInput.data('restInPlaceEditor')

$ ->
  $('.rest-in-place-slider').each ->
    new RestInPlaceSlider(@)

