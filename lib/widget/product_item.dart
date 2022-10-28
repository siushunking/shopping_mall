import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shop_clone/provider/cart.dart';
import 'package:shop_clone/provider/product.dart';
import 'package:shop_clone/screen/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
    final String id;
    final String title;
    final String imageUrl;

    ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Product>(context);
    final cart = Provider.of<Cart>(context, listen: false);
    return 
    Consumer<Product>(
      builder: ((context, product, child) =>ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child:  GridTile(
        child: GestureDetector(
        onTap: (() {
          Navigator.of(context).pushNamed(
            ProductDetailScreen.routeName,
            arguments: product.id
          );
        }),
        child: Image.network(product.imageUrl, fit: BoxFit.cover,),),
        footer: GridTileBar(
          leading: 
            IconButton(
            icon: Icon( product.isFavorite ? Icons.favorite : Icons.favorite_border), onPressed: () { 
        
          },),
          title: Text(title, textAlign: TextAlign.center,), 
          backgroundColor: Colors.black54,
          trailing: IconButton(icon: Icon(Icons.shopping_bag), onPressed: () {      
                cart.addItem(product.id, product.price, product.title);
          },)
          ),
      ),
      ) ),
    ) ;
  }
}