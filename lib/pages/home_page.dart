import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
import 'package:flutter_catalog/widgets/item_widget.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedata = jsonDecode(catalogJson);
    var productData = decodedata["products"];

    CatalogModels.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModels.items[0]);
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
