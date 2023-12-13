import 'package:shoppy/models/posts/rating.dart';

class Products {
  final int id;
  final String title;
  final num price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  Products.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        price = json['price'],
        description = json['description'],
        category = json['category'],
        image = json['image'],
        rating = Rating.fromJson(json['rating']);
}
