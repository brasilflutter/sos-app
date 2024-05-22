class ArigoAddressEntity {
  final String? address;
  final String? city;
  final String? state;
  final String? country;
  final String? postalCode;
  final String? phone;
  final String? email;
  final String? name;

  ArigoAddressEntity({
    this.address,
    this.city,
    this.state,
    this.country,
    this.postalCode,
    this.phone,
    this.email,
    this.name,
  });

  factory ArigoAddressEntity.fromJson(Map<String, dynamic>? json) {
    return ArigoAddressEntity(
      address: json?['address'],
      city: json?['city'],
      state: json?['state'],
      country: json?['country'],
      postalCode: json?['postalCode'],
      phone: json?['phone'],
      email: json?['email'],
      name: json?['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'postalCode': postalCode,
      'phone': phone,
      'email': email,
      'name': name,
    };
  }
}
