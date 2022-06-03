import 'package:flutter/material.dart';

class addressForm extends StatelessWidget {
  static const routeName = 'address-form';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [Text('Temporary Address')],
      ),
    ));
  }
}
