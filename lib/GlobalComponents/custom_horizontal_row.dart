import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomHorizontalRow extends StatelessWidget {
  @required
  final String text;
  CustomHorizontalRow({this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            )),
        Expanded(
            flex: 2,
            child: CustomText(
              text: text,
              color: Colors.blue[600],
              alignment: Alignment.center,
              fontSize: 19,
            )),
        Expanded(
            flex: 1,
            child: Divider(
              thickness: 0.5,
              color: Colors.black,
            )),
      ],
    );
  }
}
