
angular.module('masterSE', ['ngRoute'])
  .controller('MainCtrl', function($scope, $location, $timeout) {

    $scope.data = {
      template : null
    };

    $scope.$on('$locationChangeStart', function(event) {
      if ($location.path() == null || $location.path().length == 0) {
        $scope.data.template = null;
        return
      }
      $scope.data.template = "." + $location.path();

      $timeout(function() {
        MathJax.Hub.Queue(["Typeset",MathJax.Hub]);
      }, 100);
    });

  });