import 'package:flutter/material.dart';

class ReusableRow extends StatelessWidget {
  String title, value;
  ReusableRow({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, right: 10.0, top: 10.0, bottom: 5.0),
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(title),
            Text(value),
          ]),
          SizedBox(
            height: 5.0,
          ),
          Divider(),
        ],
      ),
    );
  }
}
