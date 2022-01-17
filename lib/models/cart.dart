import 'package:flutter_catalog/models/catalog.dart';

class CartModel {


  static final cartModel = CartModel._internal();
  CartModel._internal();
  factory CartModel() => cartModel;


  CatalogModel _catalog;
  //collection of ids
  final List<int> _itemIds = [];

  //Get catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = newCatalog;
  }
  //Get items in cart

  List<Item> get items => _itemIds.map((id) => _catalog.getById(id)).toList();

  //Get total Price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
