import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterJump extends StatefulWidget {
  const RouterJump({Key? key}) : super(key: key);

  @override
  State<RouterJump> createState() => _RouterJumpState();
}

class _RouterJumpState extends State<RouterJump> {
  Future<void> jumpToPage1(BuildContext context) async {
    // final res = await Navigator.pushNamed(context, "/routerJump1");
    // Navigator.pushNamed(context,"/routerJump1");

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由跳转"),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: CupertinoButton.filled(
              onPressed: () => {
                context.pushNamed("routerJump1")
              },
              child: Text("跳转页面,等待返回数据"),
            ),
          )
        ],
      ),
    );
  }
}
