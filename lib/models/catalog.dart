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
  String name;
  String disc;
  num price;
  String color;
  String image;

  Item(
      {required this.id,
      required this.name,
      required this.disc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
        id: map["id"],
        name: map["name"],
        disc: map["disc"],
        price: map["price"],
        color: map["color"],
        image: map["image"]);
  }

  toMap() => {
        "id": id,
        "name": name,
        "disc": disc,
        "price": price,
        "color": color,
        "image": image
      };
}
