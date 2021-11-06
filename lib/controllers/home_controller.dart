import 'package:animation_2/models/Product.dart';
import 'package:animation_2/models/ProductItem.dart';
import 'package:flutter/material.dart';

enum HomeState { normal, cart }

class HomeController extends ChangeNotifier {
  HomeState homeState = HomeState.normal;

  List<ProductItem> cart = [];

  void changeHomeState(HomeState state) {
    homeState = state;
    notifyListeners();
  }

  void addProductToCart(Product product, int quantity) {
    for (ProductItem item in cart) {
      if (item.product!.title == product.title) {
        for (int a = 0; a < quantity; a++) item.increment();
        notifyListeners();
        return;
      }
    }
    cart.add(ProductItem(product: product, quantity: quantity));
    notifyListeners();
  }

  int totalCartItems() => cart.fold(
      0, (previousValue, element) => previousValue + element.quantity);
}
