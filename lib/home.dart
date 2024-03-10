
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {

   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WebViewController controller = WebViewController();
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = WebViewController()
  ..setJavaScriptMode(JavaScriptMode.unrestricted)
  ..setBackgroundColor(const Color(0x00000000))
  ..loadFlutterAsset("assets/html/home.html");
  
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        // appBar: AppBar(title: Text("Kalkulyator"),),
        body: WebViewWidget(controller: controller),
      
      
      ),
    );
  }
}