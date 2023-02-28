import 'package:flutter/material.dart';

class TabBarViewPage1 extends StatefulWidget {
  const TabBarViewPage1({Key? key}) : super(key: key);

  @override
  State<TabBarViewPage1> createState() => _TabBarViewPage1State();
}

class _TabBarViewPage1State extends State<TabBarViewPage1>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  List tabs = ["新闻", "历史", "图片"];

  List _list = List.generate(200, (index) => index + 1);

  List<Widget> _listView(){
    return _list.map((e) => ListTile(title: Text((e).toString()),)).toList();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("TabBarView"),
          bottom: TabBar(
            controller: _tabController,
            tabs: tabs.map((e) => Tab(text: e)).toList(),
          )),
      body: TabBarView(
        controller: _tabController,
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: ListView(
              children: _listView()
            ),
          );
        }).toList(),
      ),
    );
  }
}
