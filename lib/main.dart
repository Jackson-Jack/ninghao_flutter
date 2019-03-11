import 'package:flutter/material.dart';
import './demo/drawer_demo.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';

void main() => runApp(App());

// StatelessWidget 表示不可修改的组件， StatefulWidget 表示可修改的组件
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // 隐藏右上角debug标志
      home: Home(),
      theme: ThemeData(
        primarySwatch: Colors.yellow,  //主题色 
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5), //控件点击后的高亮背景色
        splashColor: Colors.white70 // 水波纹的颜色
      )
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(   // AppBar 导航栏 类似UINavigationBar
          title: Text('NINGHAO'),
          actions: <Widget>[  // 导航栏右侧小部件，此处是一个数组可以设置多个Widget
            IconButton(
              icon: Icon(Icons.search),   //Icon 里面内置了一些小图标
              tooltip: 'Search',
              onPressed: () => debugPrint('Search button is pressed.'),
            )
          ],
          elevation: 0.0,   // 导航栏底部阴影 ，默认值为4
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,   //文本未选中的颜色样式
            indicatorColor: Colors.black54,   //指示器（即选中文字下方的那一条横线）颜色
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(Icons.change_history, size: 128.0, color: Colors.black12),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: DrawerDemo(), // 如果想在右边展示抽屉效果，可以使用endDrawer 
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}

