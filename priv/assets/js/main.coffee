window.Toprater ?= {}



class Toprater.Criterion
  constructor: (params) ->
    @name = params.name
    @label = params.label



Toprater.CriteriaCtrl = new Vue
  el: '[role="criteria-tree"]'

  data: 
    criteria: criteria.map (criterion) ->
      new Toprater.Criterion(criterion)

  methods:
    expand: (name) ->
      Toprater.CriteriaCtrl.expanded = if Toprater.CriteriaCtrl.expanded is name then undefined else name
