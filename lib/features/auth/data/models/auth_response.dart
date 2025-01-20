//
class AuthResponseModel {
  final User user;
  final String token;

  AuthResponseModel({
    required this.user,
    required this.token,
  });

  factory AuthResponseModel.fromJson(Map<String, dynamic> json) {
    return AuthResponseModel(
      user: User.fromJson(json['user']),
      token: json['token'],
    );
  }
}

class User {
  final int id;
  final String name;
  final String email;
  final String? image;
  final String? emailVerifiedAt;
  final int roleId;
  final String createdAt;
  final String updatedAt;
  final Role? role;

  User({
    required this.id,
    required this.name,
    required this.email,
    this.image,
    this.emailVerifiedAt,
    required this.roleId,
    required this.createdAt,
    required this.updatedAt,
    this.role,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      image: json['image'],
      emailVerifiedAt: json['email_verified_at'],
      roleId: json['role_id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      role: Role.fromJson(json['role']),
    );
  }
}

class Role {
  final int id;
  final String name;
  final String createdAt;
  final String updatedAt;

  Role({
    required this.id,
    required this.name,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Role.fromJson(Map<String, dynamic> json) {
    return Role(
      id: json['id'],
      name: json['name'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
