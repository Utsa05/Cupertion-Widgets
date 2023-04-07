import 'package:cupertion_app/button.dart';
import 'package:cupertion_app/context_menu.dart';
import 'package:cupertion_app/navbar.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: const CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.systemOrange),
      home: CupertinoPageScaffold(
        navigationBar: cNavbar(),
        child: const ContextMene(),
      ),
    );
  }
}
