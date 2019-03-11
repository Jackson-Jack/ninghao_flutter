import 'package:flutter/material.dart';

class BottomNavigationBarDemo extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _BottomNavigationBarDemoState();
    }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  
  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: _onTapHandler,   // 激活状态，onTap 会执行 _onTapHandler 方法
          type: BottomNavigationBarType.fixed,  // 设置成固定的，否则items超过3个，样式会发生改变，变成白色了
          fixedColor: Colors.black,   // 激活状态下的背景颜色
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('Explore'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history),
              title: Text('History'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('List'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('My'),
            ),
          ],
        );
    }
}