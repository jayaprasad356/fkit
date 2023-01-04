import 'package:flutter/material.dart';
import 'package:fkit/adapter/grid_album_adapter.dart';
import 'package:fkit/data/dummy.dart';
import 'package:fkit/model/image_obj.dart';
import 'package:fkit/widget/my_toast.dart';
import 'package:fkit/widget/toolbar.dart';

class GridAlbumRoute extends StatefulWidget {
  GridAlbumRoute();

  @override
  GridAlbumRouteState createState() => new GridAlbumRouteState();
}

class GridAlbumRouteState extends State<GridAlbumRoute> {

  void onItemClick(int index, ImageObj obj) {
    MyToast.show(obj.name, context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    List<ImageObj> items = Dummy.getImageDate();
    items.addAll(Dummy.getImageDate());

    return new Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Album", light: true) as PreferredSizeWidget?,
      body: new Builder(builder: (BuildContext context) {
        return GridAlbumAdapter(items, onItemClick).getView();
      }),
    );
  }
}