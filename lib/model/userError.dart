class ErrorUser {
  String status;
  String message;
  ErrorUser({
    required this.status,
    required this.message,
  });
  factory ErrorUser.fromJson(Map<String, dynamic> json) {
    return ErrorUser(
      status: json['error']['status'].toString(),
      message: json['error']['message'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'message': message,
    };
  }
}
