

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';





class MyCheckbox extends StatelessWidget {
  const MyCheckbox({
    key,
    this.label,
    this.padding,
    this.value,
    this.onChanged,
  }) : super(key: key);

  final String? label;
  final EdgeInsets? padding;
  final bool? value;
  final Function? onChanged;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged!(value);
      },
      child: Row(
        children: <Widget>[
          Checkbox(
            checkColor: HexColor('#FFFFFF'),
            activeColor: HexColor('#F22723'),
            value: value,
            onChanged: (newValue) {
              onChanged!(newValue);
            },
          ),
        ],
      ),
    );
  }
}



class MyCheckBox extends StatefulWidget {
  const MyCheckBox({key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBox();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyCheckBox extends State<MyCheckBox> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return MyCheckbox(
      value: _isSelected,
      onChanged: (bool newValue) {
        setState(() {
          _isSelected = newValue;
        });
      },
    );
  }
}