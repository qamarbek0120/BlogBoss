class User {
  String usernameOrEmail;
  String password;

  User({required this.usernameOrEmail, required this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      usernameOrEmail: json['usernameOrEmail'],
      password: json['password'],
    );
  }

  Map<String, dynamic> toJson() => {
    'usernameOrEmail': usernameOrEmail,
    'password': password,
  };
}