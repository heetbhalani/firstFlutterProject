// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
// import 'package:flutter_catalog/utils/routes.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key key, this.item})
      : 
      // assert(item != null),
        super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Card(
      // ignore: unrelated_type_equality_checks
      child: (CatalogModels.items != Null && CatalogModels.items.isNotEmpty)? ListTile(
        
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.disc),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: const TextStyle(color: Colors.grey),
        ),
      ) : const Center(
         child:  CircularProgressIndicator()),
    );
  }
}
