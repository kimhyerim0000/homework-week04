import "package:flutter/material.dart";
import "package:webview_flutter/webview_flutter.dart";

class HomeScreen extends StatelessWidget {

  WebViewController webViewController = WebViewController()
  ..loadRequest(Uri.parse('https://blog.codefactory.ai'))
  ..setJavaScriptMode(JavaScriptMode.unrestricted); 

  HomeScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code Factory'),
        centerTitle: true,

        // AppBar에 액션 버튼을 추가할 수 있는 매개변수
      ),
      body: WebViewWidget(
        controller: webViewController,
      ),
    );
  }
}