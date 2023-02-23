import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RouterJump1 extends StatefulWidget {
  const RouterJump1({Key? key}) : super(key: key);

  @override
  State<RouterJump1> createState() => _RouterJump1State();
}

class _RouterJump1State extends State<RouterJump1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("返回数据"),
      ),
      body: Center(
        child: CupertinoButton(
          onPressed: () => {
            Navigator.pop(context,'1')
          },
          child: Text("返回数据"),
        ),
      ),
    );
  }
}
