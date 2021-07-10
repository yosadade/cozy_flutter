class Space {
  late int id;
  late String name;
  late String imageUrl;
  late int price;
  late String city;
  late String country;
  late int rating;
  late String address;
  late String phone;
  late String mapUrl;
  late List photos;
  late int numberOfKitchens;
  late int numberOfBadrooms;
  late int numberOfCupboards;

  // contractor
  Space({
      required this.id,
      required this.name,
      required this.imageUrl,
      required this.price,
      required this.city,
      required this.country,
      required this.rating,
      required this.address,
      required this.phone,
      required this.mapUrl,
      required this.photos,
      required this.numberOfKitchens,
      required this.numberOfBadrooms,
      required this.numberOfCupboards
  });

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
    numberOfKitchens = json['number_of_kitchens'];
    numberOfBadrooms = json['number_of_badrooms'];
    numberOfCupboards = json['number_of_cupboards'];
  }
}
