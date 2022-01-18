import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class CartModel {

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

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
 
class AddMutation extends VxMutation {

  final Item item;
  AddMutation(this.item);
  @override  
  perform() {
    (VxState.store as MyStore).cart._itemIds.add(item.id);

  }
}