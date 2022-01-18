// ignore_for_file: prefer_const_constructors, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/home_widgets/add_to_cart.dart';
import 'package:velocity_x/velocity_x.dart';
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
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              catalog.name.text.xl.bold
                  .color(context.accentColor)
                  .make()
                  .pOnly(bottom: 8, top: 2),
              catalog.disc.text
                  .color(context.accentColor)
                  .textStyle(context.captionStyle)
                  .make(),
              ButtonBar(alignment: MainAxisAlignment.spaceBetween,
                  //  buttonPadding: EdgeInsets.zero,
                  children: [
                    "\$${catalog.price}".text.bold.make(),
                    AddToCart(catalog: catalog)
                  ])
            ]))
      ],
    )
//py12 atle khali upar niche padding
//px atle aju baju padding
// pOnly() apde particular left right up down aem thay.
        ).color(context.cardColor).rounded.square(140).make().py12();
  }
}
