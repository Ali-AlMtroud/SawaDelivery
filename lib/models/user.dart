class User {
  final customer_id;
  final username;
  final token;
  final customer_roles;

  User({this.customer_id, this.username, this.token, this.customer_roles});

  // function to convert json data to user model
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        customer_id: json['customer_id'],
        username: json['username'],
        customer_roles: json['customer_roles'],
        token: json['token']);
  }
}
