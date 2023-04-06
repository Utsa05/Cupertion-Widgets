import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.systemOrange),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Flutter Cupertion"),
        ),
        child: SizedBox(),
      ),
    );
  }
}
