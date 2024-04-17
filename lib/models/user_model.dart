class UserModel {
  String name;
  String phoneNumber;
  String email;

  UserModel({
    required this.name,
    required this.phoneNumber,
    required this.email,
  });

  @override
  String toString() {
    return 'UserModel{name: $name, phoneNumber: $phoneNumber, email: $email}';
  }

// Add a toMap method
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
    };
  }

// Add a fromMap method
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      name: map['name'] as String,
      phoneNumber: map['phoneNumber'] as String,
      email: map['email'] as String,
    );
  }
}
