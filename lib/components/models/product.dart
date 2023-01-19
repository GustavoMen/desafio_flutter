class Product {
  final int id;
  final String title;
  final int price;
  final String description;
  final String brand;
  final String category;
  final String thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.brand,
    required this.category,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      brand: json['brand'],
      category: json['category'],
      thumbnail: json['thumbnail'],
    );
  }
}
