import 'package:flutter/cupertino.dart';

class ModelPopup extends StatelessWidget {
  const ModelPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
          color: CupertinoColors.systemOrange,
          borderRadius: BorderRadius.circular(25.0),
          child: const Text("Show Model Popup"),
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (context) => CupertinoActionSheet(
                      title: const Text("Cupertino"),
                      message: const Text("Here is Popup of Cupertino Model"),
                      actions: [
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Done")),
                        CupertinoActionSheetAction(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Close"))
                      ],
                    ));
          }),
    );
  }
}
