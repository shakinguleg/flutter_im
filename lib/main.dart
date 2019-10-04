import 'package:flutter/material.dart';
import 'app.dart';
import 'loading.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'search.dart';

void main() =>
    runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '聊天室',
        theme: mDefaultTheme,
        routes: <String, WidgetBuilder>{
          "app": (BuildContext context) => new App(),
          "/friends": (_) =>
          new WebviewScaffold(
            //Webview插件
            url: "https://www.baidu.com",
            appBar: new AppBar(
              title: Text("百度一下"),
            ),
            withZoom: true,
            withLocalStorage: true,
          ),
          "search": (BuildContext context) => new Search(),
        },
        home: new LoadingPage(),
    ));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Colors.green,
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Colors.green,
);