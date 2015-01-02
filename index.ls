require! <[ react ]>

factorify = (klass) ->
  react.create-factory klass

factorify-all = (obj) ->
  obj |> Obj.map ->
    factorify it

create-component = (spec) ->
  react.create-factory react.create-class spec

# Core framework namespace bundling together individual modules
module.exports =
  application: require './lib/application'
  routes: require './lib/routes'
  cursor: require './lib/cursor'
  server: require './lib/server'

  # move to util?
  create-component: create-component
  factorify: factorify
  factorify-all: factorify-all