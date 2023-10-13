class User {
  String fullName;
  String email;
  String password;
  String confirmPassword;
  String newUsername;

  User(
      {required this.fullName,
        required this.email,
        required this.password,
        required this.confirmPassword,
        required this.newUsername});

  Map<String, dynamic> toJson() => {
    'full_name': fullName,
    'email': email,
    'password': password,
    'confirmPassword': confirmPassword,
    'username': newUsername
  };
}