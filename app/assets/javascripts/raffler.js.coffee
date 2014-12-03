# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
raffler = angular.module "raffler", ['rails']

raffler.factory "Player", (railsResourceFactory) ->
  resource = railsResourceFactory(
    url: "/players"
    name: "player"
  )
  resource

raffler.controller "IndexCtrl", ['$scope','Player', ($scope, Player) ->

  $scope.test = 123;

  Player.query().then (result) ->
    $scope.players = result

  $scope.addPlayer = () ->
    console.log "it's here"
    newPlayer = new Player(name: $scope.newName)
    newPlayer.create().then (newlyCreatedPlayer) ->
      $scope.players.push newlyCreatedPlayer
      $scope.newName = ""

]

