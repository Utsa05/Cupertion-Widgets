import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ContextMene extends StatelessWidget {
  const ContextMene({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox.expand(
        child: CupertinoContextMenu(
            actions: [
              CupertinoContextMenuAction(
                trailingIcon: Icons.ios_share,
                child: const Text("Share"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const CupertinoContextMenuAction(
                trailingIcon: Icons.insert_invitation,
                child: Text("Insert"),
              )
            ],
            child: Image.network(
                "https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg?cs=srgb&dl=pexels-pixabay-45201.jpg&fm=jpg")),
      ),
    );
  }
}
