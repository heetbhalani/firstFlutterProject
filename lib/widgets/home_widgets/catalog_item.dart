// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

// import '../home_page.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;
  const CatalogItem({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    //vxbox ane container same j vastu thay pan have vxBox n akaik faida haise aevu aa bhai ke che Codepue vala
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              catalog.name.text.xl.bold.make().pOnly(bottom: 8, top: 2),
              catalog.disc.text.textStyle(context.captionStyle).make(),
              ButtonBar(alignment: MainAxisAlignment.spaceBetween,
                  //  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.make(),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(MyTheme.darkBluish),
                            shape: MaterialStateProperty.all(StadiumBorder())),
                        child: "Buy now".text.bold.make().px2())
                  ])
            ]))
      ],
    )
//py12 atle khali upar niche padding
//px atle aju baju padding
// pOnly() apde particular left right up down aem thay.
        ).white.rounded.square(140).make().py12();
  }
}