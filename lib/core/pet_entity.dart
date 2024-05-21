class PetEntity {
  final String id;
  final String name;
  final String color;
  final String sex;
  final String race;
  final String imageUrl;
  final String status;
  final bool isDetectorDevice;
  PetEntity({
    required this.id,
    required this.name,
    required this.sex,
    required this.color,
    required this.race,
    required this.imageUrl,
    required this.status,
    required this.isDetectorDevice,
  });

  factory PetEntity.fromJson(Map<String, dynamic>? json) {
    return PetEntity(
      id: json?['id'],
      name: json?['name'],
      color: json?['color'],
      sex: json?['sex'],
      race: json?['race'],
      imageUrl: json?['imageUrl'],
      status: json?['status'],
      isDetectorDevice: json?['isDetectorDevice'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'sex': sex,
      'race': race,
      'imageUrl': imageUrl,
      'status': status,
      'isDetectorDevice': isDetectorDevice,
    };
  }
}
