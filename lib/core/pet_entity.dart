import 'package:sos/core/core.dart';

class PetEntity {
  final String id;
  final String name;
  final String color;
  final String sex;
  final String race;
  final String size;
  final String imageUrl;
  final String status;
  final String? accessories;
  final bool isDetectorDevice;
  final String? microchip;
  final ArigoAddressEntity? address;
  final String? locationFound;
  PetEntity({
    required this.id,
    required this.name,
    required this.sex,
    required this.size,
    required this.color,
    required this.race,
    required this.imageUrl,
    required this.status,
    required this.accessories,
    required this.isDetectorDevice,
    this.microchip,
    this.address,
    this.locationFound,
  });

  factory PetEntity.fromJson(Map<String, dynamic>? json) {
    return PetEntity(
      id: json?['id'],
      name: json?['name'],
      color: json?['color'],
      sex: json?['sex'],
      race: json?['race'],
      size: json?['size'],
      imageUrl: json?['imageUrl'],
      status: json?['status'],
      accessories: json?['accessories'],
      isDetectorDevice: json?['isDetectorDevice'] ?? false,
      microchip: json?['microchip'],
      address: ArigoAddressEntity.fromJson(json?['address']),
      locationFound: json?['locationFound'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'sex': sex,
      'race': race,
      'size': size,
      'imageUrl': imageUrl,
      'status': status,
      'accessories': accessories,
      'isDetectorDevice': isDetectorDevice,
      'microchip': microchip,
      'address': address?.toJson(),
      'locationFound': locationFound,
    };
  }
}
