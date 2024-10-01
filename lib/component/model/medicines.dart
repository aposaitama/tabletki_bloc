import 'dart:convert';

Medicines medicinesFromJson(String str) => Medicines.fromJson(json.decode(str));

String medicinesToJson(Medicines data) => json.encode(data.toJson());

class Medicines {
  final List<Datum> data;

  Medicines({
    required this.data,
  });

  factory Medicines.fromJson(Map<String, dynamic> json) => Medicines(
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final bool available;

  Datum({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.available,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        image: json["image"],
        available: json["available"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "image": image,
        "available": available,
      };
}
