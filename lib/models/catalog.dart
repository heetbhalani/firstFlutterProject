class CatalogModels {
  static List<Item> items = [
    Item(
        id: 1,
        name: "Shoes",
        disc: "Branded Quality shoes.",
        price: 999,
        color: "#33505a",
        image: "https://m.media-amazon.com/images/I/5100tEPcncS._UL1500_.jpg"),
    Item(
        id: 1,
        name: "Shoes",
        disc: "Branded Quality shoes.",
        price: 99,
        color: "#33505a",
        image: "https://m.media-amazon.com/images/I/5100tEPcncS._UL1500_.jpg")
  ];
}

class Item {
  final num id;
  final String name;
  final String disc;
  num price;
  String color;
  String image;

  Item(
      { this.id,
       this.name,
       this.disc,
       this.price,
       this.color,
       this.image});

  
}
