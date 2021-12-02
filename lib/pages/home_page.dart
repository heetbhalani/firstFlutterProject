import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView.builder(
          itemCount: CatalogModels.items.length,
          itemBuilder: (BuildContext context, int index) {
            return ItemWidget(item: CatalogModels.items[index]);
          },
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
