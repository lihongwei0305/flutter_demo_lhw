import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickerPage extends StatefulWidget {
  const PickerPage({Key? key}) : super(key: key);

  @override
  State<PickerPage> createState() => _PickerPageState();
}

class _PickerPageState extends State<PickerPage> {
  final List<String> value1List = const [
    'Java',
    'Kotlin',
    'Dart',
    'Swift',
    'C++',
    'Python',
    "JavaScript",
    "PHP",
    "Go",
    "Object-c"
  ];

  void _showDialog(Widget child,double height) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: height,
              padding: const EdgeInsets.only(top: 0.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  String value1 = '';
  int value1Index = 0;





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("选择器"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Row(
              children: [
                CupertinoButton.filled(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                  onPressed: () => {
                    _showDialog(CupertinoPicker(
                        scrollController: FixedExtentScrollController(
                            initialItem: value1Index),
                        backgroundColor:
                            CupertinoColors.systemGrey.withAlpha(33),
                        diameterRatio: 1,
                        offAxisFraction: 0.0,
                        squeeze: 1.5,
                        itemExtent: 40,
                        onSelectedItemChanged: (position) {
                          setState(() {
                            value1 = value1List[position];
                            value1Index = position;
                          });
                        },
                        children: value1List
                            .map((e) => Center(child: Text(e)))
                            .toList()),216)
                  },
                  child: const Text("CupertinoPicker"),
                ),
                SizedBox(width: 10),
                Text("当前选中值：${value1}")
              ],
            ),
            SizedBox(
              height: 10,
            ),
            CupertinoButton.filled(
                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                child: Text("多列"),
                onPressed: () => {
                      _showDialog(Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(onPressed: ()=>{}, child: Text("confirm")),
                              TextButton(onPressed: ()=>{}, child: Text("cancel"))
                            ],
                          ),
                          SizedBox(
                            height: 250,
                            child: Row(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: CupertinoPicker(
                                        scrollController: FixedExtentScrollController(
                                            initialItem: value1Index),
                                        backgroundColor:
                                            CupertinoColors.systemGrey.withAlpha(33),
                                        diameterRatio: 1,
                                        offAxisFraction: 0.0,
                                        squeeze: 1.5,
                                        itemExtent: 40,
                                        onSelectedItemChanged: (position) {
                                          setState(() {
                                            value1 = value1List[position];
                                            value1Index = position;
                                          });
                                        },
                                        children: value1List
                                            .map((e) => Center(child: Text(e)))
                                            .toList())),
                                Expanded(
                                    flex: 1,
                                    child: CupertinoPicker(
                                        scrollController: FixedExtentScrollController(
                                            initialItem: value1Index),
                                        backgroundColor:
                                            CupertinoColors.systemGrey.withAlpha(33),
                                        diameterRatio: 1,
                                        offAxisFraction: 0.0,
                                        squeeze: 1.5,
                                        itemExtent: 40,
                                        onSelectedItemChanged: (position) {
                                          setState(() {
                                            value1 = value1List[position];
                                            value1Index = position;
                                          });
                                        },
                                        children: value1List
                                            .map((e) => Center(child: Text(e)))
                                            .toList())),
                                Expanded(
                                    flex: 1,
                                    child: CupertinoPicker(
                                        scrollController: FixedExtentScrollController(
                                            initialItem: value1Index),
                                        backgroundColor:
                                            CupertinoColors.systemGrey.withAlpha(33),
                                        diameterRatio: 1,
                                        offAxisFraction: 0.0,
                                        squeeze: 1.5,
                                        itemExtent: 40,
                                        onSelectedItemChanged: (position) {
                                          setState(() {
                                            value1 = value1List[position];
                                            value1Index = position;
                                          });
                                        },
                                        children: value1List
                                            .map((e) => Center(child: Text(e)))
                                            .toList()))
                              ],
                            ),
                          ),
                        ],
                      ),300)
                    }),
          ],
        ),
      ),
    );
  }
}
