import 'package:flutter/material.dart';
import 'package:fkit/adapter/list_expand_adapter.dart';
import 'package:fkit/data/dummy.dart';
import 'package:fkit/model/people.dart';
import 'package:fkit/widget/toolbar.dart';

class ListExpandRoute extends StatefulWidget {

  ListExpandRoute();

  @override
  ListExpandRouteState createState() => new ListExpandRouteState();
}

class ListExpandRouteState extends State<ListExpandRoute> {
  late BuildContext context;
  List<People>? items;

  @override
  void initState() {
    super.initState();
    items = Dummy.getPeopleData();
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;

    return new Scaffold(
      appBar: CommonAppBar.getPrimaryAppbar(context, "Expand") as PreferredSizeWidget?,
      body: ListExpandAdapter(items).getView(),
    );
  }
}

