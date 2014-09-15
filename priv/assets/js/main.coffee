window.Toprater ?= {}



class Toprater.Criterion
  constructor: (params) ->
    @name = params.name
    @label = params.label


class Toprater.State
  @criteria: []
  @pick: (criterion) ->
    @criteria.push criterion unless criterion in @criteria
  @drop: (criterion) ->
    @criteria.splice @criteria.indexOf(criterion), 1



Toprater.CartCtrl = new Vue
  el: '[role=cart]'

  data:
    rating_criteria: Toprater.State.criteria

  methods:
    drop: (criterion) ->
      Toprater.State.drop criterion



Toprater.CriteriaCtrl = new Vue
  el: '[role=criteria-tree]'

  data: 
    criteria: criteria.map (criterion) ->
      new Toprater.Criterion(criterion)

  methods:
    expand: (name) ->
      Toprater.CriteriaCtrl.expanded = if Toprater.CriteriaCtrl.expanded is name then undefined else name
    pick: (name) ->
      criterion = _.findWhere Toprater.CriteriaCtrl.criteria, { name }
      Toprater.State.pick criterion
