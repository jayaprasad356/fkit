import 'package:flutter/material.dart';
import 'package:fkit/adapter/list_basic_adapter.dart';
import 'package:fkit/data/dummy.dart';
import 'package:fkit/model/people.dart';
import 'package:fkit/widget/toolbar.dart';
import 'package:fkit/widget/my_toast.dart';

class ListBasicRoute extends StatefulWidget {

  ListBasicRoute();

  @override
  ListBasicRouteState createState() => new ListBasicRouteState();
}

class ListBasicRouteState extends State<ListBasicRoute> {
  late BuildContext context;
  void onItemClick(int index, People obj) {
    MyToast.show(obj.name!, context, duration: MyToast.LENGTH_SHORT);
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    List<People> items = Dummy.getPeopleData();
    items.addAll(Dummy.getPeopleData());
    items.addAll(Dummy.getPeopleData());

    return new Scaffold(
      appBar: CommonAppBar.getPrimarySettingAppbar(context, "Basic") as PreferredSizeWidget?,
      body: ListBasicAdapter(items, onItemClick).getView(),
    );
  }
}

