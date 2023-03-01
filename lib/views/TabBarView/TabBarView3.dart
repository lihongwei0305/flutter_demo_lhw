import 'dart:math';

import 'package:flutter/material.dart';

class TabBarViewPage3 extends StatefulWidget {
  const TabBarViewPage3({Key? key}) : super(key: key);

  @override
  State<TabBarViewPage3> createState() => _TabBarViewPageState();
}

class _TabBarViewPageState extends State<TabBarViewPage3>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  List<String> _tabsList = ["1", "2", "3"];

  bool keepAlive = true;

  List _contentList = List.generate(200, (index) => index + 1);

  List<Widget> _listView() {
    return _contentList
        .map((e) => ListTile(
              title: Text((e).toString()),
            ))
        .toList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: _tabsList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动态Tab"),
        bottom: TabBar(
            isScrollable: true,
            controller: _tabController,
            tabs: _tabsList.map((e) => Text(e)).toList()),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabsList
            .map((e) => KeepAliveWrapper(
          keepAlive: keepAlive,
                  child: ListView(
                    children: _listView(),
                  ),
                ))
            .toList(),
      ),
      floatingActionButton: IconButton(
          icon: Icon(Icons.add),
          onPressed: () {
            setState(() {
              _tabsList =
                  List.generate(next(1, 20), (index) => index.toString());
              print(_tabsList.toString());
              _tabController =
                  TabController(length: _tabsList.length, vsync: this);
            });
          }),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;

  int next(int min, int max) {
    int num = min + Random().nextInt(max - min + 1);
    return num;
  }
}

class KeepAliveWrapper extends StatefulWidget {
  const KeepAliveWrapper({
    Key? key,
    this.keepAlive = true,
    required this.child,
  }) : super(key: key);
  final bool keepAlive;
  final Widget child;

  @override
  _KeepAliveWrapperState createState() => _KeepAliveWrapperState();
}

class _KeepAliveWrapperState extends State<KeepAliveWrapper>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return widget.child;
  }

  @override
  void didUpdateWidget(covariant KeepAliveWrapper oldWidget) {
    if (oldWidget.keepAlive != widget.keepAlive) {
      // keepAlive 状态需要更新，实现在 AutomaticKeepAliveClientMixin 中
      updateKeepAlive();
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  bool get wantKeepAlive => widget.keepAlive;
}
