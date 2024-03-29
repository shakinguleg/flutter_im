// TODO Implement this library.
import 'package:flutter/material.dart';
import 'dart:async';

//加载页面
class LoadingPage extends StatefulWidget{

  @override
  _LoadingState createState() =>  new _LoadingState();

}
class _LoadingState extends State<LoadingPage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //加载界面停顿 3 秒
    new Future.delayed(Duration(seconds: 3), (){
      print("Flutter即时通讯APP界面实现。。。");
      Navigator.of(context).pushReplacementNamed("app");
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Stack(
        children: <Widget>[
          //加载页面居中背景图 使用cover 模式
          Image.asset(
            "images/loading.jpeg",
            fit: BoxFit.cover,),
        ],
      ),
    );
  }
}