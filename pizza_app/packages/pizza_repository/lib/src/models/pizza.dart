import 'diet.dart';
import 'spiceLevel.dart';

class Pizza {
  String name;
  String description;
  String image;
  SpiceLevel spiceLevel;
  Diet diet;
  double price;
  double discountPrice;

  Pizza({
    required this.name,
    required this.description,
    required this.image,
    required this.spiceLevel,
    required this.diet,
    required this.price,
    required this.discountPrice
  });

  static final empty = Pizza(
      name: '',
      description: '',
      image: '',
      spiceLevel: SpiceLevel.balanced,
      diet: Diet.omnivore,
      price: 0.0,
      discountPrice: 0.0
  );

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "description": description,
      "image": image,
      "spiceLevel": spiceLevel,
      "diet": diet,
      "price": price,
      "discountPrice": discountPrice,
    };
  }

  static Pizza fromJson(Map<String, dynamic> jsonMap) {
    return Pizza(
        name: jsonMap['name'],
        description: jsonMap['description'],
        image: jsonMap['image'],
        spiceLevel: SpiceLevel.fromString(jsonMap['spiceLevel']),
        diet: Diet.fromString(jsonMap['diet']),
        price: jsonMap['price'],
        discountPrice: jsonMap['discountPrice']
    );
  }
}