import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
        onWillPop: () async => false,
        child: new Scaffold(
        appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Colors.lightGreen,
        brightness: Brightness.light,),
            body: WebViewClass()
        )
    );
  }
}

class WebViewClass extends StatefulWidget {

  WebViewState createState() => WebViewState();

}

class WebViewState extends State<WebViewClass>{

  num position = 1 ;

  final key = UniqueKey();

  doneLoading(String A) {
    setState(() {
      position = 0;
    });
  }

  startLoading(String A){
    setState(() {
      position = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: IndexedStack(
            index: position,
            children: <Widget>[

              WebView(
                initialUrl: 'https://treecampus.in/',
                javascriptMode: JavascriptMode.unrestricted,
                key: key ,
                onPageFinished: doneLoading,
                onPageStarted: startLoading,
              ),

              Container(
                color: Colors.white,
                child: Center(
                    child: CircularProgressIndicator(
                        backgroundColor: Colors.lightGreen,
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.white)
                    )),
              ),

            ])
    );
  }
}