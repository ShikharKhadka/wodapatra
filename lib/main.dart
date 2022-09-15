import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
// import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      builder: ((context, child) => ResponsiveWrapper.builder(
            child,
            maxWidth: 1200,
            minWidth: 480,
            defaultScale: true,
            breakpoints: const [
              ResponsiveBreakpoint.resize(480, name: MOBILE, scaleFactor: 0.1),
              ResponsiveBreakpoint.autoScale(800,
                  name: TABLET, scaleFactor: 0.5),
              ResponsiveBreakpoint.autoScale(500, name: DESKTOP),
            ],
          )),
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Completer<WebViewController> controller =
    //     Completer<WebViewController>();
    // WebViewController? _controller;
    return const WebView(
      initialUrl: "http://moial.wadapatra.prixa.net/sEF2Ftd5z5jVooy7JwgZ/",
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}

//"https://meeting1.prixa.live"
