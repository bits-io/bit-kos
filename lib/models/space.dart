part of 'model.dart';

class Space {
  late int id;
  late String name;
  late String imageUrl;
  late String city;
  late String country;
  late int price;
  late int rating;
  late String address;
  late String phone;
  late String mapUrl;
  late List photos;
  late int numberOfKitchens;
  late int numberOfBedrooms;
  late int numberOfCupboards;

  Space(
      {
        required this.id,
        required this.name,
        required this.city,
        required this.country,
        required this.price,
        required this.rating,
        required this.imageUrl,
        required this.address,
        required this.phone,
        required this.mapUrl,
        required this.photos,
        required this.numberOfKitchens,
        required this.numberOfBedrooms,
        required this.numberOfCupboards});

  Space.fromJson(json) {
    id = json['id'];
    name = json['name'];
    city = json['city'];
    country = json['country'];
    imageUrl = json['image_url'];
    price = json['price'];
    rating = json['rating'];
    address = json['address'];
    phone = json['phone'];
    mapUrl = json['map_url'];
    photos = json['photos'];
    numberOfBedrooms = json['number_of_bedrooms'];
    numberOfCupboards = json['number_of_cupboards'];
    numberOfKitchens = json['number_of_kitchens'];
  }
}
