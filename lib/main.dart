import 'package:cartlist_lab/screen/cart_screen.dart';
import 'package:cartlist_lab/screen/catalog_screen.dart';
import 'package:cartlist_lab/screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
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
        "/cart": (context) => CartScreen(),
        "/catalog": (context) => CatalogScreen()
      },
    );
  }
}
