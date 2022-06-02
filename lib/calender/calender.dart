import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:nepali_utils/nepali_utils.dart';
import 'package:nepali_date_picker/nepali_date_picker.dart' as picker;

class calenderForm extends StatefulWidget {
  @override
  State<calenderForm> createState() => _calenderFormState();
}

class _calenderFormState extends State<calenderForm> {
  NepaliDateTime _selectedDateTime = NepaliDateTime(2000, 1, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nepali Date Picker"),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            _selectedDateTime = await showNepaliDatePicker(
              context: context,
              initialDate: NepaliDateTime.now(),
              firstDate: NepaliDateTime(2000),
              lastDate: NepaliDateTime(2090),
              language: Language.english,
            );
            setState(() {});
          },
          child: Text(
            _selectedDateTime.toString(),
            style: TextStyle(color: Colors.white, fontSize: 40.0),
          ),
        ),
      ),
    );
  }
}
