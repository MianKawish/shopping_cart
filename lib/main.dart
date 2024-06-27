import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/product_list.dart';
import 'package:shopping_cart/providers/cart_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CartProvider(),
        child: Builder(
          builder: (context) {
            return const MaterialApp(
              debugShowCheckedModeBanner: false,
              home: ProductListScreen(),
            );
          },
        ));
  }
}
