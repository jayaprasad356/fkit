import 'package:flutter/material.dart';
import 'package:fkit/adapter/list_swipe_adapter.dart';
import 'package:fkit/data/dummy.dart';
import 'package:fkit/model/people.dart';
import 'package:fkit/widget/toolbar.dart';
import 'package:fkit/widget/my_toast.dart';

class ListSwipeRoute extends StatefulWidget {

  ListSwipeRoute();

  @override
  ListSwipeRouteState createState() => new ListSwipeRouteState();
}

class ListSwipeRouteState extends State<ListSwipeRoute> {
  late BuildContext context;
  List<People>? items;

  void onItemSwipe(int index, People obj) {
    setState(() {
      items!.removeAt(index);
    });
    MyToast.show(obj.name! + " dismissed", context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Swipe") as PreferredSizeWidget?,
      body: ListSwipeAdapter(items, onItemSwipe).getView(),
    );
  }
}

