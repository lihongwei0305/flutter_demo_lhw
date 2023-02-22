import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonPage extends StatefulWidget {
  const ButtonPage({Key? key}) : super(key: key);

  @override
  State<ButtonPage> createState() => _ButtonPageState();
}

class _ButtonPageState extends State<ButtonPage> {
  @override
  Widget build(BuildContext context) {
    final ColorScheme colors = Theme.of(context).colorScheme;
    return Scaffold(
      appBar: AppBar(
        title: Text("按钮"),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () => {}, child: Text("ElevatedButto1n")),
          TextButton(onPressed: () => {}, child: Text("TextButton")),
          OutlinedButton(onPressed: () => {}, child: Text("OutlinedButton")),
          MaterialButton(onPressed: () => {}, child: Text("MaterialButton")),
          MaterialButton(
            onPressed: () => {},
            child: Icon(Icons.home),
          ),
          CupertinoButton.filled(
              onPressed: () => {}, child: Text("CupertinoButton")),
          IconButton(
            onPressed: () => {},
            icon: Icon(Icons.flag_circle),
            iconSize: 60,
            style: IconButton.styleFrom(
              foregroundColor: colors.onSecondaryContainer,
              backgroundColor: colors.secondaryContainer,
              disabledBackgroundColor: colors.onSurface.withOpacity(0.12),
              hoverColor: colors.onSecondaryContainer.withOpacity(0.08),
              focusColor: colors.onSecondaryContainer.withOpacity(0.12),
              highlightColor: colors.onSecondaryContainer.withOpacity(0.12),
            ),
          ),
          Container(
            height: 100,
            width: 150,
            child: ElevatedButton(
              onPressed: () => {},
              child: Text("圆形按钮"),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                    CircleBorder(side: BorderSide(color: Colors.white))),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            action: SnackBarAction(
              label: 'Action',
              onPressed: () {
                // Code to execute.
              },
            ),
            content: const Text('Awesome SnackBar!'),
            duration: const Duration(milliseconds: 1500),
            width: 280.0,
            // Width of the SnackBar.
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0, // Inner padding for SnackBar content.
            ),
            behavior: SnackBarBehavior.floating,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Icon(Icons.add),
        backgroundColor: Colors.amberAccent,
      ),
    );
  }
}
