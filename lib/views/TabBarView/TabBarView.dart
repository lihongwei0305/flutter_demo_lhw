import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TabBarViewPage extends StatefulWidget {
  const TabBarViewPage({Key? key}) : super(key: key);

  @override
  State<TabBarViewPage> createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage> {
  final ScrollController _homeController = ScrollController();
  List list = [
    {"title": "TabBarView1", "subtitle": "TabBarView1", "path": "/tabbarview1"},
    {"title": "TabBarView2", "subtitle": "DefaultTabController", "path": "/tabbarview2"},
    {"title": "TabBarView3", "subtitle": "动态tabs", "path": "/tabbarview3"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("TabBarView")),
      body: ListView.separated(
        controller: _homeController,
        itemBuilder: (BuildContext context, int index) {
          Map newItem = list[index];
          return ListTile(
            title: Text(newItem['title']),
            subtitle: Text(newItem['subtitle']),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {
              context.push(newItem["path"]);
            },
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 1,
          height: 0,
        ),
        itemCount: list.length,
      ),
    );
  }
}
