class Blog.Views.PostsIndexView extends Backbone.View
  el: '#posts'

  template: JST["backbone/templates/posts/index"]

  initialize: ->
      @render()
      @addAll()

  addAll: ->
    console.log("add all")
    @collection.forEach(@addOne, @)

  addOne: (model) ->
      @view = new Blog.Views.PostView({model: model})
      @$el.find('tbody').append @view.render().el

  render: ->
      @$el.html @template()
      @
