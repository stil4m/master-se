angular.module('masterSE', ['ngRoute'])
  .controller('MainCtrl', function ($scope, $location, $timeout, $interval ) {

    var inter = null;

    $scope.data = {
      template: null
    };

    function loadTemplate(event) {
      if ($location.path() == null || $location.path().length == 0) {
        $scope.data.template = null;
        return
      }
      $scope.data.template = "." + $location.path() + ".html?" + new Date().getTime();

      $timeout(function () {
        MathJax.Hub.Queue(["Typeset", MathJax.Hub]);
      }, 100);
    }

    function startInterval() {
      $interval(function() {
        $timeout(function(){
          loadTemplate();
        },1);

      }, 1000);
    }

    if ($location.search().interval) {
      startInterval();
    }

    $scope.$on('$locationChangeStart', loadTemplate);
  })
  .directive('presentedItem', function () {
    return {
      restrict: 'E',
      template: '<span class="presented-by-lecturer">Presented by the lecturer.</span>'
    }
  })
  .directive('jsonTable', function() {
    return {
    }
  });
