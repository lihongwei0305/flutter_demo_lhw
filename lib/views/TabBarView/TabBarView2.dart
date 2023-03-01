
import 'package:flutter/material.dart';

class TabBarViewPage2 extends StatefulWidget {
  const TabBarViewPage2({Key? key}) : super(key: key);

  @override
  State<TabBarViewPage2> createState() => _TabBarViewPage2State();
}

class _TabBarViewPage2State extends State<TabBarViewPage2> {
  List tabs = ["新闻", "历史", "图片"];

  List _list = List.generate(200, (index) => index + 1);

  List<Widget> _listView(){
    return _list.map((e) => ListTile(title: Text((e).toString()),)).toList();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: tabs.length, child: Scaffold(
      appBar: AppBar(title: Text('DefaultTabController'),bottom: TabBar(tabs: tabs.map((e) => Text(e)).toList()),),
      body: TabBarView(
        children: tabs.map((e) {
          return Container(
            alignment: Alignment.center,
            child: ListView(
                children: _listView()
            ),
          );
        }).toList(),
      ),
    ));
  }
}
