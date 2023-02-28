import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';


class ToastPage extends StatefulWidget {
  const ToastPage({Key? key}) : super(key: key);

  @override
  State<ToastPage> createState() => _ToastPageState();
}

class _ToastPageState extends State<ToastPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Toast"),
      ),
      body: Column(
        children: [
          Center(
            child: CupertinoButton.filled(
                child: Text('toast'),
                onPressed: () async {
                  EasyLoading.showToast("toast");
                }),
          ),
          Center(
            child: CupertinoButton.filled(
                child: Text('loading'),
                onPressed: () async {
                  EasyLoading.show();
                  Timer(Duration(seconds: 3), () {
                    EasyLoading.dismiss();
                  });
                }),
          )
        ],
      ),
    );
  }
}
