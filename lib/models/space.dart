class Space {
  int id;
  String name;
  String imageUrl;
  int price;
  String city;
  String country;
  int rating;

  // contractor
  Space({
    required this.city, 
    required this.country, 
    required this.id, 
    required this.imageUrl, 
    required this.rating, 
    required this.price, 
    required this.name});
}