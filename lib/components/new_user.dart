class User {
  String username;
  String fullName;
  String email;
  String password;
  String confirmPassword;

  User(
      {
        required this.username,
        required this.fullName,
        required this.email,
        required this.password,
        required this.confirmPassword});

  Map<String, dynamic> toJson() => {
    'username': username,
    'full_name': fullName,
    'email': email,
    'password': password,
    'confirmPassword': confirmPassword,
  };
}