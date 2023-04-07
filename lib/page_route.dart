import 'package:cupertion_app/context_menu.dart';
import 'package:flutter/cupertino.dart';

class PageRoutes extends StatelessWidget {
  const PageRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton.filled(
          onPressed: () {
            Navigator.of(context).push(
                CupertinoPageRoute(builder: (builder) => const ContextMene()));
          },
          child: const Text("Go Othes")),
    );
  }
}
