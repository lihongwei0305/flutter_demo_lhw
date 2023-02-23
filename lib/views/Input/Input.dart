import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("输入框"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.cyanAccent),
                decoration: InputDecoration(hintText: "普通input"),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.cyanAccent),
                decoration: InputDecoration(
                    hintText: "带有边框线的input",
                    border: OutlineInputBorder(),
                    hintStyle: TextStyle(height: 3)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.cyanAccent),
                decoration: InputDecoration(
                  labelText: "labelText input",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: TextField(
                style: TextStyle(color: Colors.cyanAccent),
                decoration: InputDecoration(
                    labelText: "边框颜色 input",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.tealAccent, width: 1))),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              child: CupertinoTextField(
                placeholder: "IOS风格input",
                cursorHeight: 25,
                clearButtonMode: OverlayVisibilityMode.editing,
              ),
            )
          ],
        ),
      ),
    );
  }
}
