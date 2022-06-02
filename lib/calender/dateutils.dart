import 'package:flutter/material.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;

class calender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('hello'),
          TextButton(
              onPressed: () async {
                picker.showCupertinoDatePicker(
                  context: context,
                  initialDate: NepaliDateTime.now(),
                  firstDate: NepaliDateTime(2000),
                  lastDate: NepaliDateTime(2090),
                  language: Language.english,
                  dateOrder: picker.DateOrder.mdy,
                  onDateChanged: (newDate) {},
                );
              },
              child: Text('Calender'))
        ],
      ),
    ));
  }
}
