import 'package:flutter/material.dart';
import 'package:shop_clone/provider/product.dart';
import 'package:shop_clone/provider/products.dart';
import './product_item.dart';
import 'package:provider/provider.dart';

class ProductsGrid extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return GridView.builder(
      itemCount: products.length,
      padding: const EdgeInsets.all(5),
      itemBuilder: (ctx, i) => ChangeNotifierProvider(
        create: (context) => products[i],
        child: ProductItem(products[i].id, products[i].title, products[i].imageUrl),
        ), 
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10 ),
    );
  }
}