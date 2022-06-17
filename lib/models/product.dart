class Product{
  final customer_id;
  final username;
  final token;
  final customer_roles;

  Product({this.customer_id, this.username, this.token, this.customer_roles});

  // function to convert json data to user model
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        customer_id: json['customer_id'],
        username: json['username'],
        customer_roles: json['customer_roles'],
        token: json['token']);
  }
}