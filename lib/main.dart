import 'package:flutter/material.dart';
import './model/post.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Widget _listItemBuilder(BuildContext context, int index) {
    return Container(
      margin: EdgeInsets.all(15.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.network(posts[index].image),
          SizedBox(
            height: 10,
          ),
          Text(
            posts[index].title,
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            posts[index].email,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Demo',
          style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              decoration: TextDecoration.underline),
        ),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
      // backgroundColor: Colors.white,
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '我们一定会成功的！',
        style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            decoration: TextDecoration.lineThrough),
      ),
    );
  }
}
