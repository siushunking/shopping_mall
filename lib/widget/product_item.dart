import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shop_clone/screen/product_detail_screen.dart';

class ProductItem extends StatelessWidget {
    final String id;
    final String title;
    final String imageUrl;

    ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {

    return 
    ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child:  GridTile(
      child: GestureDetector(
      onTap: (() {
        Navigator.of(context).pushNamed(
          ProductDetailScreen.routeName,
          arguments: id
        );
      }),
      child: Image.network(imageUrl, fit: BoxFit.cover,),),
      footer: GridTileBar(
        leading: IconButton(icon: Icon(Icons.favorite), onPressed: () { 
        },),
        title: Text(title, textAlign: TextAlign.center,), 
        backgroundColor: Colors.black54,
        trailing: IconButton(icon: Icon(Icons.shopping_bag), onPressed: () {      
        },)
        ),
    ),
    ) ;
   
  }
}