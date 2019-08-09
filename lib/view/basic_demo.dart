import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ContainerDemo();
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[50],
        image: DecorationImage(
          image: NetworkImage('http://pic41.nipic.com/20140519/18505720_094740582159_2.jpg'),
          alignment: Alignment.topCenter,
          // repeat: ImageRepeat.repeatX,
          fit: BoxFit.cover
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Icon(
              Icons.pool,
              size: 50,
              color: Colors.white,
            ),
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              border: Border.all(
                  color: Color.fromRGBO(3, 27, 128, 1.0).withOpacity(0.5), style: BorderStyle.solid, width: 5.0,),
              // borderRadius: BorderRadius.circular(20),
              // borderRadius: BorderRadius.only(
              //     topLeft: Radius.circular(30),
              //     bottomRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    color: Colors.white,
                    offset: Offset(0, 0),
                    spreadRadius: 0.0,
                    blurRadius: 15),
              ],
              shape: BoxShape.circle, // 与 borderRadius 冲突，只能2选1
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(7, 102, 255, 1.0),
                  Color.fromRGBO(3, 27, 128, 1.0),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
              )
              // gradient: RadialGradient(
              //   colors: [
              //     Color.fromRGBO(7, 102, 255, 1.0),
              //     Color.fromRGBO(3, 27, 128, 1.0),
              //   ]
              // )
            ),
          )
        ],
      ),
    );
  }
}

class RichTextDemo extends StatelessWidget {

  final String _title = '将进酒';
  final String _author = '李白';
  final String _content =
      '汇图网,国内领先的正版商业图库,原创作品交易平台,中国版权协会理事单位.汇聚众多优秀摄影师、设计师,提供海量可授权商业使用的高清正版摄影图片、设计素材.';

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
          text: _title,
          style: TextStyle(
              color: Colors.deepOrange,
              fontWeight: FontWeight.w500,
              fontSize: 30),
          children: [
            TextSpan(
              text: '\n' + _author,
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontStyle: FontStyle.normal,
                  fontSize: 25),
            ),
            TextSpan(
              text: '\n' + _content,
              style: TextStyle(
                  color: Colors.deepPurple,
                  fontStyle: FontStyle.normal,
                  fontSize: 18),
            )
          ]),
    );
  }
}
