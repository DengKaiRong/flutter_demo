import 'package:flutter/material.dart';

class BottomBarDemo extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationBar();
  }
}

class _BottomNavigationBar extends State<BottomBarDemo> {
  int _currentIndex = 0;

  void _onTapHandle(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedFontSize: 12,
      currentIndex: _currentIndex,
      onTap: _onTapHandle,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(title: Text('工具'), icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            title: Text('阅读赚钱'), icon: Icon(Icons.attach_money)),
        BottomNavigationBarItem(title: Text('小游戏'), icon: Icon(Icons.games)),
        BottomNavigationBarItem(title: Text('我的'), icon: Icon(Icons.person))
      ],
    );
  }
}
