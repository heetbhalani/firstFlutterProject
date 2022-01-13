// ignore_for_file: implementation_imports

import 'package:flutter/material.dart';
// import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/src/extensions/context_ext.dart';
import 'package:velocity_x/src/flutter/container.dart';
import 'package:velocity_x/src/flutter/padding.dart';
import 'package:velocity_x/src/flutter/sizedbox.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({Key key, @required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(image)
        .box
        .p12
        .color(context.cardColor)
        .make()
        .py12()
        .px12()
        .w40(context);
  }
}