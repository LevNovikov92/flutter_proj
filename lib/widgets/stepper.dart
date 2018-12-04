import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_proj/widgets/next.button.dart';

class StepperWidget extends StatefulWidget {
  final int dotsCount;
  final String continueText;

  final int selected;

  final GestureTapCallback clickListener;

  StepperWidget(
      this.dotsCount, this.selected, this.continueText, this.clickListener);

  @override
  State<StatefulWidget> createState() =>
      StepperWidgetState(dotsCount, selected, continueText, clickListener);
}

class StepperWidgetState extends State<StepperWidget> {
  final int dotsCount;
  final String continueText;
  var selected = 0;
  final GestureTapCallback clickListener;

  StepperWidgetState(
      this.dotsCount, this.selected, this.continueText, this.clickListener);

  void _onClick() {
    clickListener();
    if (selected < dotsCount - 1) {
      setState(() {
        selected++;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: _onClick,
            child: selected == dotsCount - 1
                ? Container(
                    height: 60.0,
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Text(
                      continueText,
                      style: TextStyle(color: Colors.white),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent[200],
                      borderRadius:
                          const BorderRadius.all(const Radius.circular(30.0)),
                    ),
                  )
                : NextButton(_onClick)
          ),
          Center(
            child: Container(
              height: 50.0,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: dotsCount,
                  itemBuilder: (BuildContext context, int index) =>
                      StepperDot(index == selected)),
            ),
          )
        ],
      ),
    );
  }
}

class StepperDot extends StatelessWidget {
  final bool selected;

  StepperDot(this.selected);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.0),
      child: Center(
        child: Container(
          width: 12.0,
          height: 12.0,
          decoration: BoxDecoration(
            color: selected ? Colors.deepOrangeAccent[200] : Colors.grey,
            borderRadius: const BorderRadius.all(const Radius.circular(6.0)),
          ),
        ),
      ),
    );
  }
}
