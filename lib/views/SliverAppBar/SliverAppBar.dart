import 'package:flutter/material.dart';


/// 说明:
//          "【leading】 : 左侧组件   【Widget】\n"
//          "【title】 : 中间组件   【Widget】\n"
//          "【actions】 : 尾部组件列表   【List<Widget>】\n"
//          "【floating】 : 是否浮动   【bool】\n"
//          "【pinned】 : 是否顶部停留   【bool】\n"
//          "【snap】 : 是否半收展   【bool】\n"
//          "【bottom】 : 底部组件   【PreferredSizeWidget】\n"
//          "【expandedHeight】 : 延展高度   【double】\n"
//          "【elevation】 : 影深   【double】\n"
//          "【flexibleSpace】 : 延展空间   【FlexibleSpaceBar】\n"
//          "【backgroundColor】 : 背景色   【Color】\n"
//          "【controller】 : 控制器   【ScrollController】\n"
//          "   snap为true时必需floating为true",


class SliverAppBarPage extends StatefulWidget {
  const SliverAppBarPage({Key? key}) : super(key: key);

  @override
  State<SliverAppBarPage> createState() => _SliverAppBarPageState();
}

class _SliverAppBarPageState extends State<SliverAppBarPage> {
  bool _floating = false;
  bool _pinned = false;
  bool _snap = false;


  final List<Color> data = [
    Colors.purple[100]!,
    Colors.purple[200]!,
    Colors.purple[300]!,
    Colors.purple[400]!,
    Colors.purple[500]!,
    Colors.purple[600]!,
    Colors.purple[700]!,
    Colors.purple[800]!,
    Colors.purple[900]!,
    Colors.red[100]!,
    Colors.red[200]!,
    Colors.red[300]!,
    Colors.red[400]!,
    Colors.red[500]!,
    Colors.red[600]!,
    Colors.red[700]!,
    Colors.red[800]!,
    Colors.red[900]!,
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: CustomScrollView(
        slivers: <Widget>[
          _buildSliverAppBar(),
          _buildSliverFixedExtentList()
        ],
      ),
    );
  }

  Widget _buildSliverAppBar() {
    return SliverAppBar(
      expandedHeight: 190.0,
      leading: _buildLeading(),
      title: const Text("appbar title"),
      actions: _buildActions(),
      elevation: 5,
      floating: _floating,
      pinned: _pinned,
      snap: _snap,
      backgroundColor: Colors.cyanAccent,
      flexibleSpace: FlexibleSpaceBar(
        titlePadding: EdgeInsets.only(left: 55, bottom: 15),
        collapseMode: CollapseMode.parallax, //视察效果
        background: Image.asset("assets/images/1.jpg", fit: BoxFit.cover,),
      ),
    );
  }



  Widget _buildLeading() {
    return Container(
      margin: EdgeInsets.all(10),
      child: Image.asset("assets/images/2.jpg"),
    );
  }

  List<Widget> _buildActions() {
    return <Widget>[
      IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.star_border,
          color: Colors.white,
        ),
      )
    ];
  }


  Widget _buildSliverFixedExtentList() =>
      SliverFixedExtentList(
        itemExtent: 60,
        delegate: SliverChildBuilderDelegate(
                (_, int index) =>
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 50,
                  color: data[index],
                  child: Text(
                    colorString(data[index]),
                    style: const TextStyle(color: Colors.white, shadows: [
                      Shadow(
                          color: Colors.black,
                          offset: Offset(.5, .5),
                          blurRadius: 2)
                    ]),
                  ),
                ),
            childCount: data.length),
      );

  String colorString(Color color) =>
      "#${color.value.toRadixString(16).padLeft(8, '0').toUpperCase()}";


}
