import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>();




  String username = '';
  int sex = 1;
  List hobbies = [
    {"checked": false, "title": "打篮球"},
    {"checked": false, "title": "爬山"},
    {"checked": false, "title": "写代码"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("表单")),
      body: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());

        },
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.all(20),
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "请输入用户姓名", //默认提示文案
                    label: Text("姓名"),
                  suffixStyle:  TextStyle(
                      letterSpacing:100.0,
                    wordSpacing: 100.0
                  ),
                  suffixIcon: username.isEmpty? Text('') : Icon(Icons.close)//标签
                ),
                onChanged: (val) {
                  setState(() {
                    username = val;
                  });
                },
                validator: (String? val){
                  if(val == null || val.isEmpty) {
                    return "请输入用户姓名";
                  }
                  return null;
                },

              ),
              SizedBox(height: 10),
              Text("性别："),
              Row(
                children: [
                  Text("男"),
                  Radio(value: 1, groupValue: sex, onChanged: onChanged),
                  Text("女"),
                  Radio(value: 2, groupValue: sex, onChanged: onChanged)
                ],
              ),
              SizedBox(height: 10),
              Text("兴趣爱好："),
              Row(
                //兴趣爱好
                children: _getHobbies(),
              ),
              SizedBox(height: 10),
              CupertinoButton.filled(child: Text("Submit"), onPressed: ()=>{
                _formKey.currentState!.validate()
              })

            ],
          ),
        ),
      ),
    );
  }

  void onChanged(val) {
    setState(() {
      sex = val;
    });
  }

  List<Widget> _getHobbies() {
    List<Widget> list = [];
    for (var el in hobbies) {
      list.add(Text(el["title"]));
      list.add(Checkbox(
          value: el["checked"],
          onChanged: (val) {
            setState(() {
              el['checked'] = val;
            });
          }));
    }
    return list;
  }
}
