class UserProfileEntity {
  final String id;
  final String email;
  final String phone;

  UserProfileEntity({
    required this.id,
    required this.email,
    required this.phone,
  });

  factory UserProfileEntity.fromMap(Map<String, dynamic> map) {
    return UserProfileEntity(
      id: map['user_id'],
      email: map['email'],
      phone: map['phone'],
    );
  }
}
