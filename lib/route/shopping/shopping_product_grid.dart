import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fkit/adapter/grid_shop_product_adapter.dart';
import 'package:fkit/data/dummy.dart';
import 'package:fkit/data/my_colors.dart';
import 'package:fkit/model/shop_category.dart';
import 'package:fkit/model/shop_product.dart';
import 'package:fkit/widget/my_toast.dart';

class ShoppingProductGridRoute extends StatefulWidget {

  ShoppingProductGridRoute();

  @override
  ShoppingProductGridRouteState createState() => new ShoppingProductGridRouteState();
}


class ShoppingProductGridRouteState extends State<ShoppingProductGridRoute> {

  late BuildContext context;
  void onItemClick(int index, ShopCategory obj) {
    MyToast.show("Product " + index.toString() + "clicked", context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<ShopProduct> items = Dummy.getShoppingProduct();
    return Scaffold(
      backgroundColor: MyColors.grey_10,
      appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark
          ),
          backgroundColor: MyColors.primary,
          title: Text("Products", style: TextStyle(color: MyColors.grey_10)),
          leading: IconButton(
            icon: Icon(Icons.menu, color: MyColors.grey_10),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.shopping_cart, color: MyColors.grey_10),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert, color: MyColors.grey_10),
              onPressed: () {},
            ),// overflow menu
          ]
      ),
      body: GridShopProductAdapter(items, onItemClick).getView(),
    );
  }

}

