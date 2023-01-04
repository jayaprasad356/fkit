import 'package:flutter/material.dart';
import 'package:fkit/adapter/list_draggable_adapter.dart';
import 'package:fkit/data/dummy.dart';
import 'package:fkit/model/people.dart';
import 'package:fkit/widget/toolbar.dart';

class ListDraggableRoute extends StatefulWidget {

  ListDraggableRoute();

  @override
  ListDraggableRouteState createState() => new ListDraggableRouteState();
}

class ListDraggableRouteState extends State<ListDraggableRoute> {
  late BuildContext context;
  List<People>? items;

  void onReorder() {
    setState(() {});
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
      appBar: CommonAppBar.getPrimaryAppbar(context, "Draggable") as PreferredSizeWidget?,
      body: ListDraggableAdapter(items, onReorder).getView(),
    );
  }
}

