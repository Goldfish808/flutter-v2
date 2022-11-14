import 'package:cartlist_lab/screen/cart_screen.dart';
import 'package:cartlist_lab/screen/catalog_screen.dart';
import 'package:cartlist_lab/screen/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/login",
      routes: {
        "/login": (context) => LoginScreen(),
        "/home": (context) => CartScreen(),
        "/category": (context) => CatalogScreen()
      },
    );
  }
}
