import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/theme.dart';
// import 'package:flutter_catalog/widgets/theme.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  const HomeDetailPage({
    key,
    this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: ButtonBar(alignment: MainAxisAlignment.spaceBetween,
          //  buttonPadding: EdgeInsets.zero,
          children: [
            // backgroundColor(context.cardColor), //aa some reason nthi chaltu
            // backgroundColor(Theme.of(context).cardColor), // aa pan n ai chaltu
            "\$${catalog.price}"
                .text
                .xl4
                .color(MyTheme.darkBluish)
                .bold
                .make()
                .pOnly(left: 12),
            ElevatedButton(
                    // ignore: void_checks
                    onPressed: () {},
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(MyTheme.darkBluish),
                        // ignore: prefer_const_constructors
                        shape: MaterialStateProperty.all(StadiumBorder())),
                    child: "Buy now".text.center.bold.make())
                .wh(120, 40),
          ]),
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image)
                  .h32(context)
                  .backgroundColor(Colors.white)
                  .p16(),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 10,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                // ignore: sized_box_for_whitespace
                child: Container(
                  width: context.screenWidth,
                  // color: Colors.greenAccent,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold.make().pOnly(bottom: 15),
                      catalog.disc.text.xl
                          .textStyle(context.captionStyle)
                          .make()
                          .px12(),
                      10.heightBox,
                      "Clita sanctus diam sit justo nonumy. Et ipsum eos amet sit amet, ipsum amet sea sanctus magna kasd voluptua amet.."
                          .text
                          .make()
                          .px12(),
                    ],
                  ),
                ).py16(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
