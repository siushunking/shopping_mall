import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_clone/provider/product.dart';
import 'package:shop_clone/widget/product_item.dart';
import '../widget/product_grid.dart';

class ProductsOverScreen extends StatelessWidget {
  const ProductsOverScreen({super.key});

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(title: Text('My shop')),
      body: ProductsGrid(),
    );
  }
}

