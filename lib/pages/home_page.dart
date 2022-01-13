// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_list.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';
// import 'package:flutter_catalog/widgets/item_widget.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';
// import 'package:flutter_catalog/pages/home_widgets/catalog_image.dart';
// import 'package:flutter_catalog/pages/home_widgets/catalog_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

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
    await Future.delayed(const Duration(seconds: 0));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedata = jsonDecode(catalogJson);
    var productData = decodedata["products"];

    CatalogModels.items =
        List.from(productData).map<Item>((item) => Item.fromMap(item)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // final dummyList = List.generate(20, (index) => CatalogModels.items[0]);
    return Scaffold(
      backgroundColor: MyTheme.creamcolor,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.cartRoute),
        backgroundColor: MyTheme.darkBluish,
        child: Icon(CupertinoIcons.cart),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogModels.items != null && CatalogModels.items.isNotEmpty)
                CatalogList().expand()
              else
                CircularProgressIndicator().centered().pOnly(top: 50).expand(),
            ],
          ),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}

// this is Old code (list view ) till  we reach nearly 5-hour in  codepur video.

// @override
//   Widget build(BuildContext context) {
//     // final dummyList = List.generate(20, (index) => CatalogModels.items[0]);
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("First App"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: (CatalogModels.items != null && CatalogModels.items.isNotEmpty)? ListView.builder(
//           itemCount: CatalogModels.items.length,
//           itemBuilder: (BuildContext context, int index) {
//             return ItemWidget(item: CatalogModels.items[index]);
//           },
//         )  : Center(child: CircularProgressIndicator()),
//       ),
//       drawer: MyDrawer(),
//     );
//   }
// }
