// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Productmodel {
  int id;
  String name;
  String description;
  int price;
  String category;
  String image;
  Productmodel({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.category,
    required this.image,
  });

  Productmodel copyWith({
    int? id,
    String? name,
    String? description,
    int? price,
    String? category,
    String? image,
  }) {
    return Productmodel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      price: price ?? this.price,
      category: category ?? this.category,
      image: image ?? this.image,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'category': category,
      'image': image,
    };
  }

  factory Productmodel.fromMap(Map<String, dynamic> map) {
    return Productmodel(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      price: map['price'] as int,
      category: map['category'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Productmodel.fromJson(String source) => Productmodel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Productmodel(id: $id, name: $name, description: $description, price: $price, category: $category, image: $image)';
  }

  @override
  bool operator ==(covariant Productmodel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.description == description &&
      other.price == price &&
      other.category == category &&
      other.image == image;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      description.hashCode ^
      price.hashCode ^
      category.hashCode ^
      image.hashCode;
  }
}
