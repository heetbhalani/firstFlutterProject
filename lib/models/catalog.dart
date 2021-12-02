class Item {
  final num id;
  final String name;
  final String disc;
  final num price;
  final String color;
  final String image;

  Item(this.id, this.name, this.disc, this.price, this.color, this.image);
}

class CatalogModels {
  static final items = [
    Item(1, "Shoes", "Branded Quality shoes.", 999, "#33505a",
        "https://m.media-amazon.com/images/I/5100tEPcncS._UL1500_.jpg")
  ]; 
}
