import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:shop_clone/provider/product.dart';
import 'package:shop_clone/provider/products.dart';
import 'package:shop_clone/widget/product_item.dart';
import '../widget/product_grid.dart';

enum FilterOptions {
  Favorites,
  All,
}
class ProductsOverScreen extends StatefulWidget {
  const ProductsOverScreen({super.key});

  @override
  State<ProductsOverScreen> createState() => _ProductsOverScreenState();
}

class _ProductsOverScreenState extends State<ProductsOverScreen> {
  var _showOnlyFavorites = false;
  @override
  Widget build(BuildContext context) {
    //final productsContainer = Provider.of<Products>(context);

    return Scaffold(
      appBar: AppBar(title: Text('My shop'), 
      actions: <Widget>[
          PopupMenuButton(
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if(selectedValue == FilterOptions.Favorites){
                _showOnlyFavorites = true;
  
              }else if(selectedValue == FilterOptions.All) {
                 _showOnlyFavorites = false;
              }
              });          
            },
            itemBuilder: (_) => [
               PopupMenuItem(
                    child: Text('Only Favorites'),
                    value: FilterOptions.Favorites,
                  ),
                  PopupMenuItem(
                    child: Text('Show All'),
                    value: FilterOptions.All,
                  ),
            ],
          ),
        ],),
      body: ProductsGrid(_showOnlyFavorites),
    );
  }
}

