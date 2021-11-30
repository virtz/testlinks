

import 'package:draw_graph/draw_graph.dart';
import 'package:draw_graph/models/feature.dart';
import 'package:flutter/material.dart';

class Graph extends StatelessWidget {
   Graph({ Key? key }) : super(key: key);


  final List<Feature> features = [
    Feature(
      title: "Drink Water",
      color:const  Color.fromRGBO(242, 39, 35, 1),
      data: [0.4, 0.6, 0.4, 0.6, 0.4],
    ),
  ];
  @override
  Widget build(BuildContext context) {
return Column(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: <Widget>[
    LineGraph(
      features: features,
      size:const Size(500, 250),
      graphColor:const  Color.fromRGBO(242, 39, 35, 1.0),
      labelX:const ['MON', 'TUE', 'WED', 'THUR', 'FRI'],
      labelY:const  ['N100', 'N250', 'N500', 'N1000', 'N1200'],
      fontFamily: 'helves',

      showDescription: false,

      // graphOpacity: 0.2,
      // verticalFeatureDirection: true,
      // descriptionHeight: 130,
    ),
  ],
);
  }
}