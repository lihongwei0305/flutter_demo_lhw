import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController _homeController = ScrollController();
  List list = [
    { "title":"按钮","subtitle":"button","path":"/button" },
    { "title":"表单","subtitle":"form","path":"/form" },
    { "title":"选择器","subtitle":"picker","path":"/picker" },
    { "title":"输入框","subtitle":"input","path":"/input" },
    { "title":"路由跳转","subtitle":"routerJump","path":"/routerJump" },
    { "title":"弹框","subtitle":"dialog","path":"/dialog" },
    { "title":"可设置大小的Weiget","subtitle":"sizeBox","path":"/sizebox" },
    { "title":"底部弹框","subtitle":"bottomSheet","path":"/bottomsheet" },
    { "title":"轻提示","subtitle":"toast","path":"/toast" },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
      ),
      body: ListView.separated(
        controller: _homeController,
        itemBuilder: (BuildContext context, int index){
          Map newItem = list[index];
          return ListTile(
            title: Text(newItem['title']),
            subtitle: Text(newItem['subtitle']),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: (){ context.push(newItem["path"]); },

          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          thickness: 1,
        ),
        itemCount: list.length,
      ),
    );
  }
}
