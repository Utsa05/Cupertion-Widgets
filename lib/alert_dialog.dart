import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AlertDialogG extends StatelessWidget {
  const AlertDialogG({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        borderRadius: BorderRadius.circular(25.0),
        color: CupertinoColors.systemOrange,
        onPressed: () {
          showCupertinoDialog(
              context: context,
              builder: (builder) => CupertinoAlertDialog(
                    title: const Text("Info"),
                    content: const Text("Do you like Cupertino?"),
                    actions: [
                      CupertinoDialogAction(
                        isDestructiveAction: true,
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Yes"),
                      ),
                      CupertinoDialogAction(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("No"),
                      )
                    ],
                  ));
        },
        child: const Text("Show Alart Dialgo"),
      ),
    );
  }
}
