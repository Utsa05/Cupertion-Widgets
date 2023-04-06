import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Button extends StatelessWidget {
  const Button({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoButton(child: const Text("Tap"), onPressed: () {}),
          const SizedBox(
            height: 30.0,
          ),
          CupertinoButton.filled(
              borderRadius: BorderRadius.circular(25.0),
              child: const Text("Click"),
              onPressed: () {})
        ],
      ),
    );
  }
}
