import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("弹框"),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Center(
            child: CupertinoButton.filled(
                child: Text("Dialog"),
                onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("This is content"),
                                CupertinoButton(
                                    child: Text("confirm"),
                                    onPressed: () => {Navigator.pop(context)})
                              ],
                            ),
                          ),
                        ))),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CupertinoButton.filled(
                child: Text("show fullscreen dialog"),
                onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => Dialog.fullscreen(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("This is fullscreen dialog"),
                                CupertinoButton(
                                    child: Text("confirm"),
                                    onPressed: () => {Navigator.pop(context)})
                              ],
                            ),
                          ),
                        ))),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CupertinoButton.filled(
                child: Text("Alert Dialog"),
                onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: Text("Alert Dialog"),
                          content: Text("Alert Dialog Content"),
                          actions: [
                            CupertinoButton(
                                child: Text("Cancel"),
                                onPressed: () => Navigator.pop(context)),
                            CupertinoButton(
                                child: Text("Ok"),
                                onPressed: () => Navigator.pop(context)),
                          ],
                        ))),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: CupertinoButton.filled(
                child: Text("带有主题的AlertDialog"),
                onPressed: () => showDialog(
                    context: context,
                    builder: (BuildContext context) => new Theme(
                        data: ThemeData(
                            colorSchemeSeed: const Color(0xff6750a4),
                            useMaterial3: true),
                        child: AlertDialog(
                          title: Text("Alert Dialog"),
                          content: Text("Alert Dialog Content"),
                          actions: [
                            CupertinoButton(
                                child: Text("Cancel"),
                                onPressed: () => Navigator.pop(context)),
                            CupertinoButton(
                                child: Text("Ok"),
                                onPressed: () => Navigator.pop(context)),
                          ],
                        )))),
          ),
          SizedBox(
            height: 10,
          ),
          CupertinoButton.filled(
              child: Text("CupertinoAlertDialog"),
              onPressed: () => showCupertinoModalPopup(
                  context: context,
                  builder: (BuildContext context) => CupertinoAlertDialog(
                        title: Text("Alert"),
                        content: Text("content"),
                        actions: [
                          CupertinoDialogAction(
                              child: Text("No"),
                              onPressed: () => Navigator.pop(context)),
                          CupertinoDialogAction(
                              child: Text("Yes"),
                              onPressed: () => Navigator.pop(context)),
                        ],
                      ))),
          SizedBox(
            height: 10,
          ),
          CupertinoButton.filled(
              child: Text("CupertinoPopupSurface"),
              onPressed: () => showCupertinoDialog(
                  context: context,
                  builder: (BuildContext context) => CupertinoPopupSurface(
                        isSurfacePainted: true,
                        child: Center(
                          child: _myDialog(),
                        ),
                      )))
        ],
      ),
    );
  }

  _myDialog() {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "title",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.none),
          ),
          Container(
            margin: EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              "content",
              style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
          ),
          Row(
            children: [
              Expanded(
                  child: CupertinoButton.filled(
                      padding: EdgeInsets.all(10),
                      child: Text("取消"),
                      onPressed: () => Navigator.pop(context))),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: CupertinoButton.filled(
                      padding: EdgeInsets.all(10),
                      child: Text("确认"),
                      onPressed: () => Navigator.pop(context)))
            ],
          )
        ],
      ),
    );
  }
}
