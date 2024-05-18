class CategoryPetEntity {
  final String id;
  final String name;

  CategoryPetEntity({required this.id, required this.name});

  factory CategoryPetEntity.fromJson(Map<String, dynamic> json) {
    return CategoryPetEntity(id: json['id'], name: json['name']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}
