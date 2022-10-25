import 'package:flutter/material.dart';
import 'package:shop_clone/provider/products.dart';
import 'package:shop_clone/screen/product_detail_screen.dart';
import 'package:shop_clone/screen/products_overview_screen.dart';
import 'package:provider/provider.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
    create: (ctx) => Products(), 
    child: MaterialApp(
      title: 'MyShop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductsOverScreen(),
      routes: {
        ProductDetailScreen.routeName:(context) => ProductDetailScreen() 
      },
    ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop'),
      ),
      body: Center(
        child: Text('Let\'s build a shop!'),
      ),
    );
  }
}
