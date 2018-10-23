var app = angular.module("myModule", [])
				.controller("myController", function($scope){
				$scope.carts=[];
				$scope.products = [
					{p_id: "1", p_name: "Samsung Galaxy S7 Edge", p_image: "img/one.jpg", p_price: 28990},
					{p_id: "2", p_name: "iPhone 8", p_image: "img/two.png", p_price: 60138},
					{p_id: "3", p_name: "Sony Xperia Z3+", p_image: "img/three.png", p_price: 1519000},
					{p_id: "4", p_name: "ALIENWARE 17", p_image: "img/four.png", p_price: 75187},
					{p_id: "5", p_name: "Luvaglio Laptop", p_image: "img/five.png", p_price: 50115000},
					{p_id: "6", p_name: "Motorola Moto G4 16GB", p_image: "img/six.png", p_price: 9013},
					{p_id: "7", p_name: "shoes", p_image: "img/2.jpg", p_price: 500}
				];
				
				$scope.add_cart = function(product){
					if(product){
						$scope.carts.push({p_id: product.p_id, p_name: product.p_name, p_price: product.p_price});
					}	
				}
						
					
				$scope.total = 0;
				
				$scope.setTotals = function(cart){
					if(cart){
						$scope.total += cart.p_price;
					}
				}
				
				$scope.remove_cart = function(cart){
					if(cart){
						$scope.carts.splice($scope.carts.indexOf(cart), 1);
						$scope.total -= cart.p_price;
					}
				}
	});