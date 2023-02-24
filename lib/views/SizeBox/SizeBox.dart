import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SizeBoxPage extends StatelessWidget {
  const SizeBoxPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("可设置大小的weiget"),),
      body: Column(
        children: [
          Text("SizeBox",style: TextStyle(fontSize: 16),),
          SizedBox(
            width: 100,
            height: 100,
            child: Container(
              color: Colors.pink,
            ),
          ),

          Text("ConstrainedBox",style: TextStyle(fontSize: 16),),
          ConstrainedBox(
            constraints: BoxConstraints(
              minHeight: 100,
              minWidth: 100,
              maxHeight: 100,
              maxWidth: 100
            ),

            child: Container(color: Colors.red, width: 200, height: 200,),

          ),


          CupertinoButton.filled(child: Text("震动测试"), onPressed: ()=> HapticFeedback.vibrate())


        ],
      ),
    );
  }
}
