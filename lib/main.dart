import 'package:flutter/material.dart';
import 'package:flutter_cart_with_provider/ui/product_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Cart Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductListPage(title: 'Flutter Product List Page'),
    );
  }
}
