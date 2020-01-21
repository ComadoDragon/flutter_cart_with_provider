import 'package:flutter/material.dart';
import 'package:flutter_cart_with_provider/ui/product_list.dart';
import 'package:flutter_cart_with_provider/viewmodel/api_view_model.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          builder: (context) => ApiViewModel(),
        ),
      ],
      child: Consumer<ApiViewModel>(
        builder: (context, ApiViewModel, _) {
          return MaterialApp(
            title: 'Flutter Cart Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: ProductListPage(title: 'Flutter Product List Page'),
          );
        },
      ),
    );
  }
}
