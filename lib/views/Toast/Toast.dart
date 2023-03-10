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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CupertinoButton.filled(
                  child: Text('toast'),
                  onPressed: () async {
                    EasyLoading.showToast("toast");
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CupertinoButton.filled(
                  child: Text('success'),
                  onPressed: () async {
                    EasyLoading.showSuccess("success");
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CupertinoButton.filled(
                  child: Text('error'),
                  onPressed: () async {
                    EasyLoading.showError("error");
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CupertinoButton.filled(
                  child: Text('showProgress'),
                  onPressed: () async {
                    EasyLoading.showProgress(0.3, status: 'downloading...');
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: CupertinoButton.filled(
                  child: Text('loading'),
                  onPressed: () async {
                    EasyLoading.show();
                    Timer(Duration(seconds: 3), () {
                      EasyLoading.dismiss();
                    });
                  }),
            ),
          )
        ],
      ),
    );
  }
}
