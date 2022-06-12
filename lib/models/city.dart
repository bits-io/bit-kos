part of 'model.dart';

class City {
  int id;
  String name;
  String imageUrl;
  bool isPopular;

  //City(this.id, this.name, this.imageUrl);
  City({required this.id, required this.name, required this.imageUrl, this.isPopular = false});
}