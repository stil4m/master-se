angular.module('masterSE', ['ngRoute'])
  .controller('MainCtrl', function ($scope, $location, $timeout, $interval, $http) {

    var inter = null;

    $scope.data = {
      template: null
    };

    $http.get('menu.json').success(function (data) {
      $scope.menu = data
    });

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
      $interval(function () {
        $timeout(function () {
          loadTemplate();
        }, 1);

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
  .directive('navMenu', function (RecursionHelper) {
    return {
      templateUrl: 'templates/nav-menu.html',
      scope: {
        menu: '='
      },
      link: function (scope) {
        scope.focusItem = function (item, $event) {
          debugger;
          if (item.children != null) {
            item.open = !item.open;
            $event.preventDefault();
          } else {

          }
        }
      }
    }
  });
