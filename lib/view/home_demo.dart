import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:hello/view/listview_demo.dart';
import 'bottombar_demo.dart';
import 'basic_demo.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('金融计算器',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.normal)),
            elevation: 10,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  log('点击搜索');
                },
                tooltip: '搜索',
              )
            ],
            bottom: TabBar(
              unselectedLabelColor: Colors.white54,
              labelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3.0,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.account_balance),
                  text: '复利',
                ),
                Tab(
                  icon: Icon(Icons.account_balance_wallet),
                  text: '投资',
                ),
                Tab(
                  icon: Icon(Icons.attach_money),
                  text: '贷款',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListViewDemo(),
              Basic_demo(),
              Icon(
                Icons.attach_money,
                size: 128,
                color: Colors.black12,
              )
            ],
          ),
          drawer: MyDrawer(),
          bottomNavigationBar: BottomBarDemo(),
        ));
  }
}

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Drawer(
          child: ListView(
            padding: const EdgeInsets.only(),
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text('Dengsir'.toUpperCase()),
                accountEmail: Text('rem_qui@hotmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://avatars0.githubusercontent.com/u/17330382?s=180&v=4'),
                ),
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  image: DecorationImage(
                    image: NetworkImage('http://pic36.nipic.com/20131126/8821914_071759099000_2.jpg'),
                    fit: BoxFit.fill,
                    colorFilter: ColorFilter.mode(Colors.deepOrange.withOpacity(0.1), BlendMode.hardLight)
                  ),

                )
              ),
              ListTile(
                title: Text(
                  '帮助',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(
                  Icons.help_outline,
                  color: Colors.deepOrange,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  '关于',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(
                  Icons.info_outline,
                  color: Colors.deepOrange,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text(
                  '评分',
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 18),
                ),
                trailing: Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.deepOrange,
                ),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ));
  }
}
