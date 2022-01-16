class CatalogModels {
  static List<Item> items;
  //  = 
  // Null as List<Item>;
  // [
  //   Item(
  //       id: 1,
  //       name: "Shoes",
  //       disc: "Branded Quality shoes.",
  //       price: 111,
  //       color: "#33505a",
  //       image: "https://m.media-amazon.com/images/I/5100tEPcncS._UL1500_.jpg"),
  // ];

  static getById(int id) {
    // ignore: null_closures
    return items.firstWhere((element) => element.id == id, orElse: null);

  }
  static getByPosition(int pos) => items[pos];
}

class Item {
  final num id;
  final String name;
  final String disc;
  final num price;
  final String color;
  final String image;

  Item(
      { this.id,
       this.name,
       this.disc,
      this.price,
       this.color,
       this.image});

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
