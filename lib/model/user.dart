class User {
  final String? jwt;
  final int? id;
  final String? username;
  final String email;
  final bool? confirmed;
  final bool? blocked;
  final DateTime createdAt;
  final DateTime updatedAt;

  User({
    required this.jwt,
    required this.id,
    this.username,
    required this.email,
    required this.confirmed,
    this.blocked,
    required this.createdAt,
    required this.updatedAt,
  });

  // Constructor que permite crear un Usuario a partir de un mapa de datos JSON
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      jwt: json['jwt'],
      id: json['user']['id'],
      username: json['user']['username'],
      email: json['user']['email'],
      confirmed: json['user']['confirmed'],
      blocked: json['user']['blocked'],
      createdAt: DateTime.parse(json['user']['createdAt']),
      updatedAt: DateTime.parse(json['user']['updatedAt']),
    );
  }

  // Método para convertir el usuario a un mapa de datos, útil para enviar datos a una API o guardarlos localmente
  Map<String, dynamic> toJson() {
    return {
      'jwt': jwt,
      'user': {
        'id': id,
        'username': username,
        'email': email,
        'confirmed': confirmed,
        'blocked': blocked,
        'createdAt': createdAt.toIso8601String(),
        'updatedAt': updatedAt.toIso8601String(),
      },
    };
  }
}
