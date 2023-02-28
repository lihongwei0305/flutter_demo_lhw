import 'dart:async';

import 'package:flutter/material.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  late Timer _timer;

  int currentTimer = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _timer = Timer.periodic(Duration(milliseconds: 100), (timer) {

      currentTimer+=100;
      if(currentTimer >= 5000) {
        _timer.cancel();

      }
      setState(() {});

    });

  }

  @override
  void dispose() {
    // TODO: implement dispose
    _timer.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      appBar: AppBar(
        title: Text("其他"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text("指示器",style: TextStyle(fontSize: 22),),
            Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                    value: currentTimer / 5000
                ),
                Text("${(currentTimer/1000).toInt()}"),
              ],
            )
          ],
        ),
      ),
    );
  }
}
