class Place {
  final int id;
  final String name;
  final String image;
  final double rate;
  final bool favorite;

  Place({
    required this.id, required this.name, required this.image, required this.rate, required this.favorite
  });

  factory Place.fromJson(Map<String, dynamic> json) {
    return Place(
      id: json['id'],
      name: json['name'],
      image: json['image'],
      rate: json['rate'],
      favorite: json['favorite']
    );
  }
}