

import 'package:flutter/material.dart';

class ProductDrop extends StatefulWidget {
    final Color? color;

  const ProductDrop({ Key? key, this.color }) : super(key: key);

  @override
  _ProductDropState createState() => _ProductDropState();
}

class _ProductDropState extends State<ProductDrop> {
    String dropdownValue = 'Caged Eggs';
  @override
  Widget build(BuildContext context) {
   return DropdownButton<String>(
      value: dropdownValue,
      icon: const Icon(
        Icons.arrow_drop_down_outlined,
        size: 25,
        color: Color.fromRGBO(242, 39, 35, 1.0),
      ),
      iconSize: 24,
      // elevation: 16,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16.0,
        fontFamily: 'helves',
        fontWeight: FontWeight.w600,
      ),
      onChanged: (newValue) {
        setState(() {
          dropdownValue = newValue!;
        });
      },
      items: <String>[
        'Free Ranged Eggs',
        'Caged Eggs',
      ].map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}