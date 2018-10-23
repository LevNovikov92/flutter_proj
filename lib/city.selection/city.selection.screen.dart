import 'package:flutter/material.dart';
import 'package:flutter_proj/widgets/custom.button.dart';

class CitySelectionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              children: [
                Text("I am looking for...")
              ],
            ),
          ],
        )
      ]
    );
  }

}