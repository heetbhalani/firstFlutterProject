import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

// import '../home_page.dart';
import 'catalog_item.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: CatalogModels.items.length,
            itemBuilder: (context, index) {
              final catalog = CatalogModels.items[index];
              return CatalogItem(
                catalog: catalog,
              );
            }));
  }
}
