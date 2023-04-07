import 'package:flutter/cupertino.dart';

class DataPicker extends StatefulWidget {
  const DataPicker({super.key});

  @override
  State<DataPicker> createState() => _DataPickerState();
}

class _DataPickerState extends State<DataPicker> {
  DateTime dateTime = DateTime(3000, 1, 10, 20);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
                context: context,
                builder: (builder) => SizedBox(
                      height: 250.0,
                      child: CupertinoDatePicker(
                          initialDateTime: dateTime,
                          use24hFormat: false,
                          mode: CupertinoDatePickerMode.dateAndTime,
                          onDateTimeChanged: (data) {
                            setState(() {
                              dateTime = data;
                            });
                          }),
                    ));
          },
          child: const Text("Show Date Picker")),
    );
  }
}
