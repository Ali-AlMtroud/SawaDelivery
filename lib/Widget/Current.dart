import 'package:flutter/material.dart';
import 'package:flutter_version/models/product.dart';
import 'package:lottie/lottie.dart';

class Current extends StatelessWidget {
  List<Product> products=[];
  @override
  Widget build(BuildContext context) {
    return products.isEmpty? Container(child: Lottie.asset(
        'assets/5081-empty-box.json',
        width: 250,
        height: 250,
        repeat: true)
    ):ListView.builder(itemBuilder:(ctx,i)=>Text('${i}') ,itemCount: products.length,);
  }
}
